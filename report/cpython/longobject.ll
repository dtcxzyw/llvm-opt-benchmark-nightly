inline.NumInlined: 732
inline.NumDeleted: 98
begin_hunk_0
%struct._Py_unicode_fs_codec = type { ptr, i32, ptr, i32 }
%struct._Py_unicode_ids = type { i64, ptr }
%struct._Py_long_state = type { i32 }
%struct._dtoa_state = type { [8 x ptr], [8 x ptr], [288 x double], ptr }
%struct._py_func_state = type { i32, [4096 x %struct._func_version_cache_item] }
%struct._func_version_cache_item = type { ptr, ptr }
%struct._py_code_state = type { %struct.PyMutex, ptr }
%struct._Py_dict_state = type { i32, [8 x ptr] }
%struct._Py_exc_state = type { ptr, ptr, i32, ptr }
%struct._Py_mem_interp_free_queue = type { i32, %struct.PyMutex, %struct.llist_node }
%struct.ast_state = type { %struct._PyOnceFlag, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.types_state = type { i32, %struct.type_cache, %struct.anon.912, %struct.anon.913, %struct.PyMutex, [4096 x ptr] }
%struct.type_cache = type { [4096 x %struct.type_cache_entry] }
%struct.type_cache_entry = type { i32, ptr, ptr }
%struct.anon.912 = type { i64, [202 x %struct.managed_static_type_state] }
%struct.managed_static_type_state = type { ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.anon.913 = type { i64, i64, [10 x %struct.managed_static_type_state] }
%struct.callable_cache = type { ptr, ptr, ptr, ptr }
%struct._PyOptimizationConfig = type { i16, i16, i16, i16, i8, i8 }
%struct._rare_events = type { i8, i8, i8, i8, i8 }
%struct._Py_GlobalMonitors = type { [16 x i8] }
%struct._PyOnceFlag = type { i8 }
%struct._Py_interp_cached_objects = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._Py_interp_static_objects = type { %struct.anon.914 }
%struct.anon.914 = type { i32, %struct.PyGC_Head, %struct.PyHamtObject, %struct.PyBaseExceptionObject }
%struct.PyHamtObject = type { %struct._object, ptr, ptr, i64 }
%struct.PyBaseExceptionObject = type { %struct._object, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct._PyThreadStateImpl = type { %struct._ts, %struct._PyInterpreterFrame, i64, i64, i64, i64, i64, i64, ptr, ptr, i32, %struct.llist_node, ptr, %struct.llist_node }
%struct._ts = type { ptr, ptr, ptr, i64, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i64, i64, ptr, i64, i32, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, %struct._err_stackitem, ptr, ptr, i64, ptr, ptr, %struct._PyRemoteDebuggerSupport }
%struct.anon.1 = type { i32 }
%struct._err_stackitem = type { ptr, ptr }
%struct._PyRemoteDebuggerSupport = type { i32, [512 x i8] }
%struct._PyInterpreterFrame = type { %union._PyStackRef, ptr, %union._PyStackRef, ptr, ptr, ptr, ptr, ptr, ptr, i16, i8, i8, [1 x %union._PyStackRef] }
%union._PyStackRef = type { i64 }
%struct.anon.916 = type { %struct.PyGC_Head, %struct.PyVarObject, i64, [3 x ptr] }
%struct.anon.917 = type { %struct.PyGC_Head, %struct.PyVarObject, i64, [3 x ptr] }
%struct.anon.918 = type { %struct.PyGC_Head, %struct.PyVarObject, i64, [1 x ptr] }
%struct.PyStructSequence_Field = type { ptr, ptr }
%struct.PyStatus = type { i32, ptr, ptr, i32 }
%struct.Py_buffer = type { ptr, ptr, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct._PyUnicodeWriter = type { ptr, ptr, i32, i32, i64, i64, i64, i32, i8, i8 }

@PyExc_OverflowError = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [41 x i8] c"cannot convert float infinity to integer\00", align 1
@PyExc_ValueError = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"cannot convert float NaN to integer\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"../Objects/longobject.c\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Python int too large to convert to C long\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Python int too large to convert to C int\00", align 1
@PyExc_TypeError = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"an integer is required\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Python int too large to convert to C ssize_t\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"can't convert negative value to unsigned int\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Python int too large to convert to C unsigned long\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"can't convert negative value to size_t\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Python int too large to convert to C size_t\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"expected int, got %T\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"expect int, got %T\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"can't convert negative int to unsigned\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"int too big to convert\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Cannot convert negative int\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Python int too large for C unsigned short\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Python int too large for C unsigned int\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Python int too large for C unsigned long\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Python int too large for C unsigned long long\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Python int too large for C size_t\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"Python int too large for C uint8_t\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Python int too large for C uint16_t\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Python int too large for C uint32_t\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Python int too large for C uint64_t\00", align 1
@_PyLong_DigitValue = dso_local local_unnamed_addr global [256 x i8] c"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\00\01\02\03\04\05\06\07\08\09%%%%%%%\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#%%%%%%\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%", align 16
@.str.25 = private unnamed_addr constant [35 x i8] c"int() arg 2 must be >= 2 and <= 36\00", align 1
@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str.26 = private unnamed_addr constant [47 x i8] c"invalid literal for int() with base %d: %.200R\00", align 1
@_PyLong_Frexp.half_even_correction = internal unnamed_addr constant [8 x i32] [i32 0, i32 -1, i32 -2, i32 1, i32 0, i32 -1, i32 2, i32 1], align 16
@.str.27 = private unnamed_addr constant [34 x i8] c"int too large to convert to float\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"non-integer arguments in division\00", align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.29 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@long_as_number = internal global %struct.PyNumberMethods { ptr @long_add_method, ptr @long_sub_method, ptr @long_mul_method, ptr @long_mod, ptr @long_divmod, ptr @long_pow, ptr @long_neg_method, ptr @long_long, ptr @long_abs_method, ptr @long_bool, ptr @long_invert, ptr @long_lshift_method, ptr @long_rshift, ptr @long_and, ptr @long_xor, ptr @long_or, ptr @long_long, ptr null, ptr @long_float, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @long_div, ptr @long_true_divide, ptr null, ptr null, ptr @long_long, ptr null, ptr null }, align 8
@long_doc = internal constant [606 x i8] c"int([x]) -> integer\0Aint(x, base=10) -> integer\0A\0AConvert a number or string to an integer, or return 0 if no arguments\0Aare given.  If x is a number, return x.__int__().  For floating-point\0Anumbers, this truncates towards zero.\0A\0AIf x is not a number or if base is given, then x must be a string,\0Abytes, or bytearray instance representing an integer literal in the\0Agiven base.  The literal can be preceded by '+' or '-' and be surrounded\0Aby whitespace.  The base defaults to 10.  Valid bases are 0 and 2-36.\0ABase 0 means to interpret the base from the string as an integer literal.\0A>>> int('0b100', base=0)\0A4\00", align 16
@long_getset = internal global [5 x %struct.PyGetSetDef] [%struct.PyGetSetDef { ptr @.str.86, ptr @long_long_getter, ptr null, ptr @.str.87, ptr null }, %struct.PyGetSetDef { ptr @.str.88, ptr @long_get0, ptr null, ptr @.str.89, ptr null }, %struct.PyGetSetDef { ptr @.str.90, ptr @long_long_getter, ptr null, ptr @.str.91, ptr null }, %struct.PyGetSetDef { ptr @.str.92, ptr @long_get1, ptr null, ptr @.str.93, ptr null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyLong_Type = dso_local global { %struct.PyVarObject, ptr, i64, i64, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [4 x i8], ptr, ptr, i8, i8, i16, [4 x i8] } { %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyType_Type }, i64 0 }, ptr @.str.29, i64 24, i64 4, ptr @long_dealloc, i64 0, ptr null, ptr null, ptr null, ptr @long_to_decimal_string, ptr @long_as_number, ptr null, ptr null, ptr @long_hash, ptr null, ptr null, ptr @PyObject_GenericGetAttr, ptr null, ptr null, i64 20972544, ptr @long_doc, ptr null, ptr null, ptr @long_richcompare, i64 0, ptr null, ptr null, ptr @long_methods, ptr null, ptr @long_getset, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr @long_new, ptr @PyObject_Free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1, [4 x i8] zeroinitializer, ptr null, ptr @long_vectorcall, i8 0, i8 0, i16 0, [4 x i8] zeroinitializer }, align 8
@Int_InfoType = internal global %struct._typeobject zeroinitializer, align 8
@__func__._PyLong_InitTypes = private unnamed_addr constant [18 x i8] c"_PyLong_InitTypes\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"can't init int info type\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Python int too large to convert to C int32_t\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Python int too large to convert to C int64_t\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"Python int too large to convert to C uint32_t\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"Python int too large to convert to C uint64_t\00", align 1
@PyLong_LAYOUT = internal constant %struct.PyLongLayout { i8 30, i8 4, i8 -1, i8 -1 }, align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"ndigits must be positive\00", align 1
@.str.36 = private unnamed_addr constant [27 x i8] c"too many digits in integer\00", align 1
@_PyRuntime = external global %struct.pyruntimestate, align 8
@.str.37 = private unnamed_addr constant [116 x i8] c"Exceeds the limit (%d digits) for integer string conversion; use sys.set_int_max_str_digits() to increase the limit\00", align 1
@_Py_tss_interp = external thread_local local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"_pylong\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"int_to_decimal_string\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"_pylong.int_to_decimal_string did not return a str\00", align 1
@.str.42 = private unnamed_addr constant [24 x i8] c"int too large to format\00", align 1
@.str.43 = private unnamed_addr constant [138 x i8] c"Exceeds the limit (%d digits) for integer string conversion: value has %zd digits; use sys.set_int_max_str_digits() to increase the limit\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"int string too large to convert\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"int_from_string\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"_pylong.int_from_string did not return an int\00", align 1
@log_base_BASE = internal unnamed_addr constant [37 x double] [double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double f0x3FAB0CCE8C661F5F, double 0.000000e+00, double f0x3FB3D0544E5F9D46, double f0x3FB60EEFCEBB9838, double f0x3FB7F4C2A9F337A7, double 0.000000e+00, double f0x3FBB0CCE8C661F5F, double f0x3FBC58DCD6E825CF, double f0x3FBD853E6228EC03, double f0x3FBE9778574420C1, double f0x3FBF93BBE1ACAD04, double f0x3FC03EA5993DE018, double f0x3FC0AB5DCA49567B, double 0.000000e+00, double f0x3FC17099731CF385, double f0x3FC1CAAB8A7753F3, double f0x3FC21FDE9FC458CD, double f0x3FC270B2AFB8572B, double f0x3FC2BD94F81323AC, double f0x3FC306E37558BA46, double f0x3FC34CEF99B629F4, double f0x3FC390006FE654A5, double f0x3FC3D0544E5F9D46, double f0x3FC40E22351A9AC6, double f0x3FC4499AE94C9787, double f0x3FC482E9DD82245C, double f0x3FC4BA35F0FA4B0C, double f0x3FC4EFA20E8D9ABF, double f0x3FC5234DB18496BA, double 0.000000e+00, double f0x3FC585D2D42DFDD9, double f0x3FC5B4DDB76137C9, double f0x3FC5E28B7C296A77, double f0x3FC60EEFCEBB9838], align 16
@convwidth_base = internal unnamed_addr constant [37 x i32] [i32 0, i32 0, i32 0, i32 18, i32 0, i32 12, i32 11, i32 10, i32 0, i32 9, i32 9, i32 8, i32 8, i32 8, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 0, i32 5, i32 5, i32 5, i32 5], align 16
@convmultmax_base = internal unnamed_addr constant [37 x i64] [i64 0, i64 0, i64 0, i64 387420489, i64 0, i64 244140625, i64 362797056, i64 282475249, i64 0, i64 387420489, i64 1000000000, i64 214358881, i64 429981696, i64 815730721, i64 105413504, i64 170859375, i64 0, i64 410338673, i64 612220032, i64 893871739, i64 64000000, i64 85766121, i64 113379904, i64 148035889, i64 191102976, i64 244140625, i64 308915776, i64 387420489, i64 481890304, i64 594823321, i64 729000000, i64 887503681, i64 0, i64 39135393, i64 45435424, i64 52521875, i64 60466176], align 16
@PyExc_ZeroDivisionError = external local_unnamed_addr global ptr, align 8
@.str.47 = private unnamed_addr constant [17 x i8] c"division by zero\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@.str.48 = private unnamed_addr constant [11 x i8] c"int_divmod\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.50 = private unnamed_addr constant [48 x i8] c"tuple of length 2 is required from int_divmod()\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"tuple of int is required from int_divmod()\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyFloat_Type = external local_unnamed_addr global %struct._typeobject, align 8
@.str.52 = private unnamed_addr constant [31 x i8] c"pow() 3rd argument cannot be 0\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"base is not invertible for the given modulus\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"negative shift count\00", align 1
@.str.56 = private unnamed_addr constant [46 x i8] c"integer division result too large for a float\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.57 = private unnamed_addr constant [10 x i8] c"conjugate\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Returns self, the complex conjugate of any int.\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"bit_length\00", align 1
@int_bit_length__doc__ = internal constant [127 x i8] c"bit_length($self, /)\0A--\0A\0ANumber of bits necessary to represent self in binary.\0A\0A>>> bin(37)\0A'0b100101'\0A>>> (37).bit_length()\0A6\00", align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"bit_count\00", align 1
@int_bit_count__doc__ = internal constant [181 x i8] c"bit_count($self, /)\0A--\0A\0ANumber of ones in the binary representation of the absolute value of self.\0A\0AAlso known as the population count.\0A\0A>>> bin(13)\0A'0b1101'\0A>>> (13).bit_count()\0A3\00", align 16
@.str.61 = private unnamed_addr constant [9 x i8] c"to_bytes\00", align 1
@int_to_bytes__doc__ = internal constant [835 x i8] c"to_bytes($self, /, length=1, byteorder='big', *, signed=False)\0A--\0A\0AReturn an array of bytes representing an integer.\0A\0A  length\0A    Length of bytes object to use.  An OverflowError is raised if the\0A    integer is not representable with the given number of bytes.  Default\0A    is length 1.\0A  byteorder\0A    The byte order used to represent the integer.  If byteorder is 'big',\0A    the most significant byte is at the beginning of the byte array.  If\0A    byteorder is 'little', the most significant byte is at the end of the\0A    byte array.  To request the native byte order of the host system, use\0A    sys.byteorder as the byte order value.  Default is to use 'big'.\0A  signed\0A    Determines whether two's complement is used to represent the integer.\0A    If signed is False and a negative integer is given, an OverflowError\0A    is raised.\00", align 16
@.str.62 = private unnamed_addr constant [11 x i8] c"from_bytes\00", align 1
@int_from_bytes__doc__ = internal constant [829 x i8] c"from_bytes($type, /, bytes, byteorder='big', *, signed=False)\0A--\0A\0AReturn the integer represented by the given array of bytes.\0A\0A  bytes\0A    Holds the array of bytes to convert.  The argument must either\0A    support the buffer protocol or be an iterable object producing bytes.\0A    Bytes and bytearray are examples of built-in objects that support the\0A    buffer protocol.\0A  byteorder\0A    The byte order used to represent the integer.  If byteorder is 'big',\0A    the most significant byte is at the beginning of the byte array.  If\0A    byteorder is 'little', the most significant byte is at the end of the\0A    byte array.  To request the native byte order of the host system, use\0A    sys.byteorder as the byte order value.  Default is to use 'big'.\0A  signed\0A    Indicates whether two's complement is used to represent the integer.\00", align 16
@.str.63 = private unnamed_addr constant [17 x i8] c"as_integer_ratio\00", align 1
@int_as_integer_ratio__doc__ = internal constant [271 x i8] c"as_integer_ratio($self, /)\0A--\0A\0AReturn a pair of integers, whose ratio is equal to the original int.\0A\0AThe ratio is in lowest terms and has a positive denominator.\0A\0A>>> (10).as_integer_ratio()\0A(10, 1)\0A>>> (-10).as_integer_ratio()\0A(-10, 1)\0A>>> (0).as_integer_ratio()\0A(0, 1)\00", align 16
@.str.64 = private unnamed_addr constant [10 x i8] c"__trunc__\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"Truncating an Integral returns itself.\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"__floor__\00", align 1
@.str.67 = private unnamed_addr constant [37 x i8] c"Flooring an Integral returns itself.\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"__ceil__\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Ceiling of an Integral returns itself.\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"__round__\00", align 1
@int___round____doc__ = internal constant [135 x i8] c"__round__($self, ndigits=None, /)\0A--\0A\0ARounding an Integral returns itself.\0A\0ARounding with an ndigits argument also returns an integer.\00", align 16
@.str.71 = private unnamed_addr constant [15 x i8] c"__getnewargs__\00", align 1
@int___getnewargs____doc__ = internal constant [30 x i8] c"__getnewargs__($self, /)\0A--\0A\0A\00", align 16
@.str.72 = private unnamed_addr constant [11 x i8] c"__format__\00", align 1
@int___format____doc__ = internal constant [84 x i8] c"__format__($self, format_spec, /)\0A--\0A\0AConvert to a string according to format_spec.\00", align 16
@.str.73 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@int___sizeof____doc__ = internal constant [59 x i8] c"__sizeof__($self, /)\0A--\0A\0AReturns size in memory, in bytes.\00", align 16
@.str.74 = private unnamed_addr constant [11 x i8] c"is_integer\00", align 1
@int_is_integer__doc__ = internal constant [97 x i8] c"is_integer($self, /)\0A--\0A\0AReturns True. Exists for duck type compatibility with float.is_integer.\00", align 16
@long_methods = internal global [15 x { ptr, ptr, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.57, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.58 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.59, ptr @int_bit_length, i32 4, [4 x i8] zeroinitializer, ptr @int_bit_length__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.60, ptr @int_bit_count, i32 4, [4 x i8] zeroinitializer, ptr @int_bit_count__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.61, ptr @int_to_bytes, i32 130, [4 x i8] zeroinitializer, ptr @int_to_bytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.62, ptr @int_from_bytes, i32 146, [4 x i8] zeroinitializer, ptr @int_from_bytes__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.63, ptr @int_as_integer_ratio, i32 4, [4 x i8] zeroinitializer, ptr @int_as_integer_ratio__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.64, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.65 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.66, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.67 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.68, ptr @long_long_meth, i32 4, [4 x i8] zeroinitializer, ptr @.str.69 }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.70, ptr @int___round__, i32 128, [4 x i8] zeroinitializer, ptr @int___round____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.71, ptr @int___getnewargs__, i32 4, [4 x i8] zeroinitializer, ptr @int___getnewargs____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.72, ptr @int___format__, i32 8, [4 x i8] zeroinitializer, ptr @int___format____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.73, ptr @int___sizeof__, i32 4, [4 x i8] zeroinitializer, ptr @int___sizeof____doc__ }, { ptr, ptr, i32, [4 x i8], ptr } { ptr @.str.74, ptr @int_is_integer, i32 4, [4 x i8] zeroinitializer, ptr @int_is_integer__doc__ }, { ptr, ptr, i32, [4 x i8], ptr } zeroinitializer], align 16
@int_to_bytes._kwtuple = internal global %struct.anon.916 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 3 }, i64 -1, [3 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 90080), ptr getelementptr (i8, ptr @_PyRuntime, i64 76352), ptr getelementptr (i8, ptr @_PyRuntime, i64 99688)] }, align 8
@PyTuple_Type = external global %struct._typeobject, align 8
@int_to_bytes._keywords = internal constant [4 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr null], align 16
@.str.76 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"byteorder\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@int_to_bytes._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @int_to_bytes._keywords, ptr @.str.61, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @int_to_bytes._kwtuple, i64 16), ptr null }, align 8
@.str.79 = private unnamed_addr constant [26 x i8] c"length cannot be negative\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"argument 'byteorder'\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"byteorder must be either 'little' or 'big'\00", align 1
@int_from_bytes._kwtuple = internal global %struct.anon.917 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 3 }, i64 -1, [3 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 76408), ptr getelementptr (i8, ptr @_PyRuntime, i64 76352), ptr getelementptr (i8, ptr @_PyRuntime, i64 99688)] }, align 8
@int_from_bytes._keywords = internal constant [4 x ptr] [ptr @.str.83, ptr @.str.77, ptr @.str.78, ptr null], align 16
@.str.83 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@int_from_bytes._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @int_from_bytes._keywords, ptr @.str.62, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @int_from_bytes._kwtuple, i64 16), ptr null }, align 8
@PyBytes_Type = external global %struct._typeobject, align 8
@.str.84 = private unnamed_addr constant [4 x i8] c"(N)\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"argument\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.87 = private unnamed_addr constant [34 x i8] c"the real part of a complex number\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"the imaginary part of a complex number\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"numerator\00", align 1
@.str.91 = private unnamed_addr constant [51 x i8] c"the numerator of a rational number in lowest terms\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"denominator\00", align 1
@.str.93 = private unnamed_addr constant [53 x i8] c"the denominator of a rational number in lowest terms\00", align 1
@long_new._kwtuple = internal global %struct.anon.918 { %struct.PyGC_Head zeroinitializer, %struct.PyVarObject { %struct._object { %union.anon { i64 1407378104778752 }, ptr @PyTuple_Type }, i64 1 }, i64 -1, [1 x ptr] [ptr getelementptr (i8, ptr @_PyRuntime, i64 75408)] }, align 8
@long_new._keywords = internal constant [3 x ptr] [ptr @.str.94, ptr @.str.95, ptr null], align 16
@.str.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@long_new._parser = internal global { ptr, ptr, ptr, ptr, %struct._PyOnceFlag, [3 x i8], i32, i32, i32, i32, [4 x i8], ptr, ptr } { ptr null, ptr @long_new._keywords, ptr @.str.29, ptr null, %struct._PyOnceFlag zeroinitializer, [3 x i8] zeroinitializer, i32 0, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr getelementptr (i8, ptr @long_new._kwtuple, i64 16), ptr null }, align 8
@.str.96 = private unnamed_addr constant [30 x i8] c"int() missing string argument\00", align 1
@.str.97 = private unnamed_addr constant [40 x i8] c"int() base must be >= 2 and <= 36, or 0\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@.str.98 = private unnamed_addr constant [50 x i8] c"int() can't convert non-string with explicit base\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"int expected at most 2 arguments, got %zd\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"sys.int_info\00", align 1
@int_info__doc__ = internal constant [134 x i8] c"sys.int_info\0A\0AA named tuple that holds information about Python's\0Ainternal representation of integers.  The attributes are read only.\00", align 16
@int_info_fields = internal global [5 x %struct.PyStructSequence_Field] [%struct.PyStructSequence_Field { ptr @.str.102, ptr @.str.103 }, %struct.PyStructSequence_Field { ptr @.str.104, ptr @.str.105 }, %struct.PyStructSequence_Field { ptr @.str.106, ptr @.str.107 }, %struct.PyStructSequence_Field { ptr @.str.108, ptr @.str.109 }, %struct.PyStructSequence_Field zeroinitializer], align 16
@int_info_desc = internal global { ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.100, ptr @int_info__doc__, ptr @int_info_fields, i32 4, [4 x i8] zeroinitializer }, align 8
@.str.102 = private unnamed_addr constant [15 x i8] c"bits_per_digit\00", align 1
@.str.103 = private unnamed_addr constant [24 x i8] c"size of a digit in bits\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"sizeof_digit\00", align 1
@.str.105 = private unnamed_addr constant [54 x i8] c"size in bytes of the C type used to represent a digit\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"default_max_str_digits\00", align 1
@.str.107 = private unnamed_addr constant [44 x i8] c"maximum string conversion digits limitation\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"str_digits_check_threshold\00", align 1
@.str.109 = private unnamed_addr constant [46 x i8] c"minimum positive value for int_max_str_digits\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @_PyLong_New(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @long_alloc(i64 noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @long_alloc(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i64 %0, 307445734561825860
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.36) #16
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.not18 = icmp eq i64 %0, 0
  %i.c = tail call i64 @llvm.umax.i64(i64 %0, i64 1)
  %i.d = icmp ult i64 %0, 2
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 11200    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.e, label %_PyFreeList_Pop.exit

