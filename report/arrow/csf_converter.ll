inline.NumInlined: 1083
inline.NumDeleted: 539
begin_hunk_0
%"class.arrow::internal::AlignedStorage.30" = type { [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.32" }
%"struct.std::_Head_base.32" = type { ptr }
%"class.std::vector.36" = type { %"struct.std::_Vector_base.37" }
%"struct.std::_Vector_base.37" = type { %"struct.std::_Vector_base<arrow::BufferBuilder, std::allocator<arrow::BufferBuilder>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::BufferBuilder, std::allocator<arrow::BufferBuilder>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::BufferBuilder, std::allocator<arrow::BufferBuilder>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::BufferBuilder, std::allocator<arrow::BufferBuilder>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator.38" = type { i8 }
%"class.std::vector.44" = type { %"struct.std::_Vector_base.45" }
%"struct.std::_Vector_base.45" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::Buffer>, std::allocator<std::shared_ptr<arrow::Buffer>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.arrow::Result.49" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.52" }
%"class.arrow::internal::AlignedStorage.52" = type { [16 x i8] }
%"class.arrow::internal::(anonymous namespace)::SparseCSFTensorConverter" = type { %"class.std::shared_ptr", %"class.std::shared_ptr.0", ptr, ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::shared_ptr.0" = type { %"class.std::__shared_ptr.1" }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::internal::AlignedStorage" = type { [16 x i8] }
%"class.arrow::internal::(anonymous namespace)::TensorBuilderFromSparseCSFTensor" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i64, ptr, i32, ptr, %"class.std::vector", %"class.std::shared_ptr.0", ptr }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { %class.anon }
%class.anon = type { ptr, ptr }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.56", ptr }
%"class.std::unique_ptr.56" = type { %"struct.std::__uniq_ptr_data.57" }
%"struct.std::__uniq_ptr_data.57" = type { %"class.std::__uniq_ptr_impl.58" }
%"class.std::__uniq_ptr_impl.58" = type { %"class.std::tuple.59" }
%"class.std::tuple.59" = type { %"struct.std::_Tuple_impl.60" }
%"struct.std::_Tuple_impl.60" = type { %"struct.std::_Head_base.63" }
%"struct.std::_Head_base.63" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__shared_ptr.42" = type { ptr, %"class.std::__shared_count" }
%"class.arrow::Result.65" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.68" }
%"class.arrow::internal::AlignedStorage.68" = type { [8 x i8] }
%"class.std::unique_ptr.69" = type { %"struct.std::__uniq_ptr_data.70" }
%"struct.std::__uniq_ptr_data.70" = type { %"class.std::__uniq_ptr_impl.71" }
%"class.std::__uniq_ptr_impl.71" = type { %"class.std::tuple.72" }
%"class.std::tuple.72" = type { %"struct.std::_Tuple_impl.73" }
%"struct.std::_Tuple_impl.73" = type { %"struct.std::_Head_base.76" }
%"struct.std::_Head_base.76" = type { ptr }
%"class.std::allocator.53" = type { i8 }

$_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow8internal7ArgSortIlSt4lessIlEEESt6vectorIlSaIlEERKS4_IT_SaIS7_EEOT0_ = comdat any

$_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EEC2EmRKS2_ = comdat any

$_ZNSt6vectorIlSaIlEEaSERKS1_ = comdat any

$_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_14SparseCSFIndexEEED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev = comdat any

$_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_SJ_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal7ArgSortIlSt4lessIlEEES5_RKS3_IT_SaISE_EEOT0_EUlllE_EEEvSE_SE_RSJ_ = comdat any

$_ZSt8_DestroyIPN5arrow13BufferBuilderEEvT_S3_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA19_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow13BufferBuilder6ResizeElb = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_6TensorEEEC2ERKNS_6StatusE = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt14default_deleteIN5arrow15ResizableBufferEE = comdat any

$_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt14default_deleteIN5arrow6BufferEE = comdat any

$_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE = comdat any

$_ZTSSt19_Sp_make_shared_tag = comdat any

$_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = comdat any

@.str = private unnamed_addr constant [19 x i8] c"TODO for ndim <= 1\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZN5arrow4util8internalL14kNonNullFillerE = internal constant i8 0, align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [109 x i8] c"St19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow15ResizableBufferEE = linkonce_odr constant [46 x i8] c"St14default_deleteIN5arrow15ResizableBufferEE\00", comdat, align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow6BufferEE = linkonce_odr constant [36 x i8] c"St14default_deleteIN5arrow6BufferEE\00", comdat, align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [79 x i8] c"St23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt19_Sp_make_shared_tag = linkonce_odr constant [24 x i8] c"St19_Sp_make_shared_tag\00", comdat, align 1
@_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag = linkonce_odr constant [16 x i8] zeroinitializer, comdat, align 8

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__shared_ptr.1", align 16 ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %11 = alloca %"class.std::shared_ptr.3", align 8 ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 12 uses
  %13 = alloca %"struct.std::less", align 1       ; 3 uses
  %14 = alloca %"class.arrow::Result.23", align 8 ; 11 uses
  %15 = alloca %"class.arrow::Result.27", align 8 ; 12 uses
  %16 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %17 = alloca %"class.std::vector", align 8      ; 19 uses
  %18 = alloca %"class.std::vector", align 8      ; 14 uses
  %19 = alloca %"class.std::vector.36", align 8   ; 12 uses
  %20 = alloca %"class.std::allocator.38", align 1 ; 4 uses
  %21 = alloca %"class.std::vector.36", align 8   ; 11 uses
  %22 = alloca %"class.std::allocator.38", align 1 ; 4 uses
  %i.a = alloca [8 x i8], align 1                 ; 9 uses
  %23 = alloca %"class.std::vector.44", align 8   ; 14 uses
  %24 = alloca %"class.std::vector.44", align 8   ; 11 uses
  %25 = alloca %"class.std::vector", align 8      ; 13 uses
  %26 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %27 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %28 = alloca %"class.arrow::Result.49", align 8 ; 12 uses
  %29 = alloca %"class.arrow::internal::(anonymous namespace)::SparseCSFTensorConverter", align 16 ; 18 uses
  %30 = alloca %"class.arrow::Status", align 8    ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #20
  %i.b = getelementptr inbounds nuw i8, ptr %29, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %29, i8 0, i64 32, i1 false)
  store ptr %1, ptr %i.b, align 16, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %29, i64 40
  store ptr %2, ptr %i.c, align 8, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %29, i64 48
  store ptr %3, ptr %i.d, align 16, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20, !noalias !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_ZN5arrow8internal28CheckSparseIndexMaximumValueERKSt10shared_ptrINS_8DataTypeEERKSt6vectorIlSaIlEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %10, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc unwind label %bb.ff

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %10, align 8, !tbaa !26, !noalias !23 ; 3 uses
  store ptr %i.f, ptr %30, align 8, !tbaa !26, !alias.scope !23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20, !noalias !23
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %.noexc
  store ptr %i.f, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %.critedge

bb.b:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = invoke noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %.noexc12 unwind label %bb.ff, !inline_history !34 ; 5 uses

.noexc12:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20, !noalias !23
  call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29, !noalias !35 ; 3 uses
  store ptr %i.n, ptr %11, align 8, !tbaa !29, !alias.scope !35, !noalias !23
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38, !noalias !35 ; 3 uses
  store ptr %i.q, ptr %i.o, align 8, !tbaa !38, !alias.scope !35, !noalias !23
  %.not.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow6Tensor4typeEv.exit.i, label %bb.c

bb.c:                                             ; preds = %.noexc12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !40
  %.not.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !35
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3, !noalias !35
  br label %_ZNK5arrow6Tensor4typeEv.exit.i

bb.e:                                             ; preds = %bb.c
  %i.v = atomicrmw volatile add ptr %i.r, i32 1 acq_rel, align 4, !noalias !35 ; 0 uses
  %.pre.i = load ptr, ptr %11, align 8, !tbaa !29, !noalias !23
  br label %_ZNK5arrow6Tensor4typeEv.exit.i

_ZNK5arrow6Tensor4typeEv.exit.i:                  ; preds = %bb.e, %bb.d, %.noexc12
  %i.w = phi ptr [ %i.n, %.noexc12 ], [ %i.n, %bb.d ], [ %.pre.i, %bb.e ] ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(72) %i.w)
          to label %bb.f unwind label %bb.o       ; 4 uses

