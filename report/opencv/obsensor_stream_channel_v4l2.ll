Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/obsensor_stream_channel_v4l2?download=true
inline.NumInlined: 975
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
%union.anon.11 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%"class.std::__cxx11::basic_istringstream" = type { %"class.std::basic_istream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"struct.std::pair.12" = type { %"class.std::__cxx11::basic_string", %"struct.cv::obsensor::UvcDeviceInfo" }
%"struct.cv::Ptr" = type { %"class.std::shared_ptr" }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%struct.v4l2_format = type { i32, %union.anon.27 }
%union.anon.27 = type { %struct.v4l2_window, [144 x i8] }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.30 }
%union.anon.30 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_requestbuffers = type { i32, i32, i32, i32, i8, [3 x i8] }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.timeval, %struct.v4l2_timecode, i32, i32, %union.anon.31, i32, i32, %union.anon.32 }
%struct.timeval = type { i64, i64 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%union.anon.31 = type { i64 }
%union.anon.32 = type { i32 }
%"class.std::thread" = type { %"class.std::thread::id" }
%"class.std::thread::id" = type { i64 }
%struct.fd_set = type { [16 x i64] }
%"struct.cv::obsensor::Frame" = type { i32, i32, i32, i32, ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.46" }
%"struct.std::_Head_base.46" = type { ptr }
%struct.uvc_xu_control_query = type { i8, i8, i8, i16, ptr }
%struct.timespec = type { i64, i64 }

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv8obsensor13UvcDeviceInfoEED2Ev = comdat any

$_ZN2cv8obsensor13UvcDeviceInfoD2Ev = comdat any

$_ZN2cv8obsensor13UvcDeviceInfoC2ERKS1_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv8obsensor13UvcDeviceInfoESt4lessIS5_ESaISt4pairIKS5_S8_EEED2Ev = comdat any

$_ZNSt6vectorIN2cv8obsensor13UvcDeviceInfoESaIS2_EED2Ev = comdat any

$_ZN2cv8obsensor17IUvcStreamChannelD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6threadC2IMN2cv8obsensor17V4L2StreamChannelEFvvEJPS3_EvEEOT_DpOT0_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv8obsensor13UvcDeviceInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv8obsensor13UvcDeviceInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv8obsensor13UvcDeviceInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N2cv8obsensor13UvcDeviceInfoEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE10_M_insert_ISB_NSH_11_Alloc_nodeEEESt17_Rb_tree_iteratorISB_EPSt18_Rb_tree_node_baseSN_OT_RT0_ = comdat any

$_ZNSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN2cv8obsensor13UvcDeviceInfoEEC2EOSA_ = comdat any

$_ZNSt6vectorIN2cv8obsensor13UvcDeviceInfoESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt6thread24_M_thread_deps_never_runEv = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEED0Ev = comdat any

$_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEE6_M_runEv = comdat any

$_ZNSt6vectorIhSaIhEE17_M_default_appendEm = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE = comdat any

$_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE = comdat any

$_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE = comdat any

@.str = private unnamed_addr constant [11 x i8] c"ioctl: fd=\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c", req=\00", align 1
@.str.2 = private unnamed_addr constant [96 x i8] c"/opt-bench/work/opencv/opencv/modules/videoio/src/cap_obsensor/obsensor_stream_channel_v4l2.cpp\00", align 1
@__func__._ZN2cv8obsensor6xioctlEiiPv = private unnamed_addr constant [7 x i8] c"xioctl\00", align 1
@_ZZN2cv8obsensor11V4L2Context11getInstanceEvE8instance = internal global %"class.cv::obsensor::V4L2Context" zeroinitializer, align 1
@_ZGVZN2cv8obsensor11V4L2Context11getInstanceEvE8instance = internal global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"/sys/class/video4linux\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"/busnum\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"/devpath\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"/devnum\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"ioctl error return: \00", align 1
@__func__._ZN2cv8obsensor11V4L2Context22queryUvcDeviceInfoListEv = private unnamed_addr constant [23 x i8] c"queryUvcDeviceInfoList\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"/device/modalias\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"/device/interface\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"/device/bInterfaceNumber\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"UVC device found: name=\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c", vid=\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c", pid=\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c", mi=\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c", uid=\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c", id=\00", align 1
@_ZTVN2cv8obsensor17V4L2StreamChannelE = hidden constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN2cv8obsensor17V4L2StreamChannelE, ptr @_ZN2cv8obsensor17V4L2StreamChannelD2Ev, ptr @_ZN2cv8obsensor17V4L2StreamChannelD0Ev, ptr @_ZN2cv8obsensor17V4L2StreamChannel5startERKNS0_13StreamProfileESt8functionIFvPNS0_5FrameEEE, ptr @_ZN2cv8obsensor17V4L2StreamChannel4stopEv, ptr @_ZN2cv8obsensor17IUvcStreamChannel11setPropertyEiPKhj, ptr @_ZN2cv8obsensor17IUvcStreamChannel11getPropertyEiPhPj, ptr @_ZNK2cv8obsensor17IUvcStreamChannel10streamTypeEv, ptr @_ZNK2cv8obsensor17IUvcStreamChannel6getPidEv, ptr @_ZN2cv8obsensor17V4L2StreamChannel5setXuEhPKhj, ptr @_ZN2cv8obsensor17V4L2StreamChannel5getXuEhPPhPj] }, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"Open \00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c" failed ! errno=\00", align 1
@__func__._ZN2cv8obsensor17V4L2StreamChannelC2ERKNS0_13UvcDeviceInfoE = private unnamed_addr constant [18 x i8] c"V4L2StreamChannel\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c": repetitive operation!\00", align 1
@__func__._ZN2cv8obsensor17V4L2StreamChannel5startERKNS0_13StreamProfileESt8functionIFvPNS0_5FrameEEE = private unnamed_addr constant [6 x i8] c"start\00", align 1
@__func__._ZN2cv8obsensor17V4L2StreamChannel9grabFrameEv = private unnamed_addr constant [10 x i8] c"grabFrame\00", align 1
@__func__._ZN2cv8obsensor17V4L2StreamChannel5setXuEhPKhj = private unnamed_addr constant [6 x i8] c"setXu\00", align 1
@__func__._ZN2cv8obsensor17V4L2StreamChannel5getXuEhPPhPj = private unnamed_addr constant [6 x i8] c"getXu\00", align 1
@__func__._ZN2cv8obsensor17V4L2StreamChannel4stopEv = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@_ZTIN2cv8obsensor17V4L2StreamChannelE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN2cv8obsensor17V4L2StreamChannelE, ptr @_ZTIN2cv8obsensor17IUvcStreamChannelE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN2cv8obsensor17V4L2StreamChannelE = hidden constant [34 x i8] c"N2cv8obsensor17V4L2StreamChannelE\00", align 1
@_ZTIN2cv8obsensor17IUvcStreamChannelE = external constant ptr
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZTVN2cv8obsensor17IUvcStreamChannelE = external constant { [12 x ptr] }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.28 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr hidden constant [97 x i8] c"St23_Sp_counted_ptr_inplaceIN2cv8obsensor17V4L2StreamChannelESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE = linkonce_odr hidden constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE, ptr @_ZNSt6thread6_StateD2Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEED0Ev, ptr @_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEE6_M_runEv] }, comdat, align 8
@_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE, ptr @_ZTINSt6thread6_StateE }, comdat, align 8
@_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE = linkonce_odr hidden constant [96 x i8] c"NSt6thread11_State_implINS_8_InvokerISt5tupleIJMN2cv8obsensor17V4L2StreamChannelEFvvEPS5_EEEEEE\00", comdat, align 1
@_ZTINSt6thread6_StateE = external constant ptr
@.str.33 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN2cv8obsensor17V4L2StreamChannelC1ERKNS0_13UvcDeviceInfoE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN2cv8obsensor17V4L2StreamChannelC2ERKNS0_13UvcDeviceInfoE
@_ZN2cv8obsensor17V4L2StreamChannelD1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN2cv8obsensor17V4L2StreamChannelD2Ev

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv8obsensor6xioctlEiiPv(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef %i.a, ptr noundef %2) #23 ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2.backedge
  %.02232 = phi i32 [ 4, %.lr.ph ], [ %i.k, %.critedge2.backedge ] ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %i.f = icmp eq i32 %i.e, 11
  br i1 %i.f, label %.critedge2.backedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i32 %i.e, 16
  %i.h = icmp sgt i32 %.02232, 0
  %i.i = select i1 %i.g, i1 %i.h, i1 false
  br i1 %i.i, label %.critedge2.backedge, label %.critedge.thread