_PyFreeList_Pop.exit:                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  store ptr %i.i, ptr %i.g, align 8, !tbaa !16
  %i.j = getelementptr i8, ptr %i.f, i64 11208    ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = add i64 %i.k, -1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !20
  br label %_PyObject_Init.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = shl i64 %i.c, 2
  %i.n = add i64 %i.m, 24
  %i.o = tail call ptr @PyObject_Malloc(i64 noundef %i.n) #16 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @PyErr_NoMemory() #16      ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.o, i64 8
  store ptr @PyLong_Type, ptr %i.q, align 8, !tbaa !21
  %i.r = load i32, ptr @PyLong_Type, align 8, !tbaa !24 ; 2 uses
  %i.s = icmp ugt i32 %i.r, -1073741825
  br i1 %i.s, label %_PyObject_Init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = add nuw i32 %i.r, 1
  store i32 %i.t, ptr @PyLong_Type, align 8, !tbaa !24
  br label %_PyObject_Init.exit

_PyObject_Init.exit:                              ; preds = %bb.h, %bb.g, %_PyFreeList_Pop.exit
  %.sink = phi ptr [ %i.h, %_PyFreeList_Pop.exit ], [ %i.o, %bb.g ], [ %i.o, %bb.h ] ; 4 uses
  tail call void @_Py_NewReference(ptr noundef nonnull %.sink) #16
  %i.u = zext i1 %.not18 to i64
  %i.v = shl i64 %0, 3
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = getelementptr i8, ptr %.sink, i64 16
  store i64 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr i8, ptr %.sink, i64 24
  store i32 0, ptr %i.y, align 8, !tbaa !7
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %_PyObject_Init.exit, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %.sink, %_PyObject_Init.exit ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_FromDigits(i32 noundef %0, i64 noundef %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @long_alloc(i64 noundef %1) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %0, 0
  %i.d = select i1 %.not, i64 0, i64 2
  %i.e = shl i64 %1, 3
  %i.f = or disjoint i64 %i.e, %i.d
  %i.g = getelementptr i8, ptr %i.b, i64 16
  store i64 %i.f, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr i8, ptr %i.b, i64 24
  %i.i = shl i64 %1, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.h, ptr align 4 %2, i64 %i.i, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.b, %bb.c ], [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14296), %bb.a ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @_PyLong_Copy(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val24 = load i64, ptr %i.a, align 8, !tbaa !25 ; 4 uses
  %i.b = icmp ugt i64 %.val24, 15
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val26 = load i32, ptr %i.c, align 8, !tbaa !7
  %i.d = and i64 %.val24, 3
  %i.e = sub nsw i64 1, %i.d
  %i.f = zext i32 %.val26 to i64
  %i.g = mul nsw i64 %i.e, %i.f                   ; 2 uses
  %i.h = add nsw i64 %i.g, -1025
  %or.cond = icmp ult i64 %i.h, -1030
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = shl nsw i64 %i.g, 5
  %i.j = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 160
  br label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.l = lshr i64 %.val24, 3                      ; 2 uses
  %i.m = tail call fastcc ptr @long_alloc(i64 noundef %i.l) ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread
  %i.o = and i64 %.val24, -5
  %i.p = getelementptr i8, ptr %i.m, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr i8, ptr %i.m, i64 24
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.q, ptr align 8 %i.r, i64 %i.s, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread
  %.2 = phi ptr [ %i.k, %bb.c ], [ %i.m, %bb.d ], [ null, %.thread ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromLong(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i64 %0, 5
  %or.cond = icmp ult i64 %i.a, 1030
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = shl nsw i64 %0, 5
  %i.c = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 14136), i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 160
  br label %_PyLong_FromMedium.exit

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %0, 1073741823
  %or.cond3 = icmp ult i64 %i.e, 2147483647
  br i1 %or.cond3, label %bb.d, label %.peel.begin

bb.d:                                             ; preds = %bb.c
  %i.f = trunc nsw i64 %0 to i32
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 11200    ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.e, label %_PyFreeList_Pop.exit.i

_PyFreeList_Pop.exit.i:                           ; preds = %bb.d
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  store ptr %i.k, ptr %i.i, align 8, !tbaa !16
  %i.l = getelementptr i8, ptr %i.h, i64 11208    ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !20
  %i.n = add i64 %i.m, -1
  store i64 %i.n, ptr %i.l, align 8, !tbaa !20
  br label %_PyObject_Init.exit.i
end_hunk_0
begin_hunk_1_@long_to_decimal_string_internal:bb.a
_PyUnicode_DATA.exit336:                          ; preds = %bb.cl, %bb.ck, %_PyUnicode_DATA.exit328
  %.pn = phi ptr [ %i.st, %_PyUnicode_DATA.exit328 ], [ %.0.i.i333, %bb.ck ], [ %.val4.i335, %bb.cl ]
  %.0 = getelementptr [4 x i8], ptr %.pn, i64 %.0217.lcssa ; 2 uses
  %i.sy = icmp sgt i64 %.2216, 0
  br i1 %i.sy, label %.lr.ph408, label %._crit_edge409

.lr.ph408:                                        ; preds = %_PyUnicode_DATA.exit336, %.lr.ph408
  %.1407 = phi ptr [ %i.ui, %.lr.ph408 ], [ %.0, %_PyUnicode_DATA.exit336 ] ; 6 uses
  %.4222406 = phi i64 [ %i.uj, %.lr.ph408 ], [ 0, %_PyUnicode_DATA.exit336 ] ; 2 uses
  %i.sz = getelementptr [4 x i8], ptr %i.ig, i64 %.4222406
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !7  ; 9 uses
  %i.tb = urem i32 %i.ta, 10
  %i.tc = or disjoint i32 %i.tb, 48
  %i.td = getelementptr i8, ptr %.1407, i64 -4
  store i32 %i.tc, ptr %i.td, align 4, !tbaa !7
  %i.te = getelementptr i8, ptr %.1407, i64 -20
  %i.tf = udiv i32 %i.ta, 10
  %i.tg = udiv i32 %i.ta, 100
  %i.th = udiv i32 %i.ta, 1000
  %i.ti = udiv i32 %i.ta, 10000
  %i.tj = insertelement <4 x i32> poison, i32 %i.ti, i64 0
  %i.tk = insertelement <4 x i32> %i.tj, i32 %i.th, i64 1
  %i.tl = insertelement <4 x i32> %i.tk, i32 %i.tg, i64 2
  %i.tm = insertelement <4 x i32> %i.tl, i32 %i.tf, i64 3
  %i.tn = urem <4 x i32> %i.tm, splat (i32 10)
  %i.to = or disjoint <4 x i32> %i.tn, splat (i32 48)
  store <4 x i32> %i.to, ptr %i.te, align 4, !tbaa !7
  %i.tp = udiv i32 %i.ta, 100000
  %.lhs.trunc469 = trunc nuw i32 %i.tp to i16
  %i.tq = urem i16 %.lhs.trunc469, 10
  %i.tr = or disjoint i16 %i.tq, 48
  %i.ts = zext nneg i16 %i.tr to i32
  %i.tt = getelementptr i8, ptr %.1407, i64 -24
  store i32 %i.ts, ptr %i.tt, align 4, !tbaa !7
  %i.tu = udiv i32 %i.ta, 1000000
  %.lhs.trunc471 = trunc nuw nsw i32 %i.tu to i16
  %i.tv = urem i16 %.lhs.trunc471, 10
  %i.tw = or disjoint i16 %i.tv, 48
  %i.tx = zext nneg i16 %i.tw to i32
  %i.ty = getelementptr i8, ptr %.1407, i64 -28
  store i32 %i.tx, ptr %i.ty, align 4, !tbaa !7
  %i.tz = udiv i32 %i.ta, 10000000
  %.lhs.trunc473 = trunc nuw nsw i32 %i.tz to i16
  %i.ua = urem i16 %.lhs.trunc473, 10
  %i.ub = or disjoint i16 %i.ua, 48
  %i.uc = zext nneg i16 %i.ub to i32
  %i.ud = getelementptr i8, ptr %.1407, i64 -32
  store i32 %i.uc, ptr %i.ud, align 4, !tbaa !7
  %i.ue = udiv i32 %i.ta, 100000000
  %.lhs.trunc475 = trunc nuw nsw i32 %i.ue to i8
  %i.uf = urem i8 %.lhs.trunc475, 10
  %i.ug = or disjoint i8 %i.uf, 48
  %i.uh = zext nneg i8 %i.ug to i32
  %i.ui = getelementptr i8, ptr %.1407, i64 -36   ; 3 uses
  store i32 %i.uh, ptr %i.ui, align 4, !tbaa !7
  %i.uj = add nuw nsw i64 %.4222406, 1            ; 2 uses
  %exitcond435.not = icmp eq i64 %i.uj, %.2216
  br i1 %exitcond435.not, label %._crit_edge409, label %.lr.ph408, !llvm.loop !197

._crit_edge409:                                   ; preds = %.lr.ph408, %_PyUnicode_DATA.exit336
  %.4222.lcssa = phi i64 [ 0, %_PyUnicode_DATA.exit336 ], [ %.2216, %.lr.ph408 ]
  %.1.lcssa = phi ptr [ %.0, %_PyUnicode_DATA.exit336 ], [ %i.ui, %.lr.ph408 ]
  %i.uk = getelementptr [4 x i8], ptr %i.ig, i64 %.4222.lcssa
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !7
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cm, %._crit_edge409
  %.7 = phi i32 [ %i.ul, %._crit_edge409 ], [ %i.up, %bb.cm ] ; 3 uses
  %.3 = phi ptr [ %.1.lcssa, %._crit_edge409 ], [ %i.uo, %bb.cm ] ; 2 uses
  %i.um = urem i32 %.7, 10
  %i.un = or disjoint i32 %i.um, 48
  %i.uo = getelementptr i8, ptr %.3, i64 -4       ; 2 uses
  store i32 %i.un, ptr %i.uo, align 4, !tbaa !7
  %i.up = udiv i32 %.7, 10
  %.not261 = icmp ult i32 %.7, 10
  br i1 %.not261, label %bb.cn, label %bb.cm, !llvm.loop !198

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.h, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.uq = getelementptr i8, ptr %.3, i64 -8
  store i32 45, ptr %i.uq, align 4, !tbaa !7
  br label %bb.cp

bb.cp:                                            ; preds = %bb.bt, %bb.bu, %bb.cd, %bb.ce, %bb.cn, %bb.co, %bb.bg, %bb.bh
  %.not260343 = phi i1 [ true, %bb.bt ], [ true, %bb.bu ], [ true, %bb.cd ], [ true, %bb.ce ], [ true, %bb.cn ], [ true, %bb.co ], [ false, %bb.bg ], [ false, %bb.bh ]
  %.0213341 = phi ptr [ %.0213342355, %bb.bt ], [ %.0213342355, %bb.bu ], [ %.0213342355, %bb.cd ], [ %.0213342355, %bb.ce ], [ %.0213342355, %bb.cn ], [ %.0213342355, %bb.co ], [ null, %bb.bg ], [ null, %bb.bh ]
  %i.ur = load i32, ptr %i.id, align 8, !tbaa !24 ; 2 uses
  %.not.i.i337 = icmp sgt i32 %i.ur, -1
  br i1 %.not.i.i337, label %bb.cq, label %_Py_DECREF_INT.exit

bb.cq:                                            ; preds = %bb.cp
  %i.us = add nsw i32 %i.ur, -1                   ; 2 uses
  store i32 %i.us, ptr %i.id, align 8, !tbaa !24
  %.not9.i.i = icmp eq i32 %i.us, 0
  br i1 %.not9.i.i, label %bb.cr, label %_Py_DECREF_INT.exit

bb.cr:                                            ; preds = %bb.cq
  %i.ut = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10568), align 8, !tbaa !51 ; 2 uses
  %.not10.i.i = icmp eq ptr %i.ut, null
  br i1 %.not10.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 10576), align 8, !tbaa !53
  %i.uv = tail call i32 %i.ut(ptr noundef nonnull %i.id, i32 noundef 1, ptr noundef %i.uu) #16, !inline_history !54 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.uw = getelementptr i8, ptr %i.id, i64 16
  %.val6.i.i.i = load i64, ptr %i.uw, align 8, !tbaa !25 ; 2 uses
  %i.ux = and i64 %.val6.i.i.i, 4
  %.not.i.i.i338 = icmp eq i64 %i.ux, 0
  br i1 %.not.i.i.i338, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  tail call void @_Py_SetImmortal(ptr noundef nonnull %i.id) #16
  br label %_Py_DECREF_INT.exit

