inline.NumInlined: 1426
inline.NumDeleted: 704
begin_hunk_0
%"struct.std::_Vector_base<std::shared_ptr<arrow::Field>, std::allocator<std::shared_ptr<arrow::Field>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.5" = type { %"struct.std::_Vector_base.6" }
%"struct.std::_Vector_base.6" = type { %"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl" }
%"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl" = type { %"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::internal::AlignedStorage" = type { %"union.std::aligned_storage<8, 8>::type" }
%"union.std::aligned_storage<8, 8>::type" = type { [8 x i8] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.73" }
%"struct.std::_Head_base.73" = type { ptr }
%"class.arrow::util::detail::StringStreamWrapper" = type { %"class.std::unique_ptr.82", ptr }
%"class.std::unique_ptr.82" = type { %"struct.std::__uniq_ptr_data.83" }
%"struct.std::__uniq_ptr_data.83" = type { %"class.std::__uniq_ptr_impl.84" }
%"class.std::__uniq_ptr_impl.84" = type { %"class.std::tuple.85" }
%"class.std::tuple.85" = type { %"struct.std::_Tuple_impl.86" }
%"struct.std::_Tuple_impl.86" = type { %"struct.std::_Head_base.89" }
%"struct.std::_Head_base.89" = type { ptr }
%"class.arrow::Result.91" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.94" }
%"class.arrow::internal::AlignedStorage.94" = type { %"union.std::aligned_storage<8, 8>::type" }
%"class.std::unique_ptr.95" = type { %"struct.std::__uniq_ptr_data.96" }
%"struct.std::__uniq_ptr_data.96" = type { %"class.std::__uniq_ptr_impl.97" }
%"class.std::__uniq_ptr_impl.97" = type { %"class.std::tuple.98" }
%"class.std::tuple.98" = type { %"struct.std::_Tuple_impl.99" }
%"struct.std::_Tuple_impl.99" = type { %"struct.std::_Head_base.102" }
%"struct.std::_Head_base.102" = type { ptr }

$_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev = comdat any

$_ZN5arrow17DenseUnionBuilder6AppendEa = comdat any

$_ZNSt6vectorIaSaIaEEaSERKS1_ = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSERKS5_ = comdat any

$_ZN5arrow18TypedBufferBuilderIavED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev = comdat any

$_ZN5arrow12ArrayBuilderD2Ev = comdat any

$_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow17BasicUnionBuilderD0Ev = comdat any

$_ZNK5arrow17BasicUnionBuilder6lengthEv = comdat any

$_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll = comdat any

$_ZN5arrow17DenseUnionBuilderD2Ev = comdat any

$_ZN5arrow17DenseUnionBuilderD0Ev = comdat any

$_ZN5arrow17DenseUnionBuilder10AppendNullEv = comdat any

$_ZN5arrow17DenseUnionBuilder11AppendNullsEl = comdat any

$_ZN5arrow17DenseUnionBuilder16AppendEmptyValueEv = comdat any

$_ZN5arrow17DenseUnionBuilder17AppendEmptyValuesEl = comdat any

$_ZN5arrow17BasicUnionBuilderD2Ev = comdat any

$_ZN5arrow18SparseUnionBuilderD0Ev = comdat any

$_ZN5arrow18SparseUnionBuilder10AppendNullEv = comdat any

$_ZN5arrow18SparseUnionBuilder11AppendNullsEl = comdat any

$_ZN5arrow18SparseUnionBuilder16AppendEmptyValueEv = comdat any

$_ZN5arrow18SparseUnionBuilder17AppendEmptyValuesEl = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow13BufferBuilder6ResizeElb = comdat any

$_ZN5arrow6StatusC2ERKS0_ = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_15ResizableBufferESt14default_deleteIS2_EEED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow15ResizableBufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA34_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb = comdat any

$_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E = comdat any

$_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv = comdat any

$_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi = comdat any

$_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_ = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE17_M_default_appendEm = comdat any

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

@_ZTVN5arrow17BasicUnionBuilderE = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN5arrow17BasicUnionBuilderE, ptr @_ZN5arrow17BasicUnionBuilderD2Ev, ptr @_ZN5arrow17BasicUnionBuilderD0Ev, ptr @_ZNK5arrow17BasicUnionBuilder6lengthEv, ptr @_ZN5arrow12ArrayBuilder6ResizeEl, ptr @_ZN5arrow12ArrayBuilder5ResetEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll, ptr @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE, ptr @_ZNK5arrow17BasicUnionBuilder4typeEv] }, align 8
@_ZTIN5arrow17BasicUnionBuilderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow17BasicUnionBuilderE, ptr @_ZTIN5arrow12ArrayBuilderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5arrow17BasicUnionBuilderE = constant [28 x i8] c"N5arrow17BasicUnionBuilderE\00", align 1
@_ZTIN5arrow12ArrayBuilderE = external constant ptr
@_ZTVN5arrow17DenseUnionBuilderE = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN5arrow17DenseUnionBuilderE, ptr @_ZN5arrow17DenseUnionBuilderD2Ev, ptr @_ZN5arrow17DenseUnionBuilderD0Ev, ptr @_ZNK5arrow17BasicUnionBuilder6lengthEv, ptr @_ZN5arrow12ArrayBuilder6ResizeEl, ptr @_ZN5arrow12ArrayBuilder5ResetEv, ptr @_ZN5arrow17DenseUnionBuilder10AppendNullEv, ptr @_ZN5arrow17DenseUnionBuilder11AppendNullsEl, ptr @_ZN5arrow17DenseUnionBuilder16AppendEmptyValueEv, ptr @_ZN5arrow17DenseUnionBuilder17AppendEmptyValuesEl, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow17DenseUnionBuilder16AppendArraySliceERKNS_9ArraySpanEll, ptr @_ZN5arrow17DenseUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE, ptr @_ZNK5arrow17BasicUnionBuilder4typeEv] }, align 8
@_ZTIN5arrow17DenseUnionBuilderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow17DenseUnionBuilderE, ptr @_ZTIN5arrow17BasicUnionBuilderE }, align 8
@_ZTSN5arrow17DenseUnionBuilderE = constant [28 x i8] c"N5arrow17DenseUnionBuilderE\00", align 1
@_ZTVN5arrow18SparseUnionBuilderE = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN5arrow18SparseUnionBuilderE, ptr @_ZN5arrow17BasicUnionBuilderD2Ev, ptr @_ZN5arrow18SparseUnionBuilderD0Ev, ptr @_ZNK5arrow17BasicUnionBuilder6lengthEv, ptr @_ZN5arrow12ArrayBuilder6ResizeEl, ptr @_ZN5arrow12ArrayBuilder5ResetEv, ptr @_ZN5arrow18SparseUnionBuilder10AppendNullEv, ptr @_ZN5arrow18SparseUnionBuilder11AppendNullsEl, ptr @_ZN5arrow18SparseUnionBuilder16AppendEmptyValueEv, ptr @_ZN5arrow18SparseUnionBuilder17AppendEmptyValuesEl, ptr @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl, ptr @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE, ptr @_ZN5arrow18SparseUnionBuilder16AppendArraySliceERKNS_9ArraySpanEll, ptr @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE, ptr @_ZNK5arrow17BasicUnionBuilder4typeEv] }, align 8
@_ZTIN5arrow18SparseUnionBuilderE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow18SparseUnionBuilderE, ptr @_ZTIN5arrow17BasicUnionBuilderE }, align 8
@_ZTSN5arrow18SparseUnionBuilderE = constant [29 x i8] c"N5arrow18SparseUnionBuilderE\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [82 x i8] c"a dense UnionArray cannot contain more than 2^31 - 1 elements from a single child\00", align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [109 x i8] c"St19_Sp_counted_deleterIPN5arrow15ResizableBufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow15ResizableBufferEE = linkonce_odr constant [46 x i8] c"St14default_deleteIN5arrow15ResizableBufferEE\00", comdat, align 1
@_ZTVN5arrow12ArrayBuilderE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZN5arrow4util8internalL14kNonNullFillerE = internal constant i8 0, align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"AppendArraySlice for builder for \00", align 1
@_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [99 x i8] c"St19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTSSt14default_deleteIN5arrow6BufferEE = linkonce_odr constant [36 x i8] c"St14default_deleteIN5arrow6BufferEE\00", comdat, align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.21", align 16 ; 9 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %5 = alloca %"class.std::vector.24", align 8    ; 14 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %7 = alloca %"class.std::shared_ptr.32", align 16 ; 7 uses
  %8 = alloca %"class.std::shared_ptr.35", align 8 ; 4 uses
  %9 = alloca %"class.std::vector.38", align 8    ; 8 uses
  %10 = alloca [2 x %"class.std::shared_ptr.21"], align 16 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.c = load i64, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  invoke void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull %3, i1 noundef zeroext true)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.d = load ptr, ptr %4, align 8, !tbaa !21, !noalias !18 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !21, !alias.scope !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN5arrow6StatusD2Ev.exit36, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.cd

