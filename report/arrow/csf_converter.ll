inline.NumInlined: 1083
inline.NumDeleted: 539
begin_hunk_0
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
define void @_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef captures(none) %4, ptr noundef captures(none) %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__shared_ptr.1", align 16 ; 5 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %8 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 4 uses
  %11 = alloca %"class.std::shared_ptr.3", align 8 ; 7 uses
  %12 = alloca %"class.std::vector", align 8      ; 11 uses
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
  store i32 %i.ao, ptr %i.ac, align 4, !tbaa !3
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

bb.s:                                             ; preds = %bb.r
  %i.bj = load ptr, ptr %15, align 8, !tbaa !26, !noalias !23
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.w, label %bb.t, !prof !50

bb.t:                                             ; preds = %bb.s
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %_ZN5arrow6StatusC2ERKS0_.exit236.i unwind label %bb.v

bb.u:                                             ; preds = %bb.r
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.v:                                             ; preds = %bb.t
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew
end_hunk_0
begin_hunk_1_@_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
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
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.val582.i, i64 %.011.i.i.i
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
  %scevgep575.i = getelementptr i8, ptr %scevgep.i, i64 %.09.lcssa.i.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.an, %.lr.ph.i.i.i.i.i.preheader.i
  %.047.i.i.i.i.i.i = phi i64 [ %i.fb, %bb.an ], [ %i.di, %.lr.ph.i.i.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i.i.i = phi ptr [ %i.fa, %bb.an ], [ %i.eq, %.lr.ph.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.et = load i8, ptr %.02946.i.i.i.i.i.i, align 1, !tbaa !39
  %.not526.i = icmp eq i8 %i.et, 0
  br i1 %.not526.i, label %bb.ak, label %.loopexit536.i

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !39
  %.not527.i = icmp eq i8 %i.ev, 0
  br i1 %.not527.i, label %bb.al, label %.loopexit536.i.loopexit.split.loop.exit135

bb.al:                                            ; preds = %bb.ak
  %i.ew = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !39
  %.not528.i = icmp eq i8 %i.ex, 0
  br i1 %.not528.i, label %bb.am, label %.loopexit536.i.loopexit.split.loop.exit133

bb.am:                                            ; preds = %bb.al
  %i.ey = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !39
  %.not529.i = icmp eq i8 %i.ez, 0
  br i1 %.not529.i, label %bb.an, label %.loopexit536.i.loopexit.split.loop.exit

bb.an:                                            ; preds = %bb.am
  %i.fa = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 4
  %i.fb = add nsw i64 %.047.i.i.i.i.i.i, -1
  %i.fc = icmp sgt i64 %.047.i.i.i.i.i.i, 1
  br i1 %i.fc, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !79

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.an, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i
  %.029.lcssa.i.i.i.i.i.i = phi ptr [ %i.eq, %_ZNK5arrow6Tensor20CalculateValueOffsetERKSt6vectorIlSaIlEE.exit.i ], [ %scevgep575.i, %bb.an ] ; 6 uses
  %.pre-phi.i.i.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i.i.i to i64
  %i.fd = sub i64 %i.es, %.pre-phi.i.i.i.i.i.i
  switch i64 %i.fd, label %.thread.i [
    i64 3, label %bb.ao
    i64 2, label %bb.aq
    i64 1, label %bb.as
  ]

bb.ao:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %i.fe = load i8, ptr %.029.lcssa.i.i.i.i.i.i, align 1, !tbaa !39
  %.not530.i = icmp eq i8 %i.fe, 0
  br i1 %.not530.i, label %bb.ap, label %.loopexit536.i

bb.ap:                                            ; preds = %bb.ao
  %i.ff = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i.i, i64 1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = phi ptr [ %i.ff, %bb.ap ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.fg = load i8, ptr %.1.i.i.i.i.i.i, align 1, !tbaa !39
  %.not531.i = icmp eq i8 %i.fg, 0
  br i1 %.not531.i, label %bb.ar, label %.loopexit536.i

bb.ar:                                            ; preds = %bb.aq
  %i.fh = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i.i, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i.i.i
  %.2.i.i.i.i.i.i = phi ptr [ %i.fh, %bb.ar ], [ %.029.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.fi = load i8, ptr %.2.i.i.i.i.i.i, align 1, !tbaa !39
  %.not532.i = icmp eq i8 %i.fi, 0
  br i1 %.not532.i, label %.thread.i, label %.loopexit536.i

.loopexit536.i.loopexit.split.loop.exit:          ; preds = %bb.am
  %i.fj = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 3
  br label %.loopexit536.i

.loopexit536.i.loopexit.split.loop.exit133:       ; preds = %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 2
  br label %.loopexit536.i

.loopexit536.i.loopexit.split.loop.exit135:       ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i.i.i, i64 1
  br label %.loopexit536.i

.loopexit536.i:                                   ; preds = %.lr.ph.i.i.i.i.i.i, %.loopexit536.i.loopexit.split.loop.exit, %.loopexit536.i.loopexit.split.loop.exit133, %.loopexit536.i.loopexit.split.loop.exit135, %bb.as, %bb.aq, %bb.ao
  %.028.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %bb.aq ], [ %.029.lcssa.i.i.i.i.i.i, %bb.ao ], [ %.2.i.i.i.i.i.i, %bb.as ], [ %i.fl, %.loopexit536.i.loopexit.split.loop.exit135 ], [ %i.fj, %.loopexit536.i.loopexit.split.loop.exit ], [ %i.fk, %.loopexit536.i.loopexit.split.loop.exit133 ], [ %.02946.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.not533.i = icmp eq ptr %i.er, %.028.i.i.i.i.i.i
  br i1 %.not533.i, label %.thread.i, label %bb.at

bb.at:                                            ; preds = %.loopexit536.i
  br i1 %i.dk, label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not.i260.i, label %bb.aw, label %bb.av, !prof !45

bb.av:                                            ; preds = %bb.au
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0163554.i, ptr align 1 %i.eq, i64 %i.dl, i1 false)
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

bb.aw:                                            ; preds = %bb.au
  %i.fm = load i8, ptr %i.eq, align 1, !tbaa !39
  store i8 %i.fm, ptr %.0163554.i, align 1, !tbaa !39
  br label %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i

_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i:            ; preds = %bb.aw, %bb.av, %bb.at
  %i.fn = getelementptr inbounds i8, ptr %.0163554.i, i64 %i.bh
  br i1 %.not.i.i.i.i237.i, label %.critedge215.i, label %.lr.ph.i

bb.ax:                                            ; preds = %.critedge215.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

.lr.ph.i:                                         ; preds = %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i, %.critedge.i
  %.0161552.i = phi i64 [ %i.hu, %.critedge.i ], [ 0, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i ] ; 7 uses
  %.0162551.i = phi i1 [ %i.ht, %.critedge.i ], [ false, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i ]
  %i.fp = load ptr, ptr %12, align 8, !tbaa !49, !noalias !23
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.0161552.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !51 ; 3 uses
  br i1 %.0162551.i, label %.thread510.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i
  %i.fs = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %i.fr
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !51
  %i.fv = load ptr, ptr %18, align 8, !tbaa !49, !noalias !23
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fr
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !51
  %.not534.i = icmp eq i64 %i.fu, %i.fx
  br i1 %.not534.i, label %.critedge.i, label %.thread510.i

.thread510.i:                                     ; preds = %bb.ay, %.lr.ph.i
  %i.fy = icmp slt i64 %.0161552.i, %i.cq
  br i1 %i.fy, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %.thread510.i
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0161552.i
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !51
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.gb, i32 noundef %i.l)
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gc = load ptr, ptr %19, align 8, !tbaa !80, !noalias !23
  %i.gd = getelementptr inbounds nuw [56 x i8], ptr %i.gc, i64 %.0161552.i ; 4 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 40 ; 4 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !83, !noalias !88 ; 2 uses
  %i.gg = add nsw i64 %i.gf, %i.dm                ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !91, !noalias !88 ; 2 uses
  %i.gj = icmp sgt i64 %i.gg, %i.gi
  br i1 %i.gj, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit267.i, !prof !45

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20, !noalias !92
  %i.gk = shl nsw i64 %i.gi, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.gg, i64 %i.gk)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(56) %i.gd, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false)
          to label %.noexc261.i unwind label %bb.bc

