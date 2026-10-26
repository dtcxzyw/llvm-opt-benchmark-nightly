Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/hevc_boxes?download=true
inline.NumInlined: 1743
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.Error = type { i32, i32, %"class.std::__1::basic_string" }
%"class.std::__1::basic_string" = type { %"class.std::__1::__compressed_pair" }
%"class.std::__1::__compressed_pair" = type { %"struct.std::__1::__compressed_pair_elem" }
%"struct.std::__1::__compressed_pair_elem" = type { %"struct.std::__1::basic_string<char>::__rep" }
%"struct.std::__1::basic_string<char>::__rep" = type { %union.anon }
%union.anon = type { %"struct.std::__1::basic_string<char>::__long" }
%"struct.std::__1::basic_string<char>::__long" = type { %struct.anon.0, i64, ptr }
%struct.anon.0 = type { i64 }
%"class.std::__1::locale::id" = type <{ %"struct.std::__1::once_flag", i32, [4 x i8] }>
%"struct.std::__1::once_flag" = type { i64 }
%"struct.HEVCDecoderConfigurationRecord::NalArray" = type { i8, i8, %"class.std::__1::vector.8" }
%"class.std::__1::vector.8" = type { ptr, ptr, %"class.std::__1::__compressed_pair.9" }
%"class.std::__1::__compressed_pair.9" = type { %"struct.std::__1::__compressed_pair_elem.10" }
%"struct.std::__1::__compressed_pair_elem.10" = type { ptr }
%"class.std::__1::vector.15" = type { ptr, ptr, %"class.std::__1::__compressed_pair.16" }
%"class.std::__1::__compressed_pair.16" = type { %"struct.std::__1::__compressed_pair_elem.17" }
%"struct.std::__1::__compressed_pair_elem.17" = type { ptr }
%"class.std::__1::shared_ptr" = type { ptr, ptr }
%"class.std::__1::locale" = type { ptr }
%"class.std::__1::basic_ostringstream" = type { %"class.std::__1::basic_ostream.base", %"class.std::__1::basic_stringbuf", %"class.std::__1::basic_ios.base" }
%"class.std::__1::basic_ostream.base" = type { ptr }
%"class.std::__1::basic_stringbuf" = type <{ %"class.std::__1::basic_streambuf", %"class.std::__1::basic_string", ptr, i32, [4 x i8] }>
%"class.std::__1::basic_streambuf" = type { ptr, %"class.std::__1::locale", ptr, ptr, ptr, ptr, ptr, ptr }
%"class.std::__1::basic_ios.base" = type <{ %"class.std::__1::ios_base", ptr, i32 }>
%"class.std::__1::ios_base" = type { ptr, i32, i64, i64, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, i64, i64, ptr, i64, i64 }
%"struct.std::__1::__exception_guard_exceptions.83" = type <{ %"class.std::__1::vector<std::__1::vector<unsigned char>>::__destroy_vector", i8, [7 x i8] }>
%"class.std::__1::vector<std::__1::vector<unsigned char>>::__destroy_vector" = type { ptr }
%class.BitReader = type <{ ptr, ptr, i64, i64, i64, i32, [4 x i8] }>
%class.Result = type { %"class.std::__1::variant" }
%"class.std::__1::variant" = type { %"class.std::__1::__variant_detail::__impl" }
%"class.std::__1::__variant_detail::__impl" = type { %"class.std::__1::__variant_detail::__copy_assignment.base", [4 x i8] }
%"class.std::__1::__variant_detail::__copy_assignment.base" = type { %"class.std::__1::__variant_detail::__move_assignment.base" }
%"class.std::__1::__variant_detail::__move_assignment.base" = type { %"class.std::__1::__variant_detail::__assignment.base" }
%"class.std::__1::__variant_detail::__assignment.base" = type { %"class.std::__1::__variant_detail::__copy_constructor.base" }
%"class.std::__1::__variant_detail::__copy_constructor.base" = type { %"class.std::__1::__variant_detail::__move_constructor.base" }
%"class.std::__1::__variant_detail::__move_constructor.base" = type { %"class.std::__1::__variant_detail::__ctor.base" }
%"class.std::__1::__variant_detail::__ctor.base" = type { %"class.std::__1::__variant_detail::__dtor.base" }
%"class.std::__1::__variant_detail::__dtor.base" = type { %"class.std::__1::__variant_detail::__base.base" }
%"class.std::__1::__variant_detail::__base.base" = type <{ %"union.std::__1::__variant_detail::__union", i32 }>
%"union.std::__1::__variant_detail::__union" = type { %"union.std::__1::__variant_detail::__union.35" }
%"union.std::__1::__variant_detail::__union.35" = type { %"struct.std::__1::__variant_detail::__alt.36" }
%"struct.std::__1::__variant_detail::__alt.36" = type { %class.Error }
%"class.std::__1::shared_ptr.89" = type { ptr, ptr }
%class.anon.110 = type { i8 }
%"struct.std::__1::__split_buffer.59" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.60" }
%"class.std::__1::__compressed_pair.60" = type { %"struct.std::__1::__compressed_pair_elem.10", %"struct.std::__1::__compressed_pair_elem.61" }
%"struct.std::__1::__compressed_pair_elem.61" = type { ptr }
%"struct.std::__1::__split_buffer.66" = type { ptr, ptr, ptr, %"class.std::__1::__compressed_pair.67" }
%"class.std::__1::__compressed_pair.67" = type { %"struct.std::__1::__compressed_pair_elem.3", %"struct.std::__1::__compressed_pair_elem.68" }
%"struct.std::__1::__compressed_pair_elem.3" = type { ptr }
%"struct.std::__1::__compressed_pair_elem.68" = type { ptr }
%"struct.std::__1::__exception_guard_exceptions.86" = type <{ %"class.std::__1::_AllocatorDestroyRangeReverse.87", i8, [7 x i8] }>
%"class.std::__1::_AllocatorDestroyRangeReverse.87" = type { ptr, ptr, ptr }
%"class.std::__1::basic_ostream<char>::sentry" = type { i8, ptr }

$_ZNSt3__110shared_ptrI12StreamReaderED2B8ne180100Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc = comdat any

$_ZN30HEVCDecoderConfigurationRecord8NalArrayD2Ev = comdat any

$_ZNK14BitstreamRange9get_errorEv = comdat any

$_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_ = comdat any