_ZN5arrow6StatusD2Ev.exit36:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !24   ; 2 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !27   ; 3 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = icmp ugt i64 %i.m, 9223372036854775792
  br i1 %i.n, label %bb.c, label %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit36
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %_ZN5arrow6StatusD2Ev.exit36
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph.preheader.i.i.i.i.i

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  br label %.critedge34

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.q = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #19
          to label %.lr.ph.preheader unwind label %bb.e ; 5 uses

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.q, ptr %5, align 8, !tbaa !28
  %i.r = getelementptr i8, ptr %i.q, i64 %i.m     ; 3 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.q, i8 0, i64 %i.m, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.t, align 8, !tbaa !31
  store ptr %i.r, ptr %i.s, align 8, !tbaa !32
  br label %.lr.ph

bb.d:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit39
  %i.u = add nuw i64 %.01877, 1                   ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !24
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %.not = icmp ult i64 %i.u, %i.aa
  br i1 %.not, label %.lr.ph, label %.critedge34, !llvm.loop !33

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.ac = phi ptr [ %i.w, %bb.d ], [ %i.j, %.lr.ph.preheader ]
  %.01877 = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %.01877
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %.01877
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull %i.af)
          to label %_ZN5arrow6StatusD2Ev.exit39 unwind label %bb.f

_ZN5arrow6StatusD2Ev.exit39:                      ; preds = %.lr.ph
  %i.aj = load ptr, ptr %6, align 8, !tbaa !21, !noalias !40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.d, label %.critedge33.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.al = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  br label %bb.bv

.critedge34:                                      ; preds = %bb.d, %.thread
  %i.am = phi ptr [ %i.p, %.thread ], [ %i.t, %bb.d ] ; 2 uses
  %i.an = phi ptr [ %i.o, %.thread ], [ %i.s, %bb.d ] ; 2 uses
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ao = load ptr, ptr %1, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 104
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %8, ptr noundef nonnull align 8 dereferenceable(312) %1)
          to label %bb.g unwind label %bb.bj

bb.g:                                             ; preds = %.critedge34
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !43 ; 2 uses
  %i.au = load <2 x ptr>, ptr %3, align 16, !tbaa !44
  store <2 x ptr> %i.au, ptr %i.ar, align 16, !tbaa !44
  %.not.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 3 uses
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i42 = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i42, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.av, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

bb.j:                                             ; preds = %bb.h
  %i.az = atomicrmw volatile add ptr %i.av, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit:  ; preds = %bb.g, %bb.i, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.ba = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19
          to label %.noexc43 unwind label %bb.bk  ; 5 uses

.noexc43:                                         ; preds = %_ZNSt10shared_ptrIN5arrow6BufferEEC2ERKS2_.exit
  store ptr %i.ba, ptr %9, align 8, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !49
  %i.bd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !43 ; 2 uses
  %i.bf = load <2 x ptr>, ptr %10, align 16, !tbaa !44
  store <2 x ptr> %i.bf, ptr %i.ba, align 8, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %.noexc43
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 3 uses
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !3
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bk = atomicrmw volatile add ptr %i.bg, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l, %.noexc43
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  %i.bo = load <2 x ptr>, ptr %i.ar, align 16, !tbaa !44
  store <2 x ptr> %i.bo, ptr %i.bl, align 8, !tbaa !44
  %.not.i.i.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.1, label %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i.1, label %bb.n

bb.n:                                             ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 3 uses
  %i.bq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev:bb.a
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !70
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !58

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !46
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !28     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !53
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !72
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !72
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow9ArrayDataEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !28
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow9ArrayDataEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow9ArrayDataEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17DenseUnionBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !81
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.b
  %i.i = add nsw i64 %4, %3
  %.not38 = icmp sgt i64 %4, 0
  br i1 %.not38, label %_ZN5arrow6StatusD2Ev.exit.lr.ph, label %.critedge29

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit35
  %i.m = add nsw i64 %.02739, 1                   ; 2 uses
  %.not = icmp slt i64 %i.m, %i.i
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit, label %.critedge29, !llvm.loop !83

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %bb.b
  %.02739 = phi i64 [ %3, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.m, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.e, i64 %.02739
  %i.o = load i8, ptr %i.n, align 1, !tbaa !45    ; 2 uses
  %i.p = sext i8 %i.o to i64                      ; 2 uses
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !84
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.p
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.02739
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN5arrow17DenseUnionBuilder6AppendEa(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %1, i8 noundef signext %i.o)
  %i.v = load ptr, ptr %5, align 8, !tbaa !21, !noalias !87 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit35, label %.critedge29

_ZN5arrow6StatusD2Ev.exit35:                      ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.p
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94   ; 2 uses
  %i.aa = sext i32 %i.s to i64
  %i.ab = load ptr, ptr %i.l, align 8, !tbaa !95
  %i.ac = getelementptr inbounds nuw [128 x i8], ptr %i.ab, i64 %i.aa
  %i.ad = sext i32 %i.u to i64
  %i.ae = load ptr, ptr %i.z, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 88
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.z, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, i64 noundef %i.ad, i64 noundef 1)
  %i.ah = load ptr, ptr %6, align 8, !tbaa !21, !noalias !96 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.b, label %.critedge29

