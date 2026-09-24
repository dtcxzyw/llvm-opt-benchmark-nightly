Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/l_util?download=true
inline.NumInlined: 761
inline.NumDeleted: 284
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
%class.Logger = type { %"class.std::mutex", [7 x %"class.std::vector"], [7 x %"struct.std::atomic"], [7 x %"struct.std::atomic"], %"class.std::map" }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<ILogOutput *, std::allocator<ILogOutput *>>::_Vector_impl" }
%"struct.std::_Vector_base<ILogOutput *, std::allocator<ILogOutput *>>::_Vector_impl" = type { %"struct.std::_Vector_base<ILogOutput *, std::allocator<ILogOutput *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<ILogOutput *, std::allocator<ILogOutput *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::atomic" = type { %"struct.std::__atomic_base" }
%"struct.std::__atomic_base" = type { i8 }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::thread::id, std::pair<const std::thread::id, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::thread::id, std::__cxx11::basic_string<char>>>, std::less<std::thread::id>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::thread::id, std::pair<const std::thread::id, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::thread::id, std::__cxx11::basic_string<char>>>, std::less<std::thread::id>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.EnumString = type { i32, ptr }
%"class.std::allocator" = type { i8 }
%struct.timespec = type { i64, i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%class.anon = type { ptr, ptr, ptr }
%"class.Json::Value" = type { %"union.Json::Value::ValueHolder", %struct.anon, %"class.Json::Value::Comments", i64, i64 }
%"union.Json::Value::ValueHolder" = type { i64 }
%struct.anon = type { i16, [2 x i8] }
%"class.Json::Value::Comments" = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.7" }
%"struct.std::_Head_base.7" = type { ptr }
%"class.Json::CharReaderBuilder" = type { %"class.Json::CharReader::Factory", %"class.Json::Value" }
%"class.Json::CharReader::Factory" = type { ptr }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%struct.ToolCapabilities = type { float, i32, i32, %"class.std::map.21", %"class.std::map.27" }
%"class.std::map.21" = type { %"class.std::_Rb_tree.22" }
%"class.std::_Rb_tree.22" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, ToolGroupCap>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%"class.std::map.27" = type { %"class.std::_Rb_tree.28" }
%"class.std::_Rb_tree.28" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, short>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, short>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, short>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, short>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { [8 x i8], %"struct.std::_Rb_tree_header" }
%struct.DigParams = type { i8, float, i32, %"class.std::__cxx11::basic_string" }
%struct.HitParams = type { i32, i32 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::vector.32" = type { %"struct.std::_Vector_base.33" }
%"struct.std::_Vector_base.33" = type { %"struct.std::_Vector_base<fs::DirListNode, std::allocator<fs::DirListNode>>::_Vector_impl" }
%"struct.std::_Vector_base<fs::DirListNode, std::allocator<fs::DirListNode>>::_Vector_impl" = type { %"struct.std::_Vector_base<fs::DirListNode, std::allocator<fs::DirListNode>>::_Vector_impl_data" }
%"struct.std::_Vector_base<fs::DirListNode, std::allocator<fs::DirListNode>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.video::SColor" = type { i32 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN13BaseExceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN16ToolCapabilitiesD2Ev = comdat any

$_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEED2Ev = comdat any

$_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt6vectorIN2fs11DirListNodeESaIS1_EED2Ev = comdat any

$_ZN8LuaErrorD0Ev = comdat any

$_ZNK13BaseException4whatEv = comdat any

$_ZN13BaseExceptionD0Ev = comdat any

$_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E = comdat any

$_Z17unescape_enrichedIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E = comdat any

$_ZTI8LuaError = comdat any

$_ZTS8LuaError = comdat any

$_ZTI8ModError = comdat any

$_ZTS8ModError = comdat any

$_ZTI13BaseException = comdat any

$_ZTS13BaseException = comdat any

$_ZTI18SerializationError = comdat any

$_ZTS18SerializationError = comdat any

$_ZTV8LuaError = comdat any

$_ZTV13BaseException = comdat any

@.str.1 = private unnamed_addr constant [20 x i8] c"invalid stack level\00", align 1
@_ZTI8LuaError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8LuaError, ptr @_ZTI8ModError }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS8LuaError = linkonce_odr dso_local constant [10 x i8] c"8LuaError\00", comdat, align 1
@_ZTI8ModError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8ModError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS8ModError = linkonce_odr dso_local constant [10 x i8] c"8ModError\00", comdat, align 1
@_ZTI13BaseException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13BaseException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTS13BaseException = linkonce_odr dso_local constant [16 x i8] c"13BaseException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@warningstream = external thread_local global %class.LogStream, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Tried to log at unknown level '\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"'. Defaulting to \22none\22.\00", align 1
@g_logger = external global %class.Logger, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"stackLimit\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"collectComments\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"depth exceeds lua stack limit\00", align 1
@_ZTI18SerializationError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18SerializationError, ptr @_ZTI13BaseException }, comdat, align 8
@_ZTS18SerializationError = linkonce_odr dso_local constant [21 x i8] c"18SerializationError\00", comdat, align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Invalid password format for \00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"tostring\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Mod security: Blocked attempted \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"read from \00", align 1
@_ZN7porting10path_shareB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"builtin\00", align 1
@_ZN7porting9path_userB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@.str.13 = private unnamed_addr constant [10 x i8] c"write to \00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"secure.trusted_mods\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"Luanti\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"project\00", align 1
@g_version_string = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"proto_min\00", align 1
@LATEST_PROTOCOL_VERSION = external local_unnamed_addr constant i16, align 2
@.str.19 = private unnamed_addr constant [10 x i8] c"proto_max\00", align 1
@g_version_hash = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"is_dev\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"#%02X%02X%02X%02X\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"get_us_time\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"parse_json\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"write_json\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"get_tool_wear_after_use\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"get_dig_params\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"get_hit_params\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"check_password_entry\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"get_password_hash\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"is_yes\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"path_exists\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"get_builtin_path\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"get_user_path\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"cpdir\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"mvdir\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"get_dir_list\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"safe_file_write\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"request_insecure_environment\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"encode_base64\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"decode_base64\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"get_version\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"colorspec_to_colorstring\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"colorspec_to_bytes\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"colorspec_to_table\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"time_to_day_night_ratio\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"encode_png\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"get_last_run_mod\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"set_last_run_mod\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"urlencode\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"is_valid_player_name\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"strip_escapes\00", align 1
@g_settings = external local_unnamed_addr global ptr, align 8
@_Z15g_settings_pathB5cxx11 = external global %"class.std::__cxx11::basic_string", align 8
@.str.60 = private unnamed_addr constant [9 x i8] c"settings\00", align 1
@_ZTV8LuaError = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI8LuaError, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN8LuaErrorD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@_ZTV13BaseException = linkonce_odr dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI13BaseException, ptr @_ZN13BaseExceptionD2Ev, ptr @_ZN13BaseExceptionD0Ev, ptr @_ZNK13BaseException4whatEv] }, comdat, align 8
@.str.61 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@errorstream = external thread_local global %class.LogStream, align 8
@.str.62 = private unnamed_addr constant [28 x i8] c"Failed to parse json data: \00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"data: \22\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"\22... (truncated)\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZL20es_LuaCompressMethod = internal constant [3 x %struct.EnumString] [%struct.EnumString { i32 0, ptr @.str.73 }, %struct.EnumString { i32 1, ptr @.str.74 }, %struct.EnumString zeroinitializer], align 16
@.str.71 = private unnamed_addr constant [29 x i8] c"Unknown compression method \22\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"\22, defaulting to \22deflate\22. You should pass a valid value.\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"zstd\00", align 1
@_ZL9hex_chars = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@__const._Z22time_to_daynight_ratiofb.values = private unnamed_addr constant [9 x [2 x float]] [[2 x float] [float 4.375000e+03, float 1.750000e+02], [2 x float] [float 4.625000e+03, float 1.750000e+02], [2 x float] [float 4.875000e+03, float 2.500000e+02], [2 x float] [float 5.125000e+03, float 3.500000e+02], [2 x float] [float 5.375000e+03, float 5.000000e+02], [2 x float] [float 5.625000e+03, float 6.750000e+02], [2 x float] [float 5.875000e+03, float 8.750000e+02], [2 x float] [float 6.125000e+03, float 1.000000e+03], [2 x float] [float 6.375000e+03, float 1.000000e+03]], align 16
@.str.77 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.78 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: uwtable
define dso_local noundef i32 @_ZN10ModApiUtil5l_logEP9lua_State(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = tail call i32 @lua_type(ptr noundef %0, i32 noundef 2)
  %i.d = icmp slt i32 %i.c, 1
  %i.e = tail call { i64, ptr } @_ZN9LuaHelper9readParamISt17basic_string_viewIcSt11char_traitsIcEEEET_P9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 4 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 5 uses
  br i1 %i.d, label %_ZN11StreamProxylsEPFRSoS0_E.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, ptr } @_ZN9LuaHelper9readParamISt17basic_string_viewIcSt11char_traitsIcEEEET_P9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.i = extractvalue { i64, ptr } %i.h, 0        ; 4 uses
  %i.j = extractvalue { i64, ptr } %i.h, 1        ; 4 uses
  %i.k = icmp eq i64 %i.f, 10
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 1
  %i.m = xor i64 %i.l, 8386093268503389540
  %i.n = getelementptr i8, ptr %i.g, i64 8
  %i.o = load i16, ptr %i.n, align 1
  %i.p = zext i16 %i.o to i64
  %i.q = xor i64 %i.p, 25701
  %i.r = or i64 %i.m, %i.q
  %i.s = icmp ne i64 %i.r, 0
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit, label %bb.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.v = tail call i32 @lua_type(ptr noundef %0, i32 noundef 3)
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %_ZN9LuaHelper9readParamIiEET_P9lua_StateiRKS1_.exit

