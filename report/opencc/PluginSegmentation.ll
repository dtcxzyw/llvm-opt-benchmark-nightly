Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/PluginSegmentation?download=true
inline.NumInlined: 989
inline.NumDeleted: 453
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.opencc::(anonymous namespace)::PluginManager" = type { %"class.std::mutex", %"class.std::unordered_map" }
%"class.std::mutex" = type { %"class.std::__mutex_base" }
%"class.std::__mutex_base" = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::unordered_map" = type { %"class.std::_Hashtable" }
%"class.std::_Hashtable" = type { ptr, i64, %"struct.std::__detail::_Hash_node_base", i64, %"struct.std::__detail::_Prime_rehash_policy", ptr }
%"struct.std::__detail::_Hash_node_base" = type { ptr }
%"struct.std::__detail::_Prime_rehash_policy" = type { float, i64 }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::allocator" = type { i8 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.32 }
%union.anon.32 = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::vector.24" = type { %"struct.std::_Vector_base.25" }
%"struct.std::_Vector_base.25" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::shared_ptr.3" = type { %"class.std::__shared_ptr.4" }
%"class.std::__shared_ptr.4" = type { ptr, %"class.std::__shared_count" }
%struct.opencc_error_t = type { i64, i32, ptr }
%struct.opencc_segmentation_create_args_t = type { i64, ptr, i64, ptr, ptr }
%struct.Dl_info = type { ptr, ptr, ptr, ptr }
%"class.std::shared_ptr.41" = type { %"class.std::__shared_ptr.42" }
%"class.std::__shared_ptr.42" = type { ptr, %"class.std::__shared_count" }
%struct.opencc_segment_length_array_t = type { i64, ptr, i64 }
%struct.opencc_segmentation_segment_args_t = type { i64, ptr, ptr, ptr, ptr }
%"class.std::basic_string_view" = type { i64, ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ = comdat any

$_ZN6opencc13InvalidFormatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN6opencc9ExceptionD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN6opencc9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN6opencc9ExceptionD0Ev = comdat any

$_ZNK6opencc9Exception4whatEv = comdat any

$_ZSt16__do_uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_ = comdat any

$_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN6opencc13InvalidFormatD0Ev = comdat any

$_ZN6opencc8Segments10AddSegmentESt17basic_string_viewIcSt11char_traitsIcEE = comdat any

$_ZNSt7__cxx119to_stringEm = comdat any

$_ZNSt12__shared_ptrIN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6opencc8SegmentsEEET_ = comdat any

$_ZN6opencc8SegmentsD2Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRSt17basic_string_viewIcS3_EEEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRSt17basic_string_viewIcS3_EEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZTIN6opencc13InvalidFormatE = comdat any

$_ZTSN6opencc13InvalidFormatE = comdat any

$_ZTIN6opencc9ExceptionE = comdat any

$_ZTSN6opencc9ExceptionE = comdat any

$_ZTVN6opencc9ExceptionE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTVN6opencc13InvalidFormatE = comdat any

$_ZTIN6opencc12SegmentationE = comdat any

$_ZTSN6opencc12SegmentationE = comdat any

$_ZTVSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE = comdat any

@_ZL22PACKAGE_DATA_DIRECTORYB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"/usr/local/share/opencc/\00", align 1
@__dso_handle = external hidden global i8
@_ZL37PACKAGE_SEGMENTATION_PLUGIN_DIRECTORYB5cxx11 = internal global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"/usr/local/lib/opencc/plugins/\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Failed to initialize segmentation plugin '\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"': \00", align 1
@_ZTIN6opencc13InvalidFormatE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6opencc13InvalidFormatE, ptr @_ZTIN6opencc9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6opencc13InvalidFormatE = linkonce_odr constant [25 x i8] c"N6opencc13InvalidFormatE\00", comdat, align 1
@_ZTIN6opencc9ExceptionE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6opencc9ExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN6opencc9ExceptionE = linkonce_odr constant [20 x i8] c"N6opencc9ExceptionE\00", comdat, align 1
@_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager = internal global %"class.opencc::(anonymous namespace)::PluginManager" zeroinitializer, align 8
@_ZGVZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager = internal global i64 0, align 8
@.str.7 = private unnamed_addr constant [23 x i8] c"OPENCC_DISABLE_PLUGINS\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Segmentation plugin loading is disabled.\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"Multiple segmentation plugin libraries found for '\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"' in directory '\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"'. Keep only one matching DLL per plugin type.\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"Segmentation plugin '\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"' not found. Searched: \00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@_ZTVN6opencc9ExceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6opencc9ExceptionE, ptr @_ZN6opencc9ExceptionD2Ev, ptr @_ZN6opencc9ExceptionD0Ev, ptr @_ZNK6opencc9Exception4whatEv] }, comdat, align 8
@.str.20 = private unnamed_addr constant [32 x i8] c"OPENCC_SEGMENTATION_PLUGIN_PATH\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"opencc/plugins\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"basic_string::substr\00", align 1
@.str.23 = private unnamed_addr constant [55 x i8] c"%s: __pos (which is %zu) > this->size() (which is %zu)\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"/\\\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"libopencc-\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt9basic_iosIcSt11char_traitsIcEE = external constant { [4 x ptr] }, align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.30 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVSt14basic_ifstreamIcSt11char_traitsIcEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTSt14basic_ifstreamIcSt11char_traitsIcEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVSt13basic_filebufIcSt11char_traitsIcEE = external constant { [16 x ptr] }, align 8
@.str.32 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"opencc_get_segmentation_plugin_v2\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Plugin returned null descriptor.\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"Plugin descriptor is too small.\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"Plugin ABI major version mismatch.\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"Plugin type mismatch.\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"Failed to load plugin library: \00", align 1
@_ZTVSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE = internal constant [90 x i8] c"St15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113SharedLibraryELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.40 = private unnamed_addr constant [26 x i8] c"Plugin symbol not found: \00", align 1
@_ZTVSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE = internal constant [90 x i8] c"St15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"Invalid format: \00", align 1
@_ZTVN6opencc13InvalidFormatE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6opencc13InvalidFormatE, ptr @_ZN6opencc9ExceptionD2Ev, ptr @_ZN6opencc13InvalidFormatD0Ev, ptr @_ZNK6opencc9Exception4whatEv] }, comdat, align 8
@_ZTVN6opencc12_GLOBAL__N_125PluginSegmentationAdapterE = internal constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6opencc12_GLOBAL__N_125PluginSegmentationAdapterE, ptr @_ZN6opencc12_GLOBAL__N_125PluginSegmentationAdapterD2Ev, ptr @_ZN6opencc12_GLOBAL__N_125PluginSegmentationAdapterD0Ev, ptr @_ZNK6opencc12_GLOBAL__N_125PluginSegmentationAdapter7SegmentESt17basic_string_viewIcSt11char_traitsIcEE] }, align 8
@_ZTIN6opencc12_GLOBAL__N_125PluginSegmentationAdapterE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6opencc12_GLOBAL__N_125PluginSegmentationAdapterE, ptr @_ZTIN6opencc12SegmentationE }, align 8
@_ZTSN6opencc12_GLOBAL__N_125PluginSegmentationAdapterE = internal constant [51 x i8] c"N6opencc12_GLOBAL__N_125PluginSegmentationAdapterE\00", align 1
@_ZTIN6opencc12SegmentationE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6opencc12SegmentationE }, comdat, align 8
@_ZTSN6opencc12SegmentationE = linkonce_odr constant [24 x i8] c"N6opencc12SegmentationE\00", comdat, align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Segmentation plugin failed\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c" '\00", align 1
@.str.46 = private unnamed_addr constant [52 x i8] c"Segmentation plugin returned a zero-length segment.\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"Segmentation plugin returned lengths past end of input.\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Input text is not valid UTF-8.\00", align 1
@.str.49 = private unnamed_addr constant [74 x i8] c"Segmentation plugin lengths do not cover the full input. Consumed bytes: \00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c", total bytes: \00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c", segments: \00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c".\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [70 x i8] c"St15_Sp_counted_ptrIPN6opencc8SegmentsELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16
@.str.55 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE = internal constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE = internal constant [102 x i8] c"St15_Sp_counted_ptrIPN6opencc12_GLOBAL__N_125PluginSegmentationAdapterELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_PluginSegmentation.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !17
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.44) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !22
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !22
  store i8 %i.i, ptr %i.h, align 1, !tbaa !22
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = load ptr, ptr %0, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6opencc24CreatePluginSegmentationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt4pairIS5_S5_ESaISA_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i64, align 8                      ; 12 uses
  %5 = alloca %"class.std::basic_ifstream", align 8 ; 41 uses
  %6 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::allocator", align 1   ; 5 uses
  %15 = alloca %"class.std::vector.24", align 8   ; 16 uses
  %16 = alloca %"class.std::vector.24", align 8   ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_ostringstream", align 8 ; 17 uses
  %18 = alloca %"class.std::vector.24", align 8   ; 15 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %29 = alloca %"class.std::shared_ptr.3", align 16 ; 16 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %30 = alloca %struct.opencc_error_t, align 8    ; 7 uses
  %31 = alloca %struct.opencc_segmentation_create_args_t, align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %34 = alloca %"class.std::allocator", align 1   ; 4 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #28
  %i.f = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  store ptr %i.f, ptr %28, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !23
  store i8 0, ptr %i.f, align 8, !tbaa !22
  %i.h = load ptr, ptr %2, align 8, !tbaa !122    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122  ; 2 uses
  %.not230 = icmp eq ptr %i.h, %i.j
  br i1 %.not230, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.critedge
  %.sroa.0147.0231 = phi ptr [ %i.u, %.critedge ], [ %i.h, %bb.a ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0147.0231, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !23
  %i.m = icmp eq i64 %i.l, 16
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.critedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.n = load ptr, ptr %.sroa.0147.0231, align 8, !tbaa !21
  %i.o = load i128, ptr %i.n, align 1
  %i.p = icmp ne i128 %i.o, 161430485788046851758706933116055871327
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.critedge
end_hunk_0
begin_hunk_1_@_ZN6opencc24CreatePluginSegmentationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorISt4pairIS5_S5_ESaISA_EE:bb.a
  %i.tu = add nsw i32 %i.tt, 1
  store i32 %i.tu, ptr %i.tr, align 4, !tbaa !36, !noalias !163
  br label %_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.el:                                            ; preds = %bb.ej
  %i.tv = atomicrmw volatile add ptr %i.tr, i32 1 acq_rel, align 4, !noalias !163 ; 0 uses
  br label %_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.em:                                            ; preds = %bb.en
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.en:                                            ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i59
  invoke fastcc void @_ZN6opencc12_GLOBAL__N_113PluginManager12LoadFromPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr dead_on_unwind noalias nonnull writable align 8 %29, ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %bb.eo unwind label %bb.em

bb.eo:                                            ; preds = %bb.en
  %i.tx = invoke fastcc noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEEixERSG_(ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %bb.ep unwind label %bb.fa, !noalias !163 ; 2 uses

bb.ep:                                            ; preds = %bb.eo
  %.val22.i = load ptr, ptr %29, align 16, !tbaa !47, !alias.scope !163
  %i.ty = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.val23.i = load ptr, ptr %i.ty, align 8, !tbaa !35, !alias.scope !163 ; 4 uses
  store ptr %.val22.i, ptr %i.tx, align 8, !tbaa !47, !noalias !163
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8 ; 3 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !35, !noalias !163 ; 3 uses
  %.not.i.i.i24.i = icmp eq ptr %.val23.i, %i.ua
  br i1 %.not.i.i.i24.i, label %_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %.not7.i.i.i.i65 = icmp eq ptr %.val23.i, null
  br i1 %.not7.i.i.i.i65, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ub = getelementptr inbounds nuw i8, ptr %.val23.i, i64 8 ; 3 uses
  %i.uc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !163
  %.not.i.i.i.i25.i = icmp eq i8 %i.uc, 0
  br i1 %.not.i.i.i.i25.i, label %bb.et, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.ud = load i32, ptr %i.ub, align 4, !tbaa !36, !noalias !163
  %i.ue = add nsw i32 %i.ud, 1
  store i32 %i.ue, ptr %i.ub, align 4, !tbaa !36, !noalias !163
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66

bb.et:                                            ; preds = %bb.er
  %i.uf = atomicrmw volatile add ptr %i.ub, i32 1 acq_rel, align 4, !noalias !163 ; 0 uses
  %.pr.pre.i.i.i.i72 = load ptr, ptr %i.tz, align 8, !tbaa !35, !noalias !163
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66: ; preds = %bb.et, %bb.es, %bb.eq
  %i.ug = phi ptr [ %i.ua, %bb.eq ], [ %i.ua, %bb.es ], [ %.pr.pre.i.i.i.i72, %bb.et ] ; 8 uses
  %.not8.i.i.i.i67 = icmp eq ptr %i.ug, null
  br i1 %.not8.i.i.i.i67, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71, label %bb.eu

bb.eu:                                            ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 8 ; 4 uses
  %i.ui = load atomic i64, ptr %i.uh acquire, align 8, !noalias !163 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, 4294967297
  %i.uk = trunc i64 %i.ui to i32                  ; 2 uses
  br i1 %i.uj, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.uh, align 8, !tbaa !49, !noalias !163
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ug, i64 12
  store i32 0, ptr %i.ul, align 4, !tbaa !50, !noalias !163
  %i.um = load ptr, ptr %i.ug, align 8, !tbaa !44, !noalias !163
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 16
  %i.uo = load ptr, ptr %i.un, align 8, !noalias !163
  call void %i.uo(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #28, !noalias !163, !inline_history !119
  %i.up = load ptr, ptr %i.ug, align 8, !tbaa !44, !noalias !163
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 24
  %i.ur = load ptr, ptr %i.uq, align 8, !noalias !163
  call void %i.ur(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #28, !noalias !163, !inline_history !119
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71

bb.ew:                                            ; preds = %bb.eu
  %i.us = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22, !noalias !163
  %.not.i9.i.i.i.i68 = icmp eq i8 %i.us, 0
  br i1 %.not.i9.i.i.i.i68, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.ut = add nsw i32 %i.uk, -1
  store i32 %i.ut, ptr %i.uh, align 8, !tbaa !36, !noalias !163
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69

bb.ey:                                            ; preds = %bb.ew
  %i.uu = atomicrmw volatile add ptr %i.uh, i32 -1 acq_rel, align 4, !noalias !163
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69: ; preds = %bb.ey, %bb.ex
  %.0.i.i.i.i.i.i70 = phi i32 [ %i.uk, %bb.ex ], [ %i.uu, %bb.ey ]
  %i.uv = icmp eq i32 %.0.i.i.i.i.i.i70, 1
  br i1 %i.uv, label %bb.ez, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71, !prof !51

bb.ez:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ug) #28, !noalias !163
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71: ; preds = %bb.ez, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i69, %bb.ev, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i66
  store ptr %.val23.i, ptr %i.tz, align 8, !tbaa !35, !noalias !163
  br label %_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.fa:                                            ; preds = %bb.eo
  %i.uw = landingpad { ptr, i32 }
          cleanup
  %i.ux = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.val.i64 = load ptr, ptr %i.ux, align 8, !tbaa !35, !alias.scope !163
  call fastcc void @_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr %.val.i64) #28, !noalias !163
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.em
  %.pn.i63 = phi { ptr, i32 } [ %i.uw, %bb.fa ], [ %i.tw, %bb.em ]
  %i.uy = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager) #28, !noalias !163 ; 0 uses
  br label %.body

bb.fc:                                            ; preds = %bb.ee
  unreachable

_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i71, %bb.ep, %bb.el, %bb.ek, %bb.ei, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit163.i, %bb.o, %bb.n, %bb.l
  %i.uz = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager) #28, !noalias !164 ; 0 uses
  %i.va = load ptr, ptr %i.i, align 8, !tbaa !166 ; 3 uses
  %i.vb = load ptr, ptr %2, align 8, !tbaa !167   ; 3 uses
  %i.vc = ptrtoint ptr %i.va to i64
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = sub i64 %i.vc, %i.vd
  %i.vf = ashr exact i64 %i.ve, 6                 ; 3 uses
  %i.vg = icmp ugt i64 %i.vf, 384307168202282325
  br i1 %i.vg, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #27
          to label %.noexc81 unwind label %.thread