bb.f:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !38, !noalias !23 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !43
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20, !inline_history !44
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20, !inline_history !44
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !45

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #20
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !23
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.at = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = lshr exact i64 %i.aw, 3
  %i.ay = trunc i64 %i.ax to i32
  %sext.i = shl i64 %i.aw, 29
  %i.az = ashr i64 %sext.i, 32                    ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20, !noalias !23
  invoke void @_ZN5arrow8internal7ArgSortIlSt4lessIlEEESt6vectorIlSaIlEERKS4_IT_SaIS7_EEOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc13 unwind label %bb.ff

.noexc13:                                         ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20, !noalias !23
  invoke void @_ZNK5arrow6Tensor12CountNonZeroEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.23") align 8 %14, ptr noundef nonnull align 8 dereferenceable(112) %1)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %.noexc13
  %i.ba = load ptr, ptr %14, align 8, !tbaa !26, !noalias !23
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.n, !prof !50

bb.n:                                             ; preds = %bb.m
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.q

bb.o:                                             ; preds = %_ZNK5arrow6Tensor4typeEv.exit.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20, !noalias !23
  br label %.body

bb.p:                                             ; preds = %.noexc13
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.q:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.r:                                             ; preds = %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20, !noalias !23
  %i.bh = sext i32 %i.aa to i64                   ; 5 uses
  %i.bi = mul nsw i64 %i.bg, %i.bh
  invoke void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.27") align 8 %15, i64 noundef %i.bi, ptr noundef %3)
          to label %bb.s unwind label %bb.u

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
  %i.dk = icmp slt i32 %i.aa, 1
  %.not.i260.i = icmp eq i32 %i.aa, 1
  %i.dl = zext nneg i32 %i.aa to i64
  %i.dm = sext i32 %i.l to i64                    ; 6 uses
  %i.dn = and i64 %i.bh, -4
  %scevgep.i = getelementptr i8, ptr %i.cy, i64 %i.dn
  %i.do = call i64 @llvm.umax.i64(i64 %i.az, i64 1)
  %.pre577.i = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 64
  br label %bb.aj