$_ZN6ResultINSt3__110shared_ptrI10SEIMessageEEED2Ev = comdat any

$_ZN8Box_hvcCD2Ev = comdat any

$_ZN8Box_hvcCD0Ev = comdat any

$_ZNK8Box_hvcC14debug_box_nameEv = comdat any

$_ZNK9BoxHeader18is_full_box_headerEv = comdat any

$_ZN3Box18derive_box_versionEv = comdat any

$_ZN3Box19patch_file_pointersER12StreamWriterm = comdat any

$_ZNK3Box24get_parse_error_fatalityEv = comdat any

$_ZNK8Box_hvcC12is_essentialEv = comdat any

$_ZNK3Box26is_transformative_propertyEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm = comdat any

$_ZNKSt3__16vectorIhNS_9allocatorIhEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__120__throw_length_errorB8ne180100EPKc = comdat any

$_ZNSt12length_errorC2B8ne180100EPKc = comdat any

$_ZSt28__throw_bad_array_new_lengthB8ne180100v = comdat any

$_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE21__push_back_slow_pathIS3_EEPS3_OT_ = comdat any

$_ZNSt3__114__split_bufferINS_6vectorIhNS_9allocatorIhEEEERNS2_IS4_EEED2Ev = comdat any

$_ZNKSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__16vectorIN30HEVCDecoderConfigurationRecord8NalArrayENS_9allocatorIS2_EEE21__push_back_slow_pathIS2_EEPS2_OT_ = comdat any

$_ZNSt3__114__split_bufferIN30HEVCDecoderConfigurationRecord8NalArrayERNS_9allocatorIS2_EEED2Ev = comdat any

$_ZNKSt3__16vectorIN30HEVCDecoderConfigurationRecord8NalArrayENS_9allocatorIS2_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE25__init_copy_ctor_externalEPKcm = comdat any

$_ZNSt3__16vectorIhNS_9allocatorIhEEE18__assign_with_sizeB8ne180100IPhS5_EEvT_T0_l = comdat any

$_ZNSt3__16vectorINS0_IhNS_9allocatorIhEEEENS1_IS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_ = comdat any

$_ZNSt3__16vectorIN30HEVCDecoderConfigurationRecord8NalArrayENS_9allocatorIS2_EEE21__push_back_slow_pathIRKS2_EEPS2_OT_ = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_6vectorINS1_IhNS_9allocatorIhEEEENS2_IS4_EEE16__destroy_vectorEED2B8ne180100Ev = comdat any

$_ZNSt3__135__uninitialized_allocator_copy_implB8ne180100INS_9allocatorINS_6vectorIhNS1_IhEEEEEEPS4_S6_S6_EET2_RT_T0_T1_S7_ = comdat any

$_ZNSt3__128__exception_guard_exceptionsINS_29_AllocatorDestroyRangeReverseINS_9allocatorINS_6vectorIhNS2_IhEEEEEEPS5_EEED2B8ne180100Ev = comdat any

$_ZNSt3__110shared_ptrI36SEIMessage_depth_representation_infoED2B8ne180100Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEED2Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEED0Ev = comdat any

$_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEE16__on_zero_sharedEv = comdat any

$_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEE21__on_zero_shared_weakEv = comdat any

$_ZN10SEIMessageD2Ev = comdat any

$_ZN36SEIMessage_depth_representation_infoD0Ev = comdat any

$_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_ = comdat any

$_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev = comdat any

$_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_ = comdat any

$_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_ = comdat any

$_ZN3BoxD2Ev = comdat any

$_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m = comdat any

$_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ = comdat any

$_ZNSt3__126__throw_bad_variant_accessB8ne180100Ev = comdat any

$_ZTVNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE = comdat any

$_ZTINSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE = comdat any

$_ZTSNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE = comdat any

$_ZTV36SEIMessage_depth_representation_info = comdat any

$_ZTI36SEIMessage_depth_representation_info = comdat any

$_ZTS36SEIMessage_depth_representation_info = comdat any

$_ZTI10SEIMessage = comdat any

$_ZTS10SEIMessage = comdat any

$_ZTI30heif_depth_representation_info = comdat any

$_ZTS30heif_depth_representation_info = comdat any