.noexc81:                                         ; preds = %bb.fd
  unreachable

bb.fe:                                            ; preds = %_ZN6opencc12_GLOBAL__N_113PluginManager10LoadByTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not171 = icmp eq ptr %i.va, %i.vb
  br i1 %.not171, label %._crit_edge, label %_ZNSt12_Vector_baseI16opencc_kv_pair_tSaIS0_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseI16opencc_kv_pair_tSaIS0_EE11_M_allocateEm.exit.i: ; preds = %bb.fe
  %i.vh = mul nuw nsw i64 %i.vf, 24
  %i.vi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vh) #30
          to label %.lr.ph237.preheader unwind label %.thread ; 3 uses

.lr.ph237.preheader:                              ; preds = %_ZNSt12_Vector_baseI16opencc_kv_pair_tSaIS0_EE11_M_allocateEm.exit.i
  %i.vj = getelementptr inbounds nuw [24 x i8], ptr %i.vi, i64 %i.vf
  br label %.lr.ph237

._crit_edge:                                      ; preds = %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit, %bb.fe
  %.sroa.0132.0.lcssa = phi ptr [ null, %bb.fe ], [ %.sroa.0132.3, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ] ; 6 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.fe ], [ %.sroa.13.2, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  %.sroa.21.0.lcssa = phi ptr [ null, %bb.fe ], [ %.sroa.21.3, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  store ptr null, ptr %i.e, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #28
  %i.vk = getelementptr inbounds nuw i8, ptr %30, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.vk, i8 0, i64 16, i1 false)
  store i64 24, ptr %30, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #28
  store i64 40, ptr %31, align 8, !tbaa !171
  %i.vl = icmp eq ptr %.sroa.0132.0.lcssa, %.sroa.13.0.lcssa
  %spec.select = select i1 %i.vl, ptr null, ptr %.sroa.0132.0.lcssa
  %i.vm = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %spec.select, ptr %i.vm, align 8, !tbaa !172
  %i.vn = ptrtoint ptr %.sroa.13.0.lcssa to i64
  %i.vo = ptrtoint ptr %.sroa.0132.0.lcssa to i64 ; 2 uses
  %i.vp = sub i64 %i.vn, %i.vo
  %i.vq = sdiv exact i64 %i.vp, 24
  %i.vr = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 %i.vq, ptr %i.vr, align 8, !tbaa !173
  %i.vs = getelementptr inbounds nuw i8, ptr %31, i64 24
  store ptr %i.e, ptr %i.vs, align 8, !tbaa !174
  %i.vt = getelementptr inbounds nuw i8, ptr %31, i64 32
  store ptr %30, ptr %i.vt, align 8, !tbaa !175
  %.val51 = load ptr, ptr %29, align 16, !tbaa !47 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.val51, i64 16 ; 2 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !60
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 32
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !176
  %i.vy = invoke noundef i32 %i.vx(ptr noundef nonnull %31)
          to label %bb.fk unwind label %bb.fs

bb.ff:                                            ; preds = %.invoke, %_ZN6opencc12_GLOBAL__N_116GetPluginManagerEv.exit57, %_ZN6opencc12_GLOBAL__N_116GetPluginManagerEv.exit
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.fd, %_ZNSt12_Vector_baseI16opencc_kv_pair_tSaIS0_EE11_M_allocateEm.exit.i
  %i.wa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EED2Ev.exit118

.lr.ph237:                                        ; preds = %.lr.ph237.preheader, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit
  %.sroa.0129.0236 = phi ptr [ %i.ws, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ], [ %i.vb, %.lr.ph237.preheader ] ; 3 uses
  %.sroa.21.0235 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ], [ %i.vj, %.lr.ph237.preheader ] ; 4 uses
  %.sroa.13.0234 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ], [ %i.vi, %.lr.ph237.preheader ] ; 5 uses
  %.sroa.0132.0233 = phi ptr [ %.sroa.0132.3, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit ], [ %i.vi, %.lr.ph237.preheader ] ; 6 uses
  %i.wb = load ptr, ptr %.sroa.0129.0236, align 8, !tbaa !21 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.sroa.0129.0236, i64 32
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !21 ; 2 uses
  %.not.i.i83 = icmp eq ptr %.sroa.13.0234, %.sroa.21.0235
  br i1 %.not.i.i83, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %.lr.ph237
  store i64 24, ptr %.sroa.13.0234, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0234, i64 8
  store ptr %i.wb, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !63
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.0234, i64 16
  store ptr %i.wd, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !63
  br label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit

bb.fh:                                            ; preds = %.lr.ph237
  %i.we = ptrtoint ptr %.sroa.21.0235 to i64
  %i.wf = ptrtoint ptr %.sroa.0132.0233 to i64
  %i.wg = sub i64 %i.we, %i.wf                    ; 6 uses
  %i.wh = icmp eq i64 %i.wg, 9223372036854775800
  br i1 %i.wh, label %bb.fi, label %_ZNKSt6vectorI16opencc_kv_pair_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fi:                                            ; preds = %bb.fh
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #27
          to label %.noexc85 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc85:                                         ; preds = %bb.fi
  unreachable

_ZNKSt6vectorI16opencc_kv_pair_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fh
  %i.wi = sdiv exact i64 %i.wg, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.wi, i64 1)
  %i.wj = add nsw i64 %.sroa.speculated.i.i.i.i, %i.wi ; 2 uses
  %i.wk = icmp ult i64 %i.wj, %i.wi
  %i.wl = call i64 @llvm.umin.i64(i64 %i.wj, i64 384307168202282325)
  %i.wm = select i1 %i.wk, i64 384307168202282325, i64 %i.wl ; 3 uses
  %.not.i.i.i.i84 = icmp ne i64 %i.wm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i84)
  %i.wn = mul nuw nsw i64 %i.wm, 24
  %i.wo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wn) #30
          to label %.noexc86 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc86:                                         ; preds = %_ZNKSt6vectorI16opencc_kv_pair_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.wp = getelementptr inbounds i8, ptr %i.wo, i64 %i.wg ; 4 uses
  store i64 24, ptr %i.wp, align 8, !tbaa !19
  %.sroa.6.0..sroa_idx124 = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  store ptr %i.wb, ptr %.sroa.6.0..sroa_idx124, align 8, !tbaa !63
  %.sroa.7.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  store ptr %i.wd, ptr %.sroa.7.0..sroa_idx126, align 8, !tbaa !63
  %i.wq = icmp sgt i64 %i.wg, 0
  br i1 %i.wq, label %bb.fj, label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.fj:                                            ; preds = %.noexc86
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.wo, ptr align 8 %.sroa.0132.0233, i64 %i.wg, i1 false)
  br label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.fj, %.noexc86
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0132.0233, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %38

