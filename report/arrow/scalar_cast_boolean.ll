Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_boolean?download=true
inline.NumInlined: 719
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 31
begin_hunk_0
%"struct.std::_Vector_base<arrow::compute::InputType, std::allocator<arrow::compute::InputType>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::compute::InputType, std::allocator<arrow::compute::InputType>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::compute::InputType, std::allocator<arrow::compute::InputType>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator" = type { ptr }
%class.anon = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.67" = type { ptr }
%class.anon.68 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.69" = type { ptr }
%class.anon.70 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.71" = type { ptr }
%class.anon.72 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.73" = type { ptr }
%class.anon.74 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.75" = type { ptr }
%class.anon.76 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.77" = type { ptr }
%class.anon.78 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.79" = type { ptr }
%class.anon.80 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.81" = type { ptr }
%class.anon.82 = type { ptr, ptr, ptr }
%"struct.arrow::compute::internal::ArrayIterator.83" = type { ptr }
%class.anon.84 = type { ptr, ptr, ptr }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr", ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.86" }
%"struct.std::_Head_base.86" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful" = type { i8 }
%"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.108" = type { i8 }
%"class.arrow::internal::OptionalBitBlockCounter" = type { i8, i64, i64, %"class.arrow::internal::BitBlockCounter" }
%"class.arrow::internal::BitBlockCounter" = type { ptr, i64, i64 }
%"class.std::basic_string_view" = type { i64, ptr }
%"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.113" = type { i8 }

$_ZN5arrow18TypedChunkLocationIiEC5Eii = comdat any

$_ZNK5arrow18TypedChunkLocationIiEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIsEC5Ess = comdat any

$_ZNK5arrow18TypedChunkLocationIsEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIaEC5Eaa = comdat any

$_ZNK5arrow18TypedChunkLocationIaEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIhEC5Ehh = comdat any

$_ZNK5arrow18TypedChunkLocationIhEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationItEC5Ett = comdat any

$_ZNK5arrow18TypedChunkLocationItEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIjEC5Ejj = comdat any

$_ZNK5arrow18TypedChunkLocationIjEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationIlEC5Ell = comdat any

$_ZNK5arrow18TypedChunkLocationIlEeqES1_ = comdat any

$_ZN5arrow18TypedChunkLocationImEC5Emm = comdat any

$_ZNK5arrow18TypedChunkLocationImEeqES1_ = comdat any

$_ZN5arrow7compute10OutputTypeD2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow7compute9InputTypeD2Ev = comdat any

$_ZNSt6vectorIN5arrow7compute9InputTypeESaIS2_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow7compute8internal12CastFunctionELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZNSt18bad_variant_accessD0Ev = comdat any

$_ZNKSt18bad_variant_access4whatEv = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZNSt12_Destroy_auxILb0EE9__destroyIPN5arrow7compute9InputTypeEEEvT_S6_ = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEEvPT_DpOT0_ = comdat any

$_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv = comdat any

$_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE = comdat any

$_ZN5arrow6Status7InvalidIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_DpOT_ = comdat any

$_ZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ = comdat any

$_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE = comdat any

$_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

$_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type = comdat any

$_ZGVZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type = comdat any