.noexc261.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.gl = load ptr, ptr %9, align 8, !tbaa !26, !noalias !92 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20, !noalias !92
  %i.gm = icmp eq ptr %i.gl, null
  br i1 %i.gm, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %_ZN5arrow6StatusD2Ev.exit263.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %.noexc261.i
  %.pre.i.i = load i64, ptr %i.ge, align 8, !tbaa !83, !noalias !88
  br label %_ZN5arrow6StatusD2Ev.exit267.i

_ZN5arrow6StatusD2Ev.exit263.i:                   ; preds = %.noexc261.i
  store ptr %i.gl, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.bb:                                            ; preds = %bb.bd, %bb.az
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.bc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit267.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, %bb.ba
  %i.gp = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.gf, %bb.ba ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !93, !noalias !88
  %i.gs = getelementptr inbounds i8, ptr %i.gr, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gs, ptr nonnull align 1 %i.a, i64 %i.dm, i1 false), !noalias !88
  %i.gt = load i64, ptr %i.ge, align 8, !tbaa !83, !noalias !88
  %i.gu = add nsw i64 %i.gt, %i.dm
  store i64 %i.gu, ptr %i.ge, align 8, !tbaa !83, !noalias !88
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %bb.bd

bb.bd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit267.i, %.thread510.i
  %i.gv = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.fr
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !51
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.gx, i32 noundef %i.l)
          to label %bb.be unwind label %bb.bb

bb.be:                                            ; preds = %bb.bd
  %i.gy = load ptr, ptr %21, align 8, !tbaa !80, !noalias !23
  %i.gz = getelementptr inbounds nuw [56 x i8], ptr %i.gy, i64 %.0161552.i ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 4 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !83, !noalias !94 ; 2 uses
  %i.hc = add nsw i64 %i.hb, %i.dm                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !91, !noalias !94 ; 2 uses
  %i.hf = icmp sgt i64 %i.hc, %i.he
  br i1 %i.hf, label %_ZN5arrow6StatusD2Ev.exit.i268.i, label %_ZN5arrow6StatusD2Ev.exit279.i, !prof !45

_ZN5arrow6StatusD2Ev.exit.i268.i:                 ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20, !noalias !97
  %i.hg = shl nsw i64 %i.he, 1
  %.sroa.speculated.i.i269.i = call noundef i64 @llvm.smax.i64(i64 %i.hc, i64 %i.hg)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %8, ptr noundef nonnull align 8 dereferenceable(56) %i.gz, i64 noundef %.sroa.speculated.i.i269.i, i1 noundef zeroext false)
          to label %.noexc272.i unwind label %bb.bf

.noexc272.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.hh = load ptr, ptr %8, align 8, !tbaa !26, !noalias !97 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20, !noalias !97
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, label %_ZN5arrow6StatusD2Ev.exit275.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i:      ; preds = %.noexc272.i
  %.pre.i271.i = load i64, ptr %i.ha, align 8, !tbaa !83, !noalias !94
  br label %_ZN5arrow6StatusD2Ev.exit279.i