38:                                               ; preds = %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0132.0233, i64 noundef %i.wg) #29
  br label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %38, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.wr = getelementptr inbounds nuw [24 x i8], ptr %i.wo, i64 %i.wm
  br label %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE9push_backEOS0_.exit: ; preds = %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %bb.fg
  %.sroa.0132.3 = phi ptr [ %i.wo, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.0132.0233, %bb.fg ] ; 2 uses
  %.pn173 = phi ptr [ %i.wp, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.13.0234, %bb.fg ]
  %.sroa.21.3 = phi ptr [ %i.wr, %_ZNSt6vectorI16opencc_kv_pair_tSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.21.0235, %bb.fg ] ; 2 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn173, i64 24 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %.sroa.0129.0236, i64 64 ; 2 uses
  %.not172 = icmp eq ptr %i.ws, %i.va
  br i1 %.not172, label %._crit_edge, label %.lr.ph237

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorI16opencc_kv_pair_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.fi
  %lpad.loopexit.split-lp521 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gq

bb.fk:                                            ; preds = %._crit_edge
  %i.wt = icmp ne i32 %i.vy, 0
  %i.wu = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.wv = icmp eq ptr %i.wu, null
  %or.cond = select i1 %i.wt, i1 true, i1 %i.wv
  br i1 %or.cond, label %bb.fl, label %bb.fz

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  %i.ww = load ptr, ptr %i.vu, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %bb.fm unwind label %bb.ft

