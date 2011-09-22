#ifndef ros_cutter_control_h
#define ros_cutter_control_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "../ros/msg.h"

namespace Automow_PCB
{

  class cutter_control : public ros::Msg
  {
    public:
      bool cutter_left;
      bool cutter_right;

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
     return offset;
    }

    const char * getType(){ return "Automow_PCB/cutter_control"; };

  };

}
#endif