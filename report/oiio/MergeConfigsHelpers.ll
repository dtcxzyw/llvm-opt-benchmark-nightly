inline.NumInlined: 1441
inline.NumDeleted: 453
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.0" = type { %"class.std::__shared_ptr.1" }
%"class.std::__shared_ptr.1" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.5" = type { %"class.std::__shared_ptr.6" }
%"class.std::__shared_ptr.6" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::OCIOMYaml" = type { i8 }
%"class.std::shared_ptr.8" = type { %"class.std::__shared_ptr.9" }
%"class.std::__shared_ptr.9" = type { ptr, %"class.std::__shared_count" }
%"class.YAML::Node" = type { i8, %"class.std::__cxx11::basic_string", %"class.std::shared_ptr.11", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::shared_ptr.11" = type { %"class.std::__shared_ptr.12" }
%"class.std::__shared_ptr.12" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::shared_ptr.28" = type { %"class.std::__shared_ptr.29" }
%"class.std::__shared_ptr.29" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon.31 }
%union.anon.31 = type { i32 }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"struct.OpenColorIO_v2_5::MergeHandlerOptions" = type { ptr, ptr, ptr, ptr }
%"class.OpenColorIO_v2_5::GeneralMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::SectionMerger" = type { ptr, ptr, ptr, ptr, ptr, i32, %"class.std::shared_ptr.32", %"class.std::shared_ptr.32" }
%"class.std::shared_ptr.32" = type { %"class.std::__shared_ptr.33" }
%"class.std::__shared_ptr.33" = type { ptr, %"class.std::__shared_count" }
%"class.OpenColorIO_v2_5::RolesMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::FileRulesMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::DisplayViewMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::ViewTransformsMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::LooksMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::ColorspacesMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }
%"class.OpenColorIO_v2_5::NamedTransformsMerger" = type { %"class.OpenColorIO_v2_5::SectionMerger" }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"output_name\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"input_family_prefix\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"base_family_prefix\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"input_first\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"error_on_conflict\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"default_strategy\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"avoid_duplicates\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"adjust_input_reference_space\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"search_path\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"active_displays\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"active_views\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"inactive_colorspaces\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"roles\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"file_rules\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"display-views\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"view_transforms\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"looks\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"colorspaces\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"named_transforms\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"environment: [\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c">\00", align 1
@_ZTISt9exception = external constant ptr
@.str.29 = private unnamed_addr constant [43 x i8] c"Error: Loading the OCIOM Merge parameters \00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"' failed. \00", align 1
@_ZTIN16OpenColorIO_v2_59ExceptionE = external constant ptr
@.str.32 = private unnamed_addr constant [39 x i8] c"The merge options filepath is missing.\00", align 1
@_ZTIN16OpenColorIO_v2_520ExceptionMissingFileE = external constant ptr
@.str.33 = private unnamed_addr constant [23 x i8] c"Error could not read '\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"' merge options.\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Error building YAML: \00", align 1
@.str.37 = private unnamed_addr constant [44 x i8] c"Could not load the base or the input config\00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"The input or base config was not set.\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"The base config or color space object was not set.\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"merged\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.41 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.47 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN16OpenColorIO_v2_513GeneralMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_513SectionMergerE = linkonce_odr hidden unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN16OpenColorIO_v2_513SectionMergerE, ptr @_ZN16OpenColorIO_v2_513SectionMerger17handlePreferInputEv, ptr @_ZN16OpenColorIO_v2_513SectionMerger16handlePreferBaseEv, ptr @_ZN16OpenColorIO_v2_513SectionMerger15handleInputOnlyEv, ptr @_ZN16OpenColorIO_v2_513SectionMerger14handleBaseOnlyEv, ptr @_ZN16OpenColorIO_v2_513SectionMerger12handleRemoveEv, ptr @__cxa_pure_virtual] }, align 8
@.str.50 = private unnamed_addr constant [46 x i8] c"SectionMerger arguments were not initialized.\00", align 1
@_ZTIN16OpenColorIO_v2_513SectionMergerE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN16OpenColorIO_v2_513SectionMergerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN16OpenColorIO_v2_513SectionMergerE = linkonce_odr hidden constant [36 x i8] c"N16OpenColorIO_v2_513SectionMergerE\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c" section does not support strategy 'PreferInput'\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c" section does not support strategy 'PreferBase'\00", align 1
@.str.54 = private unnamed_addr constant [47 x i8] c" section does not support strategy 'InputOnly'\00", align 1
@.str.55 = private unnamed_addr constant [46 x i8] c" section does not support strategy 'BaseOnly'\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c" section does not support strategy 'Remove'\00", align 1
@_ZTVN16OpenColorIO_v2_511RolesMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_515FileRulesMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_517DisplayViewMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_520ViewTransformsMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_511LooksMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_517ColorspacesMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE = external unnamed_addr constant { [8 x ptr] }, align 8
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [113 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_523ConfigMergingParametersEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_523ConfigMergingParametersEE = linkonce_odr constant [51 x i8] c"PFvPN16OpenColorIO_v2_523ConfigMergingParametersEE\00", align 1
@.str.57 = private unnamed_addr constant [74 x i8] c"vector::_M_range_check: __n (which is %zu) >= this->size() (which is %zu)\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, align 8
@_ZTISt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, align 8
@_ZTSSt19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [102 x i8] c"St19_Sp_counted_deleterIPN16OpenColorIO_v2_512ConfigMergerEPFvS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", align 1
@_ZTSPFvPN16OpenColorIO_v2_512ConfigMergerEE = linkonce_odr constant [40 x i8] c"PFvPN16OpenColorIO_v2_512ConfigMergerEE\00", align 1
@switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_ = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 16), ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 24), ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 32), ptr getelementptr inbounds nuw inrange(-40, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 40), ptr getelementptr inbounds nuw inrange(-48, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 48)], align 8
@switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.9 = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 16), ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 24), ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 32), ptr getelementptr inbounds nuw inrange(-40, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 40), ptr getelementptr inbounds nuw inrange(-48, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 48)], align 8
@switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.10 = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 16), ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 24), ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 32), ptr getelementptr inbounds nuw inrange(-40, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 40), ptr getelementptr inbounds nuw inrange(-48, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 48)], align 8
@switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.11 = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 16), ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 24), ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 32), ptr getelementptr inbounds nuw inrange(-40, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 40), ptr getelementptr inbounds nuw inrange(-48, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 48)], align 8
@switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.12 = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 16), ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 24), ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 32), ptr getelementptr inbounds nuw inrange(-40, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 40), ptr getelementptr inbounds nuw inrange(-48, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 48)], align 8
@switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.13 = private unnamed_addr constant [5 x ptr] [ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 16), ptr getelementptr inbounds nuw inrange(-24, 40) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 24), ptr getelementptr inbounds nuw inrange(-32, 32) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 32), ptr getelementptr inbounds nuw inrange(-40, 24) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 40), ptr getelementptr inbounds nuw inrange(-48, 16) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 48)], align 8

@_ZN16OpenColorIO_v2_523ConfigMergingParametersC1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_523ConfigMergingParametersC2Ev
@_ZN16OpenColorIO_v2_523ConfigMergingParametersD1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_523ConfigMergingParametersD2Ev
@_ZN16OpenColorIO_v2_512ConfigMergerC1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_512ConfigMergerC2Ev
@_ZN16OpenColorIO_v2_512ConfigMergerD1Ev = unnamed_addr alias void (ptr), ptr @_ZN16OpenColorIO_v2_512ConfigMergerD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN16OpenColorIO_v2_523ConfigMergingParametersC2Ev(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #23 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_523ConfigMergingParameters4ImplC2Ev(ptr noundef nonnull align 8 dereferenceable(276) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !7
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 280) #24
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN16OpenColorIO_v2_523ConfigMergingParameters4ImplC2Ev(ptr noundef nonnull align 8 dereferenceable(276) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr", align 16  ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !14
  store i8 0, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i64 0, ptr %i.e, align 8, !tbaa !14
  store i8 0, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !14
  store i8 0, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store i64 0, ptr %i.k, align 8, !tbaa !14
  store i8 0, ptr %i.j, align 8, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store i64 0, ptr %i.n, align 8, !tbaa !14
  store i8 0, ptr %i.m, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 0, ptr %i.r, align 8, !tbaa !14
  store i8 0, ptr %i.q, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  store i64 0, ptr %i.u, align 8, !tbaa !14
  store i8 0, ptr %i.t, align 8, !tbaa !17
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.35, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.a
  %i.w = load i64, ptr %i.e, align 8, !tbaa !14
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull @.str.35, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4 unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.y = load i64, ptr %i.h, align 8, !tbaa !14
  %i.z = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 noundef 0, i64 noundef %i.y, ptr noundef nonnull @.str.40, i64 noundef 6)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5 unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit4
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !14
  %i.ab = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 noundef 0, i64 noundef %i.aa, ptr noundef nonnull @.str.35, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6 unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit5
  %i.ac = load i64, ptr %i.n, align 8, !tbaa !14
  %i.ad = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 noundef 0, i64 noundef %i.ac, ptr noundef nonnull @.str.35, i64 noundef 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7 unwind label %bb.p ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit6
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN16OpenColorIO_v2_56Config6CreateEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %1)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit7
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ag = load <2 x ptr>, ptr %1, align 16, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !19 ; 8 uses
  store <2 x ptr> %i.ag, ptr %i.o, align 8, !tbaa !18
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56ConfigEEaSEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.ai, align 8, !tbaa !22
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !24
  %i.an = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !27
  %i.aq = load ptr, ptr %i.ah, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25, !inline_history !27
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56ConfigEEaSEOS2_.exit

bb.e:                                             ; preds = %bb.c
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.al, %bb.f ], [ %i.av, %bb.g ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.h, label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56ConfigEEaSEOS2_.exit, !prof !28

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) #25
  br label %_ZNSt10shared_ptrIN16OpenColorIO_v2_56ConfigEEaSEOS2_.exit

_ZNSt10shared_ptrIN16OpenColorIO_v2_56ConfigEEaSEOS2_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %i.ax = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN16OpenColorIO_v2_56ConfigEEaSEOS2_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.az = load atomic i64, ptr %i.ay acquire, align 8 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 4294967297
  %i.bb = trunc i64 %i.az to i32                  ; 2 uses
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ay, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  store i32 0, ptr %i.bc, align 4, !tbaa !24
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !29
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ax) #25, !inline_history !29
  br label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i = icmp eq i8 %i.bj, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = add nsw i32 %i.bb, -1
  store i32 %i.bk, ptr %i.ay, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bl = atomicrmw volatile add ptr %i.ay, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bb, %bb.l ], [ %i.bl, %bb.m ]
  %i.bm = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bm, label %bb.n, label %_ZNSt12__shared_ptrIN16OpenColorIO_v2_56ConfigELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !28
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512ConfigMerger12mergeConfigsEv:bb.a
  %i.bl = atomicrmw volatile add ptr %i.bh, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %11, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.bm = phi ptr [ %.pre, %bb.f ], [ %i.be, %bb.e ], [ %i.be, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.bn = load ptr, ptr %10, align 16, !tbaa !77
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !80
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !7
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37
  invoke void @_ZNK16OpenColorIO_v2_512ConfigMerger4Impl10loadConfigEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %12, ptr noundef nonnull align 8 dereferenceable(112) %i.bo, ptr noundef %i.bq)
          to label %bb.h unwind label %bb.ee

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.br = load ptr, ptr %10, align 16, !tbaa !77
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !80
  %i.bt = load ptr, ptr %11, align 8, !tbaa !38
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37
  invoke void @_ZNK16OpenColorIO_v2_512ConfigMerger4Impl10loadConfigEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.28") align 8 %13, ptr noundef nonnull align 8 dereferenceable(112) %i.bs, ptr noundef %i.bw)
          to label %bb.i unwind label %bb.ef