bb.cv:                                            ; preds = %bb.ct
  %i.uy = icmp ugt i64 %.val6.i.i.i, 15
  br i1 %i.uy, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uz = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !14 ; 2 uses
  %i.vb = getelementptr i8, ptr %i.va, i64 11208  ; 2 uses
  %i.vc = load i64, ptr %i.vb, align 8, !tbaa !20 ; 2 uses
  %or.cond.i.i.i.i.i = icmp ult i64 %i.vc, 100
  br i1 %or.cond.i.i.i.i.i, label %_PyFreeList_Push.exit.i.i.i.i, label %bb.cx

_PyFreeList_Push.exit.i.i.i.i:                    ; preds = %bb.cw
  %i.vd = getelementptr i8, ptr %i.va, i64 11200  ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !16
  store ptr %i.ve, ptr %i.id, align 8, !tbaa !19
  store ptr %i.id, ptr %i.vd, align 8, !tbaa !16
  %i.vf = add nuw nsw i64 %i.vc, 1
  store i64 %i.vf, ptr %i.vb, align 8, !tbaa !20
  br label %_Py_DECREF_INT.exit

bb.cx:                                            ; preds = %bb.cw
  tail call void @PyObject_Free(ptr noundef nonnull %i.id) #16
  br label %_Py_DECREF_INT.exit