.critedge219.preheader.i:                         ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.preheader.i
  %.not553.i = icmp sgt i64 %i.az, 1
  br i1 %.not553.i, label %.lr.ph555.i, label %.critedge222.i

.lr.ph555.i:                                      ; preds = %.critedge219.preheader.i
  %i.dq = sext i32 %i.l to i64                    ; 3 uses
  br label %bb.bh

bb.ai:                                            ; preds = %bb.ah
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.aj:                                            ; preds = %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, %.lr.ph552.i
  %.val578.i = phi ptr [ %.pre577.i, %.lr.ph552.i ], [ %.val.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %.0163550.i = phi ptr [ %i.by, %.lr.ph552.i ], [ %.1164.i, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 6 uses
  %.0166549.i = phi i64 [ %i.dg, %.lr.ph552.i ], [ %i.ix, %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i ] ; 2 uses
  %i.ds = load ptr, ptr %i.co, align 8, !tbaa !46, !noalias !23
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %.val578.i to i64
  %i.dv = sub i64 %i.dt, %i.du
  %i.dw = ashr exact i64 %i.dv, 3                 ; 5 uses
  %i.dx = icmp sgt i64 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.aj
  %i.dy = load ptr, ptr %i.dp, align 8, !tbaa !49 ; 2 uses
  %min.iters.check = icmp ult i64 %i.dw, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %i.dw, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %vec.phi149 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.val578.i, i64 %index ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load = load <2 x i64>, ptr %i.dz, align 8, !tbaa !51
  %wide.load150 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !51
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %wide.load151 = load <2 x i64>, ptr %i.eb, align 8, !tbaa !51
  %wide.load152 = load <2 x i64>, ptr %i.ec, align 8, !tbaa !51
  %i.ed = mul nsw <2 x i64> %wide.load151, %wide.load
  %i.ee = mul nsw <2 x i64> %wide.load152, %wide.load150
  %i.ef = add <2 x i64> %i.ed, %vec.phi           ; 2 uses
  %i.eg = add <2 x i64> %i.ee, %vec.phi149        ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.eh = icmp eq i64 %index.next, %n.vec
  br i1 %i.eh, label %middle.block, label %vector.body, !llvm.loop !74

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.eg, %i.ef
  %i.ei = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.dw, %n.vec
  br i1 %cmp.n, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %.011.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  %.0910.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ei, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.011.i.i.i = phi i64 [ %i.ep, %scalar.ph ], [ %.011.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.0910.i.i.i = phi i64 [ %i.eo, %scalar.ph ], [ %.0910.i.i.i.ph, %scalar.ph.preheader ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val578.i, i64 %.011.i.i.i
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !51
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.011.i.i.i
  %i.em = load i64, ptr %i.el, align 8, !tbaa !51
  %i.en = mul nsw i64 %i.em, %i.ek
  %i.eo = add nsw i64 %i.en, %.0910.i.i.i         ; 2 uses
  %i.ep = add nuw nsw i64 %.011.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ep, %i.dw
  br i1 %exitcond.not.i.i.i, label %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i, label %scalar.ph, !llvm.loop !78

_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i: ; preds = %scalar.ph, %middle.block, %bb.aj
  %.09.lcssa.i.i.i = phi i64 [ 0, %bb.aj ], [ %i.ei, %middle.block ], [ %i.eo, %scalar.ph ] ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %i.cy, i64 %.09.lcssa.i.i.i ; 5 uses
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.bh ; 2 uses
  %i.es = ptrtoint ptr %i.er to i64
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %scevgep571.i = getelementptr i8, ptr %scevgep.i, i64 %.09.lcssa.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i.preheader.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.fb, %bb.an ], [ %i.di, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.fa, %bb.an ], [ %i.eq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.et = load i8, ptr %.02946.i.i.i.i.i.i, align 1, !tbaa !39
  %.not523.i = icmp eq i8 %i.et, 0
  br i1 %.not523.i, label %bb.ak, label %.loopexit.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !39
  %.not524.i = icmp eq i8 %i.ev, 0
  br i1 %.not524.i, label %bb.al, label %.loopexit.i.loopexit.split.loop.exit135

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !39
  %.not525.i = icmp eq i8 %i.ex, 0
  br i1 %.not525.i, label %bb.am, label %.loopexit.i.loopexit.split.loop.exit133

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !39
  %.not526.i = icmp eq i8 %i.ez, 0
  br i1 %.not526.i, label %bb.an, label %.loopexit.i.loopexit.split.loop.exit

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.fb = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.fc = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !79

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.an, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i ], [ %scevgep571.i, %bb.an ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.fd = sub i64 %i.es, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.fd, label %.critedge217.i [
    i64 3, label %bb.ao
    i64 2, label %bb.aq
    i64 1, label %bb.as
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fe = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !39
  %.not527.i = icmp eq i8 %i.fe, 0
  br i1 %.not527.i, label %bb.ap, label %.loopexit.i

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ff, %bb.ap ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.fg = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !39
  %.not528.i = icmp eq i8 %i.fg, 0
  br i1 %.not528.i, label %bb.ar, label %.loopexit.i

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ar ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fi = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !39
  %.not529.i = icmp eq i8 %i.fi, 0
  br i1 %.not529.i, label %.critedge217.i, label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit:             ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit133:          ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %.loopexit.i

.loopexit.i.loopexit.split.loop.exit135:          ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit.i.loopexit.split.loop.exit, %.loopexit.i.loopexit.split.loop.exit133, %.loopexit.i.loopexit.split.loop.exit135, %bb.as, %bb.aq, %bb.ao
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.aq ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ao ], [ %.2.i.i.i.i.i.i, %bb.as ], [ %i.fl, %.loopexit.i.loopexit.split.loop.exit135 ], [ %i.fj, %.loopexit.i.loopexit.split.loop.exit ], [ %i.fk, %.loopexit.i.loopexit.split.loop.exit133 ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not530.i = icmp eq ptr %i.er, %.028.i.i.i.i.i.i
  br i1 %.not530.i, label %.critedge217.i, label %bb.at

bb.at:                                            ; preds = %.loopexit.i
  br i1 %i.dk, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i260.i, label %bb.aw, label %bb.av, !prof !45

bb.av:                                            ; preds = %bb.au
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0163550.i, ptr align 1 %i.eq, i64 %i.dl, i1 false)
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.fm = load i8, ptr %i.eq, align 1, !tbaa !39
  store i8 %i.fm, ptr %.0163550.i, align 1, !tbaa !39
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i:            ; preds = %bb.aw, %bb.av, %bb.at
  %i.fn = getelementptr inbounds i8, ptr %.0163550.i, i64 %i.bh
  br i1 %.not.i.i.i.i237.i, label %.critedge215.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %.pre579.i = load ptr, ptr %12, align 8, !tbaa !49, !noalias !23
  br label %.lr.ph.i

bb.ax:                                            ; preds = %.critedge215.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.lr.ph.i:                                         ; preds = %.critedge.i, %.lr.ph.preheader.i
  %31 = phi ptr [ %32, %.critedge.i ], [ %.pre579.i, %.lr.ph.preheader.i ] ; 2 uses
  %.0161548.i = phi i64 [ %i.ht, %.critedge.i ], [ 0, %.lr.ph.preheader.i ] ; 7 uses
  %.0162547.i = phi i1 [ %i.hs, %.critedge.i ], [ false, %.lr.ph.preheader.i ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %31, i64 %.0161548.i
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !51 ; 3 uses
  br i1 %.0162547.i, label %.thread510.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i
  %i.fr = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.fq
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !51
  %i.fu = load ptr, ptr %18, align 8, !tbaa !49, !noalias !23
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fq
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !51
  %.not531.i = icmp eq i64 %i.ft, %i.fw
  br i1 %.not531.i, label %.critedge.i, label %.thread510.i

.thread510.i:                                     ; preds = %bb.ay, %.lr.ph.i
  %i.fx = icmp slt i64 %.0161548.i, %i.cq
  br i1 %i.fx, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %.thread510.i
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0161548.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !51
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.ga, i32 noundef %i.l)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gb = load ptr, ptr %19, align 8, !tbaa !80, !noalias !23
  %i.gc = getelementptr inbounds nuw [56 x i8], ptr %i.gb, i64 %.0161548.i ; 4 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 40 ; 4 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !83, !noalias !88 ; 2 uses
  %i.gf = add nsw i64 %i.ge, %i.dm                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !91, !noalias !88 ; 2 uses
  %i.gi = icmp sgt i64 %i.gf, %i.gh
  br i1 %i.gi, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit267.i, !prof !45

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !92
  %i.gj = shl nsw i64 %i.gh, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gf, i64 %i.gj)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.gc, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false)
          to label %.noexc261.i unwind label %bb.bc

.noexc261.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.gk = load ptr, ptr %9, align 8, !tbaa !26, !noalias !92 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !92
  %i.gl = icmp eq ptr %i.gk, null
  br i1 %i.gl, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %_ZN5arrow6StatusD2Ev.exit263.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %.noexc261.i
  %.pre.i.i = load i64, ptr %i.gd, align 8, !tbaa !83, !noalias !88
  br label %_ZN5arrow6StatusD2Ev.exit267.i

_ZN5arrow6StatusD2Ev.exit263.i:                   ; preds = %.noexc261.i
  store ptr %i.gk, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.bb:                                            ; preds = %bb.bd, %bb.az
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit267.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, %bb.ba
  %i.go = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.ge, %bb.ba ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gc, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !93, !noalias !88
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %i.go
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gr, ptr nonnull align 1 %i.a, i64 %i.dm, i1 false), !noalias !88
  %i.gs = load i64, ptr %i.gd, align 8, !tbaa !83, !noalias !88
  %i.gt = add nsw i64 %i.gs, %i.dm
  store i64 %i.gt, ptr %i.gd, align 8, !tbaa !83, !noalias !88
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit267.i, %.thread510.i
  %i.gu = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gu, i64 %i.fq
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !51
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.gw, i32 noundef %i.l)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.gx = load ptr, ptr %21, align 8, !tbaa !80, !noalias !23
  %i.gy = getelementptr inbounds nuw [56 x i8], ptr %i.gx, i64 %.0161548.i ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40 ; 4 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !83, !noalias !94 ; 2 uses
  %i.hb = add nsw i64 %i.ha, %i.dm                ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !91, !noalias !94 ; 2 uses
  %i.he = icmp sgt i64 %i.hb, %i.hd
  br i1 %i.he, label %_ZN5arrow6StatusD2Ev.exit.i268.i, label %_ZN5arrow6StatusD2Ev.exit279.i, !prof !45