bb.i:                                             ; preds = %bb.h
  %i.bx = load ptr, ptr %12, align 8, !tbaa !172  ; 2 uses
  %i.by = icmp ne ptr %i.bx, null
  %i.bz = load ptr, ptr %13, align 8
  %i.ca = icmp ne ptr %i.bz, null
  %or.cond = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond, label %bb.j, label %bb.gq

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNK16OpenColorIO_v2_56Config18createEditableCopyEv(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.k unwind label %bb.eg

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %12, ptr %9, align 8
  store ptr %13, ptr %.sroa.2271.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3272.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4273.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %9)
          to label %bb.l unwind label %bb.eh

bb.l:                                             ; preds = %bb.k
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 16), ptr %15, align 8, !tbaa !25
  %i.cb = load ptr, ptr %11, align 8, !tbaa !38
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 244
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !47 ; 3 uses
  store i32 %i.ce, ptr %i.q, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.cf = icmp ult i32 %i.ce, 5
  br i1 %i.cf, label %switch.lookup, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit

switch.lookup:                                    ; preds = %bb.l
  %i.cg = zext nneg i32 %i.ce to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_, i64 %i.cg
  %switch.load = load ptr, ptr %switch.gep, align 8
  %.sink.i = load ptr, ptr %switch.load, align 8
  invoke void %.sink.i(ptr noundef nonnull align 8 dereferenceable(80) %15)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit unwind label %bb.ei, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit: ; preds = %bb.l, %switch.lookup
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %15, align 8, !tbaa !25
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !19  ; 8 uses
  %.not.i.i.i98 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i98, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ci, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !24
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #25, !inline_history !198
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.o:                                             ; preds = %bb.m
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i99 = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i.i99, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.cl, %bb.p ], [ %i.cv, %bb.q ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.r, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !28

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.n, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !19  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i1.i, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 4 uses
  %i.cz = load atomic i64, ptr %i.cy acquire, align 8 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 4294967297
  %i.db = trunc i64 %i.cz to i32                  ; 2 uses
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.cy, align 8, !tbaa !22
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  store i32 0, ptr %i.dc, align 4, !tbaa !24
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #25, !inline_history !198
  %i.dg = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  call void %i.di(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit

bb.u:                                             ; preds = %bb.s
  %i.dj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i = icmp eq i8 %i.dj, 0
  br i1 %.not.i.i.i2.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = add nsw i32 %i.db, -1
  store i32 %i.dk, ptr %i.cy, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.w:                                             ; preds = %bb.u
  %i.dl = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i4.i = phi i32 [ %i.db, %bb.v ], [ %i.dl, %bb.w ]
  %i.dm = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.dm, label %bb.x, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit, !prof !28

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit:    ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %12, ptr %8, align 8
  store ptr %13, ptr %.sroa.2267.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3268.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4269.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %8)
          to label %.noexc101 unwind label %bb.ek

.noexc101:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 16), ptr %16, align 8, !tbaa !25
  %i.dn = load ptr, ptr %11, align 8, !tbaa !38
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !7  ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 248
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !56 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 5
  br i1 %i.dr, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i, label %bb.y

_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i: ; preds = %.noexc101
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 244
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !47
  br label %bb.y

bb.y:                                             ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i, %.noexc101
  %.sink.i100 = phi i32 [ %i.dq, %.noexc101 ], [ %i.dt, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i ] ; 3 uses
  store i32 %.sink.i100, ptr %i.t, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.du = icmp ult i32 %.sink.i100, 5
  br i1 %i.du, label %switch.lookup310, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit106

switch.lookup310:                                 ; preds = %bb.y
  %i.dv = zext nneg i32 %.sink.i100 to i64
  %switch.gep311 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.9, i64 %i.dv
  %switch.load312 = load ptr, ptr %switch.gep311, align 8
  %.sink.i104 = load ptr, ptr %switch.load312, align 8
  invoke void %.sink.i104(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit106 unwind label %bb.el, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit106: ; preds = %bb.y, %switch.lookup310
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %16, align 8, !tbaa !25
  %i.dw = load ptr, ptr %i.u, align 8, !tbaa !19  ; 8 uses
  %.not.i.i.i107 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i107, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111, label %bb.z

bb.z:                                             ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit106
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 4 uses
  %i.dy = load atomic i64, ptr %i.dx acquire, align 8 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 4294967297
  %i.ea = trunc i64 %i.dy to i32                  ; 2 uses
  br i1 %i.dz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.dx, align 8, !tbaa !22
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  store i32 0, ptr %i.eb, align 4, !tbaa !24
  %i.ec = load ptr, ptr %i.dw, align 8, !tbaa !25
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #25, !inline_history !198
  %i.ef = load ptr, ptr %i.dw, align 8, !tbaa !25
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111

bb.ab:                                            ; preds = %bb.z
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i108 = icmp eq i8 %i.ei, 0
  br i1 %.not.i.i.i.i108, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ej = add nsw i32 %i.ea, -1
  store i32 %i.ej, ptr %i.dx, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i109

bb.ad:                                            ; preds = %bb.ab
  %i.ek = atomicrmw volatile add ptr %i.dx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i109

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i109: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i110 = phi i32 [ %i.ea, %bb.ac ], [ %i.ek, %bb.ad ]
  %i.el = icmp eq i32 %.0.i.i.i.i.i110, 1
  br i1 %i.el, label %bb.ae, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111, !prof !28

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i109
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dw) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i109, %bb.aa, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit106
  %i.em = load ptr, ptr %i.v, align 8, !tbaa !19  ; 8 uses
  %.not.i.i1.i112 = icmp eq ptr %i.em, null
  br i1 %.not.i.i1.i112, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit116, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 4 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8 ; 2 uses
  %i.ep = icmp eq i64 %i.eo, 4294967297
  %i.eq = trunc i64 %i.eo to i32                  ; 2 uses
  br i1 %i.ep, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.en, align 8, !tbaa !22
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  store i32 0, ptr %i.er, align 4, !tbaa !24
  %i.es = load ptr, ptr %i.em, align 8, !tbaa !25
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !198
  %i.ev = load ptr, ptr %i.em, align 8, !tbaa !25
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit116

bb.ah:                                            ; preds = %bb.af
  %i.ey = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i113 = icmp eq i8 %i.ey, 0
  br i1 %.not.i.i.i2.i113, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ez = add nsw i32 %i.eq, -1
  store i32 %i.ez, ptr %i.en, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i114

bb.aj:                                            ; preds = %bb.ah
  %i.fa = atomicrmw volatile add ptr %i.en, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i114: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i4.i115 = phi i32 [ %i.eq, %bb.ai ], [ %i.fa, %bb.aj ]
  %i.fb = icmp eq i32 %.0.i.i.i.i4.i115, 1
  br i1 %i.fb, label %bb.ak, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit116, !prof !28

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.em) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit116

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit116: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i111, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i114, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %12, ptr %7, align 8
  store ptr %13, ptr %.sroa.2263.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3264.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4265.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %7)
          to label %.noexc118 unwind label %bb.en

.noexc118:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit116
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 16), ptr %17, align 8, !tbaa !25
  %i.fc = load ptr, ptr %11, align 8, !tbaa !38
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !7  ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 252
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !57 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, 5
  br i1 %i.fg, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i, label %bb.al

_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i: ; preds = %.noexc118
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fd, i64 244
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !47
  br label %bb.al

bb.al:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i, %.noexc118
  %.sink.i117 = phi i32 [ %i.ff, %.noexc118 ], [ %i.fi, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i ] ; 3 uses
  store i32 %.sink.i117, ptr %i.w, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.fj = icmp ult i32 %.sink.i117, 5
  br i1 %i.fj, label %switch.lookup313, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit123

switch.lookup313:                                 ; preds = %bb.al
  %i.fk = zext nneg i32 %.sink.i117 to i64
  %switch.gep314 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.10, i64 %i.fk
  %switch.load315 = load ptr, ptr %switch.gep314, align 8
  %.sink.i121 = load ptr, ptr %switch.load315, align 8
  invoke void %.sink.i121(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit123 unwind label %bb.eo, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit123: ; preds = %bb.al, %switch.lookup313
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %17, align 8, !tbaa !25
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !19  ; 8 uses
  %.not.i.i.i124 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i124, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128, label %bb.am

bb.am:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit123
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8 ; 4 uses
  %i.fn = load atomic i64, ptr %i.fm acquire, align 8 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, 4294967297
  %i.fp = trunc i64 %i.fn to i32                  ; 2 uses
  br i1 %i.fo, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.fm, align 8, !tbaa !22
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i32 0, ptr %i.fq, align 4, !tbaa !24
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !25
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !198
  %i.fu = load ptr, ptr %i.fl, align 8, !tbaa !25
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128

bb.ao:                                            ; preds = %bb.am
  %i.fx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i125 = icmp eq i8 %i.fx, 0
  br i1 %.not.i.i.i.i125, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fy = add nsw i32 %i.fp, -1
  store i32 %i.fy, ptr %i.fm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i126

bb.aq:                                            ; preds = %bb.ao
  %i.fz = atomicrmw volatile add ptr %i.fm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i126

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i126: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i127 = phi i32 [ %i.fp, %bb.ap ], [ %i.fz, %bb.aq ]
  %i.ga = icmp eq i32 %.0.i.i.i.i.i127, 1
  br i1 %i.ga, label %bb.ar, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128, !prof !28

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i126
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fl) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128: ; preds = %bb.ar, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i126, %bb.an, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit123
  %i.gb = load ptr, ptr %i.y, align 8, !tbaa !19  ; 8 uses
  %.not.i.i1.i129 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i1.i129, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit133, label %bb.as

bb.as:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gd = load atomic i64, ptr %i.gc acquire, align 8 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 4294967297
  %i.gf = trunc i64 %i.gd to i32                  ; 2 uses
  br i1 %i.ge, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 0, ptr %i.gc, align 8, !tbaa !22
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !24
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !25
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #25, !inline_history !198
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !25
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit133

bb.au:                                            ; preds = %bb.as
  %i.gn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i130 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i2.i130, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gf, -1
  store i32 %i.go, ptr %i.gc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i131

bb.aw:                                            ; preds = %bb.au
  %i.gp = atomicrmw volatile add ptr %i.gc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i131

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i131: ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i4.i132 = phi i32 [ %i.gf, %bb.av ], [ %i.gp, %bb.aw ]
  %i.gq = icmp eq i32 %.0.i.i.i.i4.i132, 1
  br i1 %i.gq, label %bb.ax, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit133, !prof !28

bb.ax:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i131
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit133

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit133: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i128, %bb.at, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i131, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %12, ptr %6, align 8
  store ptr %13, ptr %.sroa.2259.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3260.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4261.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %6)
          to label %.noexc135 unwind label %bb.eq

.noexc135:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit133
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 16), ptr %18, align 8, !tbaa !25
  %i.gr = load ptr, ptr %11, align 8, !tbaa !38
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !7  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 256
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !58 ; 2 uses
  %i.gv = icmp eq i32 %i.gu, 5
  br i1 %i.gv, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i, label %bb.ay

