#ifndef ros_Status_h
#define ros_Status_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "../ros/msg.h"

namespace Automow_PCB
{

  class Status : public ros::Msg
  {
    public:
      bool cutter_left;
      bool cutter_right;
      signed char LEDstatus;
      signed char temp1;
      signed char temp2;
      int voltage;
      int current;

    virtual int serialize(unsigned char *outbuffer)
    {
      int offset = 0;
      union {
        bool real;
        unsigned char base;
      } u_cutter_left;
      u_cutter_left.real = this->cutter_left;
      *(outbuffer + offset + 0) = (u_cutter_left.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->cutter_left);
      union {
        bool real;
        unsigned char base;
      } u_cutter_right;
      u_cutter_right.real = this->cutter_right;
      *(outbuffer + offset + 0) = (u_cutter_right.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->cutter_right);
      union {
        signed char real;
        unsigned char base;
      } u_LEDstatus;
      u_LEDstatus.real = this->LEDstatus;
      *(outbuffer + offset + 0) = (u_LEDstatus.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->LEDstatus);
      union {
        signed char real;
        unsigned char base;
      } u_temp1;
      u_temp1.real = this->temp1;
      *(outbuffer + offset + 0) = (u_temp1.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->temp1);
      union {
        signed char real;
        unsigned char base;
      } u_temp2;
      u_temp2.real = this->temp2;
      *(outbuffer + offset + 0) = (u_temp2.base >> (8 * 0)) & 0xFF;
      offset += sizeof(this->temp2);
      union {
        int real;
        unsigned int base;
      } u_voltage;
      u_voltage.real = this->voltage;
      *(outbuffer + offset + 0) = (u_voltage.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_voltage.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->voltage);
      union {
        int real;
        unsigned int base;
      } u_current;
      u_current.real = this->current;
      *(outbuffer + offset + 0) = (u_current.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_current.base >> (8 * 1)) & 0xFF;
      offset += sizeof(this->current);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        bool real;
        unsigned char base;
      } u_cutter_left;
      u_cutter_left.base = 0;
      u_cutter_left.base |= ((typeof(u_cutter_left.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->cutter_left = u_cutter_left.real;
      offset += sizeof(this->cutter_left);
      union {
        bool real;
        unsigned char base;
      } u_cutter_right;
      u_cutter_right.base = 0;
      u_cutter_right.base |= ((typeof(u_cutter_right.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->cutter_right = u_cutter_right.real;
      offset += sizeof(this->cutter_right);
      union {
        signed char real;
        unsigned char base;
      } u_LEDstatus;
      u_LEDstatus.base = 0;
      u_LEDstatus.base |= ((typeof(u_LEDstatus.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->LEDstatus = u_LEDstatus.real;
      offset += sizeof(this->LEDstatus);
      union {
        signed char real;
        unsigned char base;
      } u_temp1;
      u_temp1.base = 0;
      u_temp1.base |= ((typeof(u_temp1.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->temp1 = u_temp1.real;
      offset += sizeof(this->temp1);
      union {
        signed char real;
        unsigned char base;
      } u_temp2;
      u_temp2.base = 0;
      u_temp2.base |= ((typeof(u_temp2.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      this->temp2 = u_temp2.real;
      offset += sizeof(this->temp2);
      union {
        int real;
        unsigned int base;
      } u_voltage;
      u_voltage.base = 0;
      u_voltage.base |= ((typeof(u_voltage.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      u_voltage.base |= ((typeof(u_voltage.base)) (*(inbuffer + offset + 1))) << (8 * 1);
      this->voltage = u_voltage.real;
      offset += sizeof(this->voltage);
      union {
        int real;
        unsigned int base;
      } u_current;
      u_current.base = 0;
      u_current.base |= ((typeof(u_current.base)) (*(inbuffer + offset + 0))) << (8 * 0);
      u_current.base |= ((typeof(u_current.base)) (*(inbuffer + offset + 1))) << (8 * 1);
      this->current = u_current.real;
      offset += sizeof(this->current);
     return offset;
    }

    const char * getType(){ return "Automow_PCB/Status"; };

  };

}
#endif