@.str = private unnamed_addr constant [29 x i8] c"error while reading hvcC box\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Too many NAL units in hvcC\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"hvcC NAL unit exceeds maximum size (64kB)\00", align 1
@_ZN5Error2OkE = external local_unnamed_addr global %class.Error, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"configuration_version: \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"general_profile_space: \00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"general_tier_flag: \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"general_profile_idc: \00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"general_profile_compatibility_flags: \00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"general_constraint_indicator_flags: \00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"general_level_idc: \00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"min_spatial_segmentation_idc: \00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"parallelism_type: \00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"chroma_format: \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"monochrome\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"4:2:0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"4:2:2\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"4:4:4\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"bit_depth_luma: \00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"bit_depth_chroma: \00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"avg_frame_rate: \00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"constant_frame_rate: \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"num_temporal_layers: \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"temporal_id_nested: \00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"length_size: \00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"<array>\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"array_completeness: \00", align 1
@.str.27 = private unnamed_addr constant [16 x i8] c"NAL_unit_type: \00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"HEVC SEI NAL too short\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"Invalid variable length code in HEVC SPS header\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"SPS conformance window exceeds image dimensions\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"SPS bit_depth_luma_minus8 out of range\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"SPS bit_depth_chroma_minus8 out of range\00", align 1
@_ZTV8Box_hvcC = hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTI8Box_hvcC, ptr @_ZN8Box_hvcCD2Ev, ptr @_ZN8Box_hvcCD0Ev, ptr @_ZNK8Box_hvcC14debug_box_nameEv, ptr @_ZNK8Box_hvcC4dumpER6Indent, ptr @_ZNK9BoxHeader18is_full_box_headerEv, ptr @_ZNK8Box_hvcC5writeER12StreamWriter, ptr @_ZN3Box18derive_box_versionEv, ptr @_ZN3Box19patch_file_pointersER12StreamWriterm, ptr @_ZNK3BoxeqERKS_, ptr @_ZNK3Box24get_parse_error_fatalityEv, ptr @_ZNK8Box_hvcC12is_essentialEv, ptr @_ZNK3Box26is_transformative_propertyEv, ptr @_ZN8Box_hvcC5parseER14BitstreamRangePK20heif_security_limits, ptr @_ZNK3Box24reserve_box_header_spaceER12StreamWriterb, ptr @_ZNK3Box12write_headerER12StreamWritermb] }, align 8
@_ZTI8Box_hvcC = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8Box_hvcC, ptr @_ZTI3Box }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS8Box_hvcC = hidden constant [10 x i8] c"8Box_hvcC\00", align 1
@_ZTI3Box = external constant ptr
@.str.34 = private unnamed_addr constant [7 x i8] c"vector\00", align 1
@_ZTISt12length_error = external constant ptr
@_ZTVSt12length_error = external constant { [5 x ptr] }, align 8
@_ZTISt20bad_array_new_length = external constant ptr
@.str.35 = private unnamed_addr constant [13 x i8] c"basic_string\00", align 1
@_ZTVNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [5 x ptr], [5 x ptr] }, align 8
@_ZTTNSt3__119basic_ostringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEE = external constant { [16 x ptr] }, align 8
@.str.37 = private unnamed_addr constant [43 x i8] c"invalid depth representation type in input\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"input depth representation type out of range\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"invalid disparity_reference_view in input\00", align 1
@_ZTVNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTINSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE, ptr @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEED2Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEED0Ev, ptr @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEE16__on_zero_sharedEv, ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info, ptr @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEE21__on_zero_shared_weakEv] }, comdat, align 8
@_ZTINSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE, ptr @_ZTINSt3__119__shared_weak_countE }, comdat, align 8
@_ZTSNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE = linkonce_odr hidden constant [90 x i8] c"NSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE\00", comdat, align 1
@_ZTINSt3__119__shared_weak_countE = external constant ptr
@_ZTV36SEIMessage_depth_representation_info = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI36SEIMessage_depth_representation_info, ptr @_ZN10SEIMessageD2Ev, ptr @_ZN36SEIMessage_depth_representation_infoD0Ev] }, comdat, align 8
@_ZTI36SEIMessage_depth_representation_info = linkonce_odr hidden constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTS36SEIMessage_depth_representation_info, i32 0, i32 2, ptr @_ZTI10SEIMessage, i64 2, ptr @_ZTI30heif_depth_representation_info, i64 2050 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTS36SEIMessage_depth_representation_info = linkonce_odr hidden constant [39 x i8] c"36SEIMessage_depth_representation_info\00", comdat, align 1
@_ZTI10SEIMessage = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS10SEIMessage }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS10SEIMessage = linkonce_odr hidden constant [13 x i8] c"10SEIMessage\00", comdat, align 1
@_ZTI30heif_depth_representation_info = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS30heif_depth_representation_info }, comdat, align 8
@_ZTS30heif_depth_representation_info = linkonce_odr hidden constant [33 x i8] c"30heif_depth_representation_info\00", comdat, align 1
@_ZTV3Box = external constant { [17 x ptr] }, align 8
@_ZTV9BoxHeader = external constant { [7 x ptr] }, align 8
@.str.40 = private unnamed_addr constant [24 x i8] c"HEVC Configuration Item\00", align 1
@_ZNSt3__15ctypeIcE2idE = external global %"class.std::__1::locale::id", align 8
@_ZTISt18bad_variant_access = external constant ptr
@_ZTVSt18bad_variant_access = external constant { [5 x ptr] }, align 8
@switch.table._ZNK8Box_hvcC4dumpER6Indent = private unnamed_addr constant [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], align 8
@switch.table._ZNK8Box_hvcC4dumpER6Indent.1 = private unnamed_addr constant [4 x i8] c"\0A\05\05\05", align 8

; Function Attrs: mustprogress uwtable
define hidden void @_ZN30HEVCDecoderConfigurationRecord5parseER14BitstreamRangePK20heif_security_limits(ptr dead_on_unwind noalias writable sret(%class.Error) align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) initializes((0, 8)) %1, ptr noundef nonnull align 8 dereferenceable(41) %2, ptr nofree readnone captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.HEVCDecoderConfigurationRecord::NalArray", align 8 ; 11 uses
  %5 = alloca %"class.std::__1::vector.15", align 16 ; 16 uses
  %6 = alloca %"class.std::__1::shared_ptr", align 8 ; 6 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 11 uses
  %i.a = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  store i8 %i.a, ptr %1, align 8, !tbaa !23
  %i.b = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 3 uses
  %i.c = lshr i8 %i.b, 6
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %i.d, align 1, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = lshr i8 %i.b, 5
  %.lobit = and i8 %i.f, 1
  store i8 %.lobit, ptr %i.e, align 2, !tbaa !25
  %i.g = and i8 %i.b, 31
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.g, ptr %i.h, align 1, !tbaa !26
  %i.i = tail call noundef i32 @_ZN14BitstreamRange6read32Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.i, ptr %i.j, align 4, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %_ZNSt3__115__bit_referenceINS_8__bitsetILm1ELm48EEELb1EEaSB8ne180100Eb.exit

bb.b:                                             ; preds = %_ZNSt3__115__bit_referenceINS_8__bitsetILm1ELm48EEELb1EEaSB8ne180100Eb.exit
  %i.l = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.l, ptr %i.m, align 8, !tbaa !28
  %i.n = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.o = and i16 %i.n, 4095
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 18
  store i16 %i.o, ptr %i.p, align 2, !tbaa !29
  %i.q = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.r = and i8 %i.q, 3
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %i.r, ptr %i.s, align 4, !tbaa !30
  %i.t = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.u = and i8 %i.t, 3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 21
  store i8 %i.u, ptr %i.v, align 1, !tbaa !31
  %i.w = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.x = and i8 %i.w, 7
  %i.y = or disjoint i8 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 %i.y, ptr %i.z, align 2, !tbaa !32
  %i.aa = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.ab = and i8 %i.aa, 7
  %i.ac = or disjoint i8 %i.ab, 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 23
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !33
  %i.ae = tail call noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i16 %i.ae, ptr %i.af, align 8, !tbaa !34
  %i.ag = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 4 uses
  %i.ah = lshr i8 %i.ag, 6
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !35
  %i.aj = lshr i8 %i.ag, 3
  %i.ak = and i8 %i.aj, 7
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 27
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !36
  %i.am = lshr i8 %i.ag, 2
  %i.an = and i8 %i.am, 1
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i8 %i.an, ptr %i.ao, align 4, !tbaa !37
  %i.ap = and i8 %i.ag, 3
  %narrow = add nuw nsw i8 %i.ap, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 29
  store i8 %narrow, ptr %i.aq, align 1, !tbaa !38
  %i.ar = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 2 uses
  %i.as = zext i8 %i.ar to i32
  %.not107 = icmp eq i8 %i.ar, 0
  br i1 %.not107, label %.critedge, label %.lr.ph105