_ZN5arrow6StatusD2Ev.exit275.i:                   ; preds = %.noexc272.i
  store ptr %i.hh, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.bf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i268.i
  %i.hj = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit279.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i, %bb.be
  %i.hk = phi i64 [ %.pre.i271.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i270.i ], [ %i.hb, %bb.be ]
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gz, i64 24
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !93, !noalias !94
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hn, ptr nonnull align 1 %i.a, i64 %i.dm, i1 false), !noalias !94
  %i.ho = load i64, ptr %i.ha, align 8, !tbaa !83, !noalias !94
  %i.hp = add nsw i64 %i.ho, %i.dm
  store i64 %i.hp, ptr %i.ha, align 8, !tbaa !83, !noalias !94
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %.0161552.i ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !51
  %i.hs = add nsw i64 %i.hr, 1
  store i64 %i.hs, ptr %i.hq, align 8, !tbaa !51
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit279.i, %bb.ay
  %i.ht = phi i1 [ true, %_ZN5arrow6StatusD2Ev.exit279.i ], [ false, %bb.ay ]
  %i.hu = add nuw nsw i64 %.0161552.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.hu, %i.do
  br i1 %exitcond.not.i, label %.critedge215.i, label %.lr.ph.i, !llvm.loop !98

.critedge215.i:                                   ; preds = %.critedge.i, %_ZSt6copy_nIPKhiPhET1_T_T0_S3_.exit.i
  %i.hv = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIlSaIlEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %17)
          to label %.critedge215..thread_crit_edge.i unwind label %bb.ax ; 0 uses

.critedge215..thread_crit_edge.i:                 ; preds = %.critedge215.i
  %.val.pre.i = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23
  br label %.thread.i

.thread.i:                                        ; preds = %.critedge215..thread_crit_edge.i, %.loopexit536.i, %bb.as, %._crit_edge.i.i.i.i.i.i
  %.val.i = phi ptr [ %.val.pre.i, %.critedge215..thread_crit_edge.i ], [ %.val582.i, %.loopexit536.i ], [ %.val582.i, %._crit_edge.i.i.i.i.i.i ], [ %.val582.i, %bb.as ] ; 4 uses
  %.1164.i = phi ptr [ %i.fn, %.critedge215..thread_crit_edge.i ], [ %.0163554.i, %.loopexit536.i ], [ %.0163554.i, %._crit_edge.i.i.i.i.i.i ], [ %.0163554.i, %bb.as ]
  %.val229.i = load ptr, ptr %i.e, align 8, !tbaa !49 ; 3 uses
  %.val230.i = load ptr, ptr %i.ar, align 8, !tbaa !46
  %.val231.i = load ptr, ptr %12, align 8, !tbaa !49, !noalias !23 ; 3 uses
  %i.hw = ptrtoint ptr %.val230.i to i64
  %i.hx = ptrtoint ptr %.val229.i to i64
  %i.hy = sub i64 %i.hw, %i.hx
  %i.hz = ashr exact i64 %i.hy, 3                 ; 2 uses
  %i.ia = add nsw i64 %i.hz, -1                   ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.ia
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !51 ; 2 uses
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.ic ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !51
  %i.if = add nsw i64 %i.ie, 1                    ; 2 uses
  store i64 %i.if, ptr %i.id, align 8, !tbaa !51
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.ic
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !51
  %i.ii = icmp eq i64 %i.if, %i.ih
  %i.ij = icmp sgt i64 %i.hz, 1
  %or.cond.i.i = and i1 %i.ij, %i.ii
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.thread.i, %bb.bg
  %.05.i.i = phi i64 [ %i.ir, %bb.bg ], [ %i.ia, %.thread.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %.05.i.i
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !51 ; 2 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.il ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !51
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.val229.i, i64 %i.il
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !51
  %i.iq = icmp eq i64 %i.in, %i.ip
  br i1 %i.iq, label %bb.bg, label %.loopexit.i

bb.bg:                                            ; preds = %.lr.ph.i.i
  store i64 0, ptr %i.im, align 8, !tbaa !51
  %i.ir = add nsw i64 %.05.i.i, -1                ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %.val231.i, i64 %i.ir
  %i.it = load i64, ptr %i.is, align 8, !tbaa !51
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %i.it ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !51
  %i.iw = add nsw i64 %i.iv, 1
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !51
  %i.ix = icmp sgt i64 %.05.i.i, 1
  br i1 %i.ix, label %.lr.ph.i.i, label %.loopexit.i, !llvm.loop !99

.loopexit.i:                                      ; preds = %bb.bg, %.lr.ph.i.i, %.thread.i
  %i.iy = add nsw i64 %.0166553.i, -1
  %i.iz = icmp slt i64 %.0166553.i, 2
  br i1 %i.iz, label %.critedge219.preheader.i, label %bb.aj, !llvm.loop !100

bb.bh:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.lr.ph559.i
  %.0144558.i = phi i64 [ 0, %.lr.ph559.i ], [ %i.ja, %_ZN5arrow6StatusD2Ev.exit291.i ] ; 2 uses
  %i.ja = add nuw nsw i64 %.0144558.i, 1          ; 3 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0439.0493505.i, i64 %i.ja
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !51
  invoke void @_ZN5arrow8internal26SparseTensorConverterMixin11AssignIndexEPhli(ptr noundef nonnull %i.a, i64 noundef %i.jc, i32 noundef %i.l)
          to label %bb.bi unwind label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.jd = load ptr, ptr %19, align 8, !tbaa !80, !noalias !23
  %i.je = getelementptr inbounds nuw [56 x i8], ptr %i.jd, i64 %.0144558.i ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 40 ; 4 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !83, !noalias !101 ; 2 uses
  %i.jh = add nsw i64 %i.jg, %i.dq                ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !91, !noalias !101 ; 2 uses
  %i.jk = icmp sgt i64 %i.jh, %i.jj
  br i1 %i.jk, label %_ZN5arrow6StatusD2Ev.exit.i280.i, label %_ZN5arrow6StatusD2Ev.exit291.i, !prof !45

_ZN5arrow6StatusD2Ev.exit.i280.i:                 ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20, !noalias !104
  %i.jl = shl nsw i64 %i.jj, 1
  %.sroa.speculated.i.i281.i = call noundef i64 @llvm.smax.i64(i64 %i.jh, i64 %i.jl)
  invoke void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, ptr noundef nonnull align 8 dereferenceable(56) %i.je, i64 noundef %.sroa.speculated.i.i281.i, i1 noundef zeroext false)
          to label %.noexc284.i unwind label %bb.bk