bb.cy:                                            ; preds = %bb.cv
  tail call void @PyObject_Free(ptr noundef nonnull %i.id) #16
  br label %_Py_DECREF_INT.exit

_Py_DECREF_INT.exit:                              ; preds = %bb.cp, %bb.cq, %bb.cu, %_PyFreeList_Push.exit.i.i.i.i, %bb.cx, %bb.cy
  br i1 %.not258, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %_Py_DECREF_INT.exit
  %i.vg = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !157
  %i.vi = add i64 %i.vh, %.0217.lcssa
  store i64 %i.vi, ptr %i.vg, align 8, !tbaa !157
  br label %pylong_int_to_decimal_string.exit

bb.da:                                            ; preds = %_Py_DECREF_INT.exit
  br i1 %.not260343, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vj = load ptr, ptr %4, align 8, !tbaa !158
  %i.vk = getelementptr i8, ptr %i.vj, i64 %.0217.lcssa
  store ptr %i.vk, ptr %4, align 8, !tbaa !158
  br label %pylong_int_to_decimal_string.exit

bb.dc:                                            ; preds = %bb.da
  store ptr %.0213341, ptr %1, align 8, !tbaa !11
  br label %pylong_int_to_decimal_string.exit

pylong_int_to_decimal_string.exit:                ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.ah, %bb.ag, %bb.af, %Py_XDECREF.exit.sink.split.i, %bb.ad, %Py_DECREF.exit58.i, %bb.z, %bb.y, %Py_DECREF.exit60.i, %bb.h, %bb.cz, %bb.dc, %bb.db, %Py_DECREF.exit281, %.thread, %.critedge, %bb.c
  %.5 = phi i32 [ -1, %bb.c ], [ 0, %bb.cz ], [ -1, %.critedge ], [ %.0.ph.i, %Py_XDECREF.exit.sink.split.i ], [ -1, %bb.ah ], [ -1, %.thread ], [ -1, %bb.av ], [ -1, %bb.ba ], [ -1, %Py_DECREF.exit281 ], [ 0, %bb.db ], [ 0, %bb.dc ], [ 0, %bb.ad ], [ -1, %bb.h ], [ -1, %Py_DECREF.exit60.i ], [ -1, %bb.y ], [ -1, %bb.z ], [ 0, %Py_DECREF.exit58.i ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.at ], [ -1, %bb.au ], [ -1, %bb.ay ], [ -1, %bb.az ], [ -1, %bb.bc ], [ -1, %bb.bd ], [ -1, %bb.be ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @long_format_binary(ptr noundef readonly captures(address_is_null) %0, i32 noundef range(i32 11, 10) %1, i32 noundef %2, ptr noundef writeonly captures(none) %3, ptr noundef %4, ptr noundef %5, ptr noundef captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val276 = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr i8, ptr %.val276, i64 168
  %.val277 = load i64, ptr %i.c, align 8, !tbaa !35
  %i.d = and i64 %.val277, 16777216
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.2, i32 noundef 2342) #16
  br label %bb.bt

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.e, align 8, !tbaa !25  ; 3 uses
  %i.f = lshr i64 %.val, 3                        ; 10 uses
  %i.g = and i64 %.val, 3
  %i.h = icmp eq i64 %i.g, 2                      ; 5 uses
  switch i32 %1, label %9 [
    i32 16, label %10
    i32 8, label %7
    i32 2, label %8
  ]

7:                                                ; preds = %bb.d
  br label %10

8:                                                ; preds = %bb.d
  br label %10

9:                                                ; preds = %bb.d
  unreachable

10:                                               ; preds = %bb.d, %8, %7
  %.0239 = phi i32 [ 1, %8 ], [ 3, %7 ], [ 4, %bb.d ] ; 14 uses
  %11 = icmp eq i64 %i.f, 0                       ; 5 uses
  br i1 %11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %10
  %i.i = icmp ult i64 %.val, 2459565876494606888
  br i1 %i.i, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.j = add nsw i64 %i.f, -1                     ; 2 uses
  %i.k = mul nuw nsw i64 %i.j, 30
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = getelementptr [4 x i8], ptr %i.l, i64 %i.j
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.n, i1 false)
  %i.p = sub nuw nsw i32 32, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = zext i1 %i.h to i64
  %i.s = add nsw i32 %.0239, -1
  %i.t = zext nneg i32 %i.s to i64
  %i.u = add nuw nsw i64 %i.k, %i.t
  %i.v = add nuw nsw i64 %i.u, %i.q
  %i.w = zext nneg i32 %.0239 to i64
  %i.x = udiv i64 %i.v, %i.w
  %i.y = add nuw nsw i64 %i.x, %i.r
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.42) #16
  br label %bb.bt