_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i: ; preds = %.noexc135
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 244
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !47
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i, %.noexc135
  %.sink.i134 = phi i32 [ %i.gu, %.noexc135 ], [ %i.gx, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i ] ; 3 uses
  store i32 %.sink.i134, ptr %i.z, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.gy = icmp ult i32 %.sink.i134, 5
  br i1 %i.gy, label %switch.lookup316, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit140

switch.lookup316:                                 ; preds = %bb.ay
  %i.gz = zext nneg i32 %.sink.i134 to i64
  %switch.gep317 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.11, i64 %i.gz
  %switch.load318 = load ptr, ptr %switch.gep317, align 8
  %.sink.i138 = load ptr, ptr %switch.load318, align 8
  invoke void %.sink.i138(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit140 unwind label %bb.er, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit140: ; preds = %bb.ay, %switch.lookup316
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %18, align 8, !tbaa !25
  %i.ha = load ptr, ptr %i.aa, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i141 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i141, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145, label %bb.az

bb.az:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit140
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.hb, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !24
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !25
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25, !inline_history !198
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145

bb.bb:                                            ; preds = %bb.az
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i142 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i.i142, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143

bb.bd:                                            ; preds = %bb.bb
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i.i144 = phi i32 [ %i.he, %bb.bc ], [ %i.ho, %bb.bd ]
  %i.hp = icmp eq i32 %.0.i.i.i.i.i144, 1
  br i1 %i.hp, label %bb.be, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145, !prof !28

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145: ; preds = %bb.be, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i143, %bb.ba, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit140
  %i.hq = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i146 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i1.i146, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit150, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8 ; 4 uses
  %i.hs = load atomic i64, ptr %i.hr acquire, align 8 ; 2 uses
  %i.ht = icmp eq i64 %i.hs, 4294967297
  %i.hu = trunc i64 %i.hs to i32                  ; 2 uses
  br i1 %i.ht, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.hr, align 8, !tbaa !22
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  store i32 0, ptr %i.hv, align 4, !tbaa !24
  %i.hw = load ptr, ptr %i.hq, align 8, !tbaa !25
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #25, !inline_history !198
  %i.hz = load ptr, ptr %i.hq, align 8, !tbaa !25
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit150

bb.bh:                                            ; preds = %bb.bf
  %i.ic = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i147 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i.i2.i147, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.id = add nsw i32 %i.hu, -1
  store i32 %i.id, ptr %i.hr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i148

bb.bj:                                            ; preds = %bb.bh
  %i.ie = atomicrmw volatile add ptr %i.hr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i148

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i148: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i4.i149 = phi i32 [ %i.hu, %bb.bi ], [ %i.ie, %bb.bj ]
  %i.if = icmp eq i32 %.0.i.i.i.i4.i149, 1
  br i1 %i.if, label %bb.bk, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit150, !prof !28

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i148
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hq) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit150

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit150: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i145, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i148, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %12, ptr %5, align 8
  store ptr %13, ptr %.sroa.2255.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3256.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4257.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %19, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %5)
          to label %.noexc151 unwind label %bb.et

.noexc151:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit150
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_520ViewTransformsMergerE, i64 16), ptr %19, align 8, !tbaa !25
  %i.ig = load ptr, ptr %11, align 8, !tbaa !38
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !7  ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 260
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !59 ; 2 uses
  %i.ik = icmp eq i32 %i.ij, 5
  br i1 %i.ik, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i

_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i: ; preds = %.noexc151
  %i.il = getelementptr inbounds nuw i8, ptr %i.ih, i64 244
  %i.im = load i32, ptr %i.il, align 4, !tbaa !47
  br label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i

bb.bl:                                            ; preds = %bb.bm
  %i.in = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %19) #25
  br label %.body

_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i: ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i, %.noexc151
  %.0.i6.sink.i = phi i32 [ %i.ij, %.noexc151 ], [ %i.im, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i ] ; 2 uses
  store i32 %.0.i6.sink.i, ptr %i.ac, align 8, !tbaa !191
  %i.io = getelementptr inbounds nuw i8, ptr %i.ih, i64 243
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !55, !range !51, !noundef !52
  %i.iq = trunc nuw i8 %i.ip to i1
  br i1 %i.iq, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i
  %i.ir = load ptr, ptr %i.af, align 8, !tbaa !199, !nonnull !52, !align !200
  %i.is = load ptr, ptr %i.ag, align 8, !tbaa !201, !nonnull !52, !align !200
  invoke void @_ZN16OpenColorIO_v2_511ConfigUtils28initializeRefSpaceConvertersERSt10shared_ptrIKNS_9TransformEES5_RKS1_IKNS_6ConfigEESA_(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.ir, ptr noundef nonnull align 8 dereferenceable(16) %i.is)
          to label %thread-pre-split unwind label %bb.bl

thread-pre-split:                                 ; preds = %bb.bm
  %.pr = load i32, ptr %i.ac, align 8, !tbaa !191
  br label %bb.bn

bb.bn:                                            ; preds = %thread-pre-split, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i
  %i.it = phi i32 [ %.pr, %thread-pre-split ], [ %.0.i6.sink.i, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  switch i32 %i.it, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit156 [
    i32 0, label %bb.bo
    i32 1, label %bb.bp
    i32 2, label %bb.bq
    i32 3, label %bb.br
    i32 4, label %bb.bs
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.iu = load ptr, ptr %19, align 8, !tbaa !25
  br label %.sink.split.i152

bb.bp:                                            ; preds = %bb.bn
  %i.iv = load ptr, ptr %19, align 8, !tbaa !25
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  br label %.sink.split.i152

bb.bq:                                            ; preds = %bb.bn
  %i.ix = load ptr, ptr %19, align 8, !tbaa !25
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  br label %.sink.split.i152

bb.br:                                            ; preds = %bb.bn
  %i.iz = load ptr, ptr %19, align 8, !tbaa !25
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 24
  br label %.sink.split.i152

bb.bs:                                            ; preds = %bb.bn
  %i.jb = load ptr, ptr %19, align 8, !tbaa !25
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 32
  br label %.sink.split.i152

.sink.split.i152:                                 ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.sink.in.i153 = phi ptr [ %i.jc, %bb.bs ], [ %i.ja, %bb.br ], [ %i.iy, %bb.bq ], [ %i.iw, %bb.bp ], [ %i.iu, %bb.bo ]
  %.sink.i154 = load ptr, ptr %.sink.in.i153, align 8
  invoke void %.sink.i154(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit156 unwind label %bb.eu, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit156: ; preds = %bb.bn, %.sink.split.i152
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %19, align 8, !tbaa !25
  %i.jd = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i157 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i.i157, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161, label %bb.bt

bb.bt:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit156
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 4 uses
  %i.jf = load atomic i64, ptr %i.je acquire, align 8 ; 2 uses
  %i.jg = icmp eq i64 %i.jf, 4294967297
  %i.jh = trunc i64 %i.jf to i32                  ; 2 uses
  br i1 %i.jg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.je, align 8, !tbaa !22
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  store i32 0, ptr %i.ji, align 4, !tbaa !24
  %i.jj = load ptr, ptr %i.jd, align 8, !tbaa !25
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #25, !inline_history !198
  %i.jm = load ptr, ptr %i.jd, align 8, !tbaa !25
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8
  call void %i.jo(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161

bb.bv:                                            ; preds = %bb.bt
  %i.jp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i158 = icmp eq i8 %i.jp, 0
  br i1 %.not.i.i.i.i158, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.jq = add nsw i32 %i.jh, -1
  store i32 %i.jq, ptr %i.je, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159

bb.bx:                                            ; preds = %bb.bv
  %i.jr = atomicrmw volatile add ptr %i.je, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i.i160 = phi i32 [ %i.jh, %bb.bw ], [ %i.jr, %bb.bx ]
  %i.js = icmp eq i32 %.0.i.i.i.i.i160, 1
  br i1 %i.js, label %bb.by, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161, !prof !28

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jd) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161: ; preds = %bb.by, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i159, %bb.bu, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit156
  %i.jt = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i162 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i1.i162, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit166, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8 ; 4 uses
  %i.jv = load atomic i64, ptr %i.ju acquire, align 8 ; 2 uses
  %i.jw = icmp eq i64 %i.jv, 4294967297
  %i.jx = trunc i64 %i.jv to i32                  ; 2 uses
  br i1 %i.jw, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  store i32 0, ptr %i.ju, align 8, !tbaa !22
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !24
  %i.jz = load ptr, ptr %i.jt, align 8, !tbaa !25
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #25, !inline_history !198
  %i.kc = load ptr, ptr %i.jt, align 8, !tbaa !25
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit166

bb.cb:                                            ; preds = %bb.bz
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i163 = icmp eq i8 %i.kf, 0
  br i1 %.not.i.i.i2.i163, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kg = add nsw i32 %i.jx, -1
  store i32 %i.kg, ptr %i.ju, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i164

bb.cd:                                            ; preds = %bb.cb
  %i.kh = atomicrmw volatile add ptr %i.ju, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i164

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i164: ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i4.i165 = phi i32 [ %i.jx, %bb.cc ], [ %i.kh, %bb.cd ]
  %i.ki = icmp eq i32 %.0.i.i.i.i4.i165, 1
  br i1 %i.ki, label %bb.ce, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit166, !prof !28

bb.ce:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i164
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jt) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit166

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit166: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i161, %bb.ca, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i164, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %12, ptr %4, align 8
  store ptr %13, ptr %.sroa.2251.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3252.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4253.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %20, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %4)
          to label %.noexc168 unwind label %bb.ev

.noexc168:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit166
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 16), ptr %20, align 8, !tbaa !25
  %i.kj = load ptr, ptr %11, align 8, !tbaa !38
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !7  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 264
  %i.km = load i32, ptr %i.kl, align 8, !tbaa !60 ; 2 uses
  %i.kn = icmp eq i32 %i.km, 5
  br i1 %i.kn, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i, label %bb.cf

_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i: ; preds = %.noexc168
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kk, i64 244
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !47
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i, %.noexc168
  %.sink.i167 = phi i32 [ %i.km, %.noexc168 ], [ %i.kp, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i ] ; 3 uses
  store i32 %.sink.i167, ptr %i.aj, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.kq = icmp ult i32 %.sink.i167, 5
  br i1 %i.kq, label %switch.lookup319, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit173

switch.lookup319:                                 ; preds = %bb.cf
  %i.kr = zext nneg i32 %.sink.i167 to i64
  %switch.gep320 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.12, i64 %i.kr
  %switch.load321 = load ptr, ptr %switch.gep320, align 8
  %.sink.i171 = load ptr, ptr %switch.load321, align 8
  invoke void %.sink.i171(ptr noundef nonnull align 8 dereferenceable(80) %20)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit173 unwind label %bb.ew, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit173: ; preds = %bb.cf, %switch.lookup319
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %20, align 8, !tbaa !25
  %i.ks = load ptr, ptr %i.ak, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i174 = icmp eq ptr %i.ks, null
  br i1 %.not.i.i.i174, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178, label %bb.cg

