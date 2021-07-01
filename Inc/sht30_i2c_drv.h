/* ADDR Pin Conect to VSS */

#define	SHT30_ADDR_WRITE	0x44<<1         //10001000
#define	SHT30_ADDR_READ		(0x44<<1)+1	    //10001011

I2C_HandleTypeDef hi2c1;

typedef enum
{
    /* Software reset command */

    SOFT_RESET_CMD = 0x30A2,
    /*
         Single measurement mode
         Naming format: Repeatability_CS_CMD
    CS： Clock stretching
    */
    HIGH_ENABLED_CMD    = 0x2C06,
    MEDIUM_ENABLED_CMD  = 0x2C0D,
    LOW_ENABLED_CMD     = 0x2C10,
    HIGH_DISABLED_CMD   = 0x2400,
    MEDIUM_DISABLED_CMD = 0x240B,
    LOW_DISABLED_CMD    = 0x2416,

    /*
         Period measurement mode
         Naming format: Repeatability_MPS_CMD
    MPS：measurement per second
    */
    HIGH_0_5_CMD   = 0x2032,
    MEDIUM_0_5_CMD = 0x2024,
    LOW_0_5_CMD    = 0x202F,
    HIGH_1_CMD     = 0x2130,
    MEDIUM_1_CMD   = 0x2126,
    LOW_1_CMD      = 0x212D,
    HIGH_2_CMD     = 0x2236,
    MEDIUM_2_CMD   = 0x2220,
    LOW_2_CMD      = 0x222B,
    HIGH_4_CMD     = 0x2334,
    MEDIUM_4_CMD   = 0x2322,
    LOW_4_CMD      = 0x2329,
    HIGH_10_CMD    = 0x2737,
    MEDIUM_10_CMD  = 0x2721,
    LOW_10_CMD     = 0x272A,
	/* Period measurement mode read data command */
	READOUT_FOR_PERIODIC_MODE = 0xE000,
} SHT30_CMD;

/**
 * @brief sends a command (16bit) to SHT30
   * @param cmd —— SHT30 instruction (defined enumerated in SHT30_MODE)
   * @retval returns HAL_OK successfully
*/
static uint8_t	SHT30_Send_Cmd(SHT30_CMD cmd)
{
    uint8_t cmd_buffer[2];
    cmd_buffer[0] = cmd >> 8;
    cmd_buffer[1] = cmd;
    return HAL_I2C_Master_Transmit(&hi2c1, SHT30_ADDR_WRITE, cmd_buffer, 2, 0xFFFF);
}

/**
   * @brief reset SHT30
 * @param	none
 * @retval	none
*/
void SHT30_reset(void)
{
    SHT30_Send_Cmd(SOFT_RESET_CMD);
    HAL_Delay(20);
}

/**
   * @brief initialize SHT30
 * @param	none
   * @retval returns HAL_OK successfully
   * @note Period measurement mode
*/
uint8_t SHT30_Init(void)
{
    return SHT30_Send_Cmd(MEDIUM_2_CMD);
}

/**
   * @brief read data from SHT30 once
   * @param dat —— store the address of the read data (6 byte array)
   * @retval success-return HAL_OK
*/
uint8_t SHT30_Read_Dat(uint8_t* dat)
{
	SHT30_Send_Cmd(READOUT_FOR_PERIODIC_MODE);
	return HAL_I2C_Master_Receive(&hi2c1, SHT30_ADDR_READ, dat, 6, 0xFFFF);
}

#define CRC8_POLYNOMIAL 0x31

uint8_t CheckCrc8(uint8_t* const message, uint8_t initial_value)
{
    uint8_t  remainder;	    //remainder
    uint8_t  i = 0, j = 0;  //Loop variable

    /* Initialization */
    remainder = initial_value;

    for(j = 0; j < 2;j++)
    {
        remainder ^= message[j];

        /* Calculate sequentially from the highest bit */
        for (i = 0; i < 8; i++)
        {
            if (remainder & 0x80)
            {
                remainder = (remainder << 1)^CRC8_POLYNOMIAL;
            }
            else
            {
                remainder = (remainder << 1);
            }
        }
    }

    /* Return the calculated CRC code */
    return remainder;
}

/**
   * @brief performs CRC check on the 6 bytes of data received by SHT30 and converts them into temperature and humidity values
   * @param dat —— The address where the received data is stored (6 byte array)
   * @retval verification is successful-return 0
   * Verification failed-return 1 and set the temperature and humidity values ​​to 0
*/
uint8_t SHT30_Dat_To_Float(uint8_t* const dat, float* temperature, float* humidity)
{
	uint16_t recv_temperature = 0;
	uint16_t recv_humidity = 0;

	/* Verify that the temperature data and humidity data are received correctly */
	if(CheckCrc8(dat, 0xFF) != dat[2] || CheckCrc8(&dat[3], 0xFF) != dat[5])
		return 1;

	/* Convert temperature data */
	recv_temperature = ((uint16_t)dat[0]<<8)|dat[1];
	*temperature = -45 + 175*((float)recv_temperature/65535);

	/* Convert humidity data */
	recv_humidity = ((uint16_t)dat[3]<<8)|dat[4];
	*humidity = 100 * ((float)recv_humidity / 65535);

	return 0;
}