.noexc284.i:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jm = load ptr, ptr %7, align 8, !tbaa !26, !noalias !104 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20, !noalias !104
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, label %.critedge221.i

_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i:      ; preds = %.noexc284.i
  %.pre.i283.i = load i64, ptr %i.jf, align 8, !tbaa !83, !noalias !101
  br label %_ZN5arrow6StatusD2Ev.exit291.i

bb.bj:                                            ; preds = %bb.bh
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

bb.bk:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.i280.i
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eo

_ZN5arrow6StatusD2Ev.exit291.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i, %bb.bi
  %i.jq = phi i64 [ %.pre.i283.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i282.i ], [ %i.jg, %bb.bi ]
  %i.jr = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !93, !noalias !101
  %i.jt = getelementptr inbounds i8, ptr %i.js, i64 %i.jq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr nonnull align 1 %i.a, i64 %i.dq, i1 false), !noalias !101
  %i.ju = load i64, ptr %i.jf, align 8, !tbaa !83, !noalias !101
  %i.jv = add nsw i64 %i.ju, %i.dq
  store i64 %i.jv, ptr %i.jf, align 8, !tbaa !83, !noalias !101
  store ptr null, ptr %30, align 8, !tbaa !26, !alias.scope !23
  %exitcond576.not.i = icmp eq i64 %i.ja, %i.cq
  br i1 %exitcond576.not.i, label %.critedge222.i, label %bb.bh, !llvm.loop !105

.critedge221.i:                                   ; preds = %.noexc284.i
  store ptr %i.jm, ptr %30, align 8, !tbaa !26, !alias.scope !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

.critedge222.i:                                   ; preds = %_ZN5arrow6StatusD2Ev.exit291.i, %.critedge219.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20, !noalias !23
  invoke void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %.noexc294.i unwind label %bb.ag

.noexc294.i:                                      ; preds = %.critedge222.i
  %i.jw = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !38, !noalias !23 ; 8 uses
  %i.jz = load <2 x ptr>, ptr %i.jw, align 16, !tbaa !106, !noalias !23
  %i.ka = load <2 x ptr>, ptr %6, align 16, !tbaa !106, !noalias !23
  store <2 x ptr> %i.ka, ptr %i.jw, align 16, !tbaa !106, !noalias !23
  store <2 x ptr> %i.jz, ptr %6, align 16, !tbaa !106, !noalias !23
  %.not.i.i.i.i292.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i.i.i292.i, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.noexc294.i
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 8 ; 4 uses
  %i.kc = load atomic i64, ptr %i.kb acquire, align 8 ; 2 uses
  %i.kd = icmp eq i64 %i.kc, 4294967297
  %i.ke = trunc i64 %i.kc to i32                  ; 2 uses
  br i1 %i.kd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.kb, align 8, !tbaa !41
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %i.kf, align 4, !tbaa !43
  %i.kg = load ptr, ptr %i.jy, align 8, !tbaa !32
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #20, !inline_history !107
  %i.kj = load ptr, ptr %i.jy, align 8, !tbaa !32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #20, !inline_history !107
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.km = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i.i293.i = icmp eq i8 %i.km, 0
  br i1 %.not.i.i.i.i.i293.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kn = add nsw i32 %i.ke, -1
  store i32 %i.kn, ptr %i.kb, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.bp:                                            ; preds = %bb.bn
  %i.ko = atomicrmw volatile add ptr %i.kb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bo
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ke, %bb.bo ], [ %i.ko, %bb.bp ]
  %i.kp = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.kp, label %bb.bq, label %bb.br, !prof !45

bb.bq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jy) #20
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.bm, %.noexc294.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20, !noalias !23
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !23
  %i.kq = icmp ugt i64 %i.cq, 576460752303423487
  br i1 %i.kq, label %bb.bs, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc296.i unwind label %bb.ce

.noexc296.i:                                      ; preds = %bb.bs
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i: ; preds = %bb.br
  %.not.i.i.i.i295.i = icmp eq i64 %i.cq, 0       ; 2 uses
  br i1 %.not.i.i.i.i295.i, label %.thread514.i, label %.lr.ph.preheader.i.i.i.i.i.i

.thread514.i:                                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.kr = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ks = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false), !noalias !23
  br label %.lr.ph.preheader.i.i.i.i.i300.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %i.kt = shl nuw nsw i64 %i.cq, 4                ; 3 uses
  %i.ku = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kt) #22
          to label %bb.bt unwind label %bb.ce     ; 4 uses

bb.bt:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  store ptr %i.ku, ptr %23, align 8, !tbaa !108, !noalias !23
  %i.kv = getelementptr inbounds nuw [16 x i8], ptr %i.ku, i64 %i.cq
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ku, i8 0, i64 %i.kt, i1 false)
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.ku, i64 %i.kt
  %i.kw = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  store ptr %i.kv, ptr %i.kx, align 8, !tbaa !111, !noalias !23
  store ptr %scevgep.i.i.i.i.i.i, ptr %i.kw, align 8, !tbaa !112, !noalias !23
  br label %.lr.ph.preheader.i.i.i.i.i300.i