_ZN9LuaHelper9readParamIiEET_P9lua_StateiRKS1_.exit: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit
  %i.x = tail call noundef i32 @_ZN9LuaHelper9readParamIiEET_P9lua_Statei(ptr noundef %0, i32 noundef 3) ; 2 uses
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %bb.c, label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.c:                                             ; preds = %_ZN9LuaHelper9readParamIiEET_P9lua_StateiRKS1_.exit
  %i.z = tail call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #25
          to label %bb.v unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.028 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !18
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.028, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br i1 %.028, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn43 = phi { ptr, i32 } [ %i.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.z) #24
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn42 = phi { ptr, i32 } [ %.pn43, %bb.g ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn42

bb.i:                                             ; preds = %bb.b, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.ah = tail call noundef i32 @_ZN6Logger13stringToLevelESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.f, ptr %i.g) ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 7
  br i1 %i.ai, label %bb.j, label %_ZN11StreamProxylsEPFRSoS0_E.exit.thread

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp eq ptr @_ZTH13warningstream, null
  br i1 %.not.i, label %_ZTW13warningstream.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZTH13warningstream()
  br label %_ZTW13warningstream.exit

_ZTW13warningstream.exit:                         ; preds = %bb.j, %bb.k
  %i.aj = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @warningstream) ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31, !nonnull !32, !align !33 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !35
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ak), !inline_history !107
  %.v.i = select i1 %i.an, i64 976, i64 984
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.v.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @.str.2, ptr %i.b, align 8, !tbaa !36
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !37 ; 5 uses
  %.not.i32 = icmp eq ptr %i.aq, null
  br i1 %.not.i32, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZTW13warningstream.exit
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !35
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !44
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
  %.pre.i = load ptr, ptr %i.ao, align 8, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %.pre.i, %bb.m ], [ %i.aq, %bb.l ]
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef %i.g, i64 noundef %i.f) ; 0 uses
  br label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit

_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit: ; preds = %_ZTW13warningstream.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @.str.3, ptr %i.a, align 8, !tbaa !36
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 5 uses
  %.not.i33 = icmp eq ptr %i.bb, null
  br i1 %.not.i33, label %_ZN11StreamProxylsEPFRSoS0_E.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.bd = getelementptr i8, ptr %i.bc, i64 -24
  %i.be = load i64, ptr %i.bd, align 8            ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !44
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.bb)
  %.pre.i34 = load ptr, ptr %i.ba, align 8, !tbaa !37 ; 2 uses
  %.pre = load ptr, ptr %.pre.i34, align 8, !tbaa !35
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre45 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bj = phi i64 [ %.pre45, %bb.p ], [ %i.be, %bb.o ]
  %i.bk = phi ptr [ %.pre.i34, %bb.p ], [ %i.bb, %bb.o ] ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 240
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !51 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i, label %bb.r, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.r:                                             ; preds = %bb.q
  call void @_ZSt16__throw_bad_castv() #25
end_hunk_0
begin_hunk_1_@_ZN10ModApiUtil19l_get_password_hashEP9lua_State:bb.a

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ai = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.q
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ak = load i64, ptr %i.q, align 8, !tbaa !18
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.am = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !18
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 1

bb.n:                                             ; preds = %bb.e
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.o:                                             ; preds = %.noexc.i12, %bb.g
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.p:                                             ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

bb.q:                                             ; preds = %bb.l
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.q
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !18
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.p
  %.pn = phi { ptr, i32 } [ %i.as, %bb.p ], [ %i.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.at, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.az = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.q
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %i.bb = load i64, ptr %i.q, align 8, !tbaa !18
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.o, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.n ], [ %i.ar, %bb.o ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.bd = load ptr, ptr %1, align 8, !tbaa !17    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.d
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
  %i.bf = load i64, ptr %i.d, align 8, !tbaa !18
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN10ModApiUtil8l_is_yesEP9lua_State(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @lua_getfield(ptr noundef %0, i32 noundef -10002, ptr noundef nonnull @.str.8)
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1)
  tail call void @lua_call(ptr noundef %0, i32 noundef 1, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef %0, i32 noundef -1)
  invoke void @lua_settop(ptr noundef %0, i32 noundef -2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60
  %i.d = invoke noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.c, ptr %i.a)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = zext i1 %i.d to i32
  invoke void @lua_pushboolean(ptr noundef %0, i32 noundef %i.e)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  ret i32 1

bb.e:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.k, %bb.e ]
  %i.m = load ptr, ptr %1, align 8, !tbaa !17     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.g
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %.pn
}

declare void @lua_getfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lua_call(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN9LuaHelper9readParamINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEET_P9lua_Statei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z6is_yesSt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %.not21.i = icmp eq i64 %0, 0
  br i1 %.not21.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.01318.i = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.01318.i
  %i.b = load i8, ptr %i.a, align 1, !tbaa !18
  %i.c = sext i8 %i.b to i32
  %i.d = tail call i32 @isspace(i32 noundef %i.c) #28
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = add nuw i64 %.01318.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.e, %0
  br i1 %exitcond.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !124

.critedge.i:                                      ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.013.lcssa.i = phi i64 [ 0, %bb.a ], [ %.01318.i, %.lr.ph.i ], [ %0, %bb.b ] ; 6 uses
  %umin.i = tail call i64 @llvm.umin.i64(i64 %.013.lcssa.i, i64 %0) ; 2 uses
  %i.f = icmp ugt i64 %0, %.013.lcssa.i
  br i1 %i.f, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.h, %.013.lcssa.i
  br i1 %i.g, label %.lr.ph, label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !125

.lr.ph:                                           ; preds = %.critedge.i, %bb.c
  %.0.i25 = phi i64 [ %i.h, %bb.c ], [ %0, %.critedge.i ] ; 2 uses
  %i.h = add i64 %.0.i25, -1                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = sext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #28
  %.not17.i = icmp eq i32 %i.l, 0
  br i1 %.not17.i, label %..critedge2.i_crit_edge, label %bb.c, !llvm.loop !125

..critedge2.i_crit_edge:                          ; preds = %.lr.ph
  br label %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit, !llvm.loop !125

_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit: ; preds = %bb.c, %..critedge2.i_crit_edge, %.critedge.i
  %.0.lcssa.i = phi i64 [ %.0.i25, %..critedge2.i_crit_edge ], [ %umin.i, %.critedge.i ], [ %umin.i, %bb.c ]
  %i.m = sub i64 %.0.lcssa.i, %.013.lcssa.i
  %i.n = sub nuw i64 %0, %.013.lcssa.i
  %.sroa.speculated.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.m) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.013.lcssa.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.p, ptr %2, align 8, !tbaa !58, !alias.scope !130
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !60, !alias.scope !130
  store i8 0, ptr %i.p, align 8, !tbaa !18, !alias.scope !130
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %.sroa.speculated.i.i, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i: ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %.not.i5 = icmp eq i64 %.sroa.speculated.i.i, 0
  br i1 %.not.i5, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i6