.critedge2.backedge:                              ; preds = %bb.c, %bb.b
  %i.j = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef %i.a, ptr noundef %2) #23 ; 2 uses
  %i.k = add nsw i32 %.02232, -1
  %i.l = icmp eq i32 %i.j, -1
  br i1 %i.l, label %bb.b, label %.critedge, !llvm.loop !109

.critedge:                                        ; preds = %.critedge2.backedge, %bb.a
  %.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.j, %.critedge2.backedge ] ; 3 uses
  %i.m = icmp slt i32 %.lcssa, 0
  br i1 %i.m, label %.critedge.thread, label %bb.q

.critedge.thread:                                 ; preds = %bb.c, %.critedge
  %i.n = phi i32 [ %.lcssa, %.critedge ], [ -1, %bb.c ] ; 2 uses
  %i.o = tail call noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() ; 3 uses
  %.not = icmp eq ptr %i.o, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.critedge.thread
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !15
  %i.r = icmp slt i32 %i.q, 3
  br i1 %i.r, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str, i64 noundef 10)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.s, i32 noundef %0)
          to label %bb.f unwind label %bb.n       ; 2 uses

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull @.str.1, i64 noundef 6)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27 unwind label %bb.n ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27: ; preds = %bb.f
  %i.w = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.u, i32 noundef %1)
          to label %bb.g unwind label %bb.n       ; 0 uses