.lr.ph.preheader.i.i.i.i.i300.i:                  ; preds = %bb.bt, %.thread514.i
  %i.ky = phi ptr [ %i.ks, %.thread514.i ], [ %i.kx, %bb.bt ]
  %i.kz = phi ptr [ %i.kr, %.thread514.i ], [ %i.kw, %bb.bt ]
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !23
  %i.la = shl nuw nsw i64 %i.az, 4                ; 3 uses
  %i.lb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.la) #22
          to label %bb.bu unwind label %bb.cf     ; 4 uses

bb.bu:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i300.i
  store ptr %i.lb, ptr %24, align 8, !tbaa !108, !noalias !23
  %i.lc = getelementptr inbounds nuw [16 x i8], ptr %i.lb, i64 %i.az
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.lb, i8 0, i64 %i.la, i1 false)
  %scevgep.i.i.i.i.i301.i = getelementptr i8, ptr %i.lb, i64 %i.la
  %i.ld = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  store ptr %i.lc, ptr %i.le, align 8, !tbaa !111, !noalias !23
  store ptr %scevgep.i.i.i.i.i301.i, ptr %i.ld, align 8, !tbaa !112, !noalias !23
  %i.lf = getelementptr inbounds i8, ptr %.0.i.i.i.i.i.i.i497503.i, i64 -8 ; 2 uses
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = ptrtoint ptr %.sroa.0439.0493505.i to i64 ; 2 uses
  %i.li = sub i64 %i.lg, %i.lh                    ; 7 uses
  %i.lj = icmp ugt i64 %i.li, 9223372036854775800
  br i1 %i.lj, label %bb.bv, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc.i.i unwind label %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i.i

.noexc.i.i:                                       ; preds = %bb.bv
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %bb.bu
  %.not.i.i.i308.i = icmp eq ptr %i.lf, %.sroa.0439.0493505.i
  br i1 %.not.i.i.i308.i, label %.thread.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr null, i64 %i.li
  br label %_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.ll = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.li) #22
          to label %.noexc5.i.i unwind label %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i.i ; 6 uses

.noexc5.i.i:                                      ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 %i.li ; 3 uses
  %i.ln = icmp samesign ugt i64 %i.li, 8
  br i1 %i.ln, label %bb.bw, label %bb.bx, !prof !113

bb.bw:                                            ; preds = %.noexc5.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ll, ptr align 8 %.sroa.0439.0493505.i, i64 %i.li, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i

bb.bx:                                            ; preds = %.noexc5.i.i
  %i.lo = icmp eq i64 %i.li, 8
  br i1 %i.lo, label %bb.by, label %_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.lp = load i64, ptr %.sroa.0439.0493505.i, align 8, !tbaa !51
  store i64 %i.lp, ptr %i.ll, align 8, !tbaa !51
  br label %_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i

_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i.i:         ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i.i, %bb.bv
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i: ; preds = %bb.by, %bb.bx, %bb.bw, %.thread.i.i.i
  %.sroa.0427.0.i = phi ptr [ null, %.thread.i.i.i ], [ %i.ll, %bb.bw ], [ %i.ll, %bb.by ], [ %i.ll, %bb.bx ] ; 6 uses
  %.sroa.9.0.i = phi ptr [ %i.lk, %.thread.i.i.i ], [ %i.lm, %bb.bw ], [ %i.lm, %bb.by ], [ %i.lm, %bb.bx ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #20, !noalias !23
  %i.lr = ptrtoint ptr %.0.i.i.i.i.i.i.i497503.i to i64
  %i.ls = sub i64 %i.lr, %i.lh                    ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !23
  %.not.i.i.i.i309.i = icmp eq ptr %.0.i.i.i.i.i.i.i497503.i, %.sroa.0439.0493505.i
  br i1 %.not.i.i.i.i309.i, label %.thread517.i, label %bb.bz

.thread517.i:                                     ; preds = %_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i
  %i.lt = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.lu = getelementptr inbounds i8, ptr null, i64 %i.ls ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false), !noalias !23
  store ptr %i.lu, ptr %i.lv, align 8, !tbaa !72, !noalias !23
  br label %.lr.ph562.preheader.i

bb.bz:                                            ; preds = %_ZNSt6vectorIlSaIlEEC2IN9__gnu_cxx17__normal_iteratorIPlS1_EEvEET_S7_RKS0_.exit.i
  %i.lw = icmp ugt i64 %i.ls, 9223372036854775800
  br i1 %i.lw, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i, !prof !45

.noexc.i.i.i:                                     ; preds = %bb.bz
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #21
          to label %.noexc310.i unwind label %bb.cg

.noexc310.i:                                      ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.bz
  %i.lx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #22
          to label %.noexc311.i unwind label %bb.cg ; 5 uses