bb.d:                                             ; preds = %_Z4trimIcESt17basic_string_viewIT_St11char_traitsIS1_EES4_.exit
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %2, align 8, !tbaa !17, !alias.scope !130 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.p
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

.lr.ph.i6:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i
  %.010.i = phi i64 [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.010.i
  %i.v = load i8, ptr %i.u, align 1, !tbaa !18, !noalias !130 ; 3 uses
  %i.w = icmp slt i8 %i.v, 0
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i6
  %i.x = zext nneg i8 %i.v to i32
  %i.y = call i32 @tolower(i32 noundef %i.x) #28
  %i.z = trunc i32 %i.y to i8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i: ; preds = %bb.e, %.lr.ph.i6
  %.0.i.i = phi i8 [ %i.z, %bb.e ], [ %i.v, %.lr.ph.i6 ]
  %i.aa = load ptr, ptr %2, align 8, !tbaa !17, !alias.scope !130
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.010.i
  store i8 %.0.i.i, ptr %i.ab, align 1, !tbaa !18
  %i.ac = add nuw i64 %.010.i, 1                  ; 2 uses
  %exitcond.not.i7 = icmp eq i64 %i.ac, %.sroa.speculated.i.i
  br i1 %exitcond.not.i7, label %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, label %.lr.ph.i6, !llvm.loop !128

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.ad = load i64, ptr %i.p, align 8, !tbaa !18, !alias.scope !130
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.ae) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.r

_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.preheader.i
  %i.af = load i64, ptr %i.q, align 8, !tbaa !60  ; 3 uses
  %.pre16 = load ptr, ptr %2, align 8, !tbaa !17  ; 7 uses
  switch i64 %i.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %lhsc = load i8, ptr %.pre16, align 1
  %i.ag = icmp eq i8 %lhsc, 121
  br i1 %i.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %bcmp.i8 = call i32 @bcmp(ptr %.pre16, ptr nonnull @.str.69, i64 %i.af)
  %i.ah = icmp eq i32 %bcmp.i8, 0
  br i1 %i.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit
  %bcmp.i10 = call i32 @bcmp(ptr %.pre16, ptr nonnull @.str.70, i64 %i.af)
  %i.ai = icmp eq i32 %bcmp.i10, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14: ; preds = %_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
  %i.aj = call i64 @__isoc23_strtol(ptr noundef nonnull %.pre16, ptr noundef null, i32 noundef 10) #24, !inline_history !129
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = icmp ne i64 %i.ak, 0
  %.pre17 = load ptr, ptr %2, align 8, !tbaa !17
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.am = phi ptr [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ %.pre16, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %.pre17, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 ] ; 2 uses
  %i.an = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.al, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11.thread14 ]
  %i.ao = icmp eq ptr %i.am, %i.p
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !18
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret i1 %i.an
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN10ModApiUtil13l_path_existsEP9lua_State(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  %i.b = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !58
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.77) #25
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.e, ptr %i.a, align 8, !tbaa !59
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !17
  %i.h = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.h, ptr %i.c, align 8, !tbaa !18
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.b, align 1, !tbaa !18
  store i8 %i.j, ptr %i.i, align 1, !tbaa !18
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr nonnull align 1 %i.b, i64 %i.e, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.k = load i64, ptr %i.a, align 8, !tbaa !59   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.k, ptr %i.l, align 8, !tbaa !60
  %i.m = load ptr, ptr %1, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.o = invoke noundef zeroext i1 @_ZN17ScriptApiSecurity8isSecureEP9lua_State(ptr noundef %0)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  br i1 %i.o, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %1, align 8, !tbaa !17
  %i.q = invoke noundef zeroext i1 @_ZN17ScriptApiSecurity9checkPathEP9lua_StatePKcbPb(ptr noundef %0, ptr noundef %i.p, i1 noundef zeroext false, ptr noundef null)
          to label %bb.h unwind label %bb.n

bb.h:                                             ; preds = %bb.g
  br i1 %i.q, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.10)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread

bb.k:                                             ; preds = %bb.j
  %i.s = load ptr, ptr %1, align 8, !tbaa !17
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.s)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN8LuaErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI8LuaError, ptr nonnull @_ZN13BaseExceptionD2Ev) #25
          to label %bb.w unwind label %bb.p