.lr.ph105:                                        ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.d

_ZNSt3__115__bit_referenceINS_8__bitsetILm1ELm48EEELb1EEaSB8ne180100Eb.exit: ; preds = %bb.a, %_ZNSt3__115__bit_referenceINS_8__bitsetILm1ELm48EEELb1EEaSB8ne180100Eb.exit
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %_ZNSt3__115__bit_referenceINS_8__bitsetILm1ELm48EEELb1EEaSB8ne180100Eb.exit ] ; 2 uses
  %i.bh = tail call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 3 uses
  %i.bi = zext i8 %i.bh to i32                    ; 6 uses
  %i.bj = shl nuw nsw i64 %indvars.iv, 3          ; 8 uses
  %.promoted = load i64, ptr %i.k, align 8        ; 2 uses
  %i.bk = shl nuw i64 1, %i.bj                    ; 2 uses
  %i.bl = xor i64 %i.bk, -1
  %i.bm = and i64 %.promoted, %i.bl
  %i.bn = or i64 %.promoted, %i.bk
  %.not130131 = icmp slt i8 %i.bh, 0
  %storemerge = select i1 %.not130131, i64 %i.bn, i64 %i.bm ; 2 uses
  %i.bo = and i32 %i.bi, 64
  %.not132 = icmp eq i32 %i.bo, 0
  %i.bp = shl nuw i64 2, %i.bj                    ; 2 uses
  %i.bq = xor i64 %i.bp, -1
  %i.br = and i64 %storemerge, %i.bq
  %i.bs = or i64 %storemerge, %i.bp
  %storemerge.1 = select i1 %.not132, i64 %i.br, i64 %i.bs ; 2 uses
  %i.bt = and i32 %i.bi, 32
  %.not133 = icmp eq i32 %i.bt, 0
  %i.bu = shl nuw i64 4, %i.bj                    ; 2 uses
  %i.bv = xor i64 %i.bu, -1
  %i.bw = and i64 %storemerge.1, %i.bv
  %i.bx = or i64 %storemerge.1, %i.bu
  %storemerge.2 = select i1 %.not133, i64 %i.bw, i64 %i.bx ; 2 uses
  %i.by = and i32 %i.bi, 16
  %.not134 = icmp eq i32 %i.by, 0
  %i.bz = shl nuw i64 8, %i.bj                    ; 2 uses
  %i.ca = xor i64 %i.bz, -1
  %i.cb = and i64 %storemerge.2, %i.ca
  %i.cc = or i64 %storemerge.2, %i.bz
  %storemerge.3 = select i1 %.not134, i64 %i.cb, i64 %i.cc ; 2 uses
  %i.cd = and i32 %i.bi, 8
  %.not135 = icmp eq i32 %i.cd, 0
  %i.ce = shl nuw i64 16, %i.bj                   ; 2 uses
  %i.cf = xor i64 %i.ce, -1
  %i.cg = and i64 %storemerge.3, %i.cf
  %i.ch = or i64 %storemerge.3, %i.ce
  %storemerge.4 = select i1 %.not135, i64 %i.cg, i64 %i.ch ; 2 uses
  %i.ci = and i32 %i.bi, 4
  %.not136 = icmp eq i32 %i.ci, 0
  %i.cj = shl nuw i64 32, %i.bj                   ; 2 uses
  %i.ck = xor i64 %i.cj, -1
  %i.cl = and i64 %storemerge.4, %i.ck
  %i.cm = or i64 %storemerge.4, %i.cj
  %storemerge.5 = select i1 %.not136, i64 %i.cl, i64 %i.cm ; 2 uses
  %i.cn = and i32 %i.bi, 2
  %.not137 = icmp eq i32 %i.cn, 0
  %i.co = shl nuw i64 64, %i.bj                   ; 2 uses
  %i.cp = xor i64 %i.co, -1
  %i.cq = and i64 %storemerge.5, %i.cp
  %i.cr = or i64 %storemerge.5, %i.co
  %storemerge.6 = select i1 %.not137, i64 %i.cq, i64 %i.cr ; 2 uses
  %i.cs = trunc i8 %i.bh to i1
  %i.ct = shl nuw i64 128, %i.bj                  ; 2 uses
  %i.cu = xor i64 %i.ct, -1
  %i.cv = and i64 %storemerge.6, %i.cu
  %i.cw = or i64 %storemerge.6, %i.ct
  %storemerge.7 = select i1 %i.cs, i64 %i.cw, i64 %i.cv
  store i64 %storemerge.7, ptr %i.k, align 8, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %_ZNSt3__115__bit_referenceINS_8__bitsetILm1ELm48EEELb1EEaSB8ne180100Eb.exit, !llvm.loop !131

bb.c:                                             ; preds = %_ZN30HEVCDecoderConfigurationRecord8NalArrayD2Ev.exit
  %i.cx = add nuw nsw i32 %.067103, 1             ; 2 uses
  %exitcond112.not = icmp eq i32 %i.cx, %i.as
  br i1 %exitcond112.not, label %.critedge, label %bb.d, !llvm.loop !132

bb.d:                                             ; preds = %.lr.ph105, %bb.c
  %.067103 = phi i32 [ 0, %.lr.ph105 ], [ %i.cx, %bb.c ]
  %i.cy = load i8, ptr %i.at, align 8, !tbaa !46, !range !47, !noundef !48
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.da = call noundef zeroext i8 @_ZN14BitstreamRange5read8Ev(ptr noundef nonnull align 8 dereferenceable(41) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.db = lshr i8 %i.da, 6
  %i.dc = and i8 %i.db, 1
  store i8 %i.dc, ptr %4, align 8, !tbaa !54
  %i.dd = and i8 %i.da, 63
  store i8 %i.dd, ptr %i.av, align 1, !tbaa !55
  %i.de = invoke noundef zeroext i16 @_ZN14BitstreamRange6read16Ev(ptr noundef nonnull align 8 dereferenceable(41) %2)
          to label %bb.f unwind label %bb.g       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.df = zext i16 %i.de to i32
  %.not108 = icmp eq i16 %i.de, 0
  br i1 %.not108, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.jt13
  %.0101 = phi i32 [ %i.fs, %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit.jt13 ], [ 0, %bb.f ]
  %i.dg = load i8, ptr %i.at, align 8, !tbaa !46, !range !47, !noundef !48
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %._crit_edge, label %bb.h
end_hunk_0
begin_hunk_1_@_ZL30read_depth_representation_infoR9BitReader:bb.a

bb.ar:                                            ; preds = %.noexc61
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5ErrorD2Ev.exit67

bb.as:                                            ; preds = %bb.al
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load i8, ptr %i.di, align 8
  %i.eg = trunc i8 %i.ef to i1
  br i1 %i.eg, label %bb.at, label %_ZN5ErrorD2Ev.exit67

bb.at:                                            ; preds = %bb.as
  %i.eh = load ptr, ptr %i.dl, align 8, !tbaa !65
  %i.ei = load i64, ptr %i.di, align 8
  %i.ej = and i64 %i.ei, -2
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.ej) #24
  br label %_ZN5ErrorD2Ev.exit67