.critedge29:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit35, %bb.b, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ %i.v, %_ZN5arrow6StatusD2Ev.exit ], [ %i.ah, %_ZN5arrow6StatusD2Ev.exit35 ], [ null, %bb.b ]
  store ptr %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17DenseUnionBuilder6AppendEa(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(368) %1, i8 noundef signext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !99 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.d = load i64, ptr %i.c, align 8, !tbaa !104, !noalias !99 ; 2 uses
  %.not.i = icmp slt i64 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.i.i, !prof !105

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.f = add nsw i64 %i.b, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17, !noalias !99
  %i.g = shl nsw i64 %i.d, 1
  %.sroa.speculated.i.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.f, i64 %i.g)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false), !noalias !99
  %i.h = load ptr, ptr %4, align 8, !tbaa !21, !noalias !106 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17, !noalias !99
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %bb.b

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !99
  br label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  store ptr %i.h, ptr %0, align 8, !tbaa !21, !alias.scope !109
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.c:                                             ; preds = %bb.a, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i
  %i.j = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.b, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !112, !noalias !99
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.j
  store i8 %2, ptr %i.m, align 1, !noalias !99
  %i.n = load i64, ptr %i.a, align 8, !tbaa !7, !noalias !99
  %i.o = add nsw i64 %i.n, 1
  store i64 %i.o, ptr %i.a, align 8, !tbaa !7, !noalias !99
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !113
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %i.q = sext i8 %2 to i64                        ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.q
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94   ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(144) %i.t)
  %i.y = icmp eq i64 %i.x, 2147483646
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5arrow6Status8FromArgsIJRA82_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 6, ptr noundef nonnull align 1 dereferenceable(82) @.str)
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.q
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(144) %i.ab)
  %i.ag = trunc i64 %i.af to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !7, !noalias !121 ; 2 uses
  %i.aj = add nsw i64 %i.ai, 4                    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !104, !noalias !121 ; 2 uses
  %i.am = icmp sgt i64 %i.aj, %i.al
  br i1 %i.am, label %_ZN5arrow6StatusD2Ev.exit.i.i10, label %bb.f, !prof !55

_ZN5arrow6StatusD2Ev.exit.i.i10:                  ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 312
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17, !noalias !121
  %i.ao = shl nsw i64 %i.al, 1
  %.sroa.speculated.i.i.i11 = call noundef i64 @llvm.smax.i64(i64 %i.aj, i64 %i.ao)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(56) %i.an, i64 noundef %.sroa.speculated.i.i.i11, i1 noundef zeroext false), !noalias !121
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.ap = load ptr, ptr %3, align 8, !tbaa !21, !noalias !125 ; 2 uses
  store ptr %i.ap, ptr %0, align 8, !tbaa !21, !alias.scope !125
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17, !noalias !121
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i12, label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i12:       ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i10
  %.pre.i.i13 = load i64, ptr %i.ah, align 8, !tbaa !7, !noalias !121
  br label %bb.f

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i12, %bb.e
  %i.ar = phi i64 [ %.pre.i.i13, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i12 ], [ %i.ai, %bb.e ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !112, !noalias !121
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ar
  store i32 %i.ag, ptr %i.au, align 1, !noalias !121
  %i.av = load i64, ptr %i.ah, align 8, !tbaa !7, !noalias !121
  %i.aw = add nsw i64 %i.av, 4
  store i64 %i.aw, ptr %i.ah, align 8, !tbaa !7, !noalias !121
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !126
  br label %_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit

_ZN5arrow18TypedBufferBuilderIivE6AppendEi.exit:  ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i.i10, %bb.b, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17DenseUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(368) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %3 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @_ZN5arrow17BasicUnionBuilder14FinishInternalEPSt10shared_ptrINS_9ArrayDataEE(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef %2)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = load ptr, ptr %3, align 8, !tbaa !21, !noalias !129 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !21, !alias.scope !129
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.a, label %bb.l

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.c = load ptr, ptr %2, align 8, !tbaa !61     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = sub nuw nsw i64 3, %i.k
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.m)
  br label %_ZN5arrow6StatusD2Ev.exit13

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.j, 48
  br i1 %.not, label %_ZN5arrow6StatusD2Ev.exit13, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %.not.i.i = icmp eq ptr %i.f, %i.n
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit13, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.q, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4, !tbaa !53
  %i.v = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #17, !inline_history !132
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #17, !inline_history !132
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.h ], [ %i.ad, %bb.i ]
  %i.ae = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ae, label %bb.j, label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i, !prof !55

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i: ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.f, %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.f
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !58

_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow6BufferEEEvPT_.exit.i.i.i.i
  store ptr %i.n, ptr %i.e, align 8, !tbaa !50
  br label %_ZN5arrow6StatusD2Ev.exit13

_ZN5arrow6StatusD2Ev.exit13:                      ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RSaIT0_E.exit.i.i, %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.ah = load ptr, ptr %2, align 8, !tbaa !61
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @_ZN5arrow13BufferBuilder6FinishEPSt10shared_ptrINS_6BufferEEb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr noundef nonnull %i.ak, i1 noundef zeroext true)
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.al = load ptr, ptr %4, align 8, !tbaa !21, !noalias !133 ; 2 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !21, !alias.scope !133
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13
  store ptr null, ptr %0, align 8, !tbaa !21, !alias.scope !136
  br label %bb.l

bb.l:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13, %_ZN5arrow6StatusD2Ev.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow17BasicUnionBuilderC2EPNS_10MemoryPoolElRKSt6vectorISt10shared_ptrINS_12ArrayBuilderEESaIS6_EERKS4_INS_8DataTypeEE(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 144)) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !139
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.d, align 8, !tbaa !145
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.f, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.g, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.i, align 8, !tbaa !147
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, i8 0, i64 64, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17BasicUnionBuilderE, i64 16), ptr %0, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24   ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp ugt i64 %i.q, 9223372036854775792
  br i1 %i.r, label %bb.b, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19
          to label %.noexc33 unwind label %bb.e   ; 3 uses