end_hunk_1
begin_hunk_2_@_ZN10ModApiUtil15InitializeSSCSMEP9lua_Statei:bb.a
  %i.f = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @_ZN10ModApiUtil10l_compressEP9lua_State, i32 noundef %1) ; 0 uses
  %i.g = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @_ZN10ModApiUtil12l_decompressEP9lua_State, i32 noundef %1) ; 0 uses
  %i.h = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @_ZN10ModApiUtil15l_encode_base64EP9lua_State, i32 noundef %1) ; 0 uses
  %i.i = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @_ZN10ModApiUtil15l_decode_base64EP9lua_State, i32 noundef %1) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @_ZN10ModApiUtil13l_get_versionEP9lua_State, i32 noundef %1) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull @_ZN10ModApiUtil6l_sha1EP9lua_State, i32 noundef %1) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @_ZN10ModApiUtil8l_sha256EP9lua_State, i32 noundef %1) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @_ZN10ModApiUtil26l_colorspec_to_colorstringEP9lua_State, i32 noundef %1) ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull @_ZN10ModApiUtil20l_colorspec_to_bytesEP9lua_State, i32 noundef %1) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef nonnull @_ZN10ModApiUtil20l_colorspec_to_tableEP9lua_State, i32 noundef %1) ; 0 uses
  %i.p = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull @_ZN10ModApiUtil25l_time_to_day_night_ratioEP9lua_State, i32 noundef %1) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef nonnull @_ZN10ModApiUtil18l_get_last_run_modEP9lua_State, i32 noundef %1) ; 0 uses
  %i.r = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @_ZN10ModApiUtil18l_set_last_run_modEP9lua_State, i32 noundef %1) ; 0 uses
  %i.s = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull @_ZN10ModApiUtil11l_urlencodeEP9lua_State, i32 noundef %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10ModApiUtil15InitializeAsyncEP9lua_Statei(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @_ZN10ModApiUtil5l_logEP9lua_State, i32 noundef %1) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull @_ZN10ModApiUtil13l_get_us_timeEP9lua_State, i32 noundef %1) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef nonnull @_ZN10ModApiUtil12l_parse_jsonEP9lua_State, i32 noundef %1) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull @_ZN10ModApiUtil12l_write_jsonEP9lua_State, i32 noundef %1) ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @_ZN10ModApiUtil8l_is_yesEP9lua_State, i32 noundef %1) ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.33, ptr noundef nonnull @_ZN10ModApiUtil13l_path_existsEP9lua_State, i32 noundef %1) ; 0 uses
  %i.g = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @_ZN10ModApiUtil18l_get_builtin_pathEP9lua_State, i32 noundef %1) ; 0 uses
  %i.h = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @_ZN10ModApiUtil15l_get_user_pathEP9lua_State, i32 noundef %1) ; 0 uses
  %i.i = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.36, ptr noundef nonnull @_ZN10ModApiUtil10l_compressEP9lua_State, i32 noundef %1) ; 0 uses
  %i.j = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.37, ptr noundef nonnull @_ZN10ModApiUtil12l_decompressEP9lua_State, i32 noundef %1) ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull @_ZN10ModApiUtil7l_mkdirEP9lua_State, i32 noundef %1) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.39, ptr noundef nonnull @_ZN10ModApiUtil7l_rmdirEP9lua_State, i32 noundef %1) ; 0 uses
  %i.m = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef nonnull @_ZN10ModApiUtil7l_cpdirEP9lua_State, i32 noundef %1) ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull @_ZN10ModApiUtil7l_mvdirEP9lua_State, i32 noundef %1) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull @_ZN10ModApiUtil14l_get_dir_listEP9lua_State, i32 noundef %1) ; 0 uses
  %i.p = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.43, ptr noundef nonnull @_ZN10ModApiUtil17l_safe_file_writeEP9lua_State, i32 noundef %1) ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull @_ZN10ModApiUtil15l_encode_base64EP9lua_State, i32 noundef %1) ; 0 uses
  %i.r = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.46, ptr noundef nonnull @_ZN10ModApiUtil15l_decode_base64EP9lua_State, i32 noundef %1) ; 0 uses
  %i.s = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef nonnull @_ZN10ModApiUtil13l_get_versionEP9lua_State, i32 noundef %1) ; 0 uses
  %i.t = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.48, ptr noundef nonnull @_ZN10ModApiUtil6l_sha1EP9lua_State, i32 noundef %1) ; 0 uses
  %i.u = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.49, ptr noundef nonnull @_ZN10ModApiUtil8l_sha256EP9lua_State, i32 noundef %1) ; 0 uses
  %i.v = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef nonnull @_ZN10ModApiUtil26l_colorspec_to_colorstringEP9lua_State, i32 noundef %1) ; 0 uses
  %i.w = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.51, ptr noundef nonnull @_ZN10ModApiUtil20l_colorspec_to_bytesEP9lua_State, i32 noundef %1) ; 0 uses
  %i.x = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.52, ptr noundef nonnull @_ZN10ModApiUtil20l_colorspec_to_tableEP9lua_State, i32 noundef %1) ; 0 uses
  %i.y = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull @_ZN10ModApiUtil25l_time_to_day_night_ratioEP9lua_State, i32 noundef %1) ; 0 uses
  %i.z = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.54, ptr noundef nonnull @_ZN10ModApiUtil12l_encode_pngEP9lua_State, i32 noundef %1) ; 0 uses
  %i.aa = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.55, ptr noundef nonnull @_ZN10ModApiUtil18l_get_last_run_modEP9lua_State, i32 noundef %1) ; 0 uses
  %i.ab = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull @_ZN10ModApiUtil18l_set_last_run_modEP9lua_State, i32 noundef %1) ; 0 uses
  %i.ac = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull @_ZN10ModApiUtil11l_urlencodeEP9lua_State, i32 noundef %1) ; 0 uses
  %i.ad = tail call noundef zeroext i1 @_ZN10ModApiBase16registerFunctionEP9lua_StatePKcPFiS1_Ei(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef nonnull @_ZN10ModApiUtil15l_strip_escapesEP9lua_State, i32 noundef %1) ; 0 uses
  %i.ae = load ptr, ptr @g_settings, align 8, !tbaa !103
  tail call void @_ZN11LuaSettings6createEP9lua_StateP8SettingsRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %0, ptr noundef %i.ae, ptr noundef nonnull align 8 dereferenceable(32) @_Z15g_settings_pathB5cxx11)
  tail call void @lua_setfield(ptr noundef %0, i32 noundef %1, ptr noundef nonnull @.str.60)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN8LuaErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !104
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #24, !inline_history !104
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13BaseException4whatEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13BaseExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV13BaseException, i64 16), ptr %0, align 8, !tbaa !35
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN13BaseExceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !18
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #26, !inline_history !104
  br label %_ZN13BaseExceptionD2Ev.exit