bb.g:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.y = phi ptr [ %i.x, %bb.h ], [ null, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.z, ptr %4, align 8, !tbaa !18, !alias.scope !116
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !21, !alias.scope !116
  store i8 0, ptr %i.z, align 8, !tbaa !22, !alias.scope !116
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !26, !noalias !116 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !116 ; 2 uses
  %i.af = icmp ugt ptr %i.ac, %i.ae
  %.08.i.i.i = select i1 %i.af, ptr %i.ac, ptr %i.ae ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !27, !noalias !116 ; 2 uses
  %i.ai = ptrtoint ptr %.08.i.i.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef %i.ah, i64 noundef %i.ak)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.l, %bb.j
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %4, align 8, !tbaa !28, !alias.scope !116 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.z
  br i1 %i.ao, label %.body, label %.body.sink.split

bb.l:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.ap)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.k

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.l, %bb.j
  %i.aq = load ptr, ptr %4, align 8, !tbaa !28
  invoke void @_ZN2cv5utils7logging8internal17writeLogMessageExENS1_8LogLevelEPKcS5_iS5_S5_(i32 noundef 3, ptr noundef %i.y, ptr noundef nonnull @.str.2, i32 noundef 82, ptr noundef nonnull @__func__._ZN2cv8obsensor6xioctlEiiPv, ptr noundef %i.aq)
          to label %bb.m unwind label %bb.o

bb.m:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.ar = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.as = icmp eq ptr %i.ar, %i.z
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.at = load i64, ptr %i.z, align 8, !tbaa !22
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.ar, i64 noundef %i.au) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.av = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.av, ptr %3, align 8, !tbaa !30
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ax = getelementptr i8, ptr %i.av, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %3, i64 %i.ay
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !30
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ba, ptr %i.s, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.bb, align 8, !tbaa !30
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !28 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !22
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #25
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.bb, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bi) #23
  %i.bj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !30
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %3, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bo, align 8, !tbaa !32
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.bp) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.q

bb.n:                                             ; preds = %bb.f, %bb.e, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit27, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bs = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.z
  br i1 %i.bt, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.o, %bb.k
  %.sink = phi ptr [ %i.an, %bb.k ], [ %i.bs, %bb.o ]
  %.pn.ph = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.br, %bb.o ]
  %i.bu = load i64, ptr %i.z, align 8, !tbaa !22
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.bv) #25
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.o, %bb.k
  %.pn = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.br, %bb.o ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.p

bb.p:                                             ; preds = %.body, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bq, %bb.n ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn.pn

bb.q:                                             ; preds = %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, %bb.d, %.critedge
  %i.bw = phi i32 [ %i.n, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit ], [ %i.n, %bb.d ], [ %.lcssa, %.critedge ]
  ret i32 %i.bw
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare noundef ptr @_ZN2cv5utils7logging8internal15getGlobalLogTagEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #0 align 2

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4
end_hunk_0