@.str = private unnamed_addr constant [13 x i8] c"cast_boolean\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN5arrow8bit_utilL8kBitmaskE = internal unnamed_addr constant [8 x i8] c"\01\02\04\08\10 @\80", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"This kernel is malformed\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [103 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to parse value: \00", align 1
@_ZZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type = linkonce_odr global %"class.arrow::BooleanType" zeroinitializer, comdat, align 8
@_ZGVZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeEE4type = linkonce_odr global i64 0, comdat, align 8
@__dso_handle = external hidden global i8
@_ZTVN5arrow11BooleanTypeE = external unnamed_addr constant { [12 x ptr] }, align 8
@switch.table._ZN5arrow7compute8internal15GetBooleanCastsEv = private unnamed_addr constant [11 x ptr] [ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE], align 8
@switch.table._ZN5arrow7compute8internal15GetBooleanCastsEv.10 = private unnamed_addr constant [23 x ptr] [ptr @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE, ptr @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE], align 8

@_ZN5arrow18TypedChunkLocationIiEC1Eii = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIiEC2Eii
@_ZN5arrow18TypedChunkLocationIsEC1Ess = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationIsEC2Ess
@_ZN5arrow18TypedChunkLocationIaEC1Eaa = weak_odr unnamed_addr alias void (ptr, i8, i8), ptr @_ZN5arrow18TypedChunkLocationIaEC2Eaa
@_ZN5arrow18TypedChunkLocationIhEC1Ehh = weak_odr unnamed_addr alias void (ptr, i8, i8), ptr @_ZN5arrow18TypedChunkLocationIhEC2Ehh
@_ZN5arrow18TypedChunkLocationItEC1Ett = weak_odr unnamed_addr alias void (ptr, i16, i16), ptr @_ZN5arrow18TypedChunkLocationItEC2Ett
@_ZN5arrow18TypedChunkLocationIjEC1Ejj = weak_odr unnamed_addr alias void (ptr, i32, i32), ptr @_ZN5arrow18TypedChunkLocationIjEC2Ejj
@_ZN5arrow18TypedChunkLocationIlEC1Ell = weak_odr unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5arrow18TypedChunkLocationIlEC2Ell
@_ZN5arrow18TypedChunkLocationImEC1Emm = weak_odr unnamed_addr alias void (ptr, i64, i64), ptr @_ZN5arrow18TypedChunkLocationImEC2Emm

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIiEC2Eii(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIiEC5Eii) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !158
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIiEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIsEC2Ess(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef signext %1, i16 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIsEC5Ess) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !159
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIsEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !13
  %i.b = sext i16 %i.a to i32
  %sext = shl i32 %1, 16
  %i.c = ashr exact i32 %sext, 16
  %i.d = icmp eq i32 %i.c, %i.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %i.g = sext i16 %i.f to i32
  %i.h = ashr i32 %1, 16
  %i.i = icmp eq i32 %i.h, %i.g
  %i.j = select i1 %i.d, i1 %i.i, i1 false
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIaEC2Eaa(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef signext %1, i8 noundef signext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIaEC5Eaa) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIaEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %i.a = load i8, ptr %0, align 1, !tbaa !15
  %i.b = sext i8 %i.a to i32
  %sext = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.c = ashr exact i32 %sext, 24
  %i.d = icmp eq i32 %i.c, %i.b
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = sext i8 %i.f to i32
  %sext1 = shl nuw i32 %.sroa.2.0.extract.trunc, 24
  %i.h = ashr exact i32 %sext1, 24
  %i.i = icmp eq i32 %i.h, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIhEC2Ehh(ptr noundef nonnull align 1 dereferenceable(2) %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIhEC5Ehh) align 2 {
bb.a:
  store i8 %1, ptr %0, align 1, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %2, ptr %i.a, align 1, !tbaa !160
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIhEeqES1_(ptr noundef nonnull align 1 dereferenceable(2) %0, i16 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !18
  %i.b = trunc i16 %1 to i8
  %i.c = icmp eq i8 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i16 %1, 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = zext i8 %i.e to i16
  %i.g = icmp eq i16 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationItEC2Ett(ptr noundef nonnull align 2 dereferenceable(4) %0, i16 noundef zeroext %1, i16 noundef zeroext %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationItEC5Ett) align 2 {
bb.a:
  store i16 %1, ptr %0, align 2, !tbaa !20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %2, ptr %i.a, align 2, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationItEeqES1_(ptr noundef nonnull align 2 dereferenceable(4) %0, i32 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !20
  %i.b = trunc i32 %1 to i16
  %i.c = icmp eq i16 %i.a, %i.b
  %.sroa.2.0.extract.shift = lshr i32 %1, 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 2
  %i.f = zext i16 %i.e to i32
  %i.g = icmp eq i32 %.sroa.2.0.extract.shift, %i.f
  %i.h = select i1 %i.c, i1 %i.g, i1 false
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIjEC2Ejj(ptr noundef nonnull align 4 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIjEC5Ejj) align 2 {
bb.a:
  store i32 %1, ptr %0, align 4, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %2, ptr %i.a, align 4, !tbaa !162
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr noundef zeroext i1 @_ZNK5arrow18TypedChunkLocationIjEeqES1_(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %1 to i32
  %i.a = load i32, ptr %0, align 4, !tbaa !22
  %i.b = icmp eq i32 %i.a, %.sroa.0.0.extract.trunc
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %.sroa.2.0.extract.trunc = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, %.sroa.2.0.extract.trunc
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZN5arrow18TypedChunkLocationIlEC2Ell(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat($_ZN5arrow18TypedChunkLocationIlEC5Ell) align 2 {
bb.a:
  store i64 %1, ptr %0, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.a, align 8, !tbaa !163
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  store ptr %i.h, ptr %5, align 8, !tbaa !136
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !98
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !99

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !266
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94, !noalias !267
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !91, !noalias !267
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109, !noalias !267
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !66
  store ptr %i.u, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !77, !range !78, !noundef !79
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.83", align 8 ; 5 uses
  %6 = alloca %class.anon.84, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !81
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !66, !alias.scope !272
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !140
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !98
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !99

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.k, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !105
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !94, !noalias !274
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !91, !noalias !274
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109, !noalias !274
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !66
  store ptr %i.u, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !66     ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !67

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !77, !range !78, !noundef !79
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !96
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !96
  %i.n = load i8, ptr %i.l, align 1, !tbaa !40
  %.not46 = icmp eq i8 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !275

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.f, %bb.c ], [ %i.p, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.v, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.x = lshr i64 %.1, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ai, %.preheader48 ] ; 2 uses
  %.13955 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.ba, %.preheader48 ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279, !nonnull !79, !align !142 ; 9 uses
  %.promoted53 = load ptr, ptr %i.z, align 8, !tbaa !96 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !96
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ai = add nsw i64 %.in, -1
  %i.aj = load i8, ptr %.promoted53, align 1, !tbaa !40
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !96
  %i.ak = load i8, ptr %i.aa, align 1, !tbaa !40
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !96
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !40
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !96
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !40
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !96
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !40
  store ptr %i.af, ptr %i.z, align 8, !tbaa !96
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !40
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !96
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !40
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !96
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ar = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 2
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 3
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 4
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 5
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 6
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 7
  %i.az = icmp ne <8 x i8> %i.ay, zeroinitializer
  %i.ba = getelementptr inbounds nuw i8, ptr %.13955, i64 1 ; 2 uses
  store <8 x i1> %i.az, ptr %.13955, align 1, !tbaa !40
  %i.bb = icmp samesign ugt i64 %.in, 1
  br i1 %i.bb, label %.preheader48, label %._crit_edge56, !llvm.loop !276

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.ba, %.preheader48 ]
  %i.bc = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.bc, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !279, !nonnull !79, !align !142 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bf, align 8, !tbaa !96 ; 2 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bg = icmp eq i64 %i.bc, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %i.bh = phi ptr [ %.promoted64, %.lr.ph61.new ], [ %i.bn, %bb.f ] ; 3 uses
  %.13759 = phi i8 [ 1, %.lr.ph61.new ], [ %i.br, %bb.f ] ; 3 uses
  %.14158 = phi i8 [ 0, %.lr.ph61.new ], [ %i.bq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !96
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !40
  %.not47 = icmp eq i8 %i.bj, 0
  %i.bk = select i1 %.not47, i8 0, i8 %.13759
  %i.bl = or i8 %i.bk, %.14158
  %i.bm = shl nuw i8 %.13759, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !96
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !40
  %.not47.1 = icmp eq i8 %i.bo, 0
  %i.bp = select i1 %.not47.1, i8 0, i8 %i.bm
  %i.bq = or i8 %i.bp, %i.bl                      ; 3 uses
  %i.br = shl nuw i8 %.13759, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !277

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi ptr [ %.promoted64, %.lr.ph61 ], [ %i.bn, %._crit_edge62.loopexit.unr-lcssa ] ; 2 uses
  %.13759.epil.init = phi i8 [ 1, %.lr.ph61 ], [ %i.br, %._crit_edge62.loopexit.unr-lcssa ]
  %.14158.epil.init = phi i8 [ 0, %.lr.ph61 ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bs = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.bs, ptr %i.bf, align 8, !tbaa !96
  %i.bt = load i8, ptr %.epil.init, align 1, !tbaa !40
  %.not47.epil = icmp eq i8 %i.bt, 0
  %i.bu = select i1 %.not47.epil, i8 0, i8 %.13759.epil.init
  %i.bv = or i8 %i.bu, %.14158.epil.init
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %.preheader
  %.141.lcssa = phi i8 [ 0, %.preheader ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ], [ %i.bv, %.epil.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge56, %._crit_edge62, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !102
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !284, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !111
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !111
  %i.n = load i8, ptr %i.l, align 1, !tbaa !40
  %.not46 = icmp eq i8 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !280

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.f, %bb.c ], [ %i.p, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.v, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.x = lshr i64 %.1, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ai, %.preheader48 ] ; 2 uses
  %.13955 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.ba, %.preheader48 ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !284, !nonnull !79, !align !142 ; 9 uses
  %.promoted53 = load ptr, ptr %i.z, align 8, !tbaa !111 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !111
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ai = add nsw i64 %.in, -1
  %i.aj = load i8, ptr %.promoted53, align 1, !tbaa !40
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !111
  %i.ak = load i8, ptr %i.aa, align 1, !tbaa !40
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !111
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !40
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !111
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !40
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !111
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !40
  store ptr %i.af, ptr %i.z, align 8, !tbaa !111
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !40
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !111
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !40
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !111
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.ar = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 2
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 3
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 4
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 5
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 6
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 7
  %i.az = icmp ne <8 x i8> %i.ay, zeroinitializer
  %i.ba = getelementptr inbounds nuw i8, ptr %.13955, i64 1 ; 2 uses
  store <8 x i1> %i.az, ptr %.13955, align 1, !tbaa !40
  %i.bb = icmp samesign ugt i64 %.in, 1
  br i1 %i.bb, label %.preheader48, label %._crit_edge56, !llvm.loop !281

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.ba, %.preheader48 ]
  %i.bc = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.bc, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !284, !nonnull !79, !align !142 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bf, align 8, !tbaa !111 ; 2 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bg = icmp eq i64 %i.bc, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %i.bh = phi ptr [ %.promoted64, %.lr.ph61.new ], [ %i.bn, %bb.f ] ; 3 uses
  %.13759 = phi i8 [ 1, %.lr.ph61.new ], [ %i.br, %bb.f ] ; 3 uses
  %.14158 = phi i8 [ 0, %.lr.ph61.new ], [ %i.bq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !111
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !40
  %.not47 = icmp eq i8 %i.bj, 0
  %i.bk = select i1 %.not47, i8 0, i8 %.13759
  %i.bl = or i8 %i.bk, %.14158
  %i.bm = shl nuw i8 %.13759, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !111
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !40
  %.not47.1 = icmp eq i8 %i.bo, 0
  %i.bp = select i1 %.not47.1, i8 0, i8 %i.bm
  %i.bq = or i8 %i.bp, %i.bl                      ; 3 uses
  %i.br = shl nuw i8 %.13759, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !282

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi ptr [ %.promoted64, %.lr.ph61 ], [ %i.bn, %._crit_edge62.loopexit.unr-lcssa ] ; 2 uses
  %.13759.epil.init = phi i8 [ 1, %.lr.ph61 ], [ %i.br, %._crit_edge62.loopexit.unr-lcssa ]
  %.14158.epil.init = phi i8 [ 0, %.lr.ph61 ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bs = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.bs, ptr %i.bf, align 8, !tbaa !111
  %i.bt = load i8, ptr %.epil.init, align 1, !tbaa !40
  %.not47.epil = icmp eq i8 %i.bt, 0
  %i.bu = select i1 %.not47.epil, i8 0, i8 %.13759.epil.init
  %i.bv = or i8 %i.bu, %.14158.epil.init
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %.preheader
  %.141.lcssa = phi i8 [ 0, %.preheader ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ], [ %i.bv, %.epil.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge56, %._crit_edge62, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !290, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !115
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.l, align 2, !tbaa !144
  %.not46 = icmp eq i16 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !285

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !115
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !290, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !115 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 16
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !115
  %i.ad = load <8 x i16>, ptr %.promoted53.prol, align 2, !tbaa !144
  %i.ae = icmp ne <8 x i16> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !40
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !290, !nonnull !79, !align !142 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !115 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !115
  %i.aj = load <8 x i16>, ptr %.promoted53, align 2, !tbaa !144
  %i.ak = icmp ne <8 x i16> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !290, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !115 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 16
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !115
  %i.ap = load <8 x i16>, ptr %.promoted53.1, align 2, !tbaa !144
  %i.aq = icmp ne <8 x i16> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !40
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !286

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !290, !nonnull !79, !align !142 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !115 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !144
  %.not47 = icmp eq i16 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bf = load i16, ptr %i.az, align 2, !tbaa !144
  %.not47.1 = icmp eq i16 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.bk = load i16, ptr %i.be, align 2, !tbaa !144
  %.not47.2 = icmp eq i16 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bp = load i16, ptr %i.bj, align 2, !tbaa !144
  %.not47.3 = icmp eq i16 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !287

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i16, ptr %i.bt, align 2, !tbaa !144
  %.not47.epil = icmp eq i16 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !288

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !115
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !296, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !118
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.l, align 2, !tbaa !144
  %.not46 = icmp eq i16 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !291

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !118
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !296, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !118 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 16
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !118
  %i.ad = load <8 x i16>, ptr %.promoted53.prol, align 2, !tbaa !144
  %i.ae = icmp ne <8 x i16> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !40
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !296, !nonnull !79, !align !142 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !118 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !118
  %i.aj = load <8 x i16>, ptr %.promoted53, align 2, !tbaa !144
  %i.ak = icmp ne <8 x i16> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !296, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !118 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 16
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !118
  %i.ap = load <8 x i16>, ptr %.promoted53.1, align 2, !tbaa !144
  %i.aq = icmp ne <8 x i16> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !40
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !292

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !296, !nonnull !79, !align !142 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !118 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !144
  %.not47 = icmp eq i16 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bf = load i16, ptr %i.az, align 2, !tbaa !144
  %.not47.1 = icmp eq i16 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.bk = load i16, ptr %i.be, align 2, !tbaa !144
  %.not47.2 = icmp eq i16 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bp = load i16, ptr %i.bj, align 2, !tbaa !144
  %.not47.3 = icmp eq i16 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !293

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i16, ptr %i.bt, align 2, !tbaa !144
  %.not47.epil = icmp eq i16 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !294

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !118
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !302, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !122
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !8
  %.not46 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !297

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !122
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !302, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !122 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 32
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !122
  %i.ad = load <8 x i32>, ptr %.promoted53.prol, align 4, !tbaa !8
  %i.ae = icmp ne <8 x i32> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !40
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !302, !nonnull !79, !align !142 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !122 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !122
  %i.aj = load <8 x i32>, ptr %.promoted53, align 4, !tbaa !8
  %i.ak = icmp ne <8 x i32> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !302, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !122 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 32
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !122
  %i.ap = load <8 x i32>, ptr %.promoted53.1, align 4, !tbaa !8
  %i.aq = icmp ne <8 x i32> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !40
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !298

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !302, !nonnull !79, !align !142 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !122 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !8
  %.not47 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !8
  %.not47.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !8
  %.not47.2 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !8
  %.not47.3 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !299

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !8
  %.not47.epil = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !300

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 2
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !122
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !308, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !125
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !8
  %.not46 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !303

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !125
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !308, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !125 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 32
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !125
  %i.ad = load <8 x i32>, ptr %.promoted53.prol, align 4, !tbaa !8
  %i.ae = icmp ne <8 x i32> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !40
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !308, !nonnull !79, !align !142 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !125 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !125
  %i.aj = load <8 x i32>, ptr %.promoted53, align 4, !tbaa !8
  %i.ak = icmp ne <8 x i32> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !308, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !125 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 32
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !125
  %i.ap = load <8 x i32>, ptr %.promoted53.1, align 4, !tbaa !8
  %i.aq = icmp ne <8 x i32> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !40
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !304

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !308, !nonnull !79, !align !142 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !125 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !8
  %.not47 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !8
  %.not47.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !8
  %.not47.2 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !8
  %.not47.3 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !305

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !8
  %.not47.epil = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !306

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 2
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !125
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !314, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !129
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !146
  %.not46 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !309

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !314, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !129 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 64
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !129
  %i.ad = load <8 x i64>, ptr %.promoted53.prol, align 8, !tbaa !146
  %i.ae = icmp ne <8 x i64> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !40
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !314, !nonnull !79, !align !142 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !129 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !129
  %i.aj = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !146
  %i.ak = icmp ne <8 x i64> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !314, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !129 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 64
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !129
  %i.ap = load <8 x i64>, ptr %.promoted53.1, align 8, !tbaa !146
  %i.aq = icmp ne <8 x i64> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !40
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !310

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !314, !nonnull !79, !align !142 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !129 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !146
  %.not47 = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !146
  %.not47.1 = icmp eq i64 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !146
  %.not47.2 = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !146
  %.not47.3 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !311

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !146
  %.not47.epil = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !312

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !129
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !320, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !132
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %i.i, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.f, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !146
  %.not46 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !315

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !132
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !132 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 64
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !132
  %i.ad = load <8 x i64>, ptr %.promoted53.prol, align 8, !tbaa !146
  %i.ae = icmp ne <8 x i64> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !40
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !79, !align !142 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !132 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !132
  %i.aj = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !146
  %i.ak = icmp ne <8 x i64> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !40
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !79, !align !142 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !132 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 64
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !132
  %i.ap = load <8 x i64>, ptr %.promoted53.1, align 8, !tbaa !146
  %i.aq = icmp ne <8 x i64> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !40
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !316

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !320, !nonnull !79, !align !142 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !132 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !146
  %.not47 = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !146
  %.not47.1 = icmp eq i64 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !146
  %.not47.2 = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !146
  %.not47.3 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !317

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !146
  %.not47.epil = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !318

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !132
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !326, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !136
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03549 = phi i64 [ %2, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03648 = phi i8 [ %i.i, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.04047 = phi i8 [ %i.f, %.lr.ph ], [ %i.q, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !328
  %i.o = fcmp une float %i.n, 0.000000e+00
  %i.p = select i1 %i.o, i8 %.03648, i8 0
  %i.q = or i8 %i.p, %.04047                      ; 2 uses
  %i.r = shl i8 %.03648, 1                        ; 2 uses
  %i.s = add nsw i64 %.03549, -1                  ; 2 uses
  %i.t = icmp ne i8 %i.r, 0
  %i.u = icmp samesign ugt i64 %.03549, 1
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.d, label %._crit_edge, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !136
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.q, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %2, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.w, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.x = icmp sgt i64 %.1, 7
  br i1 %i.x, label %.preheader46.lr.ph, label %._crit_edge55

.preheader46.lr.ph:                               ; preds = %bb.f
  %i.y = lshr i64 %.1, 3                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %.preheader46.prol.loopexit, label %.preheader46.prol

.preheader46.prol:                                ; preds = %.preheader46.lr.ph
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !326, !nonnull !79, !align !142 ; 2 uses
  %.promoted51.prol = load ptr, ptr %i.ab, align 8, !tbaa !136 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted51.prol, i64 32
  %i.ad = add nsw i64 %i.y, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !136
  %i.ae = load <8 x float>, ptr %.promoted51.prol, align 4, !tbaa !328
  %i.af = fcmp une <8 x float> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.038, align 1, !tbaa !40
  br label %.preheader46.prol.loopexit

.preheader46.prol.loopexit:                       ; preds = %.preheader46.prol, %.preheader46.lr.ph
  %.in.unr = phi i64 [ %i.y, %.preheader46.lr.ph ], [ %i.ad, %.preheader46.prol ]
  %.13954.unr = phi ptr [ %.038, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %.lcssa82.unr = phi ptr [ poison, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %i.ah = icmp eq i64 %i.y, 1
  br i1 %i.ah, label %._crit_edge55, label %.preheader46

.preheader46:                                     ; preds = %.preheader46.prol.loopexit, %.preheader46
  %.in = phi i64 [ %i.ap, %.preheader46 ], [ %.in.unr, %.preheader46.prol.loopexit ] ; 2 uses
  %.13954 = phi ptr [ %i.as, %.preheader46 ], [ %.13954.unr, %.preheader46.prol.loopexit ] ; 3 uses
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !326, !nonnull !79, !align !142 ; 2 uses
  %.promoted51 = load ptr, ptr %i.ai, align 8, !tbaa !136 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted51, i64 32
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !136
  %i.ak = load <8 x float>, ptr %.promoted51, align 4, !tbaa !328
  %i.al = fcmp une <8 x float> %i.ak, zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.13954, i64 1
  store <8 x i1> %i.al, ptr %.13954, align 1, !tbaa !40
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !326, !nonnull !79, !align !142 ; 2 uses
  %.promoted51.1 = load ptr, ptr %i.an, align 8, !tbaa !136 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted51.1, i64 32
  %i.ap = add nsw i64 %.in, -2
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !136
  %i.aq = load <8 x float>, ptr %.promoted51.1, align 4, !tbaa !328
  %i.ar = fcmp une <8 x float> %i.aq, zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %.13954, i64 2 ; 2 uses
  store <8 x i1> %i.ar, ptr %i.am, align 1, !tbaa !40
  %i.at = icmp sgt i64 %.in, 2
  br i1 %i.at, label %.preheader46, label %._crit_edge55, !llvm.loop !322

._crit_edge55:                                    ; preds = %.preheader46.prol.loopexit, %.preheader46, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa82.unr, %.preheader46.prol.loopexit ], [ %i.as, %.preheader46 ]
  %i.au = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.au, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph60, label %bb.i

.lr.ph60:                                         ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !326, !nonnull !79, !align !142 ; 2 uses
  %.promoted63 = load ptr, ptr %i.ax, align 8, !tbaa !136 ; 3 uses
  %xtraiter86 = and i64 %i.au, 3                  ; 3 uses
  %i.ay = icmp ult i64 %i.au, 4
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.au, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %i.az = phi ptr [ %.promoted63, %.lr.ph60.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.bx, %bb.g ] ; 5 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.bw, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.az, align 4, !tbaa !328
  %i.bc = fcmp une float %i.bb, 0.000000e+00
  %i.bd = select i1 %i.bc, i8 %.13758, i8 0
  %i.be = or i8 %i.bd, %.14157
  %i.bf = shl nuw i8 %.13758, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !328
  %i.bi = fcmp une float %i.bh, 0.000000e+00
  %i.bj = select i1 %i.bi, i8 %i.bf, i8 0
  %i.bk = or i8 %i.bj, %i.be
  %i.bl = shl nuw i8 %.13758, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bn = load float, ptr %i.bg, align 4, !tbaa !328
  %i.bo = fcmp une float %i.bn, 0.000000e+00
  %i.bp = select i1 %i.bo, i8 %i.bl, i8 0
  %i.bq = or i8 %i.bp, %i.bk
  %i.br = shl nuw i8 %.13758, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bt = load float, ptr %i.bm, align 4, !tbaa !328
  %i.bu = fcmp une float %i.bt, 0.000000e+00
  %i.bv = select i1 %i.bu, i8 %i.br, i8 0
  %i.bw = or i8 %i.bv, %i.bq                      ; 3 uses
  %i.bx = shl nuw i8 %.13758, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge61.unr-lcssa, label %bb.g, !llvm.loop !323

._crit_edge61.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.unr-lcssa, %.lr.ph60
  %.epil.init = phi ptr [ %.promoted63, %.lr.ph60 ], [ %i.bs, %._crit_edge61.unr-lcssa ]
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.bx, %._crit_edge61.unr-lcssa ]
  %.14157.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.bw, %._crit_edge61.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter86, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.by = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bz, %bb.h ] ; 2 uses
  %.13758.epil = phi i8 [ %.13758.epil.init, %.epil.preheader ], [ %i.ce, %bb.h ] ; 2 uses
  %.14157.epil = phi i8 [ %.14157.epil.init, %.epil.preheader ], [ %i.cd, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load float, ptr %i.by, align 4, !tbaa !328
  %i.cb = fcmp une float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, i8 %.13758.epil, i8 0
  %i.cd = or i8 %i.cc, %.14157.epil               ; 2 uses
  %i.ce = shl nuw i8 %.13758.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter86
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.h, !llvm.loop !324

._crit_edge61:                                    ; preds = %bb.h, %._crit_edge61.unr-lcssa
  %.lcssa = phi i8 [ %i.bw, %._crit_edge61.unr-lcssa ], [ %i.cd, %bb.h ]
  %i.cf = shl nuw nsw i64 %i.au, 2
  %scevgep = getelementptr i8, ptr %.promoted63, i64 %i.cf
  store ptr %scevgep, ptr %i.ax, align 8, !tbaa !136
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge61 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 3 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !40
  %4 = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %4
  %5 = xor i8 %notmask, -1
  %i.f = and i8 %i.e, %5                          ; 2 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %i.i = load i8, ptr %i.h, align 1, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !334, !nonnull !79, !align !142 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !140
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03549 = phi i64 [ %2, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03648 = phi i8 [ %i.i, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.04047 = phi i8 [ %i.f, %.lr.ph ], [ %i.q, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !336
  %i.o = fcmp une double %i.n, 0.000000e+00
  %i.p = select i1 %i.o, i8 %.03648, i8 0
  %i.q = or i8 %i.p, %.04047                      ; 2 uses
  %i.r = shl i8 %.03648, 1                        ; 2 uses
  %i.s = add nsw i64 %.03549, -1                  ; 2 uses
  %i.t = icmp ne i8 %i.r, 0
  %i.u = icmp samesign ugt i64 %.03549, 1
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.d, label %._crit_edge, !llvm.loop !329

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !140
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.q, %._crit_edge ], [ %i.f, %bb.c ]
  %.035.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %2, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.w, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.x = icmp sgt i64 %.1, 7
  br i1 %i.x, label %.preheader46.lr.ph, label %._crit_edge55

.preheader46.lr.ph:                               ; preds = %bb.f
  %i.y = lshr i64 %.1, 3                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %.preheader46.prol.loopexit, label %.preheader46.prol

.preheader46.prol:                                ; preds = %.preheader46.lr.ph
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !334, !nonnull !79, !align !142 ; 2 uses
  %.promoted51.prol = load ptr, ptr %i.ab, align 8, !tbaa !140 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted51.prol, i64 64
  %i.ad = add nsw i64 %i.y, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !140
  %i.ae = load <8 x double>, ptr %.promoted51.prol, align 8, !tbaa !336
  %i.af = fcmp une <8 x double> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.038, align 1, !tbaa !40
  br label %.preheader46.prol.loopexit

.preheader46.prol.loopexit:                       ; preds = %.preheader46.prol, %.preheader46.lr.ph
  %.in.unr = phi i64 [ %i.y, %.preheader46.lr.ph ], [ %i.ad, %.preheader46.prol ]
  %.13954.unr = phi ptr [ %.038, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %.lcssa82.unr = phi ptr [ poison, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %i.ah = icmp eq i64 %i.y, 1
  br i1 %i.ah, label %._crit_edge55, label %.preheader46

.preheader46:                                     ; preds = %.preheader46.prol.loopexit, %.preheader46
  %.in = phi i64 [ %i.ap, %.preheader46 ], [ %.in.unr, %.preheader46.prol.loopexit ] ; 2 uses
  %.13954 = phi ptr [ %i.as, %.preheader46 ], [ %.13954.unr, %.preheader46.prol.loopexit ] ; 3 uses
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !334, !nonnull !79, !align !142 ; 2 uses
  %.promoted51 = load ptr, ptr %i.ai, align 8, !tbaa !140 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted51, i64 64
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !140
  %i.ak = load <8 x double>, ptr %.promoted51, align 8, !tbaa !336
  %i.al = fcmp une <8 x double> %i.ak, zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.13954, i64 1
  store <8 x i1> %i.al, ptr %.13954, align 1, !tbaa !40
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !334, !nonnull !79, !align !142 ; 2 uses
  %.promoted51.1 = load ptr, ptr %i.an, align 8, !tbaa !140 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted51.1, i64 64
  %i.ap = add nsw i64 %.in, -2
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !140
  %i.aq = load <8 x double>, ptr %.promoted51.1, align 8, !tbaa !336
  %i.ar = fcmp une <8 x double> %i.aq, zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %.13954, i64 2 ; 2 uses
  store <8 x i1> %i.ar, ptr %i.am, align 1, !tbaa !40
  %i.at = icmp sgt i64 %.in, 2
  br i1 %i.at, label %.preheader46, label %._crit_edge55, !llvm.loop !330

._crit_edge55:                                    ; preds = %.preheader46.prol.loopexit, %.preheader46, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa82.unr, %.preheader46.prol.loopexit ], [ %i.as, %.preheader46 ]
  %i.au = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.au, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph60, label %bb.i

.lr.ph60:                                         ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !334, !nonnull !79, !align !142 ; 2 uses
  %.promoted63 = load ptr, ptr %i.ax, align 8, !tbaa !140 ; 3 uses
  %xtraiter86 = and i64 %i.au, 3                  ; 3 uses
  %i.ay = icmp ult i64 %i.au, 4
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.au, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %i.az = phi ptr [ %.promoted63, %.lr.ph60.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.bx, %bb.g ] ; 5 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.bw, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.az, align 8, !tbaa !336
  %i.bc = fcmp une double %i.bb, 0.000000e+00
  %i.bd = select i1 %i.bc, i8 %.13758, i8 0
  %i.be = or i8 %i.bd, %.14157
  %i.bf = shl nuw i8 %.13758, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load double, ptr %i.ba, align 8, !tbaa !336
  %i.bi = fcmp une double %i.bh, 0.000000e+00
  %i.bj = select i1 %i.bi, i8 %i.bf, i8 0
  %i.bk = or i8 %i.bj, %i.be
  %i.bl = shl nuw i8 %.13758, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bn = load double, ptr %i.bg, align 8, !tbaa !336
  %i.bo = fcmp une double %i.bn, 0.000000e+00
  %i.bp = select i1 %i.bo, i8 %i.bl, i8 0
  %i.bq = or i8 %i.bp, %i.bk
  %i.br = shl nuw i8 %.13758, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bt = load double, ptr %i.bm, align 8, !tbaa !336
  %i.bu = fcmp une double %i.bt, 0.000000e+00
  %i.bv = select i1 %i.bu, i8 %i.br, i8 0
  %i.bw = or i8 %i.bv, %i.bq                      ; 3 uses
  %i.bx = shl nuw i8 %.13758, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge61.unr-lcssa, label %bb.g, !llvm.loop !331

._crit_edge61.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.unr-lcssa, %.lr.ph60
  %.epil.init = phi ptr [ %.promoted63, %.lr.ph60 ], [ %i.bs, %._crit_edge61.unr-lcssa ]
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.bx, %._crit_edge61.unr-lcssa ]
  %.14157.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.bw, %._crit_edge61.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter86, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.by = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bz, %bb.h ] ; 2 uses
  %.13758.epil = phi i8 [ %.13758.epil.init, %.epil.preheader ], [ %i.ce, %bb.h ] ; 2 uses
  %.14157.epil = phi i8 [ %.14157.epil.init, %.epil.preheader ], [ %i.cd, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load double, ptr %i.by, align 8, !tbaa !336
  %i.cb = fcmp une double %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, i8 %.13758.epil, i8 0
  %i.cd = or i8 %i.cc, %.14157.epil               ; 2 uses
  %i.ce = shl nuw i8 %.13758.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter86
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.h, !llvm.loop !332

._crit_edge61:                                    ; preds = %bb.h, %._crit_edge61.unr-lcssa
  %.lcssa = phi i8 [ %i.bw, %._crit_edge61.unr-lcssa ], [ %i.cd, %bb.h ]
  %i.cf = shl nuw nsw i64 %i.au, 3
  %scevgep = getelementptr i8, ptr %.promoted63, i64 %i.cf
  store ptr %scevgep, ptr %i.ax, align 8, !tbaa !140
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge61 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !339
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !339
end_hunk_1
begin_hunk_2_@_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv:_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 272) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7compute8internal12CastFunctionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !346  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !40
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow7compute8internal12CastFunctionEJRA13_KcNS0_4Type4typeEEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(13) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !347
  %i.b = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 8 uses
  %i.c = icmp ugt i64 %i.b, 15
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.b, 0
  br i1 %i.d, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #24
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = add nuw i64 %i.b, 1                      ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %.noexc11.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !43

.noexc11.i:                                       ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #24
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.c
  %i.g = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #21 ; 2 uses
  store ptr %i.g, ptr %3, align 8, !tbaa !157
  store i64 %i.b, ptr %i.a, align 8, !tbaa !40
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.a
  %i.h = phi ptr [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !40
  store i8 %i.i, ptr %i.h, align 1, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.b, ptr %i.j, align 8, !tbaa !348
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b
  store i8 0, ptr %i.k, align 1, !tbaa !40
  %i.l = load i32, ptr %2, align 4, !tbaa !29
  invoke void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252) %0, ptr noundef nonnull %3, i32 noundef %i.l)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %3, align 8, !tbaa !157    ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.a
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.o = load i64, ptr %i.a, align 8, !tbaa !40
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %3, align 8, !tbaa !157    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.a
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.h
  %i.t = load i64, ptr %i.a, align 8, !tbaa !40
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  resume { ptr, i32 } %i.q
}

declare void @_ZN5arrow7compute8internal12CastFunctionC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_4Type4typeE(ptr noundef nonnull align 8 dereferenceable(252), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84, !noalias !351
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.108", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84, !noalias !354
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !361
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !98
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !99

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.2.sink, ptr %i.e, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.n

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %i.l = sdiv i64 %i.i, 8                         ; 4 uses
  %i.m = srem i64 %i.i, 8                         ; 2 uses
  %i.n = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !40    ; 3 uses
  %i.p = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %i.p, label %bb.b, label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

bb.b:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %6 = trunc nsw i64 %i.m to i8
  %notmask.i = shl nsw i8 -1, %6
  %7 = xor i8 %notmask.i, -1
  %i.s = and i8 %i.r, %7
  br label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit: ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit, %bb.b
  %storemerge.i = phi i8 [ %i.s, %bb.b ], [ 0, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109  ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !91   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.x ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %storemerge.i.i.i = select i1 %i.ae, ptr %i.a, ptr %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.af, i64 noundef %i.x, i64 noundef %i.u)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.c
  %i.ag = icmp sgt i64 %i.u, 0
  br i1 %i.ag, label %.lr.ph48.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.noexc11, %.loopexit.i.i.i.i
  %.sroa.4740.1 = phi i64 [ %.sroa.4740.2, %.loopexit.i.i.i.i ], [ %i.l, %.noexc11 ] ; 7 uses
  %.sroa.33.1 = phi i8 [ %.sroa.33.2, %.loopexit.i.i.i.i ], [ %i.o, %.noexc11 ] ; 7 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 6 uses
  %.sroa.20.1 = phi i8 [ %.sroa.20.2, %.loopexit.i.i.i.i ], [ %storemerge.i, %.noexc11 ] ; 7 uses
  %.02447.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 7 uses
  %i.ah = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc12:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ah to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ah, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ai = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ai, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc12
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph45.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.al = add i64 %.sroa.8.1, %i.aj
  br label %.lr.ph45.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.lr.ph45.i.i.i.i.preheader, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i
  %.sroa.4740.7 = phi i64 [ %.sroa.4740.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4740.1, %.lr.ph45.i.i.i.i.preheader ] ; 3 uses
  %.sroa.33.8 = phi i8 [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.1, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %.sroa.20.9 = phi i8 [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.1, %.lr.ph45.i.i.i.i.preheader ]
  %.02344.i.i.i.i = phi i64 [ %i.ba, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ 0, %.lr.ph45.i.i.i.i.preheader ]
  %.143.i.i.i.i = phi i64 [ %i.bb, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.02447.i.i.i.i, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.143.i.i.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !8  ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8
  %i.as = sub nsw i32 %i.ar, %i.an
  %i.at = sext i32 %i.as to i64
  %i.au = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.at, ptr nonnull %i.ap, ptr noundef nonnull %0)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.av = select i1 %i.au, i8 %.sroa.33.8, i8 0
  %spec.select = or i8 %i.av, %.sroa.20.9         ; 2 uses
  %i.aw = shl i8 %.sroa.33.8, 1                   ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.d, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

bb.d:                                             ; preds = %.noexc13
  %i.ay = add nsw i64 %.sroa.4740.7, 1
  %i.az = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.7
  store i8 %spec.select, ptr %i.az, align 1, !tbaa !40
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.d, %.noexc13
  %.sroa.4740.8 = phi i64 [ %i.ay, %bb.d ], [ %.sroa.4740.7, %.noexc13 ] ; 2 uses
  %.sroa.33.9 = phi i8 [ 1, %bb.d ], [ %i.aw, %.noexc13 ] ; 2 uses
  %.sroa.20.11 = phi i8 [ 0, %bb.d ], [ %spec.select, %.noexc13 ] ; 2 uses
  %i.ba = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %i.bb = add nsw i64 %.143.i.i.i.i, 1            ; 2 uses
  %exitcond54.not.i.i.i.i = icmp eq i64 %i.ba, %i.aj
  br i1 %exitcond54.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !357

bb.e:                                             ; preds = %.noexc12
  %i.bc = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.bc, label %.preheader33.i.i.i.i, label %.preheader35.i.i.i.i

.preheader35.i.i.i.i:                             ; preds = %bb.e
  %i.bd = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bd, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader35.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ah, 32767
  %i.be = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bf = add i64 %.02447.i.i.i.i, %i.be          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.e
  %i.bg = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 3 uses
  %i.bh = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bh, label %.lr.ph41.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph41.i.i.i.i.preheader:                       ; preds = %.preheader33.i.i.i.i
  %i.bi = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph41.i.i.i.i.epil.preheader, label %.lr.ph41.i.i.i.i.preheader.new

.lr.ph41.i.i.i.i.preheader.new:                   ; preds = %.lr.ph41.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bg, 32766
  br label %.lr.ph41.i.i.i.i

.lr.ph41.i.i.i.i:                                 ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1, %.lr.ph41.i.i.i.i.preheader.new
  %.sroa.4740.5 = phi i64 [ %.sroa.4740.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.4740.6.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 3 uses
  %.sroa.33.6 = phi i8 [ %.sroa.33.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.33.7.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %.sroa.20.7 = phi i8 [ %.sroa.20.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.20.8.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph41.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %i.bj = shl i8 %.sroa.33.6, 1                   ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.f, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph41.i.i.i.i
  %i.bl = add nsw i64 %.sroa.4740.5, 1
  %i.bm = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.5
  store i8 %.sroa.20.7, ptr %i.bm, align 1, !tbaa !40
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph41.i.i.i.i
  %.sroa.4740.6 = phi i64 [ %i.bl, %bb.f ], [ %.sroa.4740.5, %.lr.ph41.i.i.i.i ] ; 3 uses
  %.sroa.33.7 = phi i8 [ 1, %bb.f ], [ %i.bj, %.lr.ph41.i.i.i.i ]
  %.sroa.20.8 = phi i8 [ 0, %bb.f ], [ %.sroa.20.7, %.lr.ph41.i.i.i.i ] ; 2 uses
  %i.bn = shl i8 %.sroa.33.7, 1                   ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %i.bp = add nsw i64 %.sroa.4740.6, 1
  %i.bq = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.6
  store i8 %.sroa.20.8, ptr %i.bq, align 1, !tbaa !40
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1: ; preds = %bb.g, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %.sroa.4740.6.1 = phi i64 [ %i.bp, %bb.g ], [ %.sroa.4740.6, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.33.7.1 = phi i8 [ 1, %bb.g ], [ %i.bn, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.8.1 = phi i8 [ 0, %bb.g ], [ %.sroa.20.8, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_10BinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit49.i.i.i.i.unr-lcssa, label %.lr.ph41.i.i.i.i, !llvm.loop !358

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.4740.3 = phi i64 [ %.sroa.4740.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.4740.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 4 uses
  %.sroa.33.3 = phi i8 [ %.sroa.33.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.20.3 = phi i8 [ %.sroa.20.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.337.i.i.i.i = phi i64 [ %.02447.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cr, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %i.br = add nsw i64 %.337.i.i.i.i, %i.x         ; 2 uses
  %i.bs = lshr i64 %i.br, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !40
  %i.bv = trunc i64 %i.br to i8
  %i.bw = and i8 %i.bv, 7
  %i.bx = lshr i8 %i.bu, %i.bw
  %i.by = trunc i8 %i.bx to i1
  br i1 %i.by, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %.337.i.i.i.i ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8  ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.bz, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = sub nsw i32 %i.ce, %i.ca
  %i.cg = sext i32 %i.cf to i64
  %i.ch = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.cg, ptr nonnull %i.cc, ptr noundef nonnull %0)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.h
  %i.ci = select i1 %i.ch, i8 %.sroa.33.3, i8 0
  %spec.select51 = or i8 %i.ci, %.sroa.20.3       ; 2 uses
  %i.cj = shl i8 %.sroa.33.3, 1                   ; 2 uses
  %i.ck = add nsw i64 %.sroa.8.3, 1               ; 2 uses
  %i.cl = icmp eq i8 %i.cj, 0
  br i1 %i.cl, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cm = shl i8 %.sroa.33.3, 1                   ; 2 uses
  %i.cn = add nsw i64 %.sroa.8.3, 1               ; 2 uses
  %i.co = icmp eq i8 %i.cm, 0
  br i1 %i.co, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_10BinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i
end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE:bb.a
  switch i8 %i.r, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread [
    i8 115, label %.split
    i8 83, label %.split
  ]

.split:                                           ; preds = %bb.l, %bb.l
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = load i8, ptr %i.s, align 1, !tbaa !40
  %i.u = and i8 %i.t, -33
  %spec.select38.i = icmp eq i8 %i.u, 69
  br i1 %spec.select38.i, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread, !prof !371

_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit: ; preds = %bb.h, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !40
  %i.x = and i8 %i.w, -33
  %spec.select.i = icmp eq i8 %i.x, 69
  br i1 %spec.select.i, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8, label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread, !prof !371

_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread: ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.f, %bb.g, %bb.h, %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit, %bb.d, %.split, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit
  %.04 = phi i1 [ false, %.split ], [ true, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.d ], [ false, %_ZN5arrow8internal10ParseValueINS_11BooleanTypeEEENSt9enable_ifIXsr22is_parameter_free_typeIT_EE5valueEbE4typeEPKcmPNS0_15StringConverterIS4_vE10value_typeE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN5arrow6Status7InvalidIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 1 dereferenceable(24) @.str.7, ptr noundef nonnull align 8 dereferenceable(16) %4)
  %i.y = load ptr, ptr %3, align 8, !tbaa !66     ; 2 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.m, !prof !67

bb.m:                                             ; preds = %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !77, !range !78, !noundef !79
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN5arrow6StatusD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.n, %bb.m, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread
  %i.ac = load ptr, ptr %5, align 8, !tbaa !66
  store ptr %i.ac, ptr %3, align 8, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8

_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit.thread8: ; preds = %bb.d, %bb.e, %.split, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit
  %.05 = phi i1 [ %.04, %_ZN5arrow6StatusD2Ev.exit ], [ true, %_ZN5arrow8internal15StringConverterINS_11BooleanTypeEvE7ConvertERKS2_PKcmPb.exit ], [ false, %.split ], [ true, %bb.e ], [ false, %bb.d ]
  ret i1 %.05
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status7InvalidIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_DpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !374
  call void @_ZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !noalias !374
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !157, !noalias !374 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status8FromArgsIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !40, !noalias !374
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #22
  br label %_ZN5arrow6Status8FromArgsIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %3, align 8, !tbaa !157, !noalias !374 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !40, !noalias !374
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !374
  resume { ptr, i32 } %i.f

_ZN5arrow6Status8FromArgsIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEES0_NS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20, !noalias !374
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #17

; Function Attrs: nounwind
declare void @_ZN5arrow14PrimitiveCTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #9

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !156, !nonnull !79, !align !142
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(24) %1) #20
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(24) %1, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit unwind label %bb.c ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit: ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !156, !nonnull !79, !align !142
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !146
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !375
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef %.sroa.2.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i)
          to label %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit unwind label %bb.d ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.d:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E0_clIS4_EEDaSI_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA24_KcRSt17basic_string_viewIcSt11char_traitsIcEEEEENSt7__cxx1112basic_stringIcS7_SaIcEEEDpOT_ENKUlOT_E_clIS9_EEDaSI_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.pn6 = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.h, %bb.d ], [ %i.g, %bb.c ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !382
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.c = load i8, ptr %i.b, align 8, !tbaa !98
  switch i8 %i.c, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !99

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.d, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.str.2.sink, ptr %i.e, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.n

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !91   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !109  ; 2 uses
  %i.l = sdiv i64 %i.i, 8                         ; 4 uses
  %i.m = srem i64 %i.i, 8                         ; 2 uses
  %i.n = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !40    ; 3 uses
  %i.p = icmp sgt i64 %i.k, 0                     ; 2 uses
  br i1 %i.p, label %bb.b, label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

bb.b:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.q = getelementptr inbounds i8, ptr %i.g, i64 %i.l
  %i.r = load i8, ptr %i.q, align 1, !tbaa !40
  %6 = trunc nsw i64 %i.m to i8
  %notmask.i = shl nsw i8 -1, %6
  %7 = xor i8 %notmask.i, -1
  %i.s = and i8 %i.r, %7
  br label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit: ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit, %bb.b
  %storemerge.i = phi i8 [ %i.s, %bb.b ], [ 0, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i8 0, ptr %i.a, align 1, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !109  ; 4 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !91   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !94
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.x ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !94 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  %storemerge.i.i.i = select i1 %i.ae, ptr %i.a, ptr %i.ad ; 2 uses
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !94  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.af, i64 noundef %i.x, i64 noundef %i.u)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.c
  %i.ag = icmp sgt i64 %i.u, 0
  br i1 %i.ag, label %.lr.ph48.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i

.lr.ph48.i.i.i.i:                                 ; preds = %.noexc11, %.loopexit.i.i.i.i
  %.sroa.4740.1 = phi i64 [ %.sroa.4740.2, %.loopexit.i.i.i.i ], [ %i.l, %.noexc11 ] ; 7 uses
  %.sroa.33.1 = phi i8 [ %.sroa.33.2, %.loopexit.i.i.i.i ], [ %i.o, %.noexc11 ] ; 7 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 6 uses
  %.sroa.20.1 = phi i8 [ %.sroa.20.2, %.loopexit.i.i.i.i ], [ %storemerge.i, %.noexc11 ] ; 7 uses
  %.02447.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc11 ] ; 7 uses
  %i.ah = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc12:                                         ; preds = %.lr.ph48.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ah to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ah, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ai = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ai, label %.preheader.i.i.i.i, label %bb.e

.preheader.i.i.i.i:                               ; preds = %.noexc12
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph45.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph45.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.al = add i64 %.sroa.8.1, %i.aj
  br label %.lr.ph45.i.i.i.i

.lr.ph45.i.i.i.i:                                 ; preds = %.lr.ph45.i.i.i.i.preheader, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i
  %.sroa.4740.7 = phi i64 [ %.sroa.4740.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4740.1, %.lr.ph45.i.i.i.i.preheader ] ; 3 uses
  %.sroa.33.8 = phi i8 [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.1, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %.sroa.20.9 = phi i8 [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.1, %.lr.ph45.i.i.i.i.preheader ]
  %.02344.i.i.i.i = phi i64 [ %i.ay, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ 0, %.lr.ph45.i.i.i.i.preheader ]
  %.143.i.i.i.i = phi i64 [ %i.az, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.02447.i.i.i.i, %.lr.ph45.i.i.i.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.143.i.i.i.i ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !146 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !146
  %i.ar = sub nsw i64 %i.aq, %i.an
  %i.as = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.ar, ptr nonnull %i.ao, ptr noundef nonnull %0)
          to label %.noexc13 unwind label %.loopexit

.noexc13:                                         ; preds = %.lr.ph45.i.i.i.i
  %i.at = select i1 %i.as, i8 %.sroa.33.8, i8 0
  %spec.select = or i8 %i.at, %.sroa.20.9         ; 2 uses
  %i.au = shl i8 %.sroa.33.8, 1                   ; 2 uses
  %i.av = icmp eq i8 %i.au, 0
  br i1 %i.av, label %bb.d, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

bb.d:                                             ; preds = %.noexc13
  %i.aw = add nsw i64 %.sroa.4740.7, 1
  %i.ax = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.7
  store i8 %spec.select, ptr %i.ax, align 1, !tbaa !40
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.d, %.noexc13
  %.sroa.4740.8 = phi i64 [ %i.aw, %bb.d ], [ %.sroa.4740.7, %.noexc13 ] ; 2 uses
  %.sroa.33.9 = phi i8 [ 1, %bb.d ], [ %i.au, %.noexc13 ] ; 2 uses
  %.sroa.20.11 = phi i8 [ 0, %bb.d ], [ %spec.select, %.noexc13 ] ; 2 uses
  %i.ay = add nuw nsw i64 %.02344.i.i.i.i, 1      ; 2 uses
  %i.az = add nsw i64 %.143.i.i.i.i, 1            ; 2 uses
  %exitcond54.not.i.i.i.i = icmp eq i64 %i.ay, %i.aj
  br i1 %exitcond54.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph45.i.i.i.i, !llvm.loop !378

bb.e:                                             ; preds = %.noexc12
  %i.ba = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.ba, label %.preheader33.i.i.i.i, label %.preheader35.i.i.i.i

.preheader35.i.i.i.i:                             ; preds = %bb.e
  %i.bb = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader35.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ah, 32767
  %i.bc = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bd = add i64 %.02447.i.i.i.i, %i.bc          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader33.i.i.i.i:                             ; preds = %bb.e
  %i.be = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 3 uses
  %i.bf = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bf, label %.lr.ph41.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph41.i.i.i.i.preheader:                       ; preds = %.preheader33.i.i.i.i
  %i.bg = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  br i1 %i.bg, label %.lr.ph41.i.i.i.i.epil.preheader, label %.lr.ph41.i.i.i.i.preheader.new

.lr.ph41.i.i.i.i.preheader.new:                   ; preds = %.lr.ph41.i.i.i.i.preheader
  %unroll_iter = and i64 %i.be, 32766
  br label %.lr.ph41.i.i.i.i

.lr.ph41.i.i.i.i:                                 ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1, %.lr.ph41.i.i.i.i.preheader.new
  %.sroa.4740.5 = phi i64 [ %.sroa.4740.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.4740.6.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 3 uses
  %.sroa.33.6 = phi i8 [ %.sroa.33.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.33.7.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %.sroa.20.7 = phi i8 [ %.sroa.20.1, %.lr.ph41.i.i.i.i.preheader.new ], [ %.sroa.20.8.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph41.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %i.bh = shl i8 %.sroa.33.6, 1                   ; 2 uses
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.f, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph41.i.i.i.i
  %i.bj = add nsw i64 %.sroa.4740.5, 1
  %i.bk = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.5
  store i8 %.sroa.20.7, ptr %i.bk, align 1, !tbaa !40
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.f, %.lr.ph41.i.i.i.i
  %.sroa.4740.6 = phi i64 [ %i.bj, %bb.f ], [ %.sroa.4740.5, %.lr.ph41.i.i.i.i ] ; 3 uses
  %.sroa.33.7 = phi i8 [ 1, %bb.f ], [ %i.bh, %.lr.ph41.i.i.i.i ]
  %.sroa.20.8 = phi i8 [ 0, %bb.f ], [ %.sroa.20.7, %.lr.ph41.i.i.i.i ] ; 2 uses
  %i.bl = shl i8 %.sroa.33.7, 1                   ; 2 uses
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.g, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

bb.g:                                             ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %i.bn = add nsw i64 %.sroa.4740.6, 1
  %i.bo = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.6
  store i8 %.sroa.20.8, ptr %i.bo, align 1, !tbaa !40
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1: ; preds = %bb.g, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %.sroa.4740.6.1 = phi i64 [ %i.bn, %bb.g ], [ %.sroa.4740.6, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.33.7.1 = phi i8 [ 1, %bb.g ], [ %i.bl, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.8.1 = phi i8 [ 0, %bb.g ], [ %.sroa.20.8, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit49.i.i.i.i.unr-lcssa, label %.lr.ph41.i.i.i.i, !llvm.loop !379

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.4740.3 = phi i64 [ %.sroa.4740.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.4740.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 4 uses
  %.sroa.33.3 = phi i8 [ %.sroa.33.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.20.3 = phi i8 [ %.sroa.20.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %.337.i.i.i.i = phi i64 [ %.02447.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.cn, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 3 uses
  %i.bp = add nsw i64 %.337.i.i.i.i, %i.x         ; 2 uses
  %i.bq = lshr i64 %i.bp, 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40
  %i.bt = trunc i64 %i.bp to i8
  %i.bu = and i8 %i.bt, 7
  %i.bv = lshr i8 %i.bs, %i.bu
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %.337.i.i.i.i ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !146 ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bx, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !146
  %i.cc = sub nsw i64 %i.cb, %i.by
  %i.cd = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.cc, ptr nonnull %i.bz, ptr noundef nonnull %0)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit

.noexc14:                                         ; preds = %bb.h
  %i.ce = select i1 %i.cd, i8 %.sroa.33.3, i8 0
  %spec.select51 = or i8 %i.ce, %.sroa.20.3       ; 2 uses
  %i.cf = shl i8 %.sroa.33.3, 1                   ; 2 uses
  %i.cg = add nsw i64 %.sroa.8.3, 1               ; 2 uses
  %i.ch = icmp eq i8 %i.cf, 0
  br i1 %i.ch, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ci = shl i8 %.sroa.33.3, 1                   ; 2 uses
  %i.cj = add nsw i64 %.sroa.8.3, 1               ; 2 uses
  %i.ck = icmp eq i8 %i.ci, 0
  br i1 %i.ck, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i: ; preds = %bb.i, %.noexc14
  %.sroa.8.5 = phi i64 [ %i.cg, %.noexc14 ], [ %i.cj, %bb.i ]
  %.sroa.20.5 = phi i8 [ %spec.select51, %.noexc14 ], [ %.sroa.20.3, %bb.i ]
  %i.cl = add nsw i64 %.sroa.4740.3, 1
  %i.cm = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.3
  store i8 %.sroa.20.5, ptr %i.cm, align 1, !tbaa !40
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i: ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i, %bb.i, %.noexc14
  %.sroa.4740.4 = phi i64 [ %i.cl, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %.sroa.4740.3, %.noexc14 ], [ %.sroa.4740.3, %bb.i ] ; 2 uses
  %.sroa.33.4 = phi i8 [ 1, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %i.cf, %.noexc14 ], [ %i.ci, %bb.i ] ; 2 uses
  %.sroa.8.4 = phi i64 [ %.sroa.8.5, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %i.cg, %.noexc14 ], [ %i.cj, %bb.i ] ; 2 uses
  %.sroa.20.4 = phi i8 [ 0, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.sink.split.i.i.i.i ], [ %spec.select51, %.noexc14 ], [ %.sroa.20.3, %bb.i ] ; 2 uses
  %i.cn = add i64 %.337.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cn, %i.bd
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !380

.loopexit.loopexit49.i.i.i.i.unr-lcssa:           ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_15LargeBinaryTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1
  %i.co = and i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i16 %i.co, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit49.i.i.i.i, label %.lr.ph41.i.i.i.i.epil.preheader

.lr.ph41.i.i.i.i.epil.preheader:                  ; preds = %.loopexit.loopexit49.i.i.i.i.unr-lcssa, %.lr.ph41.i.i.i.i.preheader
  %.sroa.4740.5.epil.init = phi i64 [ %.sroa.4740.1, %.lr.ph41.i.i.i.i.preheader ], [ %.sroa.4740.6.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ] ; 3 uses
  %.sroa.33.6.epil.init = phi i8 [ %.sroa.33.1, %.lr.ph41.i.i.i.i.preheader ], [ %.sroa.33.7.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ]
  %.sroa.20.7.epil.init = phi i8 [ %.sroa.20.1, %.lr.ph41.i.i.i.i.preheader ], [ %.sroa.20.8.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i32 %i.ah to i1
  call void @llvm.assume(i1 %lcmp.mod81)
  %i.cp = shl i8 %.sroa.33.6.epil.init, 1         ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %bb.j, label %.loopexit.loopexit49.i.i.i.i

bb.j:                                             ; preds = %.lr.ph41.i.i.i.i.epil.preheader
  %i.cr = add nsw i64 %.sroa.4740.5.epil.init, 1
  %i.cs = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.5.epil.init
  store i8 %.sroa.20.7.epil.init, ptr %i.cs, align 1, !tbaa !40
  br label %.loopexit.loopexit49.i.i.i.i

.loopexit.loopexit49.i.i.i.i:                     ; preds = %.lr.ph41.i.i.i.i.epil.preheader, %bb.j, %.loopexit.loopexit49.i.i.i.i.unr-lcssa
  %.sroa.4740.6.lcssa = phi i64 [ %.sroa.4740.6.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ], [ %i.cr, %bb.j ], [ %.sroa.4740.5.epil.init, %.lr.ph41.i.i.i.i.epil.preheader ]
  %.sroa.33.7.lcssa = phi i8 [ %.sroa.33.7.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ], [ 1, %bb.j ], [ %i.cp, %.lr.ph41.i.i.i.i.epil.preheader ]
  %.sroa.20.8.lcssa = phi i8 [ %.sroa.20.8.1, %.loopexit.loopexit49.i.i.i.i.unr-lcssa ], [ 0, %bb.j ], [ %.sroa.20.7.epil.init, %.lr.ph41.i.i.i.i.epil.preheader ]
  %i.ct = add i64 %.sroa.8.1, %i.be
  %i.cu = add i64 %.02447.i.i.i.i, %i.be
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i, %.loopexit.loopexit49.i.i.i.i, %.preheader33.i.i.i.i, %.preheader35.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.4740.2 = phi i64 [ %.sroa.4740.1, %.preheader35.i.i.i.i ], [ %.sroa.4740.1, %.preheader.i.i.i.i ], [ %.sroa.4740.6.lcssa, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.4740.1, %.preheader33.i.i.i.i ], [ %.sroa.4740.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4740.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.33.2 = phi i8 [ %.sroa.33.1, %.preheader35.i.i.i.i ], [ %.sroa.33.1, %.preheader.i.i.i.i ], [ %.sroa.33.7.lcssa, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.33.1, %.preheader33.i.i.i.i ], [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.8.2 = phi i64 [ %.sroa.8.1, %.preheader35.i.i.i.i ], [ %.sroa.8.1, %.preheader.i.i.i.i ], [ %i.ct, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.8.1, %.preheader33.i.i.i.i ], [ %i.al, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.sroa.20.2 = phi i8 [ %.sroa.20.1, %.preheader35.i.i.i.i ], [ %.sroa.20.1, %.preheader.i.i.i.i ], [ %.sroa.20.8.lcssa, %.loopexit.loopexit49.i.i.i.i ], [ %.sroa.20.1, %.preheader33.i.i.i.i ], [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %.4.i.i.i.i = phi i64 [ %.02447.i.i.i.i, %.preheader35.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cu, %.loopexit.loopexit49.i.i.i.i ], [ %.02447.i.i.i.i, %.preheader33.i.i.i.i ], [ %i.az, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %i.bd, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit27.i.i.i.i ] ; 2 uses
  %i.cv = icmp slt i64 %.4.i.i.i.i, %i.u
  br i1 %i.cv, label %.lr.ph48.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i, !llvm.loop !381

_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i: ; preds = %.loopexit.i.i.i.i, %.noexc11
  %.sroa.4740.0 = phi i64 [ %i.l, %.noexc11 ], [ %.sroa.4740.2, %.loopexit.i.i.i.i ]
  %.sroa.33.0 = phi i8 [ %i.o, %.noexc11 ], [ %.sroa.33.2, %.loopexit.i.i.i.i ]
  %.sroa.8.0 = phi i64 [ 0, %.noexc11 ], [ %.sroa.8.2, %.loopexit.i.i.i.i ]
  %.sroa.20.0 = phi i8 [ %storemerge.i, %.noexc11 ], [ %.sroa.20.2, %.loopexit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %.sroa.4740.9 = phi i64 [ %i.l, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.4740.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.33.10 = phi i8 [ %i.o, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.33.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.8.8 = phi i64 [ 0, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.8.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  %.sroa.20.12 = phi i8 [ %storemerge.i, %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit ], [ %.sroa.20.0, %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_15LargeBinaryTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %i.p, label %bb.l, label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

bb.l:                                             ; preds = %bb.k
  %.not.i = icmp ne i8 %.sroa.33.10, 1
  %i.cw = icmp slt i64 %.sroa.8.8, %i.k
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.cw
  br i1 %or.cond.i, label %bb.m, label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

bb.m:                                             ; preds = %bb.l
  %i.cx = getelementptr inbounds i8, ptr %i.g, i64 %.sroa.4740.9
  store i8 %.sroa.20.12, ptr %i.cx, align 1, !tbaa !40
  br label %_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit

_ZN5arrow8internal21FirstTimeBitmapWriter6FinishEv.exit: ; preds = %bb.k, %bb.l, %bb.m
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph45.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.h
  %lpad.loopexit52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph48.i.i.i.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.n
  %.pn = phi { ptr, i32 } [ %i.cy, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit52, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit56, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.cz = load ptr, ptr %0, align 8, !tbaa !66    ; 2 uses
  %.not.i15 = icmp eq ptr %i.cz, null
  br i1 %.not.i15, label %_ZN5arrow6StatusD2Ev.exit, label %bb.o, !prof !67

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  %i.db = load i8, ptr %i.da, align 1, !tbaa !77, !range !78, !noundef !79
  %i.dc = trunc nuw i8 %i.db to i1
  br i1 %i.dc, label %_ZN5arrow6StatusD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %.loopexit.split-lp, %bb.o, %bb.p
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator18ScalarUnaryNotNullINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  %4 = alloca %"struct.arrow::compute::internal::applicator::ScalarUnaryNotNullStateful.113", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84, !noalias !385
  call void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::internal::OptionalBitBlockCounter", align 8 ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !66, !alias.scope !392
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.b = load i8, ptr %i.a, align 8, !tbaa !98
  switch i8 %i.b, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !99

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.c, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.str.2.sink, ptr %i.d, align 8, !tbaa !102
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.q

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !91   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !109  ; 2 uses
  %i.k = sdiv i64 %i.h, 8                         ; 4 uses
  %i.l = srem i64 %i.h, 8                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !40    ; 3 uses
  %i.o = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %i.o, label %bb.b, label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

bb.b:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.p = getelementptr inbounds i8, ptr %i.f, i64 %i.k
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40
  %6 = trunc nsw i64 %i.l to i8
  %notmask.i = shl nsw i8 -1, %6
  %7 = xor i8 %notmask.i, -1
  %i.r = and i8 %i.q, %7
  br label %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit

_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit: ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit, %bb.b
  %storemerge.i = phi i8 [ %i.r, %bb.b ], [ 0, %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !109
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN5arrow7compute8internalL22VisitArrayValuesInlineINS_14BinaryViewTypeEZNS1_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS1_18ParseBooleanStringEE9ArrayExecIS6_vE4ExecERKS8_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSA_4ExecESC_SE_SH_SJ_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESH_OSR_OT1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow8internal21FirstTimeBitmapWriterC2EPhll.exit
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !91
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.z = getelementptr inbounds [16 x i8], ptr %i.y, i64 %i.w ; 2 uses
  %i.aa = invoke { ptr, i64 } @_ZNK5arrow9ArraySpan18GetVariadicBuffersEv(ptr noundef nonnull align 8 dereferenceable(128) %3)
          to label %.noexc11 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc11:                                         ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ac = extractvalue { ptr, i64 } %i.aa, 0      ; 2 uses
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !94 ; 2 uses
  %i.ae = load i64, ptr %i.v, align 8, !tbaa !91  ; 2 uses
  %i.af = load i64, ptr %i.s, align 8, !tbaa !109 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZN5arrow8internal23OptionalBitBlockCounterC1EPKhll(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %i.ad, i64 noundef %i.ae, i64 noundef %i.af)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %.noexc11
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph49.i.i.i.i, label %_ZN5arrow8internalL18VisitBitBlocksVoidIZNS0_22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS3_ZNS7_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES3_NS7_18ParseBooleanStringEE9ArrayExecISB_vE4ExecERKSD_PNS6_13KernelContextERKNS_9ArraySpanEPNS6_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSF_4ExecESH_SJ_SM_SO_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESM_OSW_OT1_EUlSS_E_SU_EEvSM_OT_S10_EUllE_SU_EEvPKhllS15_S10_.exit.i.i.i

.lr.ph49.i.i.i.i:                                 ; preds = %.noexc12, %.loopexit.i.i.i.i
  %.sroa.4741.1 = phi i64 [ %.sroa.4741.2, %.loopexit.i.i.i.i ], [ %i.k, %.noexc12 ] ; 7 uses
  %.sroa.33.1 = phi i8 [ %.sroa.33.2, %.loopexit.i.i.i.i ], [ %i.n, %.noexc12 ] ; 7 uses
  %.sroa.8.1 = phi i64 [ %.sroa.8.2, %.loopexit.i.i.i.i ], [ 0, %.noexc12 ] ; 6 uses
  %.sroa.20.1 = phi i8 [ %.sroa.20.2, %.loopexit.i.i.i.i ], [ %storemerge.i, %.noexc12 ] ; 7 uses
  %.02448.i.i.i.i = phi i64 [ %.4.i.i.i.i, %.loopexit.i.i.i.i ], [ 0, %.noexc12 ] ; 7 uses
  %i.ah = invoke i32 @_ZN5arrow8internal23OptionalBitBlockCounter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 4 uses

.noexc13:                                         ; preds = %.lr.ph49.i.i.i.i
  %.sroa.0.0.extract.trunc.i.i.i.i = trunc i32 %i.ah to i16 ; 8 uses
  %.sroa.7.0.extract.shift.i.i.i.i = lshr i32 %i.ah, 16 ; 2 uses
  %.sroa.7.0.extract.trunc.i.i.i.i = trunc nuw i32 %.sroa.7.0.extract.shift.i.i.i.i to i16
  %i.ai = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, %.sroa.7.0.extract.trunc.i.i.i.i
  br i1 %i.ai, label %.preheader.i.i.i.i, label %bb.g

.preheader.i.i.i.i:                               ; preds = %.noexc13
  %i.aj = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 2 uses
  %i.ak = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.ak, label %.lr.ph46.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph46.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.al = add i64 %.sroa.8.1, %i.aj
  br label %.lr.ph46.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.lr.ph46.i.i.i.i.preheader, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i
  %.sroa.4741.7 = phi i64 [ %.sroa.4741.8, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.4741.1, %.lr.ph46.i.i.i.i.preheader ] ; 3 uses
  %.sroa.33.8 = phi i8 [ %.sroa.33.9, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.33.1, %.lr.ph46.i.i.i.i.preheader ] ; 2 uses
  %.sroa.20.9 = phi i8 [ %.sroa.20.11, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.sroa.20.1, %.lr.ph46.i.i.i.i.preheader ]
  %.02345.i.i.i.i = phi i64 [ %i.bn, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ 0, %.lr.ph46.i.i.i.i.preheader ]
  %.144.i.i.i.i = phi i64 [ %i.bo, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i ], [ %.02448.i.i.i.i, %.lr.ph46.i.i.i.i.preheader ] ; 2 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.144.i.i.i.i ; 4 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !40 ; 2 uses
  %i.ao = icmp slt i32 %i.an, 13
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph46.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph46.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !40
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.as
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !395 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 9
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !402, !range !78, !noundef !79
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = select i1 %i.ax, ptr %i.az, ptr null, !prof !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !40
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %i.ba, i64 %i.bd
  br label %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i

_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.bf = phi ptr [ %i.ap, %bb.d ], [ %i.be, %bb.e ]
  %i.bg = sext i32 %i.an to i64
  %i.bh = invoke noundef zeroext i1 @_ZN5arrow7compute8internal18ParseBooleanString4CallIbSt17basic_string_viewIcSt11char_traitsIcEEEET_PNS0_13KernelContextET0_PNS_6StatusE(ptr noundef %2, i64 %i.bg, ptr %i.bf, ptr noundef nonnull %0)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %_ZN5arrow4util14FromBinaryViewISt10shared_ptrINS_6BufferEEEESt17basic_string_viewIcSt11char_traitsIcEERKNS_14BinaryViewType6c_typeEPKT_.exit.i.i.i.i.i
  %i.bi = select i1 %i.bh, i8 %.sroa.33.8, i8 0
  %spec.select = or i8 %i.bi, %.sroa.20.9         ; 2 uses
  %i.bj = shl i8 %.sroa.33.8, 1                   ; 2 uses
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.f, label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

bb.f:                                             ; preds = %.noexc14
  %i.bl = add nsw i64 %.sroa.4741.7, 1
  %i.bm = getelementptr inbounds i8, ptr %i.f, i64 %.sroa.4741.7
  store i8 %spec.select, ptr %i.bm, align 1, !tbaa !40
  br label %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i

_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit.i.i.i.i: ; preds = %bb.f, %.noexc14
  %.sroa.4741.8 = phi i64 [ %i.bl, %bb.f ], [ %.sroa.4741.7, %.noexc14 ] ; 2 uses
  %.sroa.33.9 = phi i8 [ 1, %bb.f ], [ %i.bj, %.noexc14 ] ; 2 uses
  %.sroa.20.11 = phi i8 [ 0, %bb.f ], [ %spec.select, %.noexc14 ] ; 2 uses
  %i.bn = add nuw nsw i64 %.02345.i.i.i.i, 1      ; 2 uses
  %i.bo = add nsw i64 %.144.i.i.i.i, 1            ; 2 uses
  %exitcond55.not.i.i.i.i = icmp eq i64 %i.bn, %i.aj
  br i1 %exitcond55.not.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph46.i.i.i.i, !llvm.loop !388

bb.g:                                             ; preds = %.noexc13
  %i.bp = icmp eq i32 %.sroa.7.0.extract.shift.i.i.i.i, 0
  br i1 %i.bp, label %.preheader34.i.i.i.i, label %.preheader36.i.i.i.i

.preheader36.i.i.i.i:                             ; preds = %bb.g
  %i.bq = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bq, label %.lr.ph.preheader.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %.preheader36.i.i.i.i
  %.sroa.0.0.extract.trunc.mask.i.i.i.i = and i32 %i.ah, 32767
  %i.br = zext nneg i32 %.sroa.0.0.extract.trunc.mask.i.i.i.i to i64
  %i.bs = add i64 %.02448.i.i.i.i, %i.br          ; 2 uses
  br label %.lr.ph.i.i.i.i

.preheader34.i.i.i.i:                             ; preds = %bb.g
  %i.bt = sext i16 %.sroa.0.0.extract.trunc.i.i.i.i to i64 ; 3 uses
  %i.bu = icmp sgt i16 %.sroa.0.0.extract.trunc.i.i.i.i, 0
  br i1 %i.bu, label %.lr.ph42.i.i.i.i.preheader, label %.loopexit.i.i.i.i

.lr.ph42.i.i.i.i.preheader:                       ; preds = %.preheader34.i.i.i.i
  %i.bv = icmp eq i16 %.sroa.0.0.extract.trunc.i.i.i.i, 1
  br i1 %i.bv, label %.lr.ph42.i.i.i.i.epil.preheader, label %.lr.ph42.i.i.i.i.preheader.new

.lr.ph42.i.i.i.i.preheader.new:                   ; preds = %.lr.ph42.i.i.i.i.preheader
  %unroll_iter = and i64 %i.bt, 32766
  br label %.lr.ph42.i.i.i.i

.lr.ph42.i.i.i.i:                                 ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1, %.lr.ph42.i.i.i.i.preheader.new
  %.sroa.4741.5 = phi i64 [ %.sroa.4741.1, %.lr.ph42.i.i.i.i.preheader.new ], [ %.sroa.4741.6.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 3 uses
  %.sroa.33.6 = phi i8 [ %.sroa.33.1, %.lr.ph42.i.i.i.i.preheader.new ], [ %.sroa.33.7.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %.sroa.20.7 = phi i8 [ %.sroa.20.1, %.lr.ph42.i.i.i.i.preheader.new ], [ %.sroa.20.8.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph42.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1 ]
  %i.bw = shl i8 %.sroa.33.6, 1                   ; 2 uses
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.h, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph42.i.i.i.i
  %i.by = add nsw i64 %.sroa.4741.5, 1
  %i.bz = getelementptr inbounds i8, ptr %i.f, i64 %.sroa.4741.5
  store i8 %.sroa.20.7, ptr %i.bz, align 1, !tbaa !40
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph42.i.i.i.i
  %.sroa.4741.6 = phi i64 [ %i.by, %bb.h ], [ %.sroa.4741.5, %.lr.ph42.i.i.i.i ] ; 3 uses
  %.sroa.33.7 = phi i8 [ 1, %bb.h ], [ %i.bw, %.lr.ph42.i.i.i.i ]
  %.sroa.20.8 = phi i8 [ 0, %bb.h ], [ %.sroa.20.7, %.lr.ph42.i.i.i.i ] ; 2 uses
  %i.ca = shl i8 %.sroa.33.7, 1                   ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.i, label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

bb.i:                                             ; preds = %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %i.cc = add nsw i64 %.sroa.4741.6, 1
  %i.cd = getelementptr inbounds i8, ptr %i.f, i64 %.sroa.4741.6
  store i8 %.sroa.20.8, ptr %i.cd, align 1, !tbaa !40
  br label %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1

_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i.1: ; preds = %bb.i, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i
  %.sroa.4741.6.1 = phi i64 [ %i.cc, %bb.i ], [ %.sroa.4741.6, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.33.7.1 = phi i8 [ 1, %bb.i ], [ %i.ca, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %.sroa.20.8.1 = phi i8 [ 0, %bb.i ], [ %.sroa.20.8, %_ZZN5arrow7compute8internal10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeENS_14BinaryViewTypeENS1_18ParseBooleanStringEE9ArrayExecIS4_vE4ExecERKS7_PNS0_13KernelContextERKNS_9ArraySpanEPNS0_10ExecResultEENKUlvE_clEv.exit.i.i.i.i ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit50.i.i.i.i.unr-lcssa, label %.lr.ph42.i.i.i.i, !llvm.loop !389

.lr.ph.i.i.i.i:                                   ; preds = %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit28.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.sroa.4741.3 = phi i64 [ %.sroa.4741.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.4741.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit28.i.i.i.i ] ; 4 uses
  %.sroa.33.3 = phi i8 [ %.sroa.33.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.33.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit28.i.i.i.i ] ; 3 uses
  %.sroa.8.3 = phi i64 [ %.sroa.8.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.8.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit28.i.i.i.i ] ; 2 uses
  %.sroa.20.3 = phi i8 [ %.sroa.20.1, %.lr.ph.preheader.i.i.i.i ], [ %.sroa.20.4, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit28.i.i.i.i ] ; 3 uses
  %.338.i.i.i.i = phi i64 [ %.02448.i.i.i.i, %.lr.ph.preheader.i.i.i.i ], [ %i.dr, %_ZZN5arrow8internal22ArraySpanInlineVisitorINS_14BinaryViewTypeEvE9VisitVoidIZNS_7compute8internalL22VisitArrayValuesInlineIS2_ZNS6_10applicator26ScalarUnaryNotNullStatefulINS_11BooleanTypeES2_NS6_18ParseBooleanStringEE9ArrayExecISA_vE4ExecERKSC_PNS5_13KernelContextERKNS_9ArraySpanEPNS5_10ExecResultEEUlSt17basic_string_viewIcSt11char_traitsIcEEE_ZNSE_4ExecESG_SI_SL_SN_EUlvE_EENSt9enable_ifIXsr3std7is_sameIDTcl16return_type_impladsr3std5decayIT0_E4typeEonclEEvEE5valueEvE4typeESL_OSV_OT1_EUlSR_E_ST_EEvSL_OT_SZ_ENKUllE_clEl.exit28.i.i.i.i ] ; 3 uses
  %i.ce = add nsw i64 %.338.i.i.i.i, %i.ae        ; 2 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !40
  %i.ci = trunc i64 %i.ce to i8
  %i.cj = and i8 %i.ci, 7
  %i.ck = lshr i8 %i.ch, %i.cj
  %i.cl = trunc i8 %i.ck to i1
  br i1 %i.cl, label %bb.j, label %bb.m

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cm = getelementptr inbounds [16 x i8], ptr %i.z, i64 %.338.i.i.i.i ; 4 uses
end_hunk_3