bb.cg:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit173
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 4 uses
  %i.ku = load atomic i64, ptr %i.kt acquire, align 8 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 4294967297
  %i.kw = trunc i64 %i.ku to i32                  ; 2 uses
  br i1 %i.kv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.kt, align 8, !tbaa !22
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 12
  store i32 0, ptr %i.kx, align 4, !tbaa !24
  %i.ky = load ptr, ptr %i.ks, align 8, !tbaa !25
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #25, !inline_history !198
  %i.lb = load ptr, ptr %i.ks, align 8, !tbaa !25
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 24
  %i.ld = load ptr, ptr %i.lc, align 8
  call void %i.ld(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178

bb.ci:                                            ; preds = %bb.cg
  %i.le = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i175 = icmp eq i8 %i.le, 0
  br i1 %.not.i.i.i.i175, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lf = add nsw i32 %i.kw, -1
  store i32 %i.lf, ptr %i.kt, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176

bb.ck:                                            ; preds = %bb.ci
  %i.lg = atomicrmw volatile add ptr %i.kt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i.i177 = phi i32 [ %i.kw, %bb.cj ], [ %i.lg, %bb.ck ]
  %i.lh = icmp eq i32 %.0.i.i.i.i.i177, 1
  br i1 %i.lh, label %bb.cl, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178, !prof !28

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ks) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178: ; preds = %bb.cl, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i176, %bb.ch, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit173
  %i.li = load ptr, ptr %i.al, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i179 = icmp eq ptr %i.li, null
  br i1 %.not.i.i1.i179, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit183, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8 ; 4 uses
  %i.lk = load atomic i64, ptr %i.lj acquire, align 8 ; 2 uses
  %i.ll = icmp eq i64 %i.lk, 4294967297
  %i.lm = trunc i64 %i.lk to i32                  ; 2 uses
  br i1 %i.ll, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %i.lj, align 8, !tbaa !22
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 12
  store i32 0, ptr %i.ln, align 4, !tbaa !24
  %i.lo = load ptr, ptr %i.li, align 8, !tbaa !25
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lq = load ptr, ptr %i.lp, align 8
  call void %i.lq(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #25, !inline_history !198
  %i.lr = load ptr, ptr %i.li, align 8, !tbaa !25
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit183

bb.co:                                            ; preds = %bb.cm
  %i.lu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i180 = icmp eq i8 %i.lu, 0
  br i1 %.not.i.i.i2.i180, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.lv = add nsw i32 %i.lm, -1
  store i32 %i.lv, ptr %i.lj, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i181

bb.cq:                                            ; preds = %bb.co
  %i.lw = atomicrmw volatile add ptr %i.lj, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i181

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i181: ; preds = %bb.cq, %bb.cp
  %.0.i.i.i.i4.i182 = phi i32 [ %i.lm, %bb.cp ], [ %i.lw, %bb.cq ]
  %i.lx = icmp eq i32 %.0.i.i.i.i4.i182, 1
  br i1 %i.lx, label %bb.cr, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit183, !prof !28

bb.cr:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i181
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.li) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit183

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit183: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i178, %bb.cn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i181, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr %12, ptr %3, align 8
  store ptr %13, ptr %.sroa.2247.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3248.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4249.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %3)
          to label %.noexc185 unwind label %bb.ey

.noexc185:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit183
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_517ColorspacesMergerE, i64 16), ptr %21, align 8, !tbaa !25
  %i.ly = load ptr, ptr %11, align 8, !tbaa !38
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !7  ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 268
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !61 ; 2 uses
  %i.mc = icmp eq i32 %i.mb, 5
  br i1 %i.mc, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i

_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i: ; preds = %.noexc185
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 244
  %i.me = load i32, ptr %i.md, align 4, !tbaa !47
  br label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i

bb.cs:                                            ; preds = %bb.ct
  %i.mf = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %21) #25
  br label %.body186

_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i: ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i, %.noexc185
  %.0.i6.sink.i184 = phi i32 [ %i.mb, %.noexc185 ], [ %i.me, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i ] ; 2 uses
  store i32 %.0.i6.sink.i184, ptr %i.am, align 8, !tbaa !191
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lz, i64 243
  %i.mh = load i8, ptr %i.mg, align 1, !tbaa !55, !range !51, !noundef !52
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i
  %i.mj = load ptr, ptr %i.ap, align 8, !tbaa !199, !nonnull !52, !align !200
  %i.mk = load ptr, ptr %i.aq, align 8, !tbaa !201, !nonnull !52, !align !200
  invoke void @_ZN16OpenColorIO_v2_511ConfigUtils28initializeRefSpaceConvertersERSt10shared_ptrIKNS_9TransformEES5_RKS1_IKNS_6ConfigEESA_(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.mj, ptr noundef nonnull align 8 dereferenceable(16) %i.mk)
          to label %thread-pre-split274 unwind label %bb.cs

thread-pre-split274:                              ; preds = %bb.ct
  %.pr275 = load i32, ptr %i.am, align 8, !tbaa !191
  br label %bb.cu

bb.cu:                                            ; preds = %thread-pre-split274, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i
  %i.ml = phi i32 [ %.pr275, %thread-pre-split274 ], [ %.0.i6.sink.i184, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  switch i32 %i.ml, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit192 [
    i32 0, label %bb.cv
    i32 1, label %bb.cw
    i32 2, label %bb.cx
    i32 3, label %bb.cy
    i32 4, label %bb.cz
  ]

bb.cv:                                            ; preds = %bb.cu
  %i.mm = load ptr, ptr %21, align 8, !tbaa !25
  br label %.sink.split.i188

bb.cw:                                            ; preds = %bb.cu
  %i.mn = load ptr, ptr %21, align 8, !tbaa !25
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  br label %.sink.split.i188

bb.cx:                                            ; preds = %bb.cu
  %i.mp = load ptr, ptr %21, align 8, !tbaa !25
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  br label %.sink.split.i188

bb.cy:                                            ; preds = %bb.cu
  %i.mr = load ptr, ptr %21, align 8, !tbaa !25
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  br label %.sink.split.i188

bb.cz:                                            ; preds = %bb.cu
  %i.mt = load ptr, ptr %21, align 8, !tbaa !25
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 32
  br label %.sink.split.i188

.sink.split.i188:                                 ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cw, %bb.cv
  %.sink.in.i189 = phi ptr [ %i.mu, %bb.cz ], [ %i.ms, %bb.cy ], [ %i.mq, %bb.cx ], [ %i.mo, %bb.cw ], [ %i.mm, %bb.cv ]
  %.sink.i190 = load ptr, ptr %.sink.in.i189, align 8
  invoke void %.sink.i190(ptr noundef nonnull align 8 dereferenceable(80) %21)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit192 unwind label %bb.ez, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit192: ; preds = %bb.cu, %.sink.split.i188
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %21, align 8, !tbaa !25
  %i.mv = load ptr, ptr %i.ar, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i193 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i193, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197, label %bb.da

bb.da:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit192
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 4 uses
  %i.mx = load atomic i64, ptr %i.mw acquire, align 8 ; 2 uses
  %i.my = icmp eq i64 %i.mx, 4294967297
  %i.mz = trunc i64 %i.mx to i32                  ; 2 uses
  br i1 %i.my, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.mw, align 8, !tbaa !22
  %i.na = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  store i32 0, ptr %i.na, align 4, !tbaa !24
  %i.nb = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8
  call void %i.nd(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #25, !inline_history !198
  %i.ne = load ptr, ptr %i.mv, align 8, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197

bb.dc:                                            ; preds = %bb.da
  %i.nh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i194 = icmp eq i8 %i.nh, 0
  br i1 %.not.i.i.i.i194, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ni = add nsw i32 %i.mz, -1
  store i32 %i.ni, ptr %i.mw, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i195

bb.de:                                            ; preds = %bb.dc
  %i.nj = atomicrmw volatile add ptr %i.mw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i195

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i195: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i.i196 = phi i32 [ %i.mz, %bb.dd ], [ %i.nj, %bb.de ]
  %i.nk = icmp eq i32 %.0.i.i.i.i.i196, 1
  br i1 %i.nk, label %bb.df, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197, !prof !28

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i195
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mv) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197: ; preds = %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i195, %bb.db, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit192
  %i.nl = load ptr, ptr %i.as, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i198 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i1.i198, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit202, label %bb.dg

bb.dg:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 4 uses
  %i.nn = load atomic i64, ptr %i.nm acquire, align 8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967297
  %i.np = trunc i64 %i.nn to i32                  ; 2 uses
  br i1 %i.no, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  store i32 0, ptr %i.nm, align 8, !tbaa !22
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i32 0, ptr %i.nq, align 4, !tbaa !24
  %i.nr = load ptr, ptr %i.nl, align 8, !tbaa !25
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25, !inline_history !198
  %i.nu = load ptr, ptr %i.nl, align 8, !tbaa !25
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit202

bb.di:                                            ; preds = %bb.dg
  %i.nx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i199 = icmp eq i8 %i.nx, 0
  br i1 %.not.i.i.i2.i199, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ny = add nsw i32 %i.np, -1
  store i32 %i.ny, ptr %i.nm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i200

bb.dk:                                            ; preds = %bb.di
  %i.nz = atomicrmw volatile add ptr %i.nm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i200

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i200: ; preds = %bb.dk, %bb.dj
  %.0.i.i.i.i4.i201 = phi i32 [ %i.np, %bb.dj ], [ %i.nz, %bb.dk ]
  %i.oa = icmp eq i32 %.0.i.i.i.i4.i201, 1
  br i1 %i.oa, label %bb.dl, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit202, !prof !28

bb.dl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i200
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit202

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit202: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i197, %bb.dh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i200, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %12, ptr %2, align 8
  store ptr %13, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %11, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %14, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %22, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %2)
          to label %.noexc204 unwind label %bb.fa

.noexc204:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit202
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 16), ptr %22, align 8, !tbaa !25
  %i.ob = load ptr, ptr %11, align 8, !tbaa !38
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !7  ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 272
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !62 ; 2 uses
  %i.of = icmp eq i32 %i.oe, 5
  br i1 %i.of, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i, label %bb.dm

_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i: ; preds = %.noexc204
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 244
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !47
  br label %bb.dm

bb.dm:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i, %.noexc204
  %.sink.i203 = phi i32 [ %i.oe, %.noexc204 ], [ %i.oh, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i ] ; 3 uses
  store i32 %.sink.i203, ptr %i.at, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.oi = icmp ult i32 %.sink.i203, 5
  br i1 %i.oi, label %switch.lookup322, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit209

switch.lookup322:                                 ; preds = %bb.dm
  %i.oj = zext nneg i32 %.sink.i203 to i64
  %switch.gep323 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.13, i64 %i.oj
  %switch.load324 = load ptr, ptr %switch.gep323, align 8
  %.sink.i207 = load ptr, ptr %switch.load324, align 8
  invoke void %.sink.i207(ptr noundef nonnull align 8 dereferenceable(80) %22)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit209 unwind label %bb.fb, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit209: ; preds = %bb.dm, %switch.lookup322
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %22, align 8, !tbaa !25
  %i.ok = load ptr, ptr %i.au, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i210 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i.i210, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214, label %bb.dn

bb.dn:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit209
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 4 uses
  %i.om = load atomic i64, ptr %i.ol acquire, align 8 ; 2 uses
  %i.on = icmp eq i64 %i.om, 4294967297
  %i.oo = trunc i64 %i.om to i32                  ; 2 uses
  br i1 %i.on, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.ol, align 8, !tbaa !22
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  store i32 0, ptr %i.op, align 4, !tbaa !24
  %i.oq = load ptr, ptr %i.ok, align 8, !tbaa !25
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #25, !inline_history !198
  %i.ot = load ptr, ptr %i.ok, align 8, !tbaa !25
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 24
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214