.noexc33:                                         ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.s, ptr %i.k, align 8, !tbaa !148
  %i.t = getelementptr i8, ptr %i.s, i64 %i.q
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.s, i8 0, i64 %i.q, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i, %.noexc33
  %.sink.i = phi ptr [ null, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EEC2EmRKS4_.exit.thread.i ], [ %i.t, %.noexc33 ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink.i, ptr %i.v, align 8, !tbaa !151
  store ptr %.sink.i, ptr %i.u, align 8, !tbaa !152
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, i8 0, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.x, i8 0, i64 49, i1 false)
  store ptr %1, ptr %i.aa, align 8, !tbaa !146
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr @_ZN5arrow4util8internalL14kNonNullFillerE, ptr %i.ab, align 8, !tbaa !112
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store i64 %2, ptr %i.ad, align 8, !tbaa !147
  %i.ae = load ptr, ptr %4, align 8, !tbaa !153   ; 5 uses
  %i.af = invoke noundef i32 @_ZNK5arrow9UnionType4modeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !155
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 72 ; 2 uses
  %i.ai = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIaSaIaEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, %bb.h, %bb.g, %bb.d, %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.f       ; 0 uses

bb.h:                                             ; preds = %bb.g
  %i.an = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.i unwind label %bb.f

bb.i:                                             ; preds = %bb.h
  %i.ao = zext i8 %i.an to i64                    ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 -1, ptr %i.a, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !172 ; 3 uses
  %i.as = load ptr, ptr %i.y, align 8, !tbaa !84  ; 2 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 2                 ; 3 uses
  %.not = icmp ugt i64 %i.aw, %i.ao
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = sub nuw nsw i64 %i.ap, %i.aw
  invoke void @_ZNSt6vectorIiSaIiEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPiS1_EEmRKi(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr %i.ar, i64 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit unwind label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.ay = icmp ult i64 %i.ap, %i.aw
  br i1 %i.ay, label %bb.l, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.ap ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, %i.az
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.l
  store ptr %i.az, ptr %i.aq, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit

_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit:            ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.l, %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ba = invoke noundef zeroext i8 @_ZNK5arrow9UnionType13max_type_codeEv(ptr noundef nonnull align 8 dereferenceable(120) %i.ae)
          to label %bb.m unwind label %bb.f

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEmRKi.exit
  %i.bb = zext i8 %i.ba to i64                    ; 2 uses
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !94
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !173 ; 3 uses
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !90  ; 2 uses
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = ashr exact i64 %i.bi, 3                 ; 3 uses
  %.not41 = icmp ugt i64 %i.bj, %i.bb
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = sub nuw nsw i64 %i.bc, %i.bj
  invoke void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr %i.be, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit unwind label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.bl = icmp ult i64 %i.bc, %i.bj
  br i1 %i.bl, label %bb.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bc ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.be, %i.bm
  br i1 %.not.i.i35, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.p
  store ptr %i.bm, ptr %i.bd, align 8, !tbaa !173
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit: ; preds = %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.p, %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !24  ; 2 uses
  %i.bo = load ptr, ptr %3, align 8, !tbaa !27    ; 2 uses
  %.not43 = icmp eq ptr %i.bn, %i.bo
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEmRKS2_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  br label %bb.s

bb.q:                                             ; preds = %bb.j
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.ad

bb.r:                                             ; preds = %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.ad
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev:bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !197
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17, !inline_history !197
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !198

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !151
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #20
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !53
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !199
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !199
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !187

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.w = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !184
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 4294967297
  %i.ah = trunc i64 %i.af to i32                  ; 2 uses
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ae, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !53
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #17, !inline_history !200
  %i.am = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #17, !inline_history !200
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = add nsw i32 %i.ah, -1
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ar = atomicrmw volatile add ptr %i.ae, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %bb.l ], [ %i.ar, %bb.m ]
  %i.as = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.as, label %bb.n, label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit, !prof !55

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #17
  br label %_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit

_ZN5arrow18TypedBufferBuilderIbvED2Ev.exit:       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"class.std::shared_ptr.56", align 16 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.35", align 8 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.62", align 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !184
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !43   ; 2 uses
  %i.i = load <2 x ptr>, ptr %1, align 8, !tbaa !44
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !44
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.k = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i32, ptr %i.j, align 4, !tbaa !3
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.j, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.n = atomicrmw volatile add ptr %i.j, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !24
  br label %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %i.o = phi ptr [ %i.d, %bb.b ], [ %i.d, %bb.d ], [ %.pre.i, %bb.e ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.p, ptr %i.c, align 8, !tbaa !24
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt10shared_ptrIN5arrow12ArrayBuilderEEC2ERKS2_.exit.i, %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !173  ; 4 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !90   ; 6 uses
  %i.v = ptrtoint ptr %i.t to i64                 ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64                 ; 4 uses
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %.promoted.i = load i8, ptr %i.q, align 8, !tbaa !201 ; 2 uses
  %i.z = sext i8 %.promoted.i to i64              ; 2 uses
  %i.aa = icmp ugt i64 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit, %bb.g
  %i.ab = phi i64 [ %i.ah, %bb.g ], [ %i.z, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit ]
  %i.ac = phi i8 [ %i.ag, %bb.g ], [ %.promoted.i, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.ab
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !94
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZN5arrow17BasicUnionBuilder10NextTypeIdEv.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = add i8 %i.ac, 1                         ; 3 uses
  store i8 %i.ag, ptr %i.q, align 8, !tbaa !201
  %i.ah = sext i8 %i.ag to i64                    ; 2 uses
  %i.ai = icmp ugt i64 %i.y, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !202

._crit_edge.i:                                    ; preds = %bb.g, %_ZNSt6vectorISt10shared_ptrIN5arrow12ArrayBuilderEESaIS3_EE9push_backERKS3_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !172 ; 4 uses
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !84 ; 5 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %.not.i11 = icmp eq i64 %i.ap, -4
  br i1 %.not.i11, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.aq = ashr exact i64 %i.ap, 2                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !180 ; 2 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = icmp ult i64 %i.aq, 2305843009213693952
  tail call void @llvm.assume(i1 %i.au)
  %.not28.i28 = icmp eq ptr %i.as, %i.al
  br i1 %.not28.i28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.al, align 4, !tbaa !3
  %i.av = getelementptr i8, ptr %i.al, i64 4
  store ptr %i.av, ptr %i.ak, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.h
  %i.aw = icmp eq i64 %i.ap, 9223372036854775804
  br i1 %i.aw, label %bb.k, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.j
  %.sroa.speculated.i.i30 = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ax = add nuw nsw i64 %.sroa.speculated.i.i30, %i.aq
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 2305843009213693951) ; 2 uses
  %i.az = shl nuw nsw i64 %i.ay, 2
  %i.ba = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #19 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ap ; 2 uses
  store i32 0, ptr %i.bb, align 4, !tbaa !3
  %i.bc = icmp sgt i64 %i.ap, 0
  br i1 %i.bc, label %bb.l, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

bb.l:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ba, ptr align 4 %i.am, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i: ; preds = %bb.l, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %.not.i35.i31 = icmp eq ptr %i.am, null
  br i1 %.not.i35.i31, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %i.bd = sub i64 %i.at, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.bd) #20
  %.pre.i12.pre.pre = load ptr, ptr %i.s, align 8, !tbaa !173 ; 2 uses
  %.pre8.i.pre.pre = load ptr, ptr %i.r, align 8, !tbaa !90 ; 2 uses
  %.pre38 = ptrtoint ptr %.pre.i12.pre.pre to i64
  %.pre = ptrtoint ptr %.pre8.i.pre.pre to i64
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i: ; preds = %bb.m, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
  %.pre37.pre-phi = phi i64 [ %.pre, %bb.m ], [ %i.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre.pre-phi = phi i64 [ %.pre38, %bb.m ], [ %i.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre8.i.pre = phi ptr [ %.pre8.i.pre.pre, %bb.m ], [ %i.u, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  %.pre.i12.pre = phi ptr [ %.pre.i12.pre.pre, %bb.m ], [ %i.t, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i ]
  store ptr %i.ba, ptr %i.aj, align 8, !tbaa !84
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store ptr %i.be, ptr %i.ak, align 8, !tbaa !172
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bf, ptr %i.ar, align 8, !tbaa !180
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %._crit_edge.i
  store ptr %i.am, ptr %i.ak, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i, %bb.i, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  %.pre-phi11.i = phi i64 [ %i.w, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.w, %bb.i ], [ %.pre37.pre-phi, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %.pre-phi.i = phi i64 [ %i.v, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.v, %bb.i ], [ %.pre.pre-phi, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ]
  %i.bg = phi ptr [ %i.u, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.u, %bb.i ], [ %.pre8.i.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 9 uses
  %i.bh = phi ptr [ %i.t, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i ], [ %i.t, %bb.i ], [ %.pre.i12.pre, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36.i ] ; 5 uses
  %i.bi = sub i64 %.pre-phi.i, %.pre-phi11.i
  %.not2.i = icmp eq i64 %i.bi, -8
  br i1 %.not2.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bg to i64               ; 2 uses
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = ashr exact i64 %i.bl, 3                 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !181 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = icmp ult i64 %i.bm, 1152921504606846976
  tail call void @llvm.assume(i1 %i.bq)
  %.not28.i = icmp eq ptr %i.bo, %i.bh
  br i1 %.not28.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr null, ptr %i.bh, align 8, !tbaa !94
  %i.br = getelementptr i8, ptr %i.bh, i64 8
  store ptr %i.br, ptr %i.s, align 8, !tbaa !173
  br label %_ZN5arrow17BasicUnionBuilder10NextTypeIdEv.exit

bb.p:                                             ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bl, 9223372036854775800
  br i1 %i.bs, label %bb.q, label %_ZNKSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #18
  unreachable

_ZNKSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.p
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bt = add nuw nsw i64 %.sroa.speculated.i.i, %i.bm
  %i.bu = tail call i64 @llvm.umin.i64(i64 %i.bt, i64 1152921504606846975) ; 2 uses
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #19 ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN5arrow17BasicUnionBuilder11AppendChildERKSt10shared_ptrINS_12ArrayBuilderEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr %i.df, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ax

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.x, %bb.y
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !43 ; 8 uses
  %.not.i.i13 = icmp eq ptr %i.do, null
  br i1 %.not.i.i13, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 4 uses
  %i.dq = load atomic i64, ptr %i.dp acquire, align 8 ; 2 uses
  %i.dr = icmp eq i64 %i.dq, 4294967297
  %i.ds = trunc i64 %i.dq to i32                  ; 2 uses
  br i1 %i.dr, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.dp, align 8, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  store i32 0, ptr %i.dt, align 4, !tbaa !53
  %i.du = load ptr, ptr %i.do, align 8, !tbaa !38
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17, !inline_history !209
  %i.dx = load ptr, ptr %i.do, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17, !inline_history !209
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %bb.z
  %i.ea = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.ea, 0
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eb = add nsw i32 %i.ds, -1
  store i32 %i.eb, ptr %i.dp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ec = atomicrmw volatile add ptr %i.dp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i = phi i32 [ %i.ds, %bb.ac ], [ %i.ec, %bb.ad ]
  %i.ed = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ed, label %bb.ae, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.do) #17
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE9push_backEOS3_.exit, %bb.aa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !43 ; 8 uses
  %.not.i.i14 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.eg, align 8, !tbaa !51
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !53
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !38
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17, !inline_history !210
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17, !inline_history !210
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ah:                                            ; preds = %bb.af
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i15 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i15, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.aj:                                            ; preds = %bb.ah
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.aj, %bb.ai
  %.0.i.i.i.i17 = phi i32 [ %i.ej, %bb.ai ], [ %i.et, %bb.aj ]
  %i.eu = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.eu, label %bb.ak, label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.ak:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #17
  br label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !43 ; 8 uses
  %.not.i.i18 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i18, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8 ; 4 uses
  %i.ey = load atomic i64, ptr %i.ex acquire, align 8 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 4294967297
  %i.fa = trunc i64 %i.ey to i32                  ; 2 uses
  br i1 %i.ez, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.ex, align 8, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  store i32 0, ptr %i.fb, align 4, !tbaa !53
  %i.fc = load ptr, ptr %i.ew, align 8, !tbaa !38
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17, !inline_history !60
  %i.ff = load ptr, ptr %i.ew, align 8, !tbaa !38
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 24
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17, !inline_history !60
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.an:                                            ; preds = %bb.al
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i19 = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i19, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = add nsw i32 %i.fa, -1
  store i32 %i.fj, ptr %i.ex, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

bb.ap:                                            ; preds = %bb.an
  %i.fk = atomicrmw volatile add ptr %i.ex, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20: ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i21 = phi i32 [ %i.fa, %bb.ao ], [ %i.fk, %bb.ap ]
  %i.fl = icmp eq i32 %.0.i.i.i.i21, 1
  br i1 %i.fl, label %bb.aq, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.aq:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ew) #17
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.am, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i20, %bb.aq
  %i.fm = load ptr, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.fn = icmp eq ptr %i.fm, %i.cr
  br i1 %i.fn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.fo = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.fp = add i64 %i.fo, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fp) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !183 ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !182
  %.not.i.i22 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not.i.i22, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i8 %storemerge.in.i, ptr %i.fs, align 1, !tbaa !45
  %i.fv = load ptr, ptr %i.fr, align 8, !tbaa !183
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store ptr %i.fw, ptr %i.fr, align 8, !tbaa !183
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

bb.as:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.fx = load ptr, ptr %i.fq, align 8, !tbaa !178 ; 4 uses
  %i.fy = ptrtoint ptr %i.fs to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 8 uses
  %i.gb = icmp eq i64 %i.ga, 9223372036854775807
  br i1 %i.gb, label %bb.at, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #18
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.as
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ga, i64 1)
  %i.gc = add i64 %.sroa.speculated.i.i.i.i, %i.ga ; 2 uses
  %i.gd = icmp ult i64 %i.gc, %i.ga
  %i.ge = call i64 @llvm.umin.i64(i64 %i.gc, i64 9223372036854775807)
  %i.gf = select i1 %i.gd, i64 9223372036854775807, i64 %i.ge ; 3 uses
  %.not.i.i.i.i23 = icmp ne i64 %i.gf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i23)
  %7 = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gf) #19 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 %i.ga ; 2 uses
  store i8 %storemerge.in.i, ptr %8, align 1, !tbaa !45
  %9 = icmp sgt i64 %i.ga, 0
  br i1 %9, label %bb.au, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