.noexc311.i:                                      ; preds = %_ZNSt15__new_allocatorIlE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.lx, ptr %25, align 8, !tbaa !49, !noalias !23
end_hunk_1
begin_hunk_2_@_ZN5arrow8internal29MakeSparseCSFTensorFromTensorERKNS_6TensorERKSt10shared_ptrINS_8DataTypeEEPNS_10MemoryPoolEPS4_INS_11SparseIndexEEPS4_INS_6BufferEE:bb.a
.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit343.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.pv, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i ], [ %i.pc, %_ZNSt6vectorIlSaIlEED2Ev.exit343.i ] ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !38 ; 8 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 4 uses
  %i.ph = load atomic i64, ptr %i.pg acquire, align 8 ; 2 uses
  %i.pi = icmp eq i64 %i.ph, 4294967297
  %i.pj = trunc i64 %i.ph to i32                  ; 2 uses
  br i1 %i.pi, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.pg, align 8, !tbaa !41
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pf, i64 12
  store i32 0, ptr %i.pk, align 4, !tbaa !43
  %i.pl = load ptr, ptr %i.pf, align 8, !tbaa !32
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #20, !inline_history !134
  %i.po = load ptr, ptr %i.pf, align 8, !tbaa !32
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pq = load ptr, ptr %i.pp, align 8
  call void %i.pq(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #20, !inline_history !134
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.de
  %i.pr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.pr, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ps = add nsw i32 %i.pj, -1
  store i32 %i.ps, ptr %i.pg, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.pt = atomicrmw volatile add ptr %i.pg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.pj, %bb.dh ], [ %i.pt, %bb.di ]
  %i.pu = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.pu, label %bb.dj, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, !prof !45

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pf) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i: ; preds = %bb.dj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.df, %.lr.ph.i.i.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i344.i = icmp eq ptr %i.pv, %i.pd
  br i1 %.not.i.i.i344.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !135

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.pr.i345.i = load ptr, ptr %24, align 8, !tbaa !108, !noalias !23
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIlSaIlEED2Ev.exit343.i
  %i.pw = phi ptr [ %.pr.i345.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.pc, %_ZNSt6vectorIlSaIlEED2Ev.exit343.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.pw, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.px = load ptr, ptr %i.le, align 8, !tbaa !111, !noalias !23
  %i.py = ptrtoint ptr %i.px to i64
  %i.pz = ptrtoint ptr %i.pw to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %i.pw, i64 noundef %i.qa) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i: ; preds = %bb.dk, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !23
  %i.qb = load ptr, ptr %23, align 8, !tbaa !108, !noalias !23 ; 3 uses
  %i.qc = load ptr, ptr %i.kz, align 8, !tbaa !112, !noalias !23 ; 2 uses
  %.not4.i.i.i346.i = icmp eq ptr %i.qb, %i.qc
  br i1 %.not4.i.i.i346.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i357.i, label %.lr.ph.i.i.i347.i

.lr.ph.i.i.i347.i:                                ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i
  %.05.i.i.i348.i = phi ptr [ %i.qu, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i ], [ %i.qb, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i ] ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.05.i.i.i348.i, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !38 ; 8 uses
  %.not.i.i.i.i.i.i.i349.i = icmp eq ptr %i.qe, null
  br i1 %.not.i.i.i.i.i.i.i349.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i.i347.i
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 8 ; 4 uses
  %i.qg = load atomic i64, ptr %i.qf acquire, align 8 ; 2 uses
  %i.qh = icmp eq i64 %i.qg, 4294967297
  %i.qi = trunc i64 %i.qg to i32                  ; 2 uses
  br i1 %i.qh, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %i.qf, align 8, !tbaa !41
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  store i32 0, ptr %i.qj, align 4, !tbaa !43
  %i.qk = load ptr, ptr %i.qe, align 8, !tbaa !32
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(16) %i.qe) #20, !inline_history !134
  %i.qn = load ptr, ptr %i.qe, align 8, !tbaa !32
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(16) %i.qe) #20, !inline_history !134
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i

bb.dn:                                            ; preds = %bb.dl
  %i.qq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i.i.i.i.i350.i = icmp eq i8 %i.qq, 0
  br i1 %.not.i.i.i.i.i.i.i.i350.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qr = add nsw i32 %i.qi, -1
  store i32 %i.qr, ptr %i.qf, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i351.i

bb.dp:                                            ; preds = %bb.dn
  %i.qs = atomicrmw volatile add ptr %i.qf, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i351.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i351.i: ; preds = %bb.dp, %bb.do
  %.0.i.i.i.i.i.i.i.i.i352.i = phi i32 [ %i.qi, %bb.do ], [ %i.qs, %bb.dp ]
  %i.qt = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i352.i, 1
  br i1 %i.qt, label %bb.dq, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i, !prof !45