bb.dp:                                            ; preds = %bb.dn
  %i.ow = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i211 = icmp eq i8 %i.ow, 0
  br i1 %.not.i.i.i.i211, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ox = add nsw i32 %i.oo, -1
  store i32 %i.ox, ptr %i.ol, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i212

bb.dr:                                            ; preds = %bb.dp
  %i.oy = atomicrmw volatile add ptr %i.ol, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i212

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i212: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i.i213 = phi i32 [ %i.oo, %bb.dq ], [ %i.oy, %bb.dr ]
  %i.oz = icmp eq i32 %.0.i.i.i.i.i213, 1
  br i1 %i.oz, label %bb.ds, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214, !prof !28

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i212
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ok) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214: ; preds = %bb.ds, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i212, %bb.do, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit209
  %i.pa = load ptr, ptr %i.av, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i215 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i1.i215, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219, label %bb.dt

bb.dt:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 4 uses
  %i.pc = load atomic i64, ptr %i.pb acquire, align 8 ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 4294967297
  %i.pe = trunc i64 %i.pc to i32                  ; 2 uses
  br i1 %i.pd, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  store i32 0, ptr %i.pb, align 8, !tbaa !22
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store i32 0, ptr %i.pf, align 4, !tbaa !24
  %i.pg = load ptr, ptr %i.pa, align 8, !tbaa !25
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8
  call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #25, !inline_history !198
  %i.pj = load ptr, ptr %i.pa, align 8, !tbaa !25
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219

bb.dv:                                            ; preds = %bb.dt
  %i.pm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i216 = icmp eq i8 %i.pm, 0
  br i1 %.not.i.i.i2.i216, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.pn = add nsw i32 %i.pe, -1
  store i32 %i.pn, ptr %i.pb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i217

bb.dx:                                            ; preds = %bb.dv
  %i.po = atomicrmw volatile add ptr %i.pb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i217

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i217: ; preds = %bb.dx, %bb.dw
  %.0.i.i.i.i4.i218 = phi i32 [ %i.pe, %bb.dw ], [ %i.po, %bb.dx ]
  %i.pp = icmp eq i32 %.0.i.i.i.i4.i218, 1
  br i1 %i.pp, label %bb.dy, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219, !prof !28

bb.dy:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i217
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i214, %bb.du, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i217, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  %i.pq = load ptr, ptr %10, align 16, !tbaa !77
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !80 ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  %i.pt = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 2 uses
  %i.pu = load <2 x ptr>, ptr %14, align 16, !tbaa !18
  store <2 x ptr> %i.pu, ptr %23, align 16, !tbaa !18
  %.not.i.i.i220 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i.i220, label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2IS1_vEERKS_IT_E.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pt, i64 8 ; 3 uses
  %i.pw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i221 = icmp eq i8 %i.pw, 0
  br i1 %.not.i.i.i.i221, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.px = load i32, ptr %i.pv, align 4, !tbaa !3
  %i.py = add nsw i32 %i.px, 1
  store i32 %i.py, ptr %i.pv, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2IS1_vEERKS_IT_E.exit

bb.eb:                                            ; preds = %bb.dz
  %i.pz = atomicrmw volatile add ptr %i.pv, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2IS1_vEERKS_IT_E.exit

_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2IS1_vEERKS_IT_E.exit: ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit219, %bb.ea, %bb.eb
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pr, i64 96 ; 2 uses
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !118 ; 5 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pr, i64 104
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !155
  %.not.i.i222 = icmp eq ptr %i.qb, %i.qd
  br i1 %.not.i.i222, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2IS1_vEERKS_IT_E.exit
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  store ptr null, ptr %i.qe, align 8, !tbaa !19
  %i.qf = load <2 x ptr>, ptr %23, align 16, !tbaa !18
  store ptr null, ptr %i.aw, align 8, !tbaa !19
  store <2 x ptr> %i.qf, ptr %i.qb, align 8, !tbaa !18
  store ptr null, ptr %23, align 16, !tbaa !172
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  store ptr %i.qg, ptr %i.qa, align 8, !tbaa !118
  br label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE9push_backEOS4_.exit

bb.ed:                                            ; preds = %_ZNSt10shared_ptrIKN16OpenColorIO_v2_56ConfigEEC2IS1_vEERKS_IT_E.exit
  invoke void @_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ps, ptr %i.qb, ptr noundef nonnull align 8 dereferenceable(16) %23)
          to label %_ZNSt6vectorISt10shared_ptrIKN16OpenColorIO_v2_56ConfigEESaIS4_EE9push_backEOS4_.exit unwind label %bb.gn

bb.ee:                                            ; preds = %bb.g
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.gw

bb.ef:                                            ; preds = %bb.h
  %i.qi = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.eg:                                            ; preds = %bb.j
  %i.qj = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.eh:                                            ; preds = %bb.k
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.ej

bb.ei:                                            ; preds = %switch.lookup
  %i.ql = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #25
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.pn = phi { ptr, i32 } [ %i.ql, %bb.ei ], [ %i.qk, %bb.eh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.fd

bb.ek:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit
  %i.qm = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.em

bb.el:                                            ; preds = %switch.lookup310
  %i.qn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %16) #25
  br label %bb.em
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_:bb.a
  %15 = alloca %"class.OpenColorIO_v2_5::DisplayViewMerger", align 8 ; 11 uses
  %16 = alloca %"class.OpenColorIO_v2_5::ViewTransformsMerger", align 8 ; 21 uses
  %17 = alloca %"class.OpenColorIO_v2_5::LooksMerger", align 8 ; 11 uses
  %18 = alloca %"class.OpenColorIO_v2_5::ColorspacesMerger", align 8 ; 21 uses
  %19 = alloca %"class.OpenColorIO_v2_5::NamedTransformsMerger", align 8 ; 11 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !172    ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr %3, align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN16OpenColorIO_v2_59ExceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull @.str.38)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTIN16OpenColorIO_v2_59ExceptionE, ptr nonnull @_ZN16OpenColorIO_v2_59ExceptionD1Ev) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.e) #25
  br label %bb.ew

bb.e:                                             ; preds = %bb.a
  tail call void @_ZNK16OpenColorIO_v2_56Config18createEditableCopyEv(ptr dead_on_unwind writable sret(%"class.std::shared_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store ptr %2, ptr %11, align 8
  %.sroa.2236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %3, ptr %.sroa.2236.0..sroa_idx, align 8
  %.sroa.3237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %1, ptr %.sroa.3237.0..sroa_idx, align 8
  %.sroa.4238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %0, ptr %.sroa.4238.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %11)
          to label %bb.f unwind label %bb.dt

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513GeneralMergerE, i64 16), ptr %12, align 8, !tbaa !25
  %i.g = load ptr, ptr %1, align 8, !tbaa !38
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 244
  %i.j = load i32, ptr %i.i, align 4, !tbaa !47   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i32 %i.j, ptr %i.k, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.l = icmp ult i32 %i.j, 5
  br i1 %i.l, label %switch.lookup, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit

switch.lookup:                                    ; preds = %bb.f
  %i.m = zext nneg i32 %i.j to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  %.sink.i = load ptr, ptr %switch.load, align 8
  invoke void %.sink.i(ptr noundef nonnull align 8 dereferenceable(80) %12)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit unwind label %bb.du, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit: ; preds = %bb.f, %switch.lookup
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %12, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  %i.q = load atomic i64, ptr %i.p acquire, align 8 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4294967297
  %i.s = trunc i64 %i.q to i32                    ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.p, align 8, !tbaa !22
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.t, align 4, !tbaa !24
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !198
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = add nsw i32 %i.s, -1
  store i32 %i.ab, ptr %i.p, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ac = atomicrmw volatile add ptr %i.p, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.s, %bb.j ], [ %i.ac, %bb.k ]
  %i.ad = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ad, label %bb.l, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !28

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i1.i, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.ag, align 8, !tbaa !22
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !24
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #25, !inline_history !198
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i2.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.q:                                             ; preds = %bb.o
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i4.i = phi i32 [ %i.aj, %bb.p ], [ %i.at, %bb.q ]
  %i.au = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.au, label %bb.r, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit, !prof !28

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit:    ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %2, ptr %10, align 8
  %.sroa.2232.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %3, ptr %.sroa.2232.0..sroa_idx, align 8
  %.sroa.3233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %1, ptr %.sroa.3233.0..sroa_idx, align 8
  %.sroa.4234.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %0, ptr %.sroa.4234.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %10)
          to label %.noexc92 unwind label %bb.dw

.noexc92:                                         ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_511RolesMergerE, i64 16), ptr %13, align 8, !tbaa !25
  %i.av = load ptr, ptr %1, align 8, !tbaa !38
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 248
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !56 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 5
  br i1 %i.az, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i, label %bb.s

_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i: ; preds = %.noexc92
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 244
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !47
  br label %bb.s

bb.s:                                             ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i, %.noexc92
  %.sink.i91 = phi i32 [ %i.ay, %.noexc92 ], [ %i.bb, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getRolesEv.exit.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i32 %.sink.i91, ptr %i.bc, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %i.bd = icmp ult i32 %.sink.i91, 5
  br i1 %i.bd, label %switch.lookup265, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit97

switch.lookup265:                                 ; preds = %bb.s
  %i.be = zext nneg i32 %.sink.i91 to i64
  %switch.gep266 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.9, i64 %i.be
  %switch.load267 = load ptr, ptr %switch.gep266, align 8
  %.sink.i95 = load ptr, ptr %switch.load267, align 8
  invoke void %.sink.i95(ptr noundef nonnull align 8 dereferenceable(80) %13)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit97 unwind label %bb.dx, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit97: ; preds = %bb.s, %switch.lookup265
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %13, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i98 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i98, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102, label %bb.t

bb.t:                                             ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit97
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 4 uses
  %i.bi = load atomic i64, ptr %i.bh acquire, align 8 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 4294967297
  %i.bk = trunc i64 %i.bi to i32                  ; 2 uses
  br i1 %i.bj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.bh, align 8, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !24
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #25, !inline_history !198
  %i.bp = load ptr, ptr %i.bg, align 8, !tbaa !25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102

bb.v:                                             ; preds = %bb.t
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i99 = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i99, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bt = add nsw i32 %i.bk, -1
  store i32 %i.bt, ptr %i.bh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100

bb.x:                                             ; preds = %bb.v
  %i.bu = atomicrmw volatile add ptr %i.bh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i101 = phi i32 [ %i.bk, %bb.w ], [ %i.bu, %bb.x ]
  %i.bv = icmp eq i32 %.0.i.i.i.i.i101, 1
  br i1 %i.bv, label %bb.y, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102, !prof !28

bb.y:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102: ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i100, %bb.u, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit97
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i103 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i103, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107, label %bb.z

bb.z:                                             ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.by, align 8, !tbaa !22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !24
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #25, !inline_history !198
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107

bb.ab:                                            ; preds = %bb.z
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i104 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i2.i104, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i105

bb.ad:                                            ; preds = %bb.ab
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i105

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i105: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i4.i106 = phi i32 [ %i.cb, %bb.ac ], [ %i.cl, %bb.ad ]
  %i.cm = icmp eq i32 %.0.i.i.i.i4.i106, 1
  br i1 %i.cm, label %bb.ae, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107, !prof !28

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i105
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i102, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i105, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %2, ptr %9, align 8
  %.sroa.2228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %3, ptr %.sroa.2228.0..sroa_idx, align 8
  %.sroa.3229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %1, ptr %.sroa.3229.0..sroa_idx, align 8
  %.sroa.4230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %0, ptr %.sroa.4230.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %9)
          to label %.noexc109 unwind label %bb.dz