bb.au:                                            ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.fx, i64 %i.ga, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.au, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %8, i64 1
  %.not.i17.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef %i.ga) #20
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i: ; preds = %bb.av, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i
  store ptr %7, ptr %i.fq, align 8, !tbaa !178
  store ptr %i.gg, ptr %i.fr, align 8, !tbaa !183
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 %i.gf
  store ptr %i.gh, ptr %i.ft, align 8, !tbaa !182
  br label %_ZNSt6vectorIaSaIaEE9push_backEOa.exit

_ZNSt6vectorIaSaIaEE9push_backEOa.exit:           ; preds = %bb.ar, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i
  ret i8 %storemerge.in.i

bb.aw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %bb.y
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.pn = phi { ptr, i32 } [ %i.gj, %bb.ax ], [ %i.gi, %bb.aw ]
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #17
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  %i.gk = load ptr, ptr %4, align 8, !tbaa !205   ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.cr
  br i1 %i.gl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.ay
  %i.gm = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.gn = add i64 %i.gm, 1
  call void @_ZdlPvm(ptr noundef %i.gk, i64 noundef %i.gn) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN5arrow17BasicUnionBuilder10NextTypeIdEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !173  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !90   ; 3 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  %.promoted = load i8, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %i.j = sext i8 %.promoted to i64                ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.l = phi i64 [ %i.r, %bb.b ], [ %i.j, %bb.a ]
  %i.m = phi i8 [ %i.q, %bb.b ], [ %.promoted, %bb.a ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !94
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = add i8 %i.m, 1                           ; 3 uses
  store i8 %i.q, ptr %i.a, align 8, !tbaa !201
  %i.r = sext i8 %i.q to i64                      ; 2 uses
  %i.s = icmp ugt i64 %i.i, %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !202

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !172
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %.not = icmp eq i64 %i.z, -4
  br i1 %.not, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 noundef 1)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !173 ; 2 uses
  %.pre8 = load ptr, ptr %i.b, align 8, !tbaa !90 ; 2 uses
  %.pre9 = ptrtoint ptr %.pre to i64
  %.pre10 = ptrtoint ptr %.pre8 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.w, ptr %i.u, align 8, !tbaa !172
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.c, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi11 = phi i64 [ %.pre10, %bb.c ], [ %i.g, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %.pre-phi = phi i64 [ %.pre9, %bb.c ], [ %i.f, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.aa = phi ptr [ %.pre8, %bb.c ], [ %i.e, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.d, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ]
  %i.ac = sub i64 %.pre-phi, %.pre-phi11
  %.not2 = icmp eq i64 %i.ac, -8
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  tail call void @_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 1)
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %.not.i.i1 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i.i1, label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.e
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !173
  br label %_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit

_ZNSt6vectorIPN5arrow12ArrayBuilderESaIS2_EE6resizeEm.exit: ; preds = %.lr.ph, %_ZSt8_DestroyIPPN5arrow12ArrayBuilderES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.e, %bb.d
  %storemerge.in = load i8, ptr %i.a, align 8, !tbaa !201 ; 2 uses
  %storemerge = add i8 %storemerge.in, 1
  store i8 %storemerge, ptr %i.a, align 8, !tbaa !201
  ret i8 %storemerge.in
}