_ZN13BaseExceptionD2Ev.exit:                      ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(40) %0) #24, !inline_history !104
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #26
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  %i.c = load ptr, ptr %0, align 8, !tbaa !37     ; 9 uses
  %.not.i = icmp eq ptr %i.c, null                ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.e = getelementptr i8, ptr %i.d, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !44
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.c, %bb.c ]
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.61, i64 noundef 6) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i, label %_ZN11StreamProxylsIPKcEERS_OT_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !35
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i32, ptr %i.q, align 8, !tbaa !44
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.pre.i5 = load ptr, ptr %0, align 8, !tbaa !37 ; 3 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %.not.i.i6 = icmp eq ptr %.pre, null
  br i1 %.not.i.i6, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %.pre.i5, align 8, !tbaa !35
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr %.pre.i5, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44
  %i.z = or i32 %i.y, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.w, i32 noundef %i.z)
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

.thread:                                          ; preds = %bb.g, %bb.h
  %i.aa = phi ptr [ %.pre.i5, %bb.h ], [ %i.c, %bb.g ]
  %i.ab = phi ptr [ %.pre, %bb.h ], [ %i.a, %bb.g ] ; 2 uses
  %i.ac = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #24
  %i.ad = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull %i.ab, i64 noundef %i.ac) ; 0 uses
  br label %_ZN11StreamProxylsIPKcEERS_OT_.exit

_ZN11StreamProxylsIPKcEERS_OT_.exit:              ; preds = %.thread, %bb.i, %bb.f, %bb.e, %bb.b
  ret ptr %0
}

declare void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = load i64, ptr %i.g, align 8, !tbaa !18
  %i.j = add i64 %i.i, 1
  tail call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !171

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_sESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !175  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN12ToolGroupCapD2Ev.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !176
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #26
  br label %_ZN12ToolGroupCapD2Ev.exit.i.i.i