.noexc109:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_515FileRulesMergerE, i64 16), ptr %14, align 8, !tbaa !25
  %i.cn = load ptr, ptr %1, align 8, !tbaa !38
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !7  ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 252
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !57 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 5
  br i1 %i.cr, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i, label %bb.af

_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i: ; preds = %.noexc109
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 244
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i, %.noexc109
  %.sink.i108 = phi i32 [ %i.cq, %.noexc109 ], [ %i.ct, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters12getFileRulesEv.exit.i ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i32 %.sink.i108, ptr %i.cu, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.cv = icmp ult i32 %.sink.i108, 5
  br i1 %i.cv, label %switch.lookup268, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit114

switch.lookup268:                                 ; preds = %bb.af
  %i.cw = zext nneg i32 %.sink.i108 to i64
  %switch.gep269 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.10, i64 %i.cw
  %switch.load270 = load ptr, ptr %switch.gep269, align 8
  %.sink.i112 = load ptr, ptr %switch.load270, align 8
  invoke void %.sink.i112(ptr noundef nonnull align 8 dereferenceable(80) %14)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit114 unwind label %bb.ea, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit114: ; preds = %bb.af, %switch.lookup268
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %14, align 8, !tbaa !25
  %i.cx = getelementptr inbounds nuw i8, ptr %14, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i115 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i115, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119, label %bb.ag

bb.ag:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit114
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 4 uses
  %i.da = load atomic i64, ptr %i.cz acquire, align 8 ; 2 uses
  %i.db = icmp eq i64 %i.da, 4294967297
  %i.dc = trunc i64 %i.da to i32                  ; 2 uses
  br i1 %i.db, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.cz, align 8, !tbaa !22
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.dd, align 4, !tbaa !24
  %i.de = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #25, !inline_history !198
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119

bb.ai:                                            ; preds = %bb.ag
  %i.dk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i116 = icmp eq i8 %i.dk, 0
  br i1 %.not.i.i.i.i116, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = add nsw i32 %i.dc, -1
  store i32 %i.dl, ptr %i.cz, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117

bb.ak:                                            ; preds = %bb.ai
  %i.dm = atomicrmw volatile add ptr %i.cz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i118 = phi i32 [ %i.dc, %bb.aj ], [ %i.dm, %bb.ak ]
  %i.dn = icmp eq i32 %.0.i.i.i.i.i118, 1
  br i1 %i.dn, label %bb.al, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119, !prof !28

bb.al:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cy) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119: ; preds = %bb.al, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i117, %bb.ah, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit114
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i120 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i1.i120, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124, label %bb.am

bb.am:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 4 uses
  %i.dr = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.ds = icmp eq i64 %i.dr, 4294967297
  %i.dt = trunc i64 %i.dr to i32                  ; 2 uses
  br i1 %i.ds, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dq, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.du, align 4, !tbaa !24
  %i.dv = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  call void %i.dx(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #25, !inline_history !198
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !25
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124

bb.ao:                                            ; preds = %bb.am
  %i.eb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i121 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i2.i121, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ec = add nsw i32 %i.dt, -1
  store i32 %i.ec, ptr %i.dq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122

bb.aq:                                            ; preds = %bb.ao
  %i.ed = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i4.i123 = phi i32 [ %i.dt, %bb.ap ], [ %i.ed, %bb.aq ]
  %i.ee = icmp eq i32 %.0.i.i.i.i4.i123, 1
  br i1 %i.ee, label %bb.ar, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124, !prof !28

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i119, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i122, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store ptr %2, ptr %8, align 8
  %.sroa.2224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %3, ptr %.sroa.2224.0..sroa_idx, align 8
  %.sroa.3225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %1, ptr %.sroa.3225.0..sroa_idx, align 8
  %.sroa.4226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %0, ptr %.sroa.4226.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %8)
          to label %.noexc126 unwind label %bb.ec

.noexc126:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_517DisplayViewMergerE, i64 16), ptr %15, align 8, !tbaa !25
  %i.ef = load ptr, ptr %1, align 8, !tbaa !38
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !7  ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 256
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !58 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 5
  br i1 %i.ej, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i, label %bb.as

_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i: ; preds = %.noexc126
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 244
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !47
  br label %bb.as

bb.as:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i, %.noexc126
  %.sink.i125 = phi i32 [ %i.ei, %.noexc126 ], [ %i.el, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters15getDisplayViewsEv.exit.i ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %15, i64 40
  store i32 %.sink.i125, ptr %i.em, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.en = icmp ult i32 %.sink.i125, 5
  br i1 %i.en, label %switch.lookup271, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit131

switch.lookup271:                                 ; preds = %bb.as
  %i.eo = zext nneg i32 %.sink.i125 to i64
  %switch.gep272 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.11, i64 %i.eo
  %switch.load273 = load ptr, ptr %switch.gep272, align 8
  %.sink.i129 = load ptr, ptr %switch.load273, align 8
  invoke void %.sink.i129(ptr noundef nonnull align 8 dereferenceable(80) %15)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit131 unwind label %bb.ed, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit131: ; preds = %bb.as, %switch.lookup271
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %15, align 8, !tbaa !25
  %i.ep = getelementptr inbounds nuw i8, ptr %15, i64 72
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i132 = icmp eq ptr %i.eq, null
  br i1 %.not.i.i.i132, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136, label %bb.at

bb.at:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit131
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 4 uses
  %i.es = load atomic i64, ptr %i.er acquire, align 8 ; 2 uses
  %i.et = icmp eq i64 %i.es, 4294967297
  %i.eu = trunc i64 %i.es to i32                  ; 2 uses
  br i1 %i.et, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.er, align 8, !tbaa !22
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 0, ptr %i.ev, align 4, !tbaa !24
  %i.ew = load ptr, ptr %i.eq, align 8, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8
  call void %i.ey(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #25, !inline_history !198
  %i.ez = load ptr, ptr %i.eq, align 8, !tbaa !25
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  %i.fb = load ptr, ptr %i.fa, align 8
  call void %i.fb(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136

bb.av:                                            ; preds = %bb.at
  %i.fc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i133 = icmp eq i8 %i.fc, 0
  br i1 %.not.i.i.i.i133, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fd = add nsw i32 %i.eu, -1
  store i32 %i.fd, ptr %i.er, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i134

bb.ax:                                            ; preds = %bb.av
  %i.fe = atomicrmw volatile add ptr %i.er, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i134

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i134: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i.i135 = phi i32 [ %i.eu, %bb.aw ], [ %i.fe, %bb.ax ]
  %i.ff = icmp eq i32 %.0.i.i.i.i.i135, 1
  br i1 %i.ff, label %bb.ay, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136, !prof !28

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i134
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eq) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136: ; preds = %bb.ay, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i134, %bb.au, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit131
  %i.fg = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i137 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i1.i137, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141, label %bb.az

bb.az:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 4 uses
  %i.fj = load atomic i64, ptr %i.fi acquire, align 8 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 4294967297
  %i.fl = trunc i64 %i.fj to i32                  ; 2 uses
  br i1 %i.fk, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store i32 0, ptr %i.fi, align 8, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 12
  store i32 0, ptr %i.fm, align 4, !tbaa !24
  %i.fn = load ptr, ptr %i.fh, align 8, !tbaa !25
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #25, !inline_history !198
  %i.fq = load ptr, ptr %i.fh, align 8, !tbaa !25
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141

bb.bb:                                            ; preds = %bb.az
  %i.ft = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i138 = icmp eq i8 %i.ft, 0
  br i1 %.not.i.i.i2.i138, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fu = add nsw i32 %i.fl, -1
  store i32 %i.fu, ptr %i.fi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i139

bb.bd:                                            ; preds = %bb.bb
  %i.fv = atomicrmw volatile add ptr %i.fi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i139

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i139: ; preds = %bb.bd, %bb.bc
  %.0.i.i.i.i4.i140 = phi i32 [ %i.fl, %bb.bc ], [ %i.fv, %bb.bd ]
  %i.fw = icmp eq i32 %.0.i.i.i.i4.i140, 1
  br i1 %i.fw, label %bb.be, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141, !prof !28

bb.be:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i139
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fh) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i136, %bb.ba, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i139, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %2, ptr %7, align 8
  %.sroa.2220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %3, ptr %.sroa.2220.0..sroa_idx, align 8
  %.sroa.3221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %1, ptr %.sroa.3221.0..sroa_idx, align 8
  %.sroa.4222.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %.sroa.4222.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %7)
          to label %.noexc142 unwind label %bb.ef

.noexc142:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_520ViewTransformsMergerE, i64 16), ptr %16, align 8, !tbaa !25
  %i.fx = load ptr, ptr %1, align 8, !tbaa !38
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !7  ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 260
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !59 ; 2 uses
  %i.gb = icmp eq i32 %i.ga, 5
  br i1 %i.gb, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i

_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i: ; preds = %.noexc142
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fy, i64 244
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !47
  br label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i

bb.bf:                                            ; preds = %bb.bg
  %i.ge = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %16) #25
  br label %.body