_ZN5ErrorD2Ev.exit67:                             ; preds = %bb.at, %bb.as, %bb.ar
  %.pn26 = phi { ptr, i32 } [ %i.ed, %bb.ar ], [ %i.ee, %bb.as ], [ %i.ee, %bb.at ] ; 2 uses
  %i.ek = load i8, ptr %8, align 8
  %i.el = trunc i8 %i.ek to i1
  br i1 %i.el, label %bb.au, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68

bb.au:                                            ; preds = %_ZN5ErrorD2Ev.exit67
  %i.em = load ptr, ptr %i.dd, align 8, !tbaa !65
  %i.en = load i64, ptr %8, align 8
  %i.eo = and i64 %i.en, -2
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.eo) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68: ; preds = %bb.au, %_ZN5ErrorD2Ev.exit67, %bb.aq
  %.pn26.pn = phi { ptr, i32 } [ %i.ec, %bb.aq ], [ %.pn26, %_ZN5ErrorD2Ev.exit67 ], [ %.pn26, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.aw

.thread:                                          ; preds = %bb.ai
  %i.ep = load i32, ptr %i.b, align 4, !tbaa !101
  %i.eq = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.ax

bb.av:                                            ; preds = %bb.ao, %_ZN5ErrorD2Ev.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bj

bb.aw:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68, %bb.ap
  %.pn26.pn.pn = phi { ptr, i32 } [ %.pn26.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit68 ], [ %i.eb, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.bl

bb.ax:                                            ; preds = %.thread, %bb.ag
  %i.er = load i8, ptr %i.l, align 1, !tbaa !260
  %.not30 = icmp eq i8 %i.er, 0
  br i1 %.not30, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.es = invoke fastcc noundef double @_ZL27read_depth_rep_info_elementR9BitReader(ptr noundef nonnull align 8 dereferenceable(44) %1)
          to label %bb.az unwind label %bb.n

bb.az:                                            ; preds = %bb.ay
  %i.et = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store double %i.es, ptr %i.et, align 8, !tbaa !266
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.eu = load i8, ptr %i.o, align 2, !tbaa !261
  %.not31 = icmp eq i8 %i.eu, 0
  br i1 %.not31, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ev = invoke fastcc noundef double @_ZL27read_depth_rep_info_elementR9BitReader(ptr noundef nonnull align 8 dereferenceable(44) %1)
          to label %bb.bc unwind label %bb.n

bb.bc:                                            ; preds = %bb.bb
  %i.ew = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store double %i.ev, ptr %i.ew, align 8, !tbaa !267
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba
  %i.ex = load i8, ptr %i.r, align 1, !tbaa !262
  %.not32 = icmp eq i8 %i.ex, 0
  br i1 %.not32, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ey = invoke fastcc noundef double @_ZL27read_depth_rep_info_elementR9BitReader(ptr noundef nonnull align 8 dereferenceable(44) %1)
          to label %bb.bf unwind label %bb.n

bb.bf:                                            ; preds = %bb.be
  %i.ez = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store double %i.ey, ptr %i.ez, align 8, !tbaa !268
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %i.fa = load i8, ptr %i.u, align 4, !tbaa !263
  %.not33 = icmp eq i8 %i.fa, 0
  br i1 %.not33, label %_ZNSt3__110shared_ptrI10SEIMessageED2B8ne180100Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fb = invoke fastcc noundef double @_ZL27read_depth_rep_info_elementR9BitReader(ptr noundef nonnull align 8 dereferenceable(44) %1)
          to label %bb.bi unwind label %bb.n

bb.bi:                                            ; preds = %bb.bh
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store double %i.fb, ptr %i.fc, align 8, !tbaa !269
  br label %_ZNSt3__110shared_ptrI10SEIMessageED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI10SEIMessageED2B8ne180100Ev.exit: ; preds = %bb.bi, %bb.bg
  %i.fd = atomicrmw add ptr %i.d, i64 1 monotonic, align 8 ; 0 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !270
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.fe, align 8, !tbaa !104
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.ff, align 8, !tbaa !97
  br label %bb.bj

bb.bj:                                            ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit53, %_ZNSt3__110shared_ptrI10SEIMessageED2B8ne180100Ev.exit, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.fg = atomicrmw add ptr %i.d, i64 -1 acq_rel, align 8
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %bb.bk, label %_ZNSt3__110shared_ptrI36SEIMessage_depth_representation_infoED2B8ne180100Ev.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fi = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #22, !inline_history !248
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #22
  br label %_ZNSt3__110shared_ptrI36SEIMessage_depth_representation_infoED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrI36SEIMessage_depth_representation_infoED2B8ne180100Ev.exit: ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.bl:                                            ; preds = %bb.aw, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit55, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit42, %bb.n
  %.pn34.pn.pn = phi { ptr, i32 } [ %.pn34.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit55 ], [ %i.aw, %bb.n ], [ %.pn26.pn.pn, %bb.aw ], [ %.pn.pn, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit42 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.m
  %.pn34.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn, %bb.bl ], [ %i.av, %bb.m ]
  call void @_ZNSt3__110shared_ptrI36SEIMessage_depth_representation_infoED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  resume { ptr, i32 } %.pn34.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE9push_backB8ne180100ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !104  ; 2 uses
  %i.h = load <2 x ptr>, ptr %1, align 8, !tbaa !111
  store <2 x ptr> %i.h, ptr %i.b, align 8, !tbaa !111
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit

_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit: ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = tail call noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit
  %.0 = phi ptr [ %i.k, %_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE22__construct_one_at_endB8ne180100IJRKS3_EEEvDpOT_.exit ], [ %i.l, %bb.d ]
  store ptr %.0, ptr %i.a, align 8, !tbaa !109
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6ResultINSt3__110shared_ptrI10SEIMessageEEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.110, align 1            ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZNSt3__17variantIJNS_10shared_ptrI10SEIMessageEE5ErrorEED2B8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %.sroa.idx3.i.i.i.i = icmp eq i32 %i.b, 1
  %.sroa.speculated.i.i.i.i = select i1 %.sroa.idx3.i.i.i.i, ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_, ptr @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_
  invoke void %.sroa.speculated.i.i.i.i(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i unwind label %bb.c, !inline_history !271

_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %_ZNSt3__17variantIJNS_10shared_ptrI10SEIMessageEE5ErrorEED2B8ne180100Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZNSt3__17variantIJNS_10shared_ptrI10SEIMessageEE5ErrorEED2B8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8ne180100IZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRSC_EEEDcOSD_DpOT0_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27remove_start_code_emulationPKhm(ptr dead_on_unwind noalias writable sret(%"class.std::__1::vector.15") align 8 initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100ERKh.exit
  %i.c = phi ptr [ null, %.lr.ph ], [ %storemerge, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100ERKh.exit ] ; 10 uses
  %.01762 = phi i64 [ 0, %.lr.ph ], [ %i.is, %_ZNSt3__16vectorIhNS_9allocatorIhEEE9push_backB8ne180100ERKh.exit ] ; 6 uses
  %i.d = add i64 %.01762, 2                       ; 5 uses
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.01762 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !65
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.f, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.m = load i8, ptr %i.l, align 1, !tbaa !65
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !68   ; 2 uses
  %i.p = icmp ult ptr %i.c, %i.o
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr %i.c, align 1, !tbaa !65
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %0, align 8, !tbaa !61     ; 2 uses
  %i.s = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %i.v = add i64 %i.u, 1                          ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.invoke, label %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i

_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i: ; preds = %bb.h
  %i.x = ptrtoint ptr %i.o to i64
  %i.y = sub i64 %i.x, %i.t                       ; 2 uses
  %.not.i.i.i = icmp ult i64 %i.y, 4611686018427387903
  %i.z = shl nuw nsw i64 %i.y, 1
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %i.v)
  %.0.i.i.i = select i1 %.not.i.i.i, i64 %.sroa.speculated.i.i.i, i64 9223372036854775807 ; 3 uses
  %i.aa = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.aa, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.0.i.i.i) #23
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %bb.i
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !60
  %.pre24.i.i = load ptr, ptr %0, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %.noexc21, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i
  %i.ac = phi ptr [ %.pre24.i.i, %.noexc21 ], [ %i.r, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ] ; 6 uses
  %i.ad = phi ptr [ %.pre.i.i, %.noexc21 ], [ %i.c, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ] ; 8 uses
  %storemerge.i.i.i = phi ptr [ %i.ab, %.noexc21 ], [ null, %_ZNKSt3__16vectorIhNS_9allocatorIhEEE11__recommendB8ne180100Em.exit.i.i ] ; 3 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %storemerge.i.i.i106 = ptrtoaddr ptr %storemerge.i.i.i to i64
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %i.u ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 %.0.i.i.i
  store i8 0, ptr %i.af, align 1, !tbaa !65
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.ac
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %iter.check122

iter.check122:                                    ; preds = %bb.j
  %i.ai = ptrtoaddr ptr %i.ac to i64              ; 3 uses
  %i.aj = sub i64 %i.ae, %i.ai                    ; 7 uses
  %min.iters.check108 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check108, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck105

vector.memcheck105:                               ; preds = %iter.check122
  %i.ak = add i64 %i.ae, %i.t
  %i.al = add i64 %storemerge.i.i.i106, %i.s
  %i.am = sub i64 %i.al, %i.ak
  %diff.check107 = icmp ugt i64 %i.am, -32
  br i1 %diff.check107, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.main.loop.iter.check109

vector.main.loop.iter.check109:                   ; preds = %vector.memcheck105
  %min.iters.check110 = icmp ult i64 %i.aj, 32
  br i1 %min.iters.check110, label %vec.epilog.ph126, label %vector.ph111

vector.ph111:                                     ; preds = %vector.main.loop.iter.check109
  %i.an = and i64 %i.aj, 24
  %n.vec112 = and i64 %i.aj, -32                  ; 4 uses
  %i.ao = sub i64 0, %n.vec112                    ; 2 uses
  %i.ap = getelementptr i8, ptr %i.af, i64 %i.ao  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ad, i64 %i.ao
  br label %vector.body113

vector.body113:                                   ; preds = %vector.ph111, %vector.body113
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next119, %vector.body113 ] ; 2 uses
  %i.ar = sub i64 0, %index114                    ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.af, i64 %i.ar ; 2 uses
  %next.gep116 = getelementptr i8, ptr %i.ad, i64 %i.ar ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %next.gep116, i64 -16
  %i.at = getelementptr inbounds i8, ptr %next.gep116, i64 -32
  %wide.load117 = load <16 x i8>, ptr %i.as, align 1, !tbaa !65, !noalias !309
  %wide.load118 = load <16 x i8>, ptr %i.at, align 1, !tbaa !65, !noalias !309
  %i.au = getelementptr inbounds i8, ptr %next.gep115, i64 -16
  %i.av = getelementptr inbounds i8, ptr %next.gep115, i64 -32
  store <16 x i8> %wide.load117, ptr %i.au, align 1, !tbaa !65, !noalias !309
  store <16 x i8> %wide.load118, ptr %i.av, align 1, !tbaa !65, !noalias !309
  %index.next119 = add nuw i64 %index114, 32      ; 2 uses
  %i.aw = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.aw, label %middle.block120, label %vector.body113, !llvm.loop !280

middle.block120:                                  ; preds = %vector.body113
  %cmp.n121 = icmp eq i64 %i.aj, %n.vec112
  br i1 %cmp.n121, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %vec.epilog.iter.check123

vec.epilog.iter.check123:                         ; preds = %middle.block120
  %min.epilog.iters.check125 = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check125, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vec.epilog.ph126, !prof !89

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check109, %vec.epilog.iter.check123
  %vec.epilog.resume.val127 = phi i64 [ %n.vec112, %vec.epilog.iter.check123 ], [ 0, %vector.main.loop.iter.check109 ]
  %n.vec128 = and i64 %i.aj, -8                   ; 3 uses
  %i.ax = sub i64 0, %n.vec128                    ; 2 uses
  %i.ay = getelementptr i8, ptr %i.af, i64 %i.ax  ; 2 uses
  %i.az = getelementptr i8, ptr %i.ad, i64 %i.ax
  br label %vec.epilog.vector.body129

vec.epilog.vector.body129:                        ; preds = %vec.epilog.vector.body129, %vec.epilog.ph126
  %index130 = phi i64 [ %vec.epilog.resume.val127, %vec.epilog.ph126 ], [ %index.next134, %vec.epilog.vector.body129 ] ; 2 uses
  %i.ba = sub i64 0, %index130                    ; 2 uses
  %next.gep131 = getelementptr i8, ptr %i.af, i64 %i.ba
  %next.gep132 = getelementptr i8, ptr %i.ad, i64 %i.ba
  %i.bb = getelementptr inbounds i8, ptr %next.gep132, i64 -8
  %wide.load133 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !65, !noalias !309
  %i.bc = getelementptr inbounds i8, ptr %next.gep131, i64 -8
  store <8 x i8> %wide.load133, ptr %i.bc, align 1, !tbaa !65, !noalias !309
  %index.next134 = add nuw i64 %index130, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.bd, label %vec.epilog.middle.block135, label %vec.epilog.vector.body129, !llvm.loop !281

vec.epilog.middle.block135:                       ; preds = %vec.epilog.vector.body129
  %cmp.n136 = icmp eq i64 %i.aj, %n.vec128
  br i1 %cmp.n136, label %_ZNSt3__114__split_bufferIhRNS_9allocatorIhEEE5clearB8ne180100Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %iter.check122, %vector.memcheck105, %vec.epilog.iter.check123, %vec.epilog.middle.block135
  %.ph173 = phi ptr [ %i.af, %iter.check122 ], [ %i.af, %vector.memcheck105 ], [ %i.ap, %vec.epilog.iter.check123 ], [ %i.ay, %vec.epilog.middle.block135 ] ; 2 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %iter.check122 ], [ %i.ad, %vector.memcheck105 ], [ %i.aq, %vec.epilog.iter.check123 ], [ %i.az, %vec.epilog.middle.block135 ] ; 3 uses
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph179 = ptrtoaddr ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph to i64 ; 2 uses
  %i.be = sub i64 %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph179, %i.ai
  %xtraiter180 = and i64 %i.be, 7                 ; 2 uses
  %lcmp.mod181.not = icmp eq i64 %xtraiter180, 0
  br i1 %lcmp.mod181.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %i.bf = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.ph173, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.2.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter182 = phi i64 [ %prol.iter182.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ]
  %i.bg = getelementptr inbounds i8, ptr %.sroa.2.05.i.i.i.i.i.i.i.i.i.prol, i64 -1 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !65, !noalias !309
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -1 ; 4 uses
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !65, !noalias !309
  %prol.iter182.next = add i64 %prol.iter182, 1   ; 2 uses
  %prol.iter182.cmp.not = icmp eq i64 %prol.iter182.next, %xtraiter180
  br i1 %prol.iter182.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !282