_ZN12ToolGroupCapD2Ev.exit.i.i.i:                 ; preds = %bb.b, %.lr.ph
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZN12ToolGroupCapD2Ev.exit.i.i.i
  %i.p = load i64, ptr %i.n, align 8, !tbaa !18
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %_ZN12ToolGroupCapD2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #26
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !172

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_12ToolGroupCapESt10_Select1stIS9_ESt4lessIS5_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare noundef zeroext i1 @_Z14string_to_enumPK10EnumStringRiSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i64, ptr) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @_Z12compressZlibPKhmRSoi(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_Z12compressZstdPKhmRSoi(ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_Z17unescape_enrichedIcENSt7__cxx1112basic_stringIT_St11char_traitsIS2_ESaIS2_EEESt17basic_string_viewIS2_S4_E(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 %1, ptr %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !58
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !60
  store i8 0, ptr %i.a, align 8, !tbaa !18
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %.preheader unwind label %bb.c

.preheader:                                       ; preds = %bb.a
  %.not33 = icmp eq i64 %1, 0
  br i1 %.not33, label %._crit_edge, label %.lr.ph32

.lr.ph32:                                         ; preds = %.preheader, %.backedge
  %.031 = phi i64 [ %i.t, %.backedge ], [ 0, %.preheader ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %.031
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18    ; 2 uses
  %i.e = icmp eq i8 %i.d, 27
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph32
  %i.f = add nuw i64 %.031, 1                     ; 3 uses
  %i.g = icmp eq i64 %i.f, %1
  br i1 %i.g, label %._crit_edge, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18
  %i.k = icmp eq i8 %i.j, 40
  br i1 %i.k, label %bb.e, label %.backedge

bb.e:                                             ; preds = %bb.d
  %i.l = add i64 %.031, 2                         ; 3 uses
  %i.m = icmp ult i64 %i.l, %1
  br i1 %i.m, label %.lr.ph, label %.backedge

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.128 = phi i64 [ %i.r, %bb.f ], [ %i.l, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %.128
  %i.o = load i8, ptr %i.n, align 1, !tbaa !18    ; 2 uses
  %.not = icmp eq i8 %i.o, 41
  br i1 %.not, label %.backedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.p = icmp eq i8 %i.o, 92
  %i.q = zext i1 %i.p to i64
  %spec.select = add nuw i64 %.128, 1
  %i.r = add i64 %spec.select, %i.q               ; 3 uses
  %i.s = icmp ult i64 %i.r, %1
  br i1 %i.s, label %.lr.ph, label %.backedge, !llvm.loop !177

.backedge:                                        ; preds = %.lr.ph, %bb.f, %bb.d, %bb.e, %bb.i
  %.3.sink = phi i64 [ %.031, %bb.i ], [ %i.f, %bb.d ], [ %i.l, %bb.e ], [ %i.r, %bb.f ], [ %.128, %.lr.ph ]
  %i.t = add i64 %.3.sink, 1                      ; 2 uses
  %i.u = icmp ult i64 %i.t, %1
  br i1 %i.u, label %.lr.ph32, label %._crit_edge, !llvm.loop !178

bb.g:                                             ; preds = %.lr.ph32
  %i.v = load i64, ptr %i.b, align 8, !tbaa !60   ; 4 uses
  %i.w = add i64 %i.v, 1                          ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !17     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.a
  br i1 %i.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.g
  %i.z = icmp ult i64 %i.v, 16
  tail call void @llvm.assume(i1 %i.z)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.g
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !18
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ab = phi i64 [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.ac = icmp ugt i64 %i.w, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ad = phi ptr [ %.pre.i.i, %.noexc ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.v
  store i8 %i.d, ptr %i.ae, align 1, !tbaa !18
  store i64 %i.w, ptr %i.b, align 8, !tbaa !60
  %i.af = load ptr, ptr %0, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.w
  store i8 0, ptr %i.ag, align 1, !tbaa !18
  br label %.backedge

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %bb.b, %.backedge, %.preheader
  ret void

bb.k:                                             ; preds = %bb.j, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.j ], [ %i.h, %bb.c ]
  %i.ai = load ptr, ptr %0, align 8, !tbaa !17    ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.a
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.k
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !18
  %i.al = add i64 %i.ak, 1
  tail call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #19

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #19

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef float @_ZN9LuaHelper9readParamIfEET_P9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #19

declare extern_weak void @_ZTH13warningstream() #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #20

declare extern_weak void @_ZTH11errorstream() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

attributes #0 = { uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind memory(none) }
attributes #9 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { noreturn }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null, null, null, null, null}
!1 = distinct !{!1, !91}
!2 = distinct !{!2, !91}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0, !15, i64 8, !8, i64 16}
!17 = !{!16, !13, i64 0}
!18 = !{!8, !8, i64 0}
!19 = !{!"p1 _ZTS9LogTarget", !12, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!21 = !{!"_ZTSSt6locale", !20, i64 0}
!22 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !21, i64 56}
!23 = !{!"_ZTSSt14_Function_base", !8, i64 0, !12, i64 16}
!24 = !{!"_ZTSSt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEE", !23, i64 0, !12, i64 24}
!25 = !{!"_ZTS18StringStreamBufferILj256ESt8functionIFvSt17basic_string_viewIcSt11char_traitsIcEEEEE", !22, i64 0, !24, i64 64, !9, i64 96, !8, i64 100}
!26 = !{!"_ZTS17DummyStreamBuffer", !22, i64 0}
!27 = !{!"_ZTSSo"}
!28 = !{!"p1 _ZTSSo", !12, i64 0}
!29 = !{!"_ZTS11StreamProxy", !28, i64 0}
!30 = !{!"_ZTS9LogStream", !19, i64 0, !25, i64 8, !26, i64 368, !27, i64 432, !27, i64 704, !29, i64 976, !29, i64 984}
!31 = !{!30, !19, i64 0}
!32 = !{}
!33 = !{i64 8}
!34 = !{!"vtable pointer", !7, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!13, !13, i64 0}
!37 = !{!29, !28, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !8, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !8, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !12, i64 0}
!41 = !{!"_ZTSNSt8ios_base6_WordsE", !12, i64 0, !15, i64 8}
!42 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !12, i64 0}
!43 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !41, i64 48, !8, i64 64, !9, i64 192, !42, i64 200, !21, i64 208}
!44 = !{!43, !39, i64 32}
!45 = !{!"bool", !8, i64 0}
!46 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !12, i64 0}
!47 = !{!"p1 _ZTSSt5ctypeIcE", !12, i64 0}
!48 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!49 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !12, i64 0}
!50 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !43, i64 0, !28, i64 216, !8, i64 224, !45, i64 225, !46, i64 232, !47, i64 240, !48, i64 248, !49, i64 256}
!51 = !{!50, !47, i64 240}
!52 = !{!"_ZTSNSt6locale5facetE", !9, i64 8}
!53 = !{!"p1 _ZTS15__locale_struct", !12, i64 0}
!54 = !{!"p1 int", !12, i64 0}
!55 = !{!"p1 short", !12, i64 0}
!56 = !{!"_ZTSSt5ctypeIcE", !52, i64 0, !53, i64 16, !45, i64 24, !54, i64 32, !54, i64 40, !55, i64 48, !8, i64 56, !8, i64 57, !8, i64 313, !8, i64 569}
!57 = !{!56, !8, i64 56}
!58 = !{!14, !13, i64 0}
!59 = !{!15, !15, i64 0}
!60 = !{!16, !15, i64 8}
!61 = !{!"_ZTS8timespec", !15, i64 0, !15, i64 8}
!62 = !{!61, !15, i64 0}
!63 = !{!61, !15, i64 8}
!64 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!45, !45, i64 0}
!67 = !{!"p1 bool", !12, i64 0}
!68 = !{!"any p2 pointer", !12, i64 0}
!69 = !{!"p2 _ZTS9lua_State", !68, i64 0}
!70 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !12, i64 0}
!71 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !15, i64 0, !13, i64 8}
!72 = !{!71, !13, i64 8}
!73 = !{!71, !15, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !68, i64 0}
!76 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !12, i64 0}
!77 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !76, i64 0}
!78 = !{!"float", !8, i64 0}
!79 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !78, i64 0, !15, i64 8}
!80 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_iESaIS8_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE", !75, i64 0, !15, i64 8, !77, i64 16, !15, i64 24, !79, i64 32, !76, i64 48}
!81 = !{!80, !75, i64 0}
!82 = !{!80, !15, i64 8}
!83 = !{!79, !78, i64 0}
!84 = !{!"_ZTSSt14_Rb_tree_color", !8, i64 0}
!85 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !12, i64 0}
!86 = !{!"_ZTSSt18_Rb_tree_node_base", !84, i64 0, !85, i64 8, !85, i64 16, !85, i64 24}
!87 = !{!"_ZTSSt15_Rb_tree_header", !86, i64 0, !15, i64 32}
!88 = !{!87, !85, i64 8}
!89 = !{!80, !76, i64 16}
!90 = !{!77, !76, i64 0}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!22, !13, i64 40}
!93 = !{!22, !13, i64 32}
!94 = !{!9, !9, i64 0}
!95 = !{!"p1 _ZTSN2fs11DirListNodeE", !12, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN2fs11DirListNodeESaIS1_EE17_Vector_impl_dataE", !95, i64 0, !95, i64 8, !95, i64 16}
!97 = !{!96, !95, i64 0}
!98 = !{!96, !95, i64 8}
!99 = !{!96, !95, i64 16}
!100 = !{!"_ZTSN5video6SColorE", !9, i64 0}
!101 = !{!100, !9, i64 0}
!102 = !{!"p1 _ZTS8Settings", !12, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{ptr @_ZN13BaseExceptionD2Ev}
!105 = !{!86, !85, i64 24}
!106 = !{!86, !85, i64 16}
!107 = distinct !{null}
!108 = distinct !{null, null}
!109 = !{!67, !67, i64 0}
!110 = !{!69, !69, i64 0}
!111 = !{!70, !70, i64 0}
!112 = distinct !{null}
!113 = distinct !{null}
!114 = distinct !{null}
!115 = distinct !{null}
!116 = distinct !{null}
!117 = distinct !{null, null, null, null, null, null}
!118 = !{!"_ZTSZN10ModApiUtil12l_parse_jsonEP9lua_StateE3$_0", !67, i64 0, !69, i64 8, !70, i64 16}
!119 = !{!118, !67, i64 0}
!120 = !{!118, !69, i64 8}
!121 = !{!118, !70, i64 16}
!122 = distinct !{null}
!123 = distinct !{null, null}
!124 = distinct !{!124, !91}
!125 = distinct !{!125, !91}
!126 = distinct !{!126, !"_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE"}
!127 = distinct !{!127, !126, !"_Z9lowercaseB5cxx11St17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!128 = distinct !{!128, !91}
!129 = distinct !{null}
!130 = !{!127}
!131 = distinct !{!131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!132 = distinct !{!132, !131, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!133 = distinct !{!133, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!134 = distinct !{!134, !133, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!135 = distinct !{!135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!136 = distinct !{!136, !135, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!137 = distinct !{!137, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!138 = distinct !{!138, !137, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!139 = !{!132}
!140 = !{!134, !132}
!141 = !{!136}
!142 = !{!138}
!143 = distinct !{!143, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!144 = distinct !{!144, !143, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!145 = distinct !{!145, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!146 = distinct !{!146, !145, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!147 = !{!144}
!148 = !{!146}
!149 = !{!146, !144}
!150 = distinct !{!150, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!151 = distinct !{!151, !150, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!152 = distinct !{!152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!153 = distinct !{!153, !152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!154 = !{!151}
!155 = !{!153}
!156 = distinct !{!156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!157 = distinct !{!157, !156, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!158 = distinct !{!158, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!159 = distinct !{!159, !158, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!160 = !{!157}
!161 = !{!159}
!162 = !{!159, !157}
!163 = !{!"_ZTSSi", !15, i64 8}
!164 = !{!163, !15, i64 8}
!165 = !{!95, !95, i64 0}
!166 = !{!"_ZTSN2fs11DirListNodeE", !16, i64 0, !45, i64 32}
!167 = !{!166, !45, i64 32}
!168 = !{!"short", !8, i64 0}
!169 = !{!168, !168, i64 0}
!170 = !{!78, !78, i64 0}
!171 = distinct !{!171, !91}
!172 = distinct !{!172, !91}
!173 = !{!"p1 _ZTSSt4pairIifE", !12, i64 0}
!174 = !{!"_ZTSNSt12_Vector_baseISt4pairIifESaIS1_EE17_Vector_impl_dataE", !173, i64 0, !173, i64 8, !173, i64 16}
!175 = !{!174, !173, i64 0}
!176 = !{!174, !173, i64 16}
!177 = distinct !{!177, !91}
!178 = distinct !{!178, !91}
end_hunk_2
