#ifndef ros_batt_status_h
#define ros_batt_status_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "../ros/msg.h"

namespace Automow_PCB
{

  class batt_status : public ros::Msg
  {
    public:
      bool LED1;
      bool LED2;
      bool LED3;
      signed char batt_percent;

    virtual int serialize(unsigned char *outbuffer)
    {
      int offset = 0;
      union {
        bool real;
        unsigned char base;
      } u_LED1;
      u_LED1.real = this->LED1;
      *(outbuffer + offset + 0) = (u_LED1.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->LED1);
      union {
        bool real;
        unsigned char base;
      } u_LED2;
      u_LED2.real = this->LED2;
      *(outbuffer + offset + 0) = (u_LED2.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->LED2);
      union {
        bool real;
        unsigned char base;
      } u_LED3;
      u_LED3.real = this->LED3;
      *(outbuffer + offset + 0) = (u_LED3.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->LED3);
      union {
        signed char real;
        unsigned char base;
      } u_batt_percent;
      u_batt_percent.real = this->batt_percent;
      *(outbuffer + offset + 0) = (u_batt_percent.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->batt_percent);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        unsigned char base;
      } u_LED1;
      u_LED1.base = 0;
      u_LED1.base |= ((typeof(u_LED1.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->LED1 = u_LED1.real;
      offset += sizeof(this->LED1);
      union {
        bool real;
        unsigned char base;
      } u_LED2;
      u_LED2.base = 0;
      u_LED2.base |= ((typeof(u_LED2.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->LED2 = u_LED2.real;
      offset += sizeof(this->LED2);
      union {
        bool real;
        unsigned char base;
      } u_LED3;
      u_LED3.base = 0;
      u_LED3.base |= ((typeof(u_LED3.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->LED3 = u_LED3.real;
      offset += sizeof(this->LED3);
      union {
        signed char real;
        unsigned char base;
      } u_batt_percent;
      u_batt_percent.base = 0;
      u_batt_percent.base |= ((typeof(u_batt_percent.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->batt_percent = u_batt_percent.real;
      offset += sizeof(this->batt_percent);
     return offset;
    }

    const char * getType(){ return "Automow_PCB/batt_status"; };

  };

}
#endif