_ZN5arrow6StatusD2Ev.exit.i268.i:                 ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !97
  %i.hf = shl nsw i64 %i.hd, 1
  %.sroa.speculated.i.i269.i = call noundef i64 @llvm.smax.i64(i64 %i.hb, i64 %i.hf)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.gy, i64 noundef %.sroa.speculated.i.i269.i, i1 noundef zeroext false)
          to label %.noexc272.i unwind label %bb.bf

.noexc272.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.hg = load ptr, ptr %8, align 8, !tbaa !26, !noalias !97 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !97
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, label %_ZN5arrow6StatusD2Ev.exit275.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i:      ; preds = %.noexc272.i
  %.pre.i271.i = load i64, ptr %i.gz, align 8, !tbaa !83, !noalias !94
  br label %_ZN5arrow6StatusD2Ev.exit279.i

_ZN5arrow6StatusD2Ev.exit275.i:                   ; preds = %.noexc272.i
  store ptr %i.hg, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.bf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit279.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, %bb.be
  %i.hj = phi i64 [ %.pre.i271.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i ], [ %i.ha, %bb.be ]
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !93, !noalias !94
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.hj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr nonnull align 1 %i.a, i64 %i.dm, i1 false), !noalias !94
  %i.hn = load i64, ptr %i.gz, align 8, !tbaa !83, !noalias !94
  %i.ho = add nsw i64 %i.hn, %i.dm
  store i64 %i.ho, ptr %i.gz, align 8, !tbaa !83, !noalias !94
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0161548.i ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !51
  %i.hr = add nsw i64 %i.hq, 1
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !51
  %.pre578.i = load ptr, ptr %12, align 8, !tbaa !49, !noalias !23
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit279.i, %bb.ay
  %32 = phi ptr [ %.pre578.i, %_ZN5arrow6StatusD2Ev.exit279.i ], [ %31, %bb.ay ]
  %i.hs = phi i1 [ true, %_ZN5arrow6StatusD2Ev.exit279.i ], [ false, %bb.ay ]
  %i.ht = add nuw nsw i64 %.0161548.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ht, %i.do
  br i1 %exitcond.not.i, label %.critedge215.i, label %.lr.ph.i, !llvm.loop !98