end_hunk_1
begin_hunk_2_@_ZNSt3__110shared_ptrI36SEIMessage_depth_representation_infoED2B8ne180100Ev:bb.a
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22, !inline_history !0
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22
  br label %_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit

_ZNSt3__119__shared_weak_count16__release_sharedB8ne180100Ev.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !64
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEEE, i64 16), ptr %0, align 8, !tbaa !64
  tail call void @_ZNSt3__119__shared_weak_countD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(96) %0) #22, !inline_history !344
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEE16__on_zero_sharedEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #22, !inline_history !345
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt3__119__shared_weak_count13__get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__120__shared_ptr_emplaceI36SEIMessage_depth_representation_infoNS_9allocatorIS1_EEE21__on_zero_shared_weakEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10SEIMessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN36SEIMessage_depth_representation_infoD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #24
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE21__push_back_slow_pathIRKS3_EEPS3_OT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = load ptr, ptr %0, align 8, !tbaa !348
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = ashr exact i64 %i.g, 4
  %i.i = add nsw i64 %i.h, 1                      ; 2 uses
  %i.j = icmp ugt i64 %i.i, 1152921504606846975
  br i1 %i.j, label %bb.b, label %_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #25
  unreachable

_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit: ; preds = %bb.a
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f                       ; 2 uses
  %.not.i = icmp ult i64 %i.m, 9223372036854775792
  %i.n = ashr exact i64 %i.m, 3
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.i)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 1152921504606846975 ; 4 uses
  %i.o = icmp ne i64 %.0.i, 0
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp ugt i64 %.0.i, 1152921504606846975
  br i1 %i.p, label %bb.c, label %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI10SEIMessageEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i

