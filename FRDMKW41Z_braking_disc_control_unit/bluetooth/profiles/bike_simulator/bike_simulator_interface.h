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


/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

/*! Bike simulator Service - Configuration */
typedef struct bsConfig_tag
{
    uint16_t    serviceHandle;                 /*!<Service handle */
    uint16_t     writeValue;            /*!<Input report field */
    uint16_t     notifyValue;            /*!<Input report field */
} bsConfig_t;


/*! Start and stop service functions */
bleResult_t Bs_Start(bsConfig_t *bServiceConfig);
bleResult_t Bs_Stop(bsConfig_t *bServiceConfig);

/*! Subscribe and unsubscribe functions */
bleResult_t Bs_Subscribe(deviceId_t clientDeviceId);
bleResult_t Bs_Unsubscribe();

/*! Functions for read, write, update characteristics */
bleResult_t Bs_SendBrakingPower(uint16_t serviceHandle, uint16_t newBrakingValue);
bleResult_t Bs_ReceiveBrakingPower(uint16_t serviceHandle); // TODO: change Return data type

#endif /* _BIKE_SIMULATOR_INTERFACE_H_ */