.critedge215.i:                                   ; preds = %.critedge.i, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %i.hu = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.critedge215..critedge217_crit_edge.i unwind label %bb.ax ; 0 uses

.critedge215..critedge217_crit_edge.i:            ; preds = %.critedge215.i
  %.val.pre.i = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  br label %.critedge217.i

.critedge217.i:                                   ; preds = %.critedge215..critedge217_crit_edge.i, %.loopexit.i, %bb.as, %._crit_edge.i.i.i.i.i.i
  %.val.i = phi ptr [ %.val.pre.i, %.critedge215..critedge217_crit_edge.i ], [ %.val578.i, %.loopexit.i ], [ %.val578.i, %._crit_edge.i.i.i.i.i.i ], [ %.val578.i, %bb.as ] ; 4 uses
  %.1164.i = phi ptr [ %i.fn, %.critedge215..critedge217_crit_edge.i ], [ %.0163550.i, %.loopexit.i ], [ %.0163550.i, %._crit_edge.i.i.i.i.i.i ], [ %.0163550.i, %bb.as ]
  %.val229.i = load ptr, ptr %i.e, align 8, !tbaa !49 ; 3 uses
  %.val230.i = load ptr, ptr %i.ar, align 8, !tbaa !46
  %.val231.i = load ptr, ptr %12, align 8, !tbaa !49, !noalias !23 ; 3 uses
  %i.hv = ptrtoint ptr %.val230.i to i64
  %i.hw = ptrtoint ptr %.val229.i to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = ashr exact i64 %i.hx, 3                 ; 2 uses
  %i.hz = add nsw i64 %i.hy, -1                   ; 2 uses
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.hz
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !51 ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ib ; 2 uses
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !51
  %i.ie = add nsw i64 %i.id, 1                    ; 2 uses
  store i64 %i.ie, ptr %i.ic, align 8, !tbaa !51
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.ib
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !51
  %i.ih = icmp eq i64 %i.ie, %i.ig
  %i.ii = icmp sgt i64 %i.hy, 1
  %or.cond.i.i = and i1 %i.ii, %i.ih
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %.critedge217.i, %bb.bg
  %.05.i.i = phi i64 [ %i.iq, %bb.bg ], [ %i.hz, %.critedge217.i ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %.05.i.i
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !51 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ik ; 2 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !51
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.ik
  %i.io = load i64, ptr %i.in, align 8, !tbaa !51
  %i.ip = icmp eq i64 %i.im, %i.io
  br i1 %i.ip, label %bb.bg, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i

bb.bg:                                            ; preds = %.lr.ph.i.i
  store i64 0, ptr %i.il, align 8, !tbaa !51
  %i.iq = add nsw i64 %.05.i.i, -1                ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.iq
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !51
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.is ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !51
  %i.iv = add nsw i64 %i.iu, 1
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !51
  %i.iw = icmp sgt i64 %.05.i.i, 1
  br i1 %i.iw, label %.lr.ph.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i, !llvm.loop !99

_ZN5arrow8internal12_GLOBAL__N_114IncrementIndexERSt6vectorIlSaIlEERKS4_S7_.exit.i: ; preds = %bb.bg, %.lr.ph.i.i, %.critedge217.i
  %i.ix = add nsw i64 %.0166549.i, -1
  %i.iy = icmp slt i64 %.0166549.i, 2
  br i1 %i.iy, label %.critedge219.preheader.i, label %bb.aj, !llvm.loop !100

bb.bh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.lr.ph555.i
  %.0144554.i = phi i64 [ 0, %.lr.ph555.i ], [ %i.iz, %_ZN5arrow6StatusD2Ev.exit291.i ] ; 2 uses
  %i.iz = add nuw nsw i64 %.0144554.i, 1          ; 3 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %i.iz
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !51
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.jb, i32 noundef %i.l)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jc = load ptr, ptr %19, align 8, !tbaa !80, !noalias !23
  %i.jd = getelementptr inbounds nuw [56 x i8], ptr %i.jc, i64 %.0144554.i ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40 ; 4 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !83, !noalias !101 ; 2 uses
  %i.jg = add nsw i64 %i.jf, %i.dq                ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !91, !noalias !101 ; 2 uses
  %i.jj = icmp sgt i64 %i.jg, %i.ji
  br i1 %i.jj, label %_ZN5arrow6StatusD2Ev.exit.i280.i, label %_ZN5arrow6StatusD2Ev.exit291.i, !prof !45