_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i: ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i, %.noexc142
  %.0.i6.sink.i = phi i32 [ %i.ga, %.noexc142 ], [ %i.gd, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.i ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  store i32 %.0.i6.sink.i, ptr %i.gf, align 8, !tbaa !191
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 243
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !55, !range !51, !noundef !52
  %i.gi = trunc nuw i8 %i.gh to i1
  br i1 %i.gi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i
  %i.gj = getelementptr inbounds nuw i8, ptr %16, i64 48
  %i.gk = getelementptr inbounds nuw i8, ptr %16, i64 64
  %i.gl = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !199, !nonnull !52, !align !200
  %i.gn = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !201, !nonnull !52, !align !200
  invoke void @_ZN16OpenColorIO_v2_511ConfigUtils28initializeRefSpaceConvertersERSt10shared_ptrIKNS_9TransformEES5_RKS1_IKNS_6ConfigEESA_(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull align 8 dereferenceable(16) %i.gk, ptr noundef nonnull align 8 dereferenceable(16) %i.gm, ptr noundef nonnull align 8 dereferenceable(16) %i.go)
          to label %thread-pre-split unwind label %bb.bf

thread-pre-split:                                 ; preds = %bb.bg
  %.pr = load i32, ptr %i.gf, align 8, !tbaa !191
  br label %bb.bh

bb.bh:                                            ; preds = %thread-pre-split, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i
  %i.gp = phi i32 [ %.pr, %thread-pre-split ], [ %.0.i6.sink.i, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters17getViewTransformsEv.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  switch i32 %i.gp, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit147 [
    i32 0, label %bb.bi
    i32 1, label %bb.bj
    i32 2, label %bb.bk
    i32 3, label %bb.bl
    i32 4, label %bb.bm
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.gq = load ptr, ptr %16, align 8, !tbaa !25
  br label %.sink.split.i143

bb.bj:                                            ; preds = %bb.bh
  %i.gr = load ptr, ptr %16, align 8, !tbaa !25
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  br label %.sink.split.i143

bb.bk:                                            ; preds = %bb.bh
  %i.gt = load ptr, ptr %16, align 8, !tbaa !25
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  br label %.sink.split.i143

bb.bl:                                            ; preds = %bb.bh
  %i.gv = load ptr, ptr %16, align 8, !tbaa !25
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  br label %.sink.split.i143

bb.bm:                                            ; preds = %bb.bh
  %i.gx = load ptr, ptr %16, align 8, !tbaa !25
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  br label %.sink.split.i143

.sink.split.i143:                                 ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.sink.in.i144 = phi ptr [ %i.gy, %bb.bm ], [ %i.gw, %bb.bl ], [ %i.gu, %bb.bk ], [ %i.gs, %bb.bj ], [ %i.gq, %bb.bi ]
  %.sink.i145 = load ptr, ptr %.sink.in.i144, align 8
  invoke void %.sink.i145(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit147 unwind label %bb.eg, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit147: ; preds = %bb.bh, %.sink.split.i143
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %16, align 8, !tbaa !25
  %i.gz = getelementptr inbounds nuw i8, ptr %16, i64 72
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i148 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i.i148, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152, label %bb.bn

bb.bn:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit147
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8 ; 4 uses
  %i.hc = load atomic i64, ptr %i.hb acquire, align 8 ; 2 uses
  %i.hd = icmp eq i64 %i.hc, 4294967297
  %i.he = trunc i64 %i.hc to i32                  ; 2 uses
  br i1 %i.hd, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 0, ptr %i.hb, align 8, !tbaa !22
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  store i32 0, ptr %i.hf, align 4, !tbaa !24
  %i.hg = load ptr, ptr %i.ha, align 8, !tbaa !25
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  call void %i.hi(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25, !inline_history !198
  %i.hj = load ptr, ptr %i.ha, align 8, !tbaa !25
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  call void %i.hl(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152

bb.bp:                                            ; preds = %bb.bn
  %i.hm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i149 = icmp eq i8 %i.hm, 0
  br i1 %.not.i.i.i.i149, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hn = add nsw i32 %i.he, -1
  store i32 %i.hn, ptr %i.hb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i150

bb.br:                                            ; preds = %bb.bp
  %i.ho = atomicrmw volatile add ptr %i.hb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i150

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i150: ; preds = %bb.br, %bb.bq
  %.0.i.i.i.i.i151 = phi i32 [ %i.he, %bb.bq ], [ %i.ho, %bb.br ]
  %i.hp = icmp eq i32 %.0.i.i.i.i.i151, 1
  br i1 %i.hp, label %bb.bs, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152, !prof !28

bb.bs:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i150
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ha) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152: ; preds = %bb.bs, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i150, %bb.bo, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit147
  %i.hq = getelementptr inbounds nuw i8, ptr %16, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i153 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i1.i153, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit157, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8 ; 4 uses
  %i.ht = load atomic i64, ptr %i.hs acquire, align 8 ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 4294967297
  %i.hv = trunc i64 %i.ht to i32                  ; 2 uses
  br i1 %i.hu, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 0, ptr %i.hs, align 8, !tbaa !22
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %i.hw, align 4, !tbaa !24
  %i.hx = load ptr, ptr %i.hr, align 8, !tbaa !25
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #25, !inline_history !198
  %i.ia = load ptr, ptr %i.hr, align 8, !tbaa !25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  call void %i.ic(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit157

bb.bv:                                            ; preds = %bb.bt
  %i.id = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i154 = icmp eq i8 %i.id, 0
  br i1 %.not.i.i.i2.i154, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ie = add nsw i32 %i.hv, -1
  store i32 %i.ie, ptr %i.hs, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i155

bb.bx:                                            ; preds = %bb.bv
  %i.if = atomicrmw volatile add ptr %i.hs, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i155

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i155: ; preds = %bb.bx, %bb.bw
  %.0.i.i.i.i4.i156 = phi i32 [ %i.hv, %bb.bw ], [ %i.if, %bb.bx ]
  %i.ig = icmp eq i32 %.0.i.i.i.i4.i156, 1
  br i1 %i.ig, label %bb.by, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit157, !prof !28

bb.by:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i155
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.hr) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit157

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit157: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i152, %bb.bu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i155, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr %2, ptr %6, align 8
  %.sroa.2216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %.sroa.2216.0..sroa_idx, align 8
  %.sroa.3217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %.sroa.3217.0..sroa_idx, align 8
  %.sroa.4218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %0, ptr %.sroa.4218.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %6)
          to label %.noexc159 unwind label %bb.eh

.noexc159:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit157
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_511LooksMergerE, i64 16), ptr %17, align 8, !tbaa !25
  %i.ih = load ptr, ptr %1, align 8, !tbaa !38
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !7  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 264
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !60 ; 2 uses
  %i.il = icmp eq i32 %i.ik, 5
  br i1 %i.il, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i, label %bb.bz

_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i: ; preds = %.noexc159
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 244
  %i.in = load i32, ptr %i.im, align 4, !tbaa !47
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i, %.noexc159
  %.sink.i158 = phi i32 [ %i.ik, %.noexc159 ], [ %i.in, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters8getLooksEv.exit.i ] ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i32 %.sink.i158, ptr %i.io, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ip = icmp ult i32 %.sink.i158, 5
  br i1 %i.ip, label %switch.lookup274, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit164

switch.lookup274:                                 ; preds = %bb.bz
  %i.iq = zext nneg i32 %.sink.i158 to i64
  %switch.gep275 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.12, i64 %i.iq
  %switch.load276 = load ptr, ptr %switch.gep275, align 8
  %.sink.i162 = load ptr, ptr %switch.load276, align 8
  invoke void %.sink.i162(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit164 unwind label %bb.ei, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit164: ; preds = %bb.bz, %switch.lookup274
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %17, align 8, !tbaa !25
  %i.ir = getelementptr inbounds nuw i8, ptr %17, i64 72
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i165 = icmp eq ptr %i.is, null
  br i1 %.not.i.i.i165, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169, label %bb.ca

bb.ca:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit164
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8 ; 4 uses
  %i.iu = load atomic i64, ptr %i.it acquire, align 8 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, 4294967297
  %i.iw = trunc i64 %i.iu to i32                  ; 2 uses
  br i1 %i.iv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.it, align 8, !tbaa !22
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 12
  store i32 0, ptr %i.ix, align 4, !tbaa !24
  %i.iy = load ptr, ptr %i.is, align 8, !tbaa !25
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #25, !inline_history !198
  %i.jb = load ptr, ptr %i.is, align 8, !tbaa !25
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jd = load ptr, ptr %i.jc, align 8
  call void %i.jd(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169

bb.cc:                                            ; preds = %bb.ca
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i166 = icmp eq i8 %i.je, 0
  br i1 %.not.i.i.i.i166, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jf = add nsw i32 %i.iw, -1
  store i32 %i.jf, ptr %i.it, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i167

bb.ce:                                            ; preds = %bb.cc
  %i.jg = atomicrmw volatile add ptr %i.it, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i167

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i167: ; preds = %bb.ce, %bb.cd
  %.0.i.i.i.i.i168 = phi i32 [ %i.iw, %bb.cd ], [ %i.jg, %bb.ce ]
  %i.jh = icmp eq i32 %.0.i.i.i.i.i168, 1
  br i1 %i.jh, label %bb.cf, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169, !prof !28

bb.cf:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i167
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.is) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169: ; preds = %bb.cf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i167, %bb.cb, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit164
  %i.ji = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i170 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i1.i170, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit174, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 4 uses
  %i.jl = load atomic i64, ptr %i.jk acquire, align 8 ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 4294967297
  %i.jn = trunc i64 %i.jl to i32                  ; 2 uses
  br i1 %i.jm, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store i32 0, ptr %i.jk, align 8, !tbaa !22
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %i.jo, align 4, !tbaa !24
  %i.jp = load ptr, ptr %i.jj, align 8, !tbaa !25
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8
  call void %i.jr(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #25, !inline_history !198
  %i.js = load ptr, ptr %i.jj, align 8, !tbaa !25
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = load ptr, ptr %i.jt, align 8
  call void %i.ju(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit174

bb.ci:                                            ; preds = %bb.cg
  %i.jv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i171 = icmp eq i8 %i.jv, 0
  br i1 %.not.i.i.i2.i171, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.jw = add nsw i32 %i.jn, -1
  store i32 %i.jw, ptr %i.jk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i172

bb.ck:                                            ; preds = %bb.ci
  %i.jx = atomicrmw volatile add ptr %i.jk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i172

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i172: ; preds = %bb.ck, %bb.cj
  %.0.i.i.i.i4.i173 = phi i32 [ %i.jn, %bb.cj ], [ %i.jx, %bb.ck ]
  %i.jy = icmp eq i32 %.0.i.i.i.i4.i173, 1
  br i1 %i.jy, label %bb.cl, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit174, !prof !28

bb.cl:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i172
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jj) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit174

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit174: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i169, %bb.ch, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i172, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  %.sroa.2212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %.sroa.2212.0..sroa_idx, align 8
  %.sroa.3213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %1, ptr %.sroa.3213.0..sroa_idx, align 8
  %.sroa.4214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %0, ptr %.sroa.4214.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %5)
          to label %.noexc176 unwind label %bb.ek

.noexc176:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit174
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_517ColorspacesMergerE, i64 16), ptr %18, align 8, !tbaa !25
  %i.jz = load ptr, ptr %1, align 8, !tbaa !38
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !7  ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 268
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !61 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 5
  br i1 %i.kd, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i

_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i: ; preds = %.noexc176
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 244
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !47
  br label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i

bb.cm:                                            ; preds = %bb.cn
  %i.kg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %18) #25
  br label %.body177

_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i: ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i, %.noexc176
  %.0.i6.sink.i175 = phi i32 [ %i.kc, %.noexc176 ], [ %i.kf, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.i ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  store i32 %.0.i6.sink.i175, ptr %i.kh, align 8, !tbaa !191
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ka, i64 243
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !55, !range !51, !noundef !52
  %i.kk = trunc nuw i8 %i.kj to i1
  br i1 %i.kk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i
  %i.kl = getelementptr inbounds nuw i8, ptr %18, i64 48
  %i.km = getelementptr inbounds nuw i8, ptr %18, i64 64
  %i.kn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !199, !nonnull !52, !align !200
  %i.kp = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !201, !nonnull !52, !align !200
  invoke void @_ZN16OpenColorIO_v2_511ConfigUtils28initializeRefSpaceConvertersERSt10shared_ptrIKNS_9TransformEES5_RKS1_IKNS_6ConfigEESA_(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 8 dereferenceable(16) %i.km, ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %i.kq)
          to label %thread-pre-split239 unwind label %bb.cm

thread-pre-split239:                              ; preds = %bb.cn
  %.pr240 = load i32, ptr %i.kh, align 8, !tbaa !191
  br label %bb.co

bb.co:                                            ; preds = %thread-pre-split239, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i
  %i.kr = phi i32 [ %.pr240, %thread-pre-split239 ], [ %.0.i6.sink.i175, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters14getColorspacesEv.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  switch i32 %i.kr, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit183 [
    i32 0, label %bb.cp
    i32 1, label %bb.cq
    i32 2, label %bb.cr
    i32 3, label %bb.cs
    i32 4, label %bb.ct
  ]

bb.cp:                                            ; preds = %bb.co
  %i.ks = load ptr, ptr %18, align 8, !tbaa !25
  br label %.sink.split.i179

bb.cq:                                            ; preds = %bb.co
  %i.kt = load ptr, ptr %18, align 8, !tbaa !25
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  br label %.sink.split.i179

bb.cr:                                            ; preds = %bb.co
  %i.kv = load ptr, ptr %18, align 8, !tbaa !25
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  br label %.sink.split.i179

bb.cs:                                            ; preds = %bb.co
  %i.kx = load ptr, ptr %18, align 8, !tbaa !25
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24
  br label %.sink.split.i179

bb.ct:                                            ; preds = %bb.co
  %i.kz = load ptr, ptr %18, align 8, !tbaa !25
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 32
  br label %.sink.split.i179

.sink.split.i179:                                 ; preds = %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %.sink.in.i180 = phi ptr [ %i.la, %bb.ct ], [ %i.ky, %bb.cs ], [ %i.kw, %bb.cr ], [ %i.ku, %bb.cq ], [ %i.ks, %bb.cp ]
  %.sink.i181 = load ptr, ptr %.sink.in.i180, align 8
  invoke void %.sink.i181(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit183 unwind label %bb.el, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit183: ; preds = %bb.co, %.sink.split.i179
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %18, align 8, !tbaa !25
  %i.lb = getelementptr inbounds nuw i8, ptr %18, i64 72
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i184 = icmp eq ptr %i.lc, null
  br i1 %.not.i.i.i184, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188, label %bb.cu

bb.cu:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit183
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8 ; 4 uses
  %i.le = load atomic i64, ptr %i.ld acquire, align 8 ; 2 uses
  %i.lf = icmp eq i64 %i.le, 4294967297
  %i.lg = trunc i64 %i.le to i32                  ; 2 uses
  br i1 %i.lf, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  store i32 0, ptr %i.ld, align 8, !tbaa !22
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lc, i64 12
  store i32 0, ptr %i.lh, align 4, !tbaa !24
  %i.li = load ptr, ptr %i.lc, align 8, !tbaa !25
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(16) %i.lc) #25, !inline_history !198
  %i.ll = load ptr, ptr %i.lc, align 8, !tbaa !25
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(16) %i.lc) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188

bb.cw:                                            ; preds = %bb.cu
  %i.lo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i185 = icmp eq i8 %i.lo, 0
  br i1 %.not.i.i.i.i185, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.lp = add nsw i32 %i.lg, -1
  store i32 %i.lp, ptr %i.ld, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186

bb.cy:                                            ; preds = %bb.cw
  %i.lq = atomicrmw volatile add ptr %i.ld, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i187 = phi i32 [ %i.lg, %bb.cx ], [ %i.lq, %bb.cy ]
  %i.lr = icmp eq i32 %.0.i.i.i.i.i187, 1
  br i1 %i.lr, label %bb.cz, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188, !prof !28

bb.cz:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lc) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188: ; preds = %bb.cz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i186, %bb.cv, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit183
  %i.ls = getelementptr inbounds nuw i8, ptr %18, i64 56
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i189 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i1.i189, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit193, label %bb.da

bb.da:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 8 ; 4 uses
  %i.lv = load atomic i64, ptr %i.lu acquire, align 8 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 4294967297
  %i.lx = trunc i64 %i.lv to i32                  ; 2 uses
  br i1 %i.lw, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 0, ptr %i.lu, align 8, !tbaa !22
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lt, i64 12
  store i32 0, ptr %i.ly, align 4, !tbaa !24
  %i.lz = load ptr, ptr %i.lt, align 8, !tbaa !25
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #25, !inline_history !198
  %i.mc = load ptr, ptr %i.lt, align 8, !tbaa !25
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  %i.me = load ptr, ptr %i.md, align 8
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit193

bb.dc:                                            ; preds = %bb.da
  %i.mf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i190 = icmp eq i8 %i.mf, 0
  br i1 %.not.i.i.i2.i190, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.mg = add nsw i32 %i.lx, -1
  store i32 %i.mg, ptr %i.lu, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i191

bb.de:                                            ; preds = %bb.dc
  %i.mh = atomicrmw volatile add ptr %i.lu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i191

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i191: ; preds = %bb.de, %bb.dd
  %.0.i.i.i.i4.i192 = phi i32 [ %i.lx, %bb.dd ], [ %i.mh, %bb.de ]
  %i.mi = icmp eq i32 %.0.i.i.i.i4.i192, 1
  br i1 %i.mi, label %bb.df, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit193, !prof !28

bb.df:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i191
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.lt) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit193

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit193: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i188, %bb.db, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i191, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %2, ptr %4, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %3, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_ZN16OpenColorIO_v2_513SectionMergerC2ENS_19MergeHandlerOptionsE(ptr noundef nonnull align 8 dereferenceable(80) %19, ptr noundef nonnull byval(%"struct.OpenColorIO_v2_5::MergeHandlerOptions") align 8 %4)
          to label %.noexc195 unwind label %bb.em

.noexc195:                                        ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit193
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_521NamedTransformsMergerE, i64 16), ptr %19, align 8, !tbaa !25
  %i.mj = load ptr, ptr %1, align 8, !tbaa !38
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !7  ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 272
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !62 ; 2 uses
  %i.mn = icmp eq i32 %i.mm, 5
  br i1 %i.mn, label %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i, label %bb.dg