bb.c:                                             ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  tail call void @_ZSt28__throw_bad_array_new_lengthB8ne180100v() #25
  unreachable

_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI10SEIMessageEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i: ; preds = %_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE11__recommendB8ne180100Em.exit
  %i.q = shl nuw i64 %.0.i, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #23 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.g ; 4 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104  ; 2 uses
  %i.w = load <2 x ptr>, ptr %1, align 8, !tbaa !111
  store <2 x ptr> %i.w, ptr %i.s, align 8, !tbaa !111
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI10SEIMessageEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.y = atomicrmw add ptr %i.x, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit: ; preds = %bb.d, %_ZNSt3__119__allocate_at_leastB8ne180100INS_9allocatorINS_10shared_ptrI10SEIMessageEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS8_m.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !109 ; 3 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !348   ; 3 uses
  %.not12.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not12.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit, %.lr.ph.i.i
  %i.ac = phi ptr [ %i.ad, %.lr.ph.i.i ], [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ]
  %.sroa.18.013.i.i = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ]
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -16 ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.sroa.18.013.i.i, i64 -16 ; 4 uses
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !111
  store <2 x ptr> %i.af, ptr %i.ad, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  %.not.i.i = icmp eq ptr %i.ae, %i.ab
  br i1 %.not.i.i, label %.loopexit.loopexit, label %.lr.ph.i.i, !llvm.loop !346

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !110
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !110
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit
  %i.ag = phi ptr [ %i.aa, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %.pre11, %.loopexit.loopexit ] ; 2 uses
  %i.ah = phi ptr [ %i.ab, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %.pre, %.loopexit.loopexit ] ; 5 uses
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.s, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE9constructB8ne180100IS4_JRKS4_EvvEEvRS5_PT_DpOT0_.exit ], [ %i.ad, %.loopexit.loopexit ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !110
  store ptr %i.z, ptr %i.b, align 8, !tbaa !110
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !110
  store ptr %i.t, ptr %i.a, align 8, !tbaa !110
  %.not2.i.i.i.i = icmp eq ptr %i.ah, %i.ag
  br i1 %.not2.i.i.i.i, label %_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %i.aj = phi ptr [ %i.ak, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.ag, %.loopexit ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -16 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !104 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i64 -1 acq_rel, align 8
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.am, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #22, !inline_history !347
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.am) #22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i
  %.not.i.i.i.i5 = icmp eq ptr %i.ah, %i.ak
  br i1 %.not.i.i.i.i5, label %_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i.i

_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI10SEIMessageEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, %.loopexit
  %.not.i6 = icmp eq ptr %i.ah, null
  br i1 %.not.i6, label %_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i
  %i.at = ptrtoint ptr %i.ai to i64
  %i.au = ptrtoint ptr %i.ah to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.av) #24
  br label %_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEED2Ev.exit