_ZN5arrow6StatusD2Ev.exit.i280.i:                 ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !104
  %i.jk = shl nsw i64 %i.ji, 1
  %.sroa.speculated.i.i281.i = call noundef i64 @llvm.smax.i64(i64 %i.jg, i64 %i.jk)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.jd, i64 noundef %.sroa.speculated.i.i281.i, i1 noundef zeroext false)
          to label %.noexc284.i unwind label %bb.bk

.noexc284.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jl = load ptr, ptr %7, align 8, !tbaa !26, !noalias !104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !104
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, label %.critedge221.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i:      ; preds = %.noexc284.i
  %.pre.i283.i = load i64, ptr %i.je, align 8, !tbaa !83, !noalias !101
  br label %_ZN5arrow6StatusD2Ev.exit291.i

bb.bj:                                            ; preds = %bb.bh
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.bk:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit291.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, %bb.bi
  %i.jp = phi i64 [ %.pre.i283.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i ], [ %i.jf, %bb.bi ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !93, !noalias !101
  %i.js = getelementptr inbounds i8, ptr %i.jr, i64 %i.jp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.js, ptr nonnull align 1 %i.a, i64 %i.dq, i1 false), !noalias !101
  %i.jt = load i64, ptr %i.je, align 8, !tbaa !83, !noalias !101
  %i.ju = add nsw i64 %i.jt, %i.dq
  store i64 %i.ju, ptr %i.je, align 8, !tbaa !83, !noalias !101
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  %exitcond572.not.i = icmp eq i64 %i.iz, %i.cq
  br i1 %exitcond572.not.i, label %.critedge222.i, label %bb.bh, !llvm.loop !105

