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
#define			MAX_MESSAGE_SIZE	20

typedef double	double_t;

/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

/*! Bike simulator Client - Configuration */
typedef struct bscConfig_tag
{
    uint16_t    bsService;           /*!<Service Handle */
    double_t    bsBrakingPower;			 /*! Braking power */
    double_t	bsSpeed;				 /*! Bicycle speed */
    uint16_t	bsCharacteristic;	/* Characteristic of Service */
} bscConfig_t;



/*! Data structure of bike_simulator according to BDA mobile app
 * either in application level*/
typedef struct bssData_tag
{
	uint16_t			startSign;		// [
	//bssMessageType		messageType;
	uint16_t			delimeter;		// ,
	double_t			messageData;
	uint16_t			endSign;		// ]
}bssData;

/************************************************************************************
*************************************************************************************
* SERVER
*************************************************************************************
************************************************************************************/
/*! Bike simulator Service - Configuration -> Server */
typedef struct bssConfig_tag
{
    uint16_t    serviceHandle;   /*!<Service handle */
    uint8_t*	valueBikeNotify;  /*!<Input report field */
    uint8_t*	valueBikeWrite;	/*!<Output report field */
} bssConfig_t;

/*! Start and stop service functions */
bleResult_t Bss_Start(bssConfig_t *bServiceConfig);
bleResult_t Bss_Stop(bssConfig_t *bServiceConfig);

/*! Subscribe and unsubscribe functions */
bleResult_t Bss_Subscribe(deviceId_t clientDeviceId);
bleResult_t Bss_Unsubscribe();

/*! Functions for store, get attributes from profile level to database */
bleResult_t Bss_GetData(uint16_t serviceHandle, double_t newBrakingValue, double_t newSpeedValue);
bleResult_t Bss_StoreData(uint16_t serviceHandle, uint8_t* dataWrite, uint8_t* dataNotify);

/*! Notification function */
bleResult_t Bss_SendNotificiation(uint16_t handle);
#endif /* _BIKE_SIMULATOR_INTERFACE_H_ */