bb.dq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i351.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.qe) #20
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i: ; preds = %bb.dq, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i351.i, %bb.dm, %.lr.ph.i.i.i347.i
  %i.qu = getelementptr inbounds nuw i8, ptr %.05.i.i.i348.i, i64 16 ; 2 uses
  %.not.i.i.i354.i = icmp eq ptr %i.qu, %i.qc
  br i1 %.not.i.i.i354.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i355.i, label %.lr.ph.i.i.i347.i, !llvm.loop !135

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i355.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i353.i
  %.pr.i356.i = load ptr, ptr %23, align 8, !tbaa !108, !noalias !23
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i357.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i357.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i355.i, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i
  %i.qv = phi ptr [ %.pr.i356.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i355.i ], [ %i.qb, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i358.i = icmp eq ptr %i.qv, null
  br i1 %.not.i.i1.i358.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit359.i, label %bb.dr

bb.dr:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i357.i
  %i.qw = load ptr, ptr %i.ky, align 8, !tbaa !111, !noalias !23
  %i.qx = ptrtoint ptr %i.qw to i64
  %i.qy = ptrtoint ptr %i.qv to i64
  %i.qz = sub i64 %i.qx, %i.qy
  call void @_ZdlPvm(ptr noundef nonnull %i.qv, i64 noundef %i.qz) #23
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit359.i

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit359.i: ; preds = %bb.dr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i357.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !23
  br label %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i

bb.ds:                                            ; preds = %bb.cm, %bb.cl, %bb.ci, %bb.ch
  %.pn186.pn.pn.i = phi { ptr, i32 } [ %i.mr, %bb.ch ], [ %i.mz, %bb.ci ], [ %i.nd, %bb.cm ], [ %i.nc, %bb.cl ] ; 2 uses
  %i.ra = load ptr, ptr %25, align 8, !tbaa !49, !noalias !23 ; 3 uses
  %.not.i.i.i360.i = icmp eq ptr %i.ra, null
  br i1 %.not.i.i.i360.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit362.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.rb = load ptr, ptr %i.me, align 8, !tbaa !72, !noalias !23
  %i.rc = ptrtoint ptr %i.rb to i64
  %i.rd = ptrtoint ptr %i.ra to i64
  %i.re = sub i64 %i.rc, %i.rd
  call void @_ZdlPvm(ptr noundef nonnull %i.ra, i64 noundef %i.re) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit362.i

_ZNSt6vectorIlSaIlEED2Ev.exit362.i:               ; preds = %bb.dt, %bb.ds, %bb.cg
  %.pn186.pn.pn.pn.i = phi { ptr, i32 } [ %i.mk, %bb.cg ], [ %.pn186.pn.pn.i, %bb.ds ], [ %.pn186.pn.pn.i, %bb.dt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #20, !noalias !23
  %.not.i.i.i363.i = icmp eq ptr %.sroa.0427.0.i, null
  br i1 %.not.i.i.i363.i, label %.body.i, label %bb.du

bb.du:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit362.i
  %i.rf = ptrtoint ptr %.sroa.9.0.i to i64
  %i.rg = ptrtoint ptr %.sroa.0427.0.i to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0427.0.i, i64 noundef %i.rh) #23
  br label %.body.i

.body.i:                                          ; preds = %bb.du, %_ZNSt6vectorIlSaIlEED2Ev.exit362.i, %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i.i
  %.pn186.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.lq, %_ZNSt12_Vector_baseIlSaIlEED2Ev.exit.i.i ], [ %.pn186.pn.pn.pn.i, %bb.du ], [ %.pn186.pn.pn.pn.i, %_ZNSt6vectorIlSaIlEED2Ev.exit362.i ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #20
  br label %bb.dv

bb.dv:                                            ; preds = %.body.i, %bb.cf
  %.pn186.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn.i, %.body.i ], [ %i.mj, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !23
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #20
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.ce
  %.pn186.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn186.pn.pn.pn.pn.pn.i, %bb.dv ], [ %i.mi, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !23
  br label %bb.eo

_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit359.i, %.critedge221.i, %_ZN5arrow6StatusD2Ev.exit275.i, %_ZN5arrow6StatusD2Ev.exit263.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20, !noalias !23
  %i.ri = load ptr, ptr %21, align 8, !tbaa !80, !noalias !23 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !136, !noalias !23 ; 2 uses
  %.not4.i.i.i366.i = icmp eq ptr %i.ri, %i.rk
  br i1 %.not4.i.i.i366.i, label %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i367.i

.lr.ph.i.i.i367.i:                                ; preds = %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i, %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i
  %.05.i.i.i368.i = phi ptr [ %i.sc, %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i ], [ %i.ri, %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i ] ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.05.i.i.i368.i, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !38 ; 8 uses
  %.not.i.i.i.i.i.i.i.i369.i = icmp eq ptr %i.rm, null
  br i1 %.not.i.i.i.i.i.i.i.i369.i, label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %.lr.ph.i.i.i367.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8 ; 4 uses
  %i.ro = load atomic i64, ptr %i.rn acquire, align 8 ; 2 uses
  %i.rp = icmp eq i64 %i.ro, 4294967297
  %i.rq = trunc i64 %i.ro to i32                  ; 2 uses
  br i1 %i.rp, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  store i32 0, ptr %i.rn, align 8, !tbaa !41
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  store i32 0, ptr %i.rr, align 4, !tbaa !43
  %i.rs = load ptr, ptr %i.rm, align 8, !tbaa !32
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16
  %i.ru = load ptr, ptr %i.rt, align 8
  call void %i.ru(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #20, !inline_history !137
  %i.rv = load ptr, ptr %i.rm, align 8, !tbaa !32
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 24
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #20, !inline_history !137
  br label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i

bb.dz:                                            ; preds = %bb.dx
  %i.ry = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i.i.i.i.i.i370.i = icmp eq i8 %i.ry, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i370.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.rz = add nsw i32 %i.rq, -1
  store i32 %i.rz, ptr %i.rn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.sa = atomicrmw volatile add ptr %i.rn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.eb, %bb.ea
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.rq, %bb.ea ], [ %i.sa, %bb.eb ]
  %i.sb = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.sb, label %bb.ec, label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i, !prof !45

bb.ec:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.rm) #20
  br label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i: ; preds = %bb.ec, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.dy, %.lr.ph.i.i.i367.i
  %i.sc = getelementptr inbounds nuw i8, ptr %.05.i.i.i368.i, i64 56 ; 2 uses
  %.not.i.i.i371.i = icmp eq ptr %i.sc, %i.rk
  br i1 %.not.i.i.i371.i, label %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i367.i, !llvm.loop !138

_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i.i
  %.pr.i372.i = load ptr, ptr %21, align 8, !tbaa !80, !noalias !23
  br label %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i
  %i.sd = phi ptr [ %.pr.i372.i, %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ri, %_ZN5arrow6Status14NotImplementedIJRA19_KcEEES0_DpOT_.exit.i ] ; 3 uses
  %.not.i.i1.i373.i = icmp eq ptr %i.sd, null
  br i1 %.not.i.i1.i373.i, label %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i, label %bb.ed

bb.ed:                                            ; preds = %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.se = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !139, !noalias !23
  %i.sg = ptrtoint ptr %i.sf to i64
  %i.sh = ptrtoint ptr %i.sd to i64
  %i.si = sub i64 %i.sg, %i.sh
  call void @_ZdlPvm(ptr noundef nonnull %i.sd, i64 noundef %i.si) #23
  br label %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i: ; preds = %bb.ed, %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #20, !noalias !23
  %i.sj = load ptr, ptr %19, align 8, !tbaa !80, !noalias !23 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !136, !noalias !23 ; 2 uses
  %.not4.i.i.i374.i = icmp eq ptr %i.sj, %i.sl
  br i1 %.not4.i.i.i374.i, label %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i385.i, label %.lr.ph.i.i.i375.i