.critedge221.i:                                   ; preds = %.noexc284.i
  store ptr %i.jl, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

.critedge222.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.critedge219.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !23
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc294.i unwind label %bb.ag

.noexc294.i:                                      ; preds = %.critedge222.i
  %i.jv = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !38, !noalias !23 ; 8 uses
  %i.jy = load <2 x ptr>, ptr %i.jv, align 16, !tbaa !106, !noalias !23
  %i.jz = load <2 x ptr>, ptr %6, align 16, !tbaa !106, !noalias !23
  store <2 x ptr> %i.jz, ptr %i.jv, align 16, !tbaa !106, !noalias !23
  store <2 x ptr> %i.jy, ptr %6, align 16, !tbaa !106, !noalias !23
  %.not.i.i.i.i292.i = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i.i292.i, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.noexc294.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 4 uses
  %i.kb = load atomic i64, ptr %i.ka acquire, align 8 ; 2 uses
  %i.kc = icmp eq i64 %i.kb, 4294967297
  %i.kd = trunc i64 %i.kb to i32                  ; 2 uses
  br i1 %i.kc, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.ka, align 8, !tbaa !41
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 0, ptr %i.ke, align 4, !tbaa !43
  %i.kf = load ptr, ptr %i.jx, align 8, !tbaa !32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 16
  %i.kh = load ptr, ptr %i.kg, align 8
  call void %i.kh(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #20, !inline_history !107
  %i.ki = load ptr, ptr %i.jx, align 8, !tbaa !32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 24
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #20, !inline_history !107
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.kl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i.i293.i = icmp eq i8 %i.kl, 0
  br i1 %.not.i.i.i.i.i293.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.km = add nsw i32 %i.kd, -1
  store i32 %i.km, ptr %i.ka, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.kn = atomicrmw volatile add ptr %i.ka, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.kd, %bb.bo ], [ %i.kn, %bb.bp ]
  %i.ko = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ko, label %bb.bq, label %bb.br, !prof !45

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bm, %.noexc294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !23
  %i.kp = icmp ugt i64 %i.cq, 576460752303423487
  br i1 %i.kp, label %bb.bs, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc296.i unwind label %bb.ce

.noexc296.i:                                      ; preds = %bb.bs
  unreachable
end_hunk_1
