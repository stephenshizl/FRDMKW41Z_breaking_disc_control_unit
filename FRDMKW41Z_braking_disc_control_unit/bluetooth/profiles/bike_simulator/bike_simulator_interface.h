/*!
 * This file is the interface file for the Bike simulator service.
 *
 * Author:		Robert Näger
 * Date:		15. Nov. 2017
 */

#ifndef _BIKE_SIMULATOR_INTERFACE_H_
#define _BIKE_SIMULATOR_INTERFACE_H_

/************************************************************************************
*************************************************************************************
* Include
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public constants & macros
*************************************************************************************
************************************************************************************/
typedef double	double_t;

/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

/*! Bike simulator Client - Configuration */
typedef struct bscConfig_tag
{
    uint16_t     bsService;           /*!<Service Handle */
    double_t     bBrakingPower;			 /*! Braking power */
    double_t	 bSpeed;				 /*! Bicycle speed */
} bscConfig_t;

/*! Data structure of bike_simulator according to BDA mobile app */
typedef struct bssData_tag
{
	int16_t		messageType;
	double_t	messageData;
}bssData;

// TODO: tabelle 12 p. 34 in mobile app als enum einfügen



/************************************************************************************
*************************************************************************************
* SERVER
*************************************************************************************
************************************************************************************/
/*! Bike simulator Service - Configuration -> Server */
typedef struct bssConfig_tag
{
    uint16_t    serviceHandle;                 /*!<Service handle */
    double_t	initialPower;            /*!<Input report field */
    double_t	initialSpeed;		            /*!<Input report field */
} bssConfig_t;

/*! Start and stop service functions */
bleResult_t Bss_Start(bssConfig_t *bServiceConfig);
bleResult_t Bss_Stop(bssConfig_t *bServiceConfig);

/*! Subscribe and unsubscribe functions */
bleResult_t Bss_Subscribe(deviceId_t clientDeviceId);
bleResult_t Bss_Unsubscribe();

/*! Functions for read, write, update characteristics */
bleResult_t Bss_SendData(uint16_t serviceHandle, uint16_t newBrakingValue);
bleResult_t Bss_ReceiveData(uint16_t serviceHandle); // TODO: change Return data type

#endif /* _BIKE_SIMULATOR_INTERFACE_H_ */