_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEED2Ev.exit: ; preds = %_ZNSt3__114__split_bufferINS_10shared_ptrI10SEIMessageEERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i, %bb.g
  ret ptr %i.z
}

; Function Attrs: mustprogress noreturn uwtable
define linkonce_odr hidden void @_ZNKSt3__16vectorINS_10shared_ptrI10SEIMessageEENS_9allocatorIS3_EEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt3__120__throw_length_errorB8ne180100EPKc(ptr noundef nonnull @.str.34) #25
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw add ptr %i.c, i64 -1 acq_rel, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22, !inline_history !349
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #22
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm0ES6_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne180100IOZNS0_6__dtorINS0_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS0_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #24
  br label %_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit

_ZNSt3__18__invokeB8ne180100IZNS_16__variant_detail6__dtorINS1_8__traitsIJNS_10shared_ptrI10SEIMessageEE5ErrorEEELNS1_6_TraitE1EE9__destroyB8ne180100EvEUlRT_E_JRNS1_5__altILm1ES7_EEEEEDTclclsr3stdE7declvalISB_EEspclsr3stdE7declvalIT0_EEEEOSB_DpOSH_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3BoxD2Ev(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(153) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTV3Box, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !65
  %i.f = load i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, -2
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.g) #24
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !61   ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.i, ptr %i.j, align 8, !tbaa !60
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.o) #24
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !355  ; 5 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !356  ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not6.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.07.i.i.i.i = phi ptr [ %i.t, %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i ], [ %i.s, %bb.d ] ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -16 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.07.i.i.i.i, i64 -8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !359  ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = atomicrmw add ptr %i.w, i64 -1 acq_rel, align 8
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.f, label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #22, !inline_history !350
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v) #22
  br label %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.q, %i.t
  br i1 %.not.i.i.i.i, label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, label %.lr.ph.i.i.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorINS_10shared_ptrI3BoxEEEEE7destroyB8ne180100IS4_vvEEvRS5_PT_.exit.i.i.i.i
  %.pre1.i.i = load ptr, ptr %i.p, align 8, !tbaa !355
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i: ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i, %bb.d
  %i.ac = phi ptr [ %.pre1.i.i, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.loopexit.i.i ], [ %i.q, %bb.d ] ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !356
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !360
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ah) #24
  br label %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit

_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEE7__clearB8ne180100Ev.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV9BoxHeader, i64 16), ptr %0, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !61 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i, label %_ZN9BoxHeaderD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !68
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.aj to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ap) #24
  br label %_ZN9BoxHeaderD2Ev.exit

_ZN9BoxHeaderD2Ev.exit:                           ; preds = %_ZNSt3__16vectorINS_10shared_ptrI3BoxEENS_9allocatorIS3_EEED2B8ne180100Ev.exit, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__124__put_character_sequenceB8ne180100IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::locale", align 8  ; 7 uses
  %4 = alloca %"class.std::__1::basic_ostream<char>::sentry", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %4, align 8, !tbaa !362, !range !47, !noundef !48
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej.exit

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !64
  %i.d = getelementptr i8, ptr %i.c, i64 -24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 %i.e ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !363
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !86
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !80   ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  invoke void @_ZNKSt3__18ios_base6getlocEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::locale") align 8 %3, ptr noundef nonnull align 8 dereferenceable(148) %i.f)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.d
  %i.n = invoke noundef nonnull align 8 dereferenceable(25) ptr @_ZNKSt3__16locale9use_facetERNS0_2idE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(12) @_ZNSt3__15ctypeIcE2idE)
          to label %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i unwind label %bb.e ; 2 uses

_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i: ; preds = %.noexc
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = invoke noundef signext i8 %i.q(ptr noundef nonnull align 8 dereferenceable(25) %i.n, i8 noundef signext 32)
          to label %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i unwind label %bb.e, !inline_history !1

bb.e:                                             ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i, %.noexc
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %.body

_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i: ; preds = %_ZNSt3__19use_facetB8ne180100INS_5ctypeIcEEEERKT_RKNS_6localeE.exit.i.i
  call void @_ZNSt3__16localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.t = sext i8 %i.r to i32                      ; 2 uses
  store i32 %i.t, ptr %i.k, align 8, !tbaa !80
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i, %bb.c
  %i.u = phi i32 [ %i.t, %_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB8ne180100Ec.exit.i ], [ %i.l, %bb.c ]
  %i.v = trunc i32 %i.u to i8
  %i.w = and i32 %i.j, 176
  %i.x = icmp eq i32 %i.w, 32
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.z = select i1 %i.x, ptr %i.y, ptr %1
  %i.aa = invoke ptr @_ZNSt3__116__pad_and_outputB8ne180100IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_(ptr %i.h, ptr noundef %1, ptr noundef %i.z, ptr noundef %i.y, ptr noundef nonnull align 8 dereferenceable(136) %i.f, i8 noundef signext %i.v)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej.exit

bb.h:                                             ; preds = %bb.g
end_hunk_2