bb.g:                                             ; preds = %.thread, %10
  %.1226 = phi i64 [ %i.y, %.thread ], [ 1, %10 ] ; 2 uses
  %.not267 = icmp eq i32 %2, 0                    ; 5 uses
  %i.aa = add nuw i64 %.1226, 2
  %spec.select = select i1 %.not267, i64 %.1226, i64 %i.aa ; 12 uses
  %.not268 = icmp eq ptr %4, null                 ; 5 uses
  br i1 %.not268, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %4, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !154
  %i.ad = icmp ugt i32 %i.ac, 119
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %4, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !156
  %i.ag = getelementptr i8, ptr %4, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !157
  %i.ai = sub i64 %i.af, %i.ah
  %i.aj = icmp sle i64 %spec.select, %i.ai
  %i.ak = icmp eq i64 %spec.select, 0
  %or.cond = or i1 %i.ak, %i.aj
  br i1 %or.cond, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.old1 = icmp eq i64 %spec.select, 0
  br i1 %.old1, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.al = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef %spec.select, i32 noundef 120) #16
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.bt, label %.critedge

bb.l:                                             ; preds = %bb.g
  %.not269 = icmp eq ptr %5, null
  br i1 %.not269, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %6, align 8, !tbaa !158
  %i.ao = tail call ptr @PyBytesWriter_GrowAndUpdatePointer(ptr noundef nonnull %5, i64 noundef %spec.select, ptr noundef %i.an) #16 ; 3 uses
  store ptr %i.ao, ptr %6, align 8, !tbaa !158
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.bt, label %.critedge.thread326

bb.n:                                             ; preds = %bb.l
  %i.aq = tail call ptr @PyUnicode_New(i64 noundef %spec.select, i32 noundef 120) #16 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.bt, label %bb.w

.critedge:                                        ; preds = %bb.i, %bb.j, %bb.k
  %.not270 = icmp eq ptr %5, null
  br i1 %.not270, label %bb.v, label %.critedge..critedge.thread326_crit_edge

.critedge..critedge.thread326_crit_edge:          ; preds = %.critedge
  %.pre = load ptr, ptr %6, align 8, !tbaa !158
  br label %.critedge.thread326

.critedge.thread326:                              ; preds = %.critedge..critedge.thread326_crit_edge, %bb.m
  %i.as = phi ptr [ %.pre, %.critedge..critedge.thread326_crit_edge ], [ %i.ao, %bb.m ]
  %i.at = getelementptr i8, ptr %i.as, i64 %spec.select ; 2 uses
  br i1 %11, label %bb.o, label %.preheader342

.preheader342:                                    ; preds = %.critedge.thread326
  %i.au = getelementptr i8, ptr %0, i64 24
  %i.av = add nuw nsw i32 %1, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = zext nneg i32 %.0239 to i64
  %i.ay = add nsw i64 %i.f, -1
  br label %bb.p

bb.o:                                             ; preds = %.critedge.thread326
  %i.az = getelementptr i8, ptr %i.at, i64 -1     ; 2 uses
  store i8 48, ptr %i.az, align 1, !tbaa !24
  br label %.loopexit343

bb.p:                                             ; preds = %.preheader342, %bb.r
  %.0241358 = phi i64 [ 0, %.preheader342 ], [ %i.bs, %bb.r ] ; 3 uses
  %.0242357 = phi i32 [ 0, %.preheader342 ], [ %i.bo, %bb.r ] ; 2 uses
  %.0244356 = phi i64 [ 0, %.preheader342 ], [ %i.bp, %bb.r ]
  %.0246355 = phi ptr [ %i.at, %.preheader342 ], [ %i.bn, %bb.r ]
  %i.ba = getelementptr [4 x i8], ptr %i.au, i64 %.0241358
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = zext i32 %i.bb to i64
  %i.bd = zext nneg i32 %.0242357 to i64
  %i.be = shl i64 %i.bc, %i.bd
  %i.bf = or i64 %i.be, %.0244356
  %i.bg = add i32 %.0242357, 30
  %i.bh = icmp slt i64 %.0241358, %i.ay
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.1247 = phi ptr [ %.0246355, %bb.p ], [ %i.bn, %bb.q ]
  %.1245 = phi i64 [ %i.bf, %bb.p ], [ %i.bp, %bb.q ] ; 2 uses
  %.1243 = phi i32 [ %i.bg, %bb.p ], [ %i.bo, %bb.q ]
  %i.bi = and i64 %.1245, %i.aw
  %i.bj = trunc i64 %i.bi to i8                   ; 2 uses
  %i.bk = icmp slt i8 %i.bj, 10
  %i.bl = select i1 %i.bk, i8 48, i8 87
  %i.bm = add i8 %i.bl, %i.bj
  %i.bn = getelementptr i8, ptr %.1247, i64 -1    ; 4 uses
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !24
  %i.bo = sub i32 %.1243, %.0239                  ; 3 uses
  %i.bp = lshr i64 %.1245, %i.ax                  ; 3 uses
  %i.bq = icmp sge i32 %i.bo, %.0239
  %i.br = icmp ne i64 %i.bp, 0
  %.in275 = select i1 %i.bh, i1 %i.bq, i1 %i.br
  br i1 %.in275, label %bb.q, label %bb.r, !llvm.loop !199

bb.r:                                             ; preds = %bb.q
  %i.bs = add nuw nsw i64 %.0241358, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.bs, %i.f
  br i1 %exitcond.not, label %.loopexit343, label %bb.p, !llvm.loop !200