bb.fm:                                            ; preds = %bb.fl
  %.val52 = load ptr, ptr %33, align 8
  %i.wx = getelementptr inbounds nuw i8, ptr %33, i64 8
  %.val53 = load i64, ptr %i.wx, align 8
  invoke fastcc void @_ZN6opencc12_GLOBAL__N_116TakeErrorMessageEPK29opencc_segmentation_plugin_v2P14opencc_error_tRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %32, ptr noundef %i.ww, ptr noundef %30, ptr %.val52, i64 %.val53)
          to label %bb.fn unwind label %bb.fu

bb.fn:                                            ; preds = %bb.fm
  %i.wy = load ptr, ptr %33, align 8, !tbaa !21   ; 2 uses
  %i.wz = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.xa = icmp eq ptr %i.wy, %i.wz
  br i1 %i.xa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.fn
  %i.xb = load i64, ptr %i.wz, align 8, !tbaa !22
  %i.xc = add i64 %i.xb, 1
  call void @_ZdlPvm(ptr noundef %i.wy, i64 noundef %i.xc) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  %i.xd = call ptr @__cxa_allocate_exception(i64 40) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %37, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.fo unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread

bb.fo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef nonnull align 8 dereferenceable(32) %37, ptr noundef nonnull @.str.6)
          to label %bb.fp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %35, ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.fq unwind label %bb.fv