.lr.ph.i.i.i375.i:                                ; preds = %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i, %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i
  %.05.i.i.i376.i = phi ptr [ %i.td, %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i ], [ %i.sj, %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i ] ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.05.i.i.i376.i, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !38 ; 8 uses
  %.not.i.i.i.i.i.i.i.i377.i = icmp eq ptr %i.sn, null
  br i1 %.not.i.i.i.i.i.i.i.i377.i, label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i, label %bb.ee

bb.ee:                                            ; preds = %.lr.ph.i.i.i375.i
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 4 uses
  %i.sp = load atomic i64, ptr %i.so acquire, align 8 ; 2 uses
  %i.sq = icmp eq i64 %i.sp, 4294967297
  %i.sr = trunc i64 %i.sp to i32                  ; 2 uses
  br i1 %i.sq, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  store i32 0, ptr %i.so, align 8, !tbaa !41
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  store i32 0, ptr %i.ss, align 4, !tbaa !43
  %i.st = load ptr, ptr %i.sn, align 8, !tbaa !32
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 16
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20, !inline_history !137
  %i.sw = load ptr, ptr %i.sn, align 8, !tbaa !32
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.sy = load ptr, ptr %i.sx, align 8
  call void %i.sy(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20, !inline_history !137
  br label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i

bb.eg:                                            ; preds = %bb.ee
  %i.sz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39, !noalias !23
  %.not.i.i.i.i.i.i.i.i.i378.i = icmp eq i8 %i.sz, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i378.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.ta = add nsw i32 %i.sr, -1
  store i32 %i.ta, ptr %i.so, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i379.i

bb.ei:                                            ; preds = %bb.eg
  %i.tb = atomicrmw volatile add ptr %i.so, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i379.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i379.i: ; preds = %bb.ei, %bb.eh
  %.0.i.i.i.i.i.i.i.i.i.i380.i = phi i32 [ %i.sr, %bb.eh ], [ %i.tb, %bb.ei ]
  %i.tc = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i380.i, 1
  br i1 %i.tc, label %bb.ej, label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i, !prof !45

bb.ej:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i379.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.sn) #20
  br label %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i

_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i: ; preds = %bb.ej, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i379.i, %bb.ef, %.lr.ph.i.i.i375.i
  %i.td = getelementptr inbounds nuw i8, ptr %.05.i.i.i376.i, i64 56 ; 2 uses
  %.not.i.i.i382.i = icmp eq ptr %i.td, %i.sl
  br i1 %.not.i.i.i382.i, label %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i383.i, label %.lr.ph.i.i.i375.i, !llvm.loop !138

_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i383.i: ; preds = %_ZSt8_DestroyIN5arrow13BufferBuilderEEvPT_.exit.i.i.i381.i
  %.pr.i384.i = load ptr, ptr %19, align 8, !tbaa !80, !noalias !23
  br label %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i385.i

_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i385.i: ; preds = %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i383.i, %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i
  %i.te = phi ptr [ %.pr.i384.i, %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i383.i ], [ %i.sj, %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i386.i = icmp eq ptr %i.te, null
  br i1 %.not.i.i1.i386.i, label %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit387.i, label %bb.ek

bb.ek:                                            ; preds = %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i385.i
  %i.tf = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !139, !noalias !23
  %i.th = ptrtoint ptr %i.tg to i64
  %i.ti = ptrtoint ptr %i.te to i64
  %i.tj = sub i64 %i.th, %i.ti
  call void @_ZdlPvm(ptr noundef nonnull %i.te, i64 noundef %i.tj) #23
  br label %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit387.i

_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit387.i: ; preds = %bb.ek, %_ZSt8_DestroyIPN5arrow13BufferBuilderES1_EvT_S3_RSaIT0_E.exit.i385.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20, !noalias !23
  %i.tk = load ptr, ptr %18, align 8, !tbaa !49, !noalias !23 ; 3 uses
  %.not.i.i.i388.i = icmp eq ptr %i.tk, null
  br i1 %.not.i.i.i388.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit390.i, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit387.i
  %i.tl = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !72, !noalias !23
  %i.tn = ptrtoint ptr %i.tm to i64
  %i.to = ptrtoint ptr %i.tk to i64
  %i.tp = sub i64 %i.tn, %i.to
  call void @_ZdlPvm(ptr noundef nonnull %i.tk, i64 noundef %i.tp) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit390.i

_ZNSt6vectorIlSaIlEED2Ev.exit390.i:               ; preds = %bb.el, %_ZNSt6vectorIN5arrow13BufferBuilderESaIS1_EED2Ev.exit387.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20, !noalias !23
  %i.tq = load ptr, ptr %17, align 8, !tbaa !49, !noalias !23 ; 3 uses
  %.not.i.i.i391.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i391.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit393.i, label %bb.em

bb.em:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit390.i
  %i.tr = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !72, !noalias !23
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tq to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tv) #23
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit393.i

_ZNSt6vectorIlSaIlEED2Ev.exit393.i:               ; preds = %bb.em, %_ZNSt6vectorIlSaIlEED2Ev.exit390.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20, !noalias !23
  %.not.i.i.i394.i = icmp eq ptr %.sroa.0439.0493505.i, null
  br i1 %.not.i.i.i394.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit396.i, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit393.i
  %i.tw = ptrtoint ptr %.sroa.18.0471507.i to i64
end_hunk_2
