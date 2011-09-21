"""autogenerated by genmsg_py from Num.msg. Do not edit."""
import roslib.message
import struct


class Num(roslib.message.Message):
  _md5sum = "1cd5a6007191577a7018ee6a7ba45df2"
  _type = "Automow_PCB/Num"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int8 cutter_left
int8 cutter_right
int8 LEDstatus
int8 temp1
int8 temp2
int16 voltage
int16 current 


"""
  __slots__ = ['cutter_left','cutter_right','LEDstatus','temp1','temp2','voltage','current']
  _slot_types = ['int8','int8','int8','int8','int8','int16','int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       cutter_left,cutter_right,LEDstatus,temp1,temp2,voltage,current
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(Num, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.cutter_left is None:
        self.cutter_left = 0
      if self.cutter_right is None:
        self.cutter_right = 0
      if self.LEDstatus is None:
        self.LEDstatus = 0
      if self.temp1 is None:
        self.temp1 = 0
      if self.temp2 is None:
        self.temp2 = 0
      if self.voltage is None:
        self.voltage = 0
      if self.current is None:
        self.current = 0
    else:
      self.cutter_left = 0
      self.cutter_right = 0
      self.LEDstatus = 0
      self.temp1 = 0
      self.temp2 = 0
      self.voltage = 0
      self.current = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_5b2h.pack(_x.cutter_left, _x.cutter_right, _x.LEDstatus, _x.temp1, _x.temp2, _x.voltage, _x.current))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.cutter_left, _x.cutter_right, _x.LEDstatus, _x.temp1, _x.temp2, _x.voltage, _x.current,) = _struct_5b2h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_5b2h.pack(_x.cutter_left, _x.cutter_right, _x.LEDstatus, _x.temp1, _x.temp2, _x.voltage, _x.current))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 9
      (_x.cutter_left, _x.cutter_right, _x.LEDstatus, _x.temp1, _x.temp2, _x.voltage, _x.current,) = _struct_5b2h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_5b2h = struct.Struct("<5b2h")