.loopexit343:                                     ; preds = %bb.r, %bb.o
  %.2248 = phi ptr [ %i.az, %bb.o ], [ %i.bn, %bb.r ] ; 3 uses
  br i1 %.not267, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.loopexit343
  %i.bt = getelementptr i8, ptr %.2248, i64 -1
  %switch.selectcmp = icmp eq i32 %1, 8
  %switch.select = select i1 %switch.selectcmp, i8 111, i8 98
  %switch.selectcmp415 = icmp eq i32 %1, 16
  %switch.select416 = select i1 %switch.selectcmp415, i8 120, i8 %switch.select
  store i8 %switch.select416, ptr %i.bt, align 1, !tbaa !24
  %i.bu = getelementptr i8, ptr %.2248, i64 -2    ; 2 uses
  store i8 48, ptr %i.bu, align 1, !tbaa !24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.loopexit343
  %.4250 = phi ptr [ %i.bu, %bb.s ], [ %.2248, %.loopexit343 ]
  br i1 %i.h, label %bb.u, label %bb.bo

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr i8, ptr %.4250, i64 -1
  store i8 45, ptr %i.bv, align 1, !tbaa !24
  br label %bb.bo

bb.v:                                             ; preds = %.critedge
  %i.bw = getelementptr i8, ptr %4, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !191
  br label %bb.x

bb.w:                                             ; preds = %bb.n
  %i.by = getelementptr i8, ptr %i.aq, i64 32
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = lshr i32 %i.bz, 2
  %i.cb = and i32 %i.ca, 7
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0213323336 = phi ptr [ null, %bb.v ], [ %i.aq, %bb.w ] ; 15 uses
  %i.cc = phi i32 [ %i.bx, %bb.v ], [ %i.cb, %bb.w ]
  switch i32 %i.cc, label %bb.ba [
    i32 1, label %bb.y
    i32 2, label %bb.am
  ]

bb.y:                                             ; preds = %bb.x
  br i1 %.not268, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %4, align 8, !tbaa !192   ; 3 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  %.val.i = load i32, ptr %i.ce, align 8          ; 2 uses
  %i.cf = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.cg, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %i.cd, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.ab:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %i.cd, i64 56
  %.val4.i = load ptr, ptr %i.ch, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.aa, %bb.ab
  %.0.i = phi ptr [ %.0.i.i, %bb.aa ], [ %.val4.i, %bb.ab ]
  %i.ci = getelementptr i8, ptr %4, i64 32
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !157
  %i.ck = getelementptr i8, ptr %.0.i, i64 %i.cj
  br label %_PyUnicode_DATA.exit286

bb.ac:                                            ; preds = %bb.y
  %i.cl = getelementptr i8, ptr %.0213323336, i64 32
  %.val.i279 = load i32, ptr %i.cl, align 8       ; 2 uses
  %i.cm = and i32 %.val.i279, 32
  %.not.i280 = icmp eq i32 %i.cm, 0
  br i1 %.not.i280, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = and i32 %.val.i279, 64
  %.not.i.i281 = icmp eq i32 %i.cn, 0
  %.0.v.i.i282 = select i1 %.not.i.i281, i64 56, i64 40
  %.0.i.i283 = getelementptr i8, ptr %.0213323336, i64 %.0.v.i.i282
  br label %_PyUnicode_DATA.exit286

bb.ae:                                            ; preds = %bb.ac
  %i.co = getelementptr i8, ptr %.0213323336, i64 56
  %.val4.i285 = load ptr, ptr %i.co, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit286

_PyUnicode_DATA.exit286:                          ; preds = %bb.ae, %bb.ad, %_PyUnicode_DATA.exit
  %.pn273 = phi ptr [ %i.ck, %_PyUnicode_DATA.exit ], [ %.0.i.i283, %bb.ad ], [ %.val4.i285, %bb.ae ]
  %.0233 = getelementptr i8, ptr %.pn273, i64 %spec.select ; 2 uses
  br i1 %11, label %bb.af, label %.preheader338

.preheader338:                                    ; preds = %_PyUnicode_DATA.exit286
  %i.cp = getelementptr i8, ptr %0, i64 24
  %i.cq = add nuw nsw i32 %1, 255
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = zext nneg i32 %.0239 to i64
  %i.ct = add nsw i64 %i.f, -1
  br label %bb.ag

bb.af:                                            ; preds = %_PyUnicode_DATA.exit286
  %i.cu = getelementptr i8, ptr %.0233, i64 -1    ; 2 uses
  store i8 48, ptr %i.cu, align 1, !tbaa !24
  br label %.loopexit339

bb.ag:                                            ; preds = %.preheader338, %bb.ai
  %.0228366 = phi i64 [ 0, %.preheader338 ], [ %i.dn, %bb.ai ] ; 3 uses
  %.0229365 = phi i32 [ 0, %.preheader338 ], [ %i.dj, %bb.ai ] ; 2 uses
  %.0231364 = phi i64 [ 0, %.preheader338 ], [ %i.dk, %bb.ai ]
  %.1234363 = phi ptr [ %.0233, %.preheader338 ], [ %i.di, %bb.ai ]
  %i.cv = getelementptr [4 x i8], ptr %i.cp, i64 %.0228366
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64
  %i.cy = zext nneg i32 %.0229365 to i64
  %i.cz = shl i64 %i.cx, %i.cy
  %i.da = or i64 %i.cz, %.0231364
  %i.db = add i32 %.0229365, 30
  %i.dc = icmp slt i64 %.0228366, %i.ct
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.2235 = phi ptr [ %.1234363, %bb.ag ], [ %i.di, %bb.ah ]
  %.1232 = phi i64 [ %i.da, %bb.ag ], [ %i.dk, %bb.ah ] ; 2 uses
  %.1230 = phi i32 [ %i.db, %bb.ag ], [ %i.dj, %bb.ah ]
  %i.dd = and i64 %.1232, %i.cr
  %i.de = trunc i64 %i.dd to i8                   ; 2 uses
  %i.df = icmp slt i8 %i.de, 10
  %i.dg = select i1 %i.df, i8 48, i8 87
  %i.dh = add i8 %i.dg, %i.de
  %i.di = getelementptr i8, ptr %.2235, i64 -1    ; 4 uses
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !24
  %i.dj = sub i32 %.1230, %.0239                  ; 3 uses
  %i.dk = lshr i64 %.1232, %i.cs                  ; 3 uses
  %i.dl = icmp sge i32 %i.dj, %.0239
  %i.dm = icmp ne i64 %i.dk, 0
  %.in274 = select i1 %i.dc, i1 %i.dl, i1 %i.dm
  br i1 %.in274, label %bb.ah, label %bb.ai, !llvm.loop !201

bb.ai:                                            ; preds = %bb.ah
  %i.dn = add nuw nsw i64 %.0228366, 1            ; 2 uses
  %exitcond383.not = icmp eq i64 %i.dn, %i.f
  br i1 %exitcond383.not, label %.loopexit339, label %bb.ag, !llvm.loop !202

.loopexit339:                                     ; preds = %bb.ai, %bb.af
  %.3236 = phi ptr [ %i.cu, %bb.af ], [ %i.di, %bb.ai ] ; 3 uses
  br i1 %.not267, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.loopexit339
  %i.do = getelementptr i8, ptr %.3236, i64 -1
  %switch.selectcmp417 = icmp eq i32 %1, 8
  %switch.select418 = select i1 %switch.selectcmp417, i8 111, i8 98
  %switch.selectcmp419 = icmp eq i32 %1, 16
  %switch.select420 = select i1 %switch.selectcmp419, i8 120, i8 %switch.select418
  store i8 %switch.select420, ptr %i.do, align 1, !tbaa !24
  %i.dp = getelementptr i8, ptr %.3236, i64 -2    ; 2 uses
  store i8 48, ptr %i.dp, align 1, !tbaa !24
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.loopexit339
  %.5238 = phi ptr [ %i.dp, %bb.aj ], [ %.3236, %.loopexit339 ]
  br i1 %i.h, label %bb.al, label %bb.bo

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr i8, ptr %.5238, i64 -1
  store i8 45, ptr %i.dq, align 1, !tbaa !24
  br label %bb.bo

bb.am:                                            ; preds = %bb.x
  br i1 %.not268, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dr = load ptr, ptr %4, align 8, !tbaa !192   ; 3 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 32
  %.val.i287 = load i32, ptr %i.ds, align 8       ; 2 uses
  %i.dt = and i32 %.val.i287, 32
  %.not.i288 = icmp eq i32 %i.dt, 0
  br i1 %.not.i288, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.du = and i32 %.val.i287, 64
  %.not.i.i289 = icmp eq i32 %i.du, 0
  %.0.v.i.i290 = select i1 %.not.i.i289, i64 56, i64 40
  %.0.i.i291 = getelementptr i8, ptr %i.dr, i64 %.0.v.i.i290
  br label %_PyUnicode_DATA.exit294

bb.ap:                                            ; preds = %bb.an
  %i.dv = getelementptr i8, ptr %i.dr, i64 56
  %.val4.i293 = load ptr, ptr %i.dv, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit294

_PyUnicode_DATA.exit294:                          ; preds = %bb.ao, %bb.ap
  %.0.i292 = phi ptr [ %.0.i.i291, %bb.ao ], [ %.val4.i293, %bb.ap ]
  %i.dw = getelementptr i8, ptr %4, i64 32
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !157
  %i.dy = getelementptr [2 x i8], ptr %.0.i292, i64 %i.dx
  br label %_PyUnicode_DATA.exit302