_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i: ; preds = %.noexc195
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 244
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !47
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i, %.noexc195
  %.sink.i194 = phi i32 [ %i.mm, %.noexc195 ], [ %i.mp, %_ZNK16OpenColorIO_v2_523ConfigMergingParameters18getNamedTransformsEv.exit.i ] ; 3 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %19, i64 40
  store i32 %.sink.i194, ptr %i.mq, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.mr = icmp ult i32 %.sink.i194, 5
  br i1 %i.mr, label %switch.lookup277, label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit200

switch.lookup277:                                 ; preds = %bb.dg
  %i.ms = zext nneg i32 %.sink.i194 to i64
  %switch.gep278 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN16OpenColorIO_v2_520ConfigMergingHelpers12MergeConfigsERKSt10shared_ptrINS_23ConfigMergingParametersEERKS1_IKNS_6ConfigEESA_.13, i64 %i.ms
  %switch.load279 = load ptr, ptr %switch.gep278, align 8
  %.sink.i198 = load ptr, ptr %switch.load279, align 8
  invoke void %.sink.i198(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit200 unwind label %bb.en, !inline_history !197

_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit200: ; preds = %bb.dg, %switch.lookup277
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_513SectionMergerE, i64 16), ptr %19, align 8, !tbaa !25
  %i.mt = getelementptr inbounds nuw i8, ptr %19, i64 72
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !19 ; 8 uses
  %.not.i.i.i201 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i.i201, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205, label %bb.dh

bb.dh:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit200
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8 ; 4 uses
  %i.mw = load atomic i64, ptr %i.mv acquire, align 8 ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 4294967297
  %i.my = trunc i64 %i.mw to i32                  ; 2 uses
  br i1 %i.mx, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  store i32 0, ptr %i.mv, align 8, !tbaa !22
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 12
  store i32 0, ptr %i.mz, align 4, !tbaa !24
  %i.na = load ptr, ptr %i.mu, align 8, !tbaa !25
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #25, !inline_history !198
  %i.nd = load ptr, ptr %i.mu, align 8, !tbaa !25
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #25, !inline_history !198
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205

bb.dj:                                            ; preds = %bb.dh
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i202 = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i.i202, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.nh = add nsw i32 %i.my, -1
  store i32 %i.nh, ptr %i.mv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i203

bb.dl:                                            ; preds = %bb.dj
  %i.ni = atomicrmw volatile add ptr %i.mv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i203

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i203: ; preds = %bb.dl, %bb.dk
  %.0.i.i.i.i.i204 = phi i32 [ %i.my, %bb.dk ], [ %i.ni, %bb.dl ]
  %i.nj = icmp eq i32 %.0.i.i.i.i.i204, 1
  br i1 %i.nj, label %bb.dm, label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205, !prof !28

bb.dm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i203
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mu) #25
  br label %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205

_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205: ; preds = %bb.dm, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i203, %bb.di, %_ZN16OpenColorIO_v2_513SectionMerger5mergeEv.exit200
  %i.nk = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !19 ; 8 uses
  %.not.i.i1.i206 = icmp eq ptr %i.nl, null
  br i1 %.not.i.i1.i206, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit210, label %bb.dn

bb.dn:                                            ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8 ; 4 uses
  %i.nn = load atomic i64, ptr %i.nm acquire, align 8 ; 2 uses
  %i.no = icmp eq i64 %i.nn, 4294967297
  %i.np = trunc i64 %i.nn to i32                  ; 2 uses
  br i1 %i.no, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  store i32 0, ptr %i.nm, align 8, !tbaa !22
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nl, i64 12
  store i32 0, ptr %i.nq, align 4, !tbaa !24
  %i.nr = load ptr, ptr %i.nl, align 8, !tbaa !25
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nt = load ptr, ptr %i.ns, align 8
  call void %i.nt(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25, !inline_history !198
  %i.nu = load ptr, ptr %i.nl, align 8, !tbaa !25
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 24
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25, !inline_history !198
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit210

bb.dp:                                            ; preds = %bb.dn
  %i.nx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2.i207 = icmp eq i8 %i.nx, 0
  br i1 %.not.i.i.i2.i207, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.ny = add nsw i32 %i.np, -1
  store i32 %i.ny, ptr %i.nm, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i208

bb.dr:                                            ; preds = %bb.dp
  %i.nz = atomicrmw volatile add ptr %i.nm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i208

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i208: ; preds = %bb.dr, %bb.dq
  %.0.i.i.i.i4.i209 = phi i32 [ %i.np, %bb.dq ], [ %i.nz, %bb.dr ]
  %i.oa = icmp eq i32 %.0.i.i.i.i4.i209, 1
  br i1 %i.oa, label %bb.ds, label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit210, !prof !28

bb.ds:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i208
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.nl) #25
  br label %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit210

_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit210: ; preds = %_ZNSt12__shared_ptrIKN16OpenColorIO_v2_59TransformELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i205, %bb.do, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i208, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  ret void

bb.dt:                                            ; preds = %bb.e
  %i.ob = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.dv

bb.du:                                            ; preds = %switch.lookup
  %i.oc = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %12) #25
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.pn = phi { ptr, i32 } [ %i.oc, %bb.du ], [ %i.ob, %bb.dt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.ep

bb.dw:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit
  %i.od = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.dy

bb.dx:                                            ; preds = %switch.lookup265
  %i.oe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #25
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.pn73 = phi { ptr, i32 } [ %i.oe, %bb.dx ], [ %i.od, %bb.dw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ep

bb.dz:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit107
  %i.of = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.eb

bb.ea:                                            ; preds = %switch.lookup268
  %i.og = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %14) #25
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.pn75 = phi { ptr, i32 } [ %i.og, %bb.ea ], [ %i.of, %bb.dz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.ep

bb.ec:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit124
  %i.oh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %bb.ee

bb.ed:                                            ; preds = %switch.lookup271
  %i.oi = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #25
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %.pn77 = phi { ptr, i32 } [ %i.oi, %bb.ed ], [ %i.oh, %bb.ec ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.ep

bb.ef:                                            ; preds = %_ZN16OpenColorIO_v2_513SectionMergerD2Ev.exit141
  %i.oj = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  br label %.body

bb.eg:                                            ; preds = %.sink.split.i143
  %i.ok = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN16OpenColorIO_v2_59ExceptionE
  call void @_ZN16OpenColorIO_v2_513SectionMergerD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %16) #25
  br label %.body

.body:                                            ; preds = %bb.ef, %bb.bf, %bb.eg
  %.pn79 = phi { ptr, i32 } [ %i.ok, %bb.eg ], [ %i.oj, %bb.ef ], [ %i.ge, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.ep

end_hunk_2