declare void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.56") align 8, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !53
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !71
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17, !inline_history !71
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #17
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5arrow17BasicUnionBuilder4typeEv(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.35") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.0", align 8     ; 15 uses
  %3 = alloca %"class.std::shared_ptr.56", align 16 ; 7 uses
  %4 = alloca %"class.std::shared_ptr.35", align 8 ; 7 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %6 = alloca %"class.std::vector.5", align 8     ; 12 uses
  %7 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %8 = alloca %"class.std::vector.5", align 8     ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !152  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !148  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %i.h = icmp ugt i64 %i.g, 9223372036854775792
  br i1 %i.h, label %.noexc, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #18
  unreachable

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i.i, label %.thread, label %.lr.ph

.thread:                                          ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19 ; 4 uses
  store ptr %i.k, ptr %2, align 8, !tbaa !148
  %i.l = getelementptr i8, ptr %i.k, i64 %i.g     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.g, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.l, ptr %i.n, align 8, !tbaa !151
  store ptr %i.l, ptr %i.m, align 8, !tbaa !152
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %.thread
  %i.r = phi ptr [ %i.j, %.thread ], [ %i.n, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 3 uses
  %i.s = phi ptr [ %i.i, %.thread ], [ %i.m, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.lcssa102 = phi ptr [ null, %.thread ], [ %i.ch, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.lcssa = phi ptr [ null, %.thread ], [ %i.ci, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.u = load i32, ptr %i.t, align 8, !tbaa !155
  %.not = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  br i1 %.not, label %bb.z, label %bb.af

bb.b:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.x = phi ptr [ %i.k, %.lr.ph ], [ %i.ci, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  %.019105 = phi i64 [ 0, %.lr.ph ], [ %i.cg, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !148
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.y, i64 %.019105
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !174
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %.019105
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void %i.ag(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %i.ad)
          to label %bb.c unwind label %bb.w

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.56") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.d unwind label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %.019105 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load <2 x ptr>, ptr %3, align 16, !tbaa !44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !43 ; 8 uses
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !44
  %.not.i.i.i.i42 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i42, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.al, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !53
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #17, !inline_history !211
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #17, !inline_history !211
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

bb.g:                                             ; preds = %bb.e
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.h ], [ %i.ay, %bb.i ]
  %i.az = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.az, label %bb.j, label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, !prof !55

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #17
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit:    ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.j
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !43  ; 8 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.bb, align 8, !tbaa !51
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !53
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #17, !inline_history !209
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #17, !inline_history !209
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.be, %bb.n ], [ %i.bo, %bb.o ]
  %i.bp = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bp, label %bb.p, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #17
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEaSEOS2_.exit, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.p
  %i.bq = load ptr, ptr %i.q, align 8, !tbaa !43  ; 8 uses
  %.not.i.i43 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i43, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 4 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 4294967297
  %i.bu = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.bt, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.br, align 8, !tbaa !51
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  store i32 0, ptr %i.bv, align 4, !tbaa !53
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !38
end_hunk_3
begin_hunk_4_@_ZNK5arrow17BasicUnionBuilder4typeEv:bb.a
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67

bb.aw:                                            ; preds = %bb.au
  %i.gc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i.i64 = icmp eq i8 %i.gc, 0
  br i1 %.not.i.i.i.i.i.i.i64, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gd = add nsw i32 %i.fu, -1
  store i32 %i.gd, ptr %i.fr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i65

bb.ay:                                            ; preds = %bb.aw
  %i.ge = atomicrmw volatile add ptr %i.fr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i65

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i65: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i.i.i.i.i66 = phi i32 [ %i.fu, %bb.ax ], [ %i.ge, %bb.ay ]
  %i.gf = icmp eq i32 %.0.i.i.i.i.i.i.i.i66, 1
  br i1 %i.gf, label %bb.az, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67, !prof !55

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i65
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fq) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67: ; preds = %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i65, %bb.av, %.lr.ph.i.i.i61
  %i.gg = getelementptr inbounds nuw i8, ptr %.05.i.i.i62, i64 16 ; 2 uses
  %.not.i.i.i68 = icmp eq ptr %i.gg, %i.fo
  br i1 %.not.i.i.i68, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69, label %.lr.ph.i.i.i61, !llvm.loop !198

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i67
  %.pr.i70 = load ptr, ptr %5, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69, %_ZNSt6vectorIaSaIaEED2Ev.exit59
  %i.gh = phi ptr [ %.pr.i70, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i69 ], [ %i.fn, %_ZNSt6vectorIaSaIaEED2Ev.exit59 ] ; 2 uses
  %.not.i.i1.i72 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i1.i72, label %.critedge39, label %bb.ba

bb.ba:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71
  %i.gi = load ptr, ptr %i.cr, align 8, !tbaa !151
  br label %.critedge39.sink.split

.critedge39.sink.split:                           ; preds = %bb.as, %bb.ba
  %.sink149 = phi ptr [ %i.gi, %bb.ba ], [ %i.fg, %bb.as ]
  %.sink148 = phi ptr [ %i.gh, %bb.ba ], [ %i.ff, %bb.as ] ; 2 uses
  %i.gj = ptrtoint ptr %.sink149 to i64
  %i.gk = ptrtoint ptr %.sink148 to i64
  %i.gl = sub i64 %i.gj, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %.sink148, i64 noundef %i.gl) #20
  br label %.critedge39

.critedge39:                                      ; preds = %.critedge39.sink.split, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i71, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i
  %i.gm = load ptr, ptr %2, align 8, !tbaa !148   ; 3 uses
  %i.gn = load ptr, ptr %i.s, align 8, !tbaa !152 ; 2 uses
  %.not4.i.i.i74 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not4.i.i.i74, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85, label %.lr.ph.i.i.i75

.lr.ph.i.i.i75:                                   ; preds = %.critedge39, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81
  %.05.i.i.i76 = phi ptr [ %i.hf, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81 ], [ %i.gm, %.critedge39 ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !43 ; 8 uses
  %.not.i.i.i.i.i.i77 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i77, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph.i.i.i75
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 4 uses
  %i.gr = load atomic i64, ptr %i.gq acquire, align 8 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 4294967297
  %i.gt = trunc i64 %i.gr to i32                  ; 2 uses
  br i1 %i.gs, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.gq, align 8, !tbaa !51
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  store i32 0, ptr %i.gu, align 4, !tbaa !53
  %i.gv = load ptr, ptr %i.gp, align 8, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8
  call void %i.gx(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #17, !inline_history !214
  %i.gy = load ptr, ptr %i.gp, align 8, !tbaa !38
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #17, !inline_history !214
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81

bb.bd:                                            ; preds = %bb.bb
  %i.hb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i.i.i.i78 = icmp eq i8 %i.hb, 0
  br i1 %.not.i.i.i.i.i.i.i78, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hc = add nsw i32 %i.gt, -1
  store i32 %i.hc, ptr %i.gq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i79

bb.bf:                                            ; preds = %bb.bd
  %i.hd = atomicrmw volatile add ptr %i.gq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i79

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i79: ; preds = %bb.bf, %bb.be
  %.0.i.i.i.i.i.i.i.i80 = phi i32 [ %i.gt, %bb.be ], [ %i.hd, %bb.bf ]
  %i.he = icmp eq i32 %.0.i.i.i.i.i.i.i.i80, 1
  br i1 %i.he, label %bb.bg, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81, !prof !55

bb.bg:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i79
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gp) #17
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81: ; preds = %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i79, %bb.bc, %.lr.ph.i.i.i75
  %i.hf = getelementptr inbounds nuw i8, ptr %.05.i.i.i76, i64 16 ; 2 uses
  %.not.i.i.i82 = icmp eq ptr %i.hf, %i.gn
  br i1 %.not.i.i.i82, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83, label %.lr.ph.i.i.i75, !llvm.loop !198

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83: ; preds = %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i.i81
  %.pr.i84 = load ptr, ptr %2, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85

_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83, %.critedge39
  %i.hg = phi ptr [ %.pr.i84, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i83 ], [ %i.gm, %.critedge39 ] ; 3 uses
  %.not.i.i1.i86 = icmp eq ptr %i.hg, null
  br i1 %.not.i.i1.i86, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit87, label %bb.bh

bb.bh:                                            ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85
  %i.hh = load ptr, ptr %i.r, align 8, !tbaa !151
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = ptrtoint ptr %i.hg to i64
  %i.hk = sub i64 %i.hi, %i.hj
  call void @_ZdlPvm(ptr noundef nonnull %i.hg, i64 noundef %i.hk) #20
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit87

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit87: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i85, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void

bb.bi:                                            ; preds = %_ZNSt15__new_allocatorIaE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bj:                                            ; preds = %_ZNSt15__new_allocatorIaE8allocateEmPKv.exit.i.i.i.i51, %.noexc.i.i52
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit91

bb.bk:                                            ; preds = %bb.ak
  %i.hn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ho = load ptr, ptr %8, align 8, !tbaa !178   ; 3 uses
  %.not.i.i.i88 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i.i88, label %_ZNSt6vectorIaSaIaEED2Ev.exit91, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hp = load ptr, ptr %i.ec, align 8, !tbaa !182
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.ho to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hs) #20
  br label %_ZNSt6vectorIaSaIaEED2Ev.exit91

bb.bm:                                            ; preds = %bb.ae
  %i.ht = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hu = load ptr, ptr %6, align 8, !tbaa !178   ; 3 uses
  %.not.i.i.i90 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i90, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !182
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #20
  br label %bb.bo

_ZNSt6vectorIaSaIaEED2Ev.exit91:                  ; preds = %bb.bl, %bb.bk, %bb.bj
  %.pn = phi { ptr, i32 } [ %i.hm, %bb.bj ], [ %i.hn, %bb.bk ], [ %i.hn, %bb.bl ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #17
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bi, %bb.bm, %bb.bn
  %.pn30.pn.ph = phi { ptr, i32 } [ %i.ht, %bb.bn ], [ %i.ht, %bb.bm ], [ %i.hl, %bb.bi ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
  br label %bb.bp

bb.bp:                                            ; preds = %_ZNSt6vectorIaSaIaEED2Ev.exit91, %bb.bo, %bb.y
  %.pn33.pn = phi { ptr, i32 } [ %.pn33, %bb.y ], [ %.pn30.pn.ph, %bb.bo ], [ %.pn, %_ZNSt6vectorIaSaIaEED2Ev.exit91 ]
  call void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  resume { ptr, i32 } %.pn33.pn
}

declare void @_ZNK5arrow5Field8WithTypeERKSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.56") align 8, ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN5arrow12sparse_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.35") align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5arrow11dense_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.35") align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow18SparseUnionBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %._crit_edge, label %_ZN5arrow6StatusD2Ev.exit.lr.ph

_ZN5arrow6StatusD2Ev.exit.lr.ph:                  ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZN5arrow6StatusD2Ev.exit

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.h = add nuw i64 %.01831, 1                   ; 2 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !183
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !178  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ult i64 %i.h, %i.m
  br i1 %i.n, label %_ZN5arrow6StatusD2Ev.exit, label %._crit_edge, !llvm.loop !215

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6StatusD2Ev.exit.lr.ph, %bb.b
  %i.o = phi ptr [ %i.d, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.j, %bb.b ]
  %.01831 = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit.lr.ph ], [ %i.h, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.01831
  %i.q = load i8, ptr %i.p, align 1, !tbaa !45
  %i.r = sext i8 %i.q to i64
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !90
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94   ; 2 uses
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.w = getelementptr inbounds nuw [128 x i8], ptr %i.v, i64 %.01831
  %i.x = load i64, ptr %i.g, align 8, !tbaa !73
  %i.y = add nsw i64 %i.x, %3
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(144) %i.u, ptr noundef nonnull align 8 dereferenceable(128) %i.w, i64 noundef %i.y, i64 noundef %4)
  %i.ac = load ptr, ptr %6, align 8, !tbaa !21, !noalias !216 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %.critedge22

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !73
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !81
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.af
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %3
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 4 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !7, !noalias !219 ; 2 uses
  %i.am = add nsw i64 %i.al, %4                   ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !104, !noalias !219 ; 2 uses
  %i.ap = icmp sgt i64 %i.am, %i.ao
  br i1 %i.ap, label %_ZN5arrow6StatusD2Ev.exit.i.i, label %_ZN5arrow6StatusD2Ev.exit28, !prof !55

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17, !noalias !219
  %i.ar = shl nsw i64 %i.ao, 1
  %.sroa.speculated.i.i.i = call noundef i64 @llvm.smax.i64(i64 %i.am, i64 %i.ar)
  call void @_ZN5arrow13BufferBuilder6ResizeElb(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 noundef %.sroa.speculated.i.i.i, i1 noundef zeroext false), !noalias !219
  %i.as = load ptr, ptr %5, align 8, !tbaa !21, !noalias !224 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17, !noalias !219
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, label %.critedge22

_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i:         ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  %.pre.i.i = load i64, ptr %i.ak, align 8, !tbaa !7, !noalias !219
  br label %_ZN5arrow6StatusD2Ev.exit28

_ZN5arrow6StatusD2Ev.exit28:                      ; preds = %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i, %._crit_edge
  %i.au = phi i64 [ %.pre.i.i, %_ZN5arrow6StatusD2Ev.exit._crit_edge.i.i ], [ %i.al, %._crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !112, !noalias !219
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ax, ptr align 1 %i.aj, i64 %4, i1 false), !noalias !219
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !7, !noalias !219
  %i.az = add nsw i64 %i.ay, %4
  store i64 %i.az, ptr %i.ak, align 8, !tbaa !7, !noalias !219
  br label %.critedge22

.critedge22:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.i.i, %_ZN5arrow6StatusD2Ev.exit28
  %.sink = phi ptr [ %i.as, %_ZN5arrow6StatusD2Ev.exit.i.i ], [ null, %_ZN5arrow6StatusD2Ev.exit28 ], [ %i.ac, %_ZN5arrow6StatusD2Ev.exit ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17BasicUnionBuilderD0Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZNK5arrow17BasicUnionBuilder6lengthEv(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i64, ptr %i.a, align 8, !tbaa !7
  ret i64 %i.b
}

declare void @_ZN5arrow12ArrayBuilder6ResizeEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) unnamed_addr #2

declare void @_ZN5arrow12ArrayBuilder5ResetEv(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #2

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN5arrow12ArrayBuilder12AppendScalarERKNS_6ScalarEl(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1, i64 noundef) unnamed_addr #2

declare void @_ZN5arrow12ArrayBuilder13AppendScalarsERKSt6vectorISt10shared_ptrINS_6ScalarEESaIS4_EE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8, ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilder16AppendArraySliceERKNS_9ArraySpanEll(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.35", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.a = load ptr, ptr %1, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.35") align 8 %5, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %i.d = load ptr, ptr %5, align 8, !tbaa !153
  invoke void @_ZN5arrow6Status8FromArgsIJRA34_KcRNS_8DataTypeEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(34) @.str.1, ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %_ZN5arrow6Status14NotImplementedIJRA34_KcRNS_8DataTypeEEEES0_DpOT_.exit unwind label %bb.h

_ZN5arrow6Status14NotImplementedIJRA34_KcRNS_8DataTypeEEEES0_DpOT_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 8 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6Status14NotImplementedIJRA34_KcRNS_8DataTypeEEEES0_DpOT_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !53
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !60
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !38
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17, !inline_history !60
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = add nsw i32 %i.j, -1
  store i32 %i.s, ptr %i.g, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.t = atomicrmw volatile add ptr %i.g, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.j, %bb.e ], [ %i.t, %bb.f ]
  %i.u = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.u, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !55

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #17
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5arrow6Status14NotImplementedIJRA34_KcRNS_8DataTypeEEEES0_DpOT_.exit, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  ret void

bb.h:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow17DenseUnionBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow17DenseUnionBuilderE, i64 16), ptr %0, align 8, !tbaa !38
end_hunk_4