bb.fq:                                            ; preds = %bb.fp
  invoke void @_ZN6opencc13InvalidFormatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.xd, ptr noundef nonnull align 8 dereferenceable(32) %35)
          to label %bb.fr unwind label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  invoke void @__cxa_throw(ptr nonnull %i.xd, ptr nonnull @_ZTIN6opencc13InvalidFormatE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #27
          to label %bb.gt unwind label %bb.fw

bb.fs:                                            ; preds = %bb.fz, %._crit_edge
  %i.xe = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.ft:                                            ; preds = %bb.fl
  %i.xf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

bb.fu:                                            ; preds = %bb.fm
  %i.xg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xh = load ptr, ptr %33, align 8, !tbaa !21   ; 2 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.xj = icmp eq ptr %i.xh, %i.xi
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87: ; preds = %bb.fu
  %i.xk = load i64, ptr %i.xi, align 8, !tbaa !22
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xh, i64 noundef %i.xl) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit89: ; preds = %bb.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87, %bb.ft
  %.pn = phi { ptr, i32 } [ %i.xf, %bb.ft ], [ %i.xg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87 ], [ %i.xg, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.fv:                                            ; preds = %bb.fp
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

bb.fw:                                            ; preds = %bb.fr, %bb.fq
  %.0 = phi i1 [ false, %bb.fr ], [ true, %bb.fq ] ; 2 uses
  %i.xo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xp = load ptr, ptr %35, align 8, !tbaa !21   ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 2 uses
  %i.xr = icmp eq ptr %i.xp, %i.xq
  br i1 %i.xr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90: ; preds = %bb.fw
  %i.xs = load i64, ptr %i.xq, align 8, !tbaa !22
  %i.xt = add i64 %i.xs, 1
  call void @_ZdlPvm(ptr noundef %i.xp, i64 noundef %i.xt) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92: ; preds = %bb.fw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90, %bb.fv
  %.pn35 = phi { ptr, i32 } [ %i.xn, %bb.fv ], [ %i.xo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %i.xo, %bb.fw ] ; 4 uses
  %.1 = phi i1 [ true, %bb.fv ], [ %.0, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i90 ], [ %.0, %bb.fw ] ; 2 uses
  %i.xu = load ptr, ptr %36, align 8, !tbaa !21   ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.xw = icmp eq ptr %i.xu, %i.xv
  br i1 %i.xw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92
  %i.xx = load i64, ptr %i.xv, align 8, !tbaa !22
  %i.xy = add i64 %i.xx, 1
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xy) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i93
  %i.xz = load ptr, ptr %37, align 8, !tbaa !21   ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.yb = icmp eq ptr %i.xz, %i.ya
  br i1 %i.yb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread: ; preds = %bb.fo
  %i.yc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yd = load ptr, ptr %37, align 8, !tbaa !21   ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 2 uses
  %i.yf = icmp eq ptr %i.yd, %i.ye
  br i1 %i.yf, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread
  %i.yg = load i64, ptr %i.ye, align 8, !tbaa !22
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.yd, i64 noundef %i.yh) #29
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  %i.yi = load i64, ptr %i.ya, align 8, !tbaa !22
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.xz, i64 noundef %i.yj) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br i1 %.1, label %bb.fx, label %bb.fy

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br i1 %.1, label %bb.fx, label %bb.fy

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread
  %.pn35.pn.pn154.ph = phi { ptr, i32 } [ %i.yc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96.thread ], [ %i.xm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98.thread ], [ %i.yc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit95.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  br label %bb.fx

bb.fx:                                            ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn35.pn.pn154 = phi { ptr, i32 } [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %.pn35.pn.pn154.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.xd) #28
  br label %bb.fy

bb.fy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96, %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
  %.pn35.pn.pn153 = phi { ptr, i32 } [ %.pn35.pn.pn154, %bb.fx ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98 ], [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96 ] ; 2 uses
  %i.yk = load ptr, ptr %32, align 8, !tbaa !21   ; 2 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 2 uses
  %i.ym = icmp eq ptr %i.yk, %i.yl
  br i1 %i.ym, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

end_hunk_1
begin_hunk_2_@_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

bb.d:                                             ; preds = %bb.b
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %i.d, -1
  store i32 %i.m, ptr %i.a, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.n = atomicrmw volatile add ptr %i.a, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.d, %bb.e ], [ %i.n, %bb.f ]
  %i.o = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.o, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.8.val) #28
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN6opencc12_GLOBAL__N_113PluginManagerD2Ev(ptr nofree noundef nonnull align 8 captures(address) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !71 ; 2 uses
  %.not1.i.i.i.i = icmp eq ptr %.val.i.i.i, null
  br i1 %.not1.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.02.i.i.i.i = phi ptr [ %.0.val.i.i.i.i, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %.val.i.i.i, %bb.a ] ; 5 uses
  %.0.val.i.i.i.i = load ptr, ptr %.02.i.i.i.i, align 8, !tbaa !72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 48
  %.val.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !35 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.e, align 8, !tbaa !49
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !50
  %i.j = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i.i.i) #28, !inline_history !191
  %i.m = load ptr, ptr %.val.i.i.i.i.i.i, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i.i.i) #28, !inline_history !191
  br label %_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.h, %bb.e ], [ %i.r, %bb.f ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.g, label %_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, !prof !51

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i.i.i.i.i.i) #28
  br label %_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i

