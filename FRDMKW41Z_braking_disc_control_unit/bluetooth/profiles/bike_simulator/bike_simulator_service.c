/*!
 * This file is the c file for the Bike simulator service.
 *
 * Author:		Robert Näger
 * Date:		15. Nov. 2017
 */

/************************************************************************************
*************************************************************************************
* Include
*************************************************************************************
************************************************************************************/
#include "FunctionLib.h"

#include "ble_general.h"
#include "gatt_db_app_interface.h"
#include "gatt_server_interface.h"
#include "gap_interface.h"
#include "bike_simulator_interface.h"

/************************************************************************************
*************************************************************************************
* Private constants & macros
*************************************************************************************
************************************************************************************/
/*! Bike simulator Service - Subscribed Client */
static deviceId_t mBs_SubscribedClientId;

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
bleResult_t Bss_Start(bssConfig_t *pServiceConfig)
{
	mBs_SubscribedClientId = gInvalidDeviceId_c;

	return Bs_ReceiveBrakingPower(pServiceConfig->serviceHandle);
}



// Receive braking power value -> maybe adapt parameter
bleResult_t Bss_ReceiveBrakingPower(uint16_t serviceHandle)
{
    uint16_t  hValueHrMeasurement;
    bleResult_t result;
    bleUuid_t uuid = UuidArray(uuid_service_bike_simulator);
    //bleUuid_t uuid = Uuid16(gBleSig_HrMeasurement_d);

    /* Get handle of Heart Rate Measurement characteristic */
    result = GattDb_FindCharValueHandleInService(serviceHandle,
        gBleUuidType16_c, &uuid, &hValueHrMeasurement);

    if (result != gBleSuccess_c)
        return result;

    /* Update characteristic value and send notification */
    if (!Hrs_UpdateHrmCharacteristic(hValueHrMeasurement, heartRate, pHrsUserData))
    {
//        Hrs_SendNotifications''(hValueHrMeasurement);
    }
    return gBleSuccess_c;
}



bleResult_t Bsc_Subscribe(deviceId_t deviceId)
{
	mBs_SubscribedClientId = deviceId;
    return gBleSuccess_c;
}

bleResult_t Bsc_Unsubscribe(void)
{
    mBs_SubscribedClientId = gInvalidDeviceId_c;
    return gBleSuccess_c;
}