bb.aq:                                            ; preds = %bb.am
  %i.dz = getelementptr i8, ptr %.0213323336, i64 32
  %.val.i295 = load i32, ptr %i.dz, align 8       ; 2 uses
  %i.ea = and i32 %.val.i295, 32
  %.not.i296 = icmp eq i32 %i.ea, 0
  br i1 %.not.i296, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = and i32 %.val.i295, 64
  %.not.i.i297 = icmp eq i32 %i.eb, 0
  %.0.v.i.i298 = select i1 %.not.i.i297, i64 56, i64 40
  %.0.i.i299 = getelementptr i8, ptr %.0213323336, i64 %.0.v.i.i298
  br label %_PyUnicode_DATA.exit302

bb.as:                                            ; preds = %bb.aq
  %i.ec = getelementptr i8, ptr %.0213323336, i64 56
  %.val4.i301 = load ptr, ptr %i.ec, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit302

_PyUnicode_DATA.exit302:                          ; preds = %bb.as, %bb.ar, %_PyUnicode_DATA.exit294
  %.pn271 = phi ptr [ %i.dy, %_PyUnicode_DATA.exit294 ], [ %.0.i.i299, %bb.ar ], [ %.val4.i301, %bb.as ]
  %.0219 = getelementptr [2 x i8], ptr %.pn271, i64 %spec.select ; 2 uses
  br i1 %11, label %bb.at, label %.preheader340

.preheader340:                                    ; preds = %_PyUnicode_DATA.exit302
  %i.ed = getelementptr i8, ptr %0, i64 24
  %i.ee = add nuw nsw i32 %1, 255
  %i.ef = zext nneg i32 %i.ee to i64
  %i.eg = zext nneg i32 %.0239 to i64
  %i.eh = add nsw i64 %i.f, -1
  br label %bb.au

bb.at:                                            ; preds = %_PyUnicode_DATA.exit302
  %i.ei = getelementptr i8, ptr %.0219, i64 -2    ; 2 uses
  store i16 48, ptr %i.ei, align 2, !tbaa !159
  br label %.loopexit341

bb.au:                                            ; preds = %.preheader340, %bb.aw
  %.0214362 = phi i64 [ 0, %.preheader340 ], [ %i.fc, %bb.aw ] ; 3 uses
  %.0215361 = phi i32 [ 0, %.preheader340 ], [ %i.ey, %bb.aw ] ; 2 uses
  %.0217360 = phi i64 [ 0, %.preheader340 ], [ %i.ez, %bb.aw ]
  %.1220359 = phi ptr [ %.0219, %.preheader340 ], [ %i.ex, %bb.aw ]
  %i.ej = getelementptr [4 x i8], ptr %i.ed, i64 %.0214362
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = zext i32 %i.ek to i64
  %i.em = zext nneg i32 %.0215361 to i64
  %i.en = shl i64 %i.el, %i.em
  %i.eo = or i64 %i.en, %.0217360
  %i.ep = add i32 %.0215361, 30
  %i.eq = icmp slt i64 %.0214362, %i.eh
  br label %bb.av

bb.av:                                            ; preds = %bb.av, %bb.au
  %.2221 = phi ptr [ %.1220359, %bb.au ], [ %i.ex, %bb.av ]
  %.1218 = phi i64 [ %i.eo, %bb.au ], [ %i.ez, %bb.av ] ; 2 uses
  %.1216 = phi i32 [ %i.ep, %bb.au ], [ %i.ey, %bb.av ]
  %i.er = and i64 %.1218, %i.ef
  %i.es = trunc i64 %i.er to i8                   ; 2 uses
  %i.et = icmp slt i8 %i.es, 10
  %i.eu = select i1 %i.et, i8 48, i8 87
  %i.ev = add i8 %i.eu, %i.es
  %i.ew = sext i8 %i.ev to i16
  %i.ex = getelementptr i8, ptr %.2221, i64 -2    ; 4 uses
  store i16 %i.ew, ptr %i.ex, align 2, !tbaa !159
  %i.ey = sub i32 %.1216, %.0239                  ; 3 uses
  %i.ez = lshr i64 %.1218, %i.eg                  ; 3 uses
  %i.fa = icmp sge i32 %i.ey, %.0239
  %i.fb = icmp ne i64 %i.ez, 0
  %.in272 = select i1 %i.eq, i1 %i.fa, i1 %i.fb
  br i1 %.in272, label %bb.av, label %bb.aw, !llvm.loop !203

bb.aw:                                            ; preds = %bb.av
  %i.fc = add nuw nsw i64 %.0214362, 1            ; 2 uses
  %exitcond382.not = icmp eq i64 %i.fc, %i.f
  br i1 %exitcond382.not, label %.loopexit341, label %bb.au, !llvm.loop !204

.loopexit341:                                     ; preds = %bb.aw, %bb.at
  %.3222 = phi ptr [ %i.ei, %bb.at ], [ %i.ex, %bb.aw ] ; 3 uses
  br i1 %.not267, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %.loopexit341
  %i.fd = getelementptr i8, ptr %.3222, i64 -2
  %switch.selectcmp421 = icmp eq i32 %1, 8
  %switch.select422 = select i1 %switch.selectcmp421, i16 111, i16 98
  %switch.selectcmp423 = icmp eq i32 %1, 16
  %switch.select424 = select i1 %switch.selectcmp423, i16 120, i16 %switch.select422
  store i16 %switch.select424, ptr %i.fd, align 2, !tbaa !159
  %i.fe = getelementptr i8, ptr %.3222, i64 -4    ; 2 uses
  store i16 48, ptr %i.fe, align 2, !tbaa !159
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit341
  %.5224 = phi ptr [ %i.fe, %bb.ax ], [ %.3222, %.loopexit341 ]
  br i1 %i.h, label %bb.az, label %bb.bo

bb.az:                                            ; preds = %bb.ay
  %i.ff = getelementptr i8, ptr %.5224, i64 -2
  store i16 45, ptr %i.ff, align 2, !tbaa !159
  br label %bb.bo

bb.ba:                                            ; preds = %bb.x
  br i1 %.not268, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fg = load ptr, ptr %4, align 8, !tbaa !192   ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 32
  %.val.i303 = load i32, ptr %i.fh, align 8       ; 2 uses
  %i.fi = and i32 %.val.i303, 32
  %.not.i304 = icmp eq i32 %i.fi, 0
  br i1 %.not.i304, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fj = and i32 %.val.i303, 64
  %.not.i.i305 = icmp eq i32 %i.fj, 0
  %.0.v.i.i306 = select i1 %.not.i.i305, i64 56, i64 40
  %.0.i.i307 = getelementptr i8, ptr %i.fg, i64 %.0.v.i.i306
  br label %_PyUnicode_DATA.exit310

bb.bd:                                            ; preds = %bb.bb
  %i.fk = getelementptr i8, ptr %i.fg, i64 56
  %.val4.i309 = load ptr, ptr %i.fk, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit310

_PyUnicode_DATA.exit310:                          ; preds = %bb.bc, %bb.bd
  %.0.i308 = phi ptr [ %.0.i.i307, %bb.bc ], [ %.val4.i309, %bb.bd ]
  %i.fl = getelementptr i8, ptr %4, i64 32
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !157
  %i.fn = getelementptr [4 x i8], ptr %.0.i308, i64 %i.fm
  br label %_PyUnicode_DATA.exit318

bb.be:                                            ; preds = %bb.ba
  %i.fo = getelementptr i8, ptr %.0213323336, i64 32
  %.val.i311 = load i32, ptr %i.fo, align 8       ; 2 uses
  %i.fp = and i32 %.val.i311, 32
  %.not.i312 = icmp eq i32 %i.fp, 0
  br i1 %.not.i312, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fq = and i32 %.val.i311, 64
  %.not.i.i313 = icmp eq i32 %i.fq, 0
  %.0.v.i.i314 = select i1 %.not.i.i313, i64 56, i64 40
  %.0.i.i315 = getelementptr i8, ptr %.0213323336, i64 %.0.v.i.i314
  br label %_PyUnicode_DATA.exit318

bb.bg:                                            ; preds = %bb.be
  %i.fr = getelementptr i8, ptr %.0213323336, i64 56
  %.val4.i317 = load ptr, ptr %i.fr, align 8, !tbaa !24
  br label %_PyUnicode_DATA.exit318

_PyUnicode_DATA.exit318:                          ; preds = %bb.bg, %bb.bf, %_PyUnicode_DATA.exit310
  %.pn = phi ptr [ %i.fn, %_PyUnicode_DATA.exit310 ], [ %.0.i.i315, %bb.bf ], [ %.val4.i317, %bb.bg ]
  %.0211 = getelementptr [4 x i8], ptr %.pn, i64 %spec.select ; 2 uses
  br i1 %11, label %bb.bh, label %.preheader

.preheader:                                       ; preds = %_PyUnicode_DATA.exit318
  %i.fs = getelementptr i8, ptr %0, i64 24
  %i.ft = add nuw nsw i32 %1, 255
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = zext nneg i32 %.0239 to i64
  %i.fw = add nsw i64 %i.f, -1
  br label %bb.bi

bb.bh:                                            ; preds = %_PyUnicode_DATA.exit318
  %i.fx = getelementptr i8, ptr %.0211, i64 -4    ; 2 uses
  store i32 48, ptr %i.fx, align 4, !tbaa !7
  br label %.loopexit