_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02.i.i.i.i, i64 24 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !22
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %_ZNSt12__shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.02.i.i.i.i, i64 noundef 64) #29
  %.not.i.i.i.i = icmp eq ptr %.0.val.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !192

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %bb.a
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ab = shl i64 %i.aa, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.y, i8 0, i64 %i.ab, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !31  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i
  %i.af = load i64, ptr %i.z, align 8, !tbaa !32
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #29
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i.i, %bb.h
  ret void
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #32
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN6opencc12_GLOBAL__N_18IsTruthyEPKc(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.c, ptr %1, align 8, !tbaa !17
  %i.d = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #28 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !21
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.g, ptr %i.c, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %0, align 1, !tbaa !22
  store i8 %i.i, ptr %i.h, align 1, !tbaa !22
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %0, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = load ptr, ptr %1, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.n = load i64, ptr %i.k, align 8, !tbaa !23   ; 5 uses
  %.pre20 = load ptr, ptr %1, align 8, !tbaa !21  ; 7 uses
  switch i64 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13 [
    i64 1, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
    i64 3, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11
    i64 2, label %bb.f
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %lhsc = load i8, ptr %.pre20, align 1
  %i.o = icmp eq i8 %lhsc, 49
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7: ; preds = %bb.e
  %bcmp.i6 = call i32 @bcmp(ptr %.pre20, ptr nonnull @.str.16, i64 %i.n)
  %i.p = icmp eq i32 %bcmp.i6, 0
  br i1 %i.p, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
  %i.q = load i32, ptr %.pre20, align 1
  %i.r = icmp ne i32 %i.q, 1163219540
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11: ; preds = %bb.e
  %bcmp.i10 = call i32 @bcmp(ptr %.pre20, ptr nonnull @.str.18, i64 %i.n)
  %i.u = icmp eq i32 %bcmp.i10, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13

bb.f:                                             ; preds = %bb.e
  %bcmp.i12 = call i32 @bcmp(ptr %.pre20, ptr nonnull @.str.19, i64 %i.n)
  %i.v = icmp eq i32 %bcmp.i12, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.e, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7
  %i.w = phi i1 [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %bb.e ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit7 ], [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit11 ], [ %i.t, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit9 ], [ %i.v, %bb.f ]
  %i.x = icmp eq ptr %.pre20, %i.c
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  %i.y = icmp ult i64 %i.n, 16
  call void @llvm.assume(i1 %i.y)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit13
  %i.z = load i64, ptr %i.c, align 8, !tbaa !22
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %.pre20, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6opencc9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6opencc9ExceptionE, i64 16), ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !21     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !23   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.f, ptr %i.a, align 8, !tbaa !19
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !21
  %i.i = load i64, ptr %i.a, align 8, !tbaa !19
  store i64 %i.i, ptr %i.c, align 8, !tbaa !22
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !22
  store i8 %i.k, ptr %i.j, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !23
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEESt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_SA_EEE4findERSG_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager, i64 64), align 8, !tbaa !73
  %.not.i = icmp ugt i64 %i.a, 20
  br i1 %.not.i, label %bb.b, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %.sroa.01.010.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager, i64 56), align 8, !tbaa !72 ; 3 uses
  %.not511.i = icmp eq ptr %.sroa.01.010.i, null
  br i1 %.not511.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.val7.i = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load i64, ptr %i.b, align 8, !tbaa !23
  %.val8.fr.i = freeze i64 %.val8.i               ; 3 uses
  %i.c = icmp eq i64 %.val8.fr.i, 0
  br i1 %i.c, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.us.i
  %.sroa.01.012.us.i = phi ptr [ %.sroa.01.0.us.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.us.i ], [ %.sroa.01.010.i, %.lr.ph.i ] ; 3 uses
  %i.d = getelementptr i8, ptr %.sroa.01.012.us.i, i64 16
  %.val10.us.i = load i64, ptr %i.d, align 8, !tbaa !23
  %i.e = icmp eq i64 %.val10.us.i, 0
  br i1 %i.e, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.us.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.01.0.us.i = load ptr, ptr %.sroa.01.012.us.i, align 8, !tbaa !72 ; 2 uses
  %.not5.us.i = icmp eq ptr %.sroa.01.0.us.i, null
  br i1 %.not5.us.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %.lr.ph.split.us.i, !llvm.loop !193

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.i
  %.sroa.01.012.i = phi ptr [ %.sroa.01.0.i, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.i ], [ %.sroa.01.010.i, %.lr.ph.i ] ; 4 uses
  %i.f = getelementptr i8, ptr %.sroa.01.012.i, i64 16
  %.val10.i = load i64, ptr %i.f, align 8, !tbaa !23
  %i.g = icmp eq i64 %.val8.fr.i, %.val10.i
  br i1 %i.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i: ; preds = %.lr.ph.split.i
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr readonly %.val7.i, ptr readonly %.val9.i, i64 %.val8.fr.i)
  %i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread4.i: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_key_equalsERS8_RKNS_16_Hash_node_valueISE_Lb1EEE.exit.i, %.lr.ph.split.i
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.012.i, align 8, !tbaa !72 ; 2 uses
  %.not5.i = icmp eq ptr %.sroa.01.0.i, null
  br i1 %.not5.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %.lr.ph.split.i, !llvm.loop !193

bb.b:                                             ; preds = %bb.a
  %.val11.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val12.i = load i64, ptr %i.j, align 8, !tbaa !23
  %i.k = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %.val11.i, i64 noundef %.val12.i, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.c ; 3 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #32
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %bb.b
  %i.n = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager, i64 48), align 8, !tbaa !32 ; 3 uses
  %i.o = urem i64 %i.k, %i.n                      ; 3 uses
  %.val13.i = load ptr, ptr %0, align 8
  %.val14.i = load i64, ptr %i.j, align 8
  %.8.val.fr.i.i.i = freeze i64 %.val14.i         ; 3 uses
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN6opencc12_GLOBAL__N_116GetPluginManagerEvE7manager, i64 40), align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.o
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72   ; 3 uses
  %i.t = icmp eq i64 %.8.val.fr.i.i.i, 0
  %.phi.trans.insert7.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.val7.i.us.pre.i.i.i = load i64, ptr %.phi.trans.insert7.i.i.i, align 8, !tbaa !76 ; 2 uses
  br i1 %i.t, label %.split.us.i.i.i, label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %bb.d, %bb.f
  %.val7.i.us.i.i.i = phi i64 [ %.val22.us.i.i.i, %bb.f ], [ %.val7.i.us.pre.i.i.i, %bb.d ]
  %.0.us.i.i.i = phi ptr [ %i.x, %bb.f ], [ %i.s, %bb.d ] ; 3 uses
  %i.u = icmp eq i64 %i.k, %.val7.i.us.i.i.i
  br i1 %i.u, label %bb.e, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i

bb.e:                                             ; preds = %.split.us.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.us.i.i.i, i64 16
  %.val6.i.us.i.i.i = load i64, ptr %i.v, align 8, !tbaa !23
  %i.w = icmp eq i64 %.val6.i.us.i.i.i, 0
  br i1 %i.w, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i: ; preds = %bb.e, %.split.us.i.i.i
  %i.x = load ptr, ptr %.0.us.i.i.i, align 8, !tbaa !72 ; 3 uses
  %.not18.us.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not18.us.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.us.i.i.i
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.val22.us.i.i.i = load i64, ptr %i.y, align 8, !tbaa !76 ; 2 uses
  %i.z = urem i64 %.val22.us.i.i.i, %i.n
  %.not19.us.i.i.i = icmp eq i64 %i.z, %i.o
  br i1 %.not19.us.i.i.i, label %.split.us.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE4findERS7_.exit, !llvm.loop !3

.split.i.i.i:                                     ; preds = %bb.d, %bb.h
  %.val7.i.i.i.i = phi i64 [ %.val22.i.i.i, %bb.h ], [ %.val7.i.us.pre.i.i.i, %bb.d ]
  %.0.i.i.i = phi ptr [ %i.af, %bb.h ], [ %i.s, %bb.d ] ; 4 uses
  %i.aa = icmp eq i64 %i.k, %.val7.i.i.i.i
  br i1 %i.aa, label %bb.g, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i

bb.g:                                             ; preds = %.split.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %.val6.i.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !23
  %i.ac = icmp eq i64 %.8.val.fr.i.i.i, %.val6.i.i.i.i
  br i1 %i.ac, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_St10shared_ptrIN6opencc12_GLOBAL__N_113PluginLibraryEEENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueISE_Lb1EEE.exit.thread.i.i.i

end_hunk_2