bb.bi:                                            ; preds = %.preheader, %bb.bk
  %.0206370 = phi i64 [ 0, %.preheader ], [ %i.gr, %bb.bk ] ; 3 uses
  %.0207369 = phi i32 [ 0, %.preheader ], [ %i.gn, %bb.bk ] ; 2 uses
  %.0209368 = phi i64 [ 0, %.preheader ], [ %i.go, %bb.bk ]
  %.1212367 = phi ptr [ %.0211, %.preheader ], [ %i.gm, %bb.bk ]
  %i.fy = getelementptr [4 x i8], ptr %i.fs, i64 %.0206370
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !7
  %i.ga = zext i32 %i.fz to i64
  %i.gb = zext nneg i32 %.0207369 to i64
  %i.gc = shl i64 %i.ga, %i.gb
  %i.gd = or i64 %i.gc, %.0209368
  %i.ge = add i32 %.0207369, 30
  %i.gf = icmp slt i64 %.0206370, %i.fw
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.2 = phi ptr [ %.1212367, %bb.bi ], [ %i.gm, %bb.bj ]
  %.1210 = phi i64 [ %i.gd, %bb.bi ], [ %i.go, %bb.bj ] ; 2 uses
  %.1208 = phi i32 [ %i.ge, %bb.bi ], [ %i.gn, %bb.bj ]
  %i.gg = and i64 %.1210, %i.fu
  %i.gh = trunc i64 %i.gg to i8                   ; 2 uses
  %i.gi = icmp slt i8 %i.gh, 10
  %i.gj = select i1 %i.gi, i8 48, i8 87
  %i.gk = add i8 %i.gj, %i.gh
  %i.gl = sext i8 %i.gk to i32
  %i.gm = getelementptr i8, ptr %.2, i64 -4       ; 4 uses
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !7
  %i.gn = sub i32 %.1208, %.0239                  ; 3 uses
  %i.go = lshr i64 %.1210, %i.fv                  ; 3 uses
  %i.gp = icmp sge i32 %i.gn, %.0239
  %i.gq = icmp ne i64 %i.go, 0
  %.in = select i1 %i.gf, i1 %i.gp, i1 %i.gq
  br i1 %.in, label %bb.bj, label %bb.bk, !llvm.loop !205

bb.bk:                                            ; preds = %bb.bj
  %i.gr = add nuw nsw i64 %.0206370, 1            ; 2 uses
  %exitcond384.not = icmp eq i64 %i.gr, %i.f
  br i1 %exitcond384.not, label %.loopexit, label %bb.bi, !llvm.loop !206

.loopexit:                                        ; preds = %bb.bk, %bb.bh
  %.3 = phi ptr [ %i.fx, %bb.bh ], [ %i.gm, %bb.bk ] ; 3 uses
  br i1 %.not267, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.loopexit
  %i.gs = getelementptr i8, ptr %.3, i64 -4
  %switch.selectcmp425 = icmp eq i32 %1, 8
  %switch.select426 = select i1 %switch.selectcmp425, i32 111, i32 98
  %switch.selectcmp427 = icmp eq i32 %1, 16
  %switch.select428 = select i1 %switch.selectcmp427, i32 120, i32 %switch.select426
  store i32 %switch.select428, ptr %i.gs, align 4, !tbaa !7
  %i.gt = getelementptr i8, ptr %.3, i64 -8       ; 2 uses
  store i32 48, ptr %i.gt, align 4, !tbaa !7
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.loopexit
  %.5 = phi ptr [ %i.gt, %bb.bl ], [ %.3, %.loopexit ]
  br i1 %i.h, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gu = getelementptr i8, ptr %.5, i64 -4
  store i32 45, ptr %i.gu, align 4, !tbaa !7
  br label %bb.bo

bb.bo:                                            ; preds = %bb.ak, %bb.al, %bb.ay, %bb.az, %bb.bm, %bb.bn, %bb.t, %bb.u
  %.not270324 = phi i1 [ true, %bb.ak ], [ true, %bb.al ], [ true, %bb.ay ], [ true, %bb.az ], [ true, %bb.bm ], [ true, %bb.bn ], [ false, %bb.t ], [ false, %bb.u ]
  %.0213322 = phi ptr [ %.0213323336, %bb.ak ], [ %.0213323336, %bb.al ], [ %.0213323336, %bb.ay ], [ %.0213323336, %bb.az ], [ %.0213323336, %bb.bm ], [ %.0213323336, %bb.bn ], [ null, %bb.t ], [ null, %bb.u ]
  br i1 %.not268, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gv = getelementptr i8, ptr %4, i64 32        ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !157
  %i.gx = add i64 %i.gw, %spec.select
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !157
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  br i1 %.not270324, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gy = load ptr, ptr %6, align 8, !tbaa !158
  %i.gz = getelementptr i8, ptr %i.gy, i64 %spec.select
  store ptr %i.gz, ptr %6, align 8, !tbaa !158
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  store ptr %.0213322, ptr %3, align 8, !tbaa !11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.f, %bb.bp, %bb.bs, %bb.br, %bb.n, %bb.m, %bb.k, %bb.c
  %.1 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.n ], [ -1, %bb.k ], [ -1, %bb.m ], [ 0, %bb.br ], [ 0, %bb.bs ], [ 0, %bb.bp ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @_PyLong_FormatWriter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 10
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @long_to_decimal_string_internal(ptr noundef %1, ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @long_format_binary(ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef null, ptr noundef %0, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyLong_FormatBytesWriter(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr %1, ptr %i.a, align 8, !tbaa !158
  %i.b = icmp eq i32 %3, 10
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc i32 @long_to_decimal_string_internal(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = call fastcc i32 @long_format_binary(ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef null, ptr noundef null, ptr noundef %0, ptr noundef nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  %i.e = icmp slt i32 %.0, 0
  %i.f = load ptr, ptr %i.a, align 8
  %.09 = select i1 %i.e, ptr null, ptr %i.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret ptr %.09
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyLong_FromString(ptr noundef %0, ptr noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !207
  %i.b = icmp ne i32 %2, 0
  %i.c = icmp slt i32 %2, 2
  %or.cond = and i1 %i.b, %i.c
  %i.d = icmp sgt i32 %2, 36
  %or.cond3 = or i1 %i.d, %or.cond
  br i1 %or.cond3, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %0, align 1, !tbaa !24      ; 2 uses
  %.not153 = icmp eq i8 %i.e, 0
  br i1 %.not153, label %.critedge.thread, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !11
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.25) #16
  br label %Py_DECREF.exit

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.g = phi i8 [ %i.m, %bb.c ], [ %i.e, %.preheader ] ; 2 uses
  %.0154 = phi ptr [ %i.l, %bb.c ], [ %0, %.preheader ] ; 4 uses
  %i.h = zext i8 %i.g to i64
  %i.i = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = and i32 %i.j, 8
  %.not42 = icmp eq i32 %i.k, 0
  br i1 %.not42, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.0154, i64 1      ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !24    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !209

.critedge:                                        ; preds = %.lr.ph
  switch i8 %i.g, label %.critedge.thread [
    i8 43, label %bb.d
    i8 45, label %bb.e
  ]

bb.d:                                             ; preds = %.critedge
  %i.n = getelementptr i8, ptr %.0154, i64 1
  br label %.critedge.thread

bb.e:                                             ; preds = %.critedge
  %i.o = getelementptr i8, ptr %.0154, i64 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.c, %.preheader, %.critedge, %bb.e, %bb.d
  %.161 = phi ptr [ %.0154, %.critedge ], [ %i.n, %bb.d ], [ %i.o, %bb.e ], [ %0, %.preheader ], [ %i.l, %bb.c ] ; 14 uses
  %i.p = phi i1 [ false, %.critedge ], [ false, %bb.d ], [ true, %bb.e ], [ false, %.preheader ], [ false, %bb.c ]
  %i.q = icmp eq i32 %2, 0
  %i.r = load i8, ptr %.161, align 1, !tbaa !24   ; 3 uses
  %.not43 = icmp eq i8 %i.r, 48                   ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.critedge.thread
  br i1 %.not43, label %bb.g, label %.thread68

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %.161, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !24    ; 7 uses
  switch i8 %i.t, label %.thread88 [
    i8 120, label %.thread71
    i8 88, label %.thread71
    i8 111, label %.thread119
    i8 79, label %.thread119
    i8 98, label %.thread129
    i8 66, label %.thread129
  ]

bb.h:                                             ; preds = %.critedge.thread
  br i1 %.not43, label %bb.i, label %.thread68

bb.i:                                             ; preds = %bb.h
  switch i32 %2, label %.thread88 [
    i32 16, label %..thread71_crit_edge
    i32 8, label %..thread119_crit_edge
    i32 2, label %..thread129_crit_edge
  ]

..thread71_crit_edge:                             ; preds = %bb.i
  %.phi.trans.insert167 = getelementptr i8, ptr %.161, i64 1
  %.pre168 = load i8, ptr %.phi.trans.insert167, align 1, !tbaa !24
  br label %.thread71

..thread119_crit_edge:                            ; preds = %bb.i
  %.phi.trans.insert165 = getelementptr i8, ptr %.161, i64 1
  %.pre166 = load i8, ptr %.phi.trans.insert165, align 1, !tbaa !24
  br label %.thread119

..thread129_crit_edge:                            ; preds = %bb.i
  %.phi.trans.insert = getelementptr i8, ptr %.161, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !24
  br label %.thread129

.thread71:                                        ; preds = %..thread71_crit_edge, %bb.g, %bb.g
  %i.u = phi i8 [ %.pre168, %..thread71_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %bb.g ]
  switch i8 %i.u, label %.preheader71.i [
    i8 120, label %bb.j
    i8 88, label %bb.j
  ]

.thread119:                                       ; preds = %..thread119_crit_edge, %bb.g, %bb.g
  %i.v = phi i8 [ %.pre166, %..thread119_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %bb.g ]
  switch i8 %i.v, label %.preheader71.i [
    i8 111, label %bb.j
    i8 79, label %bb.j
  ]

.thread129:                                       ; preds = %..thread129_crit_edge, %bb.g, %bb.g
  %i.w = phi i8 [ %.pre, %..thread129_crit_edge ], [ %i.t, %bb.g ], [ %i.t, %bb.g ]
  switch i8 %i.w, label %.preheader71.i [
    i8 98, label %bb.j
end_hunk_1
