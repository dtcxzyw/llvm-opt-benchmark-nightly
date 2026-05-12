inline.NumInlined: 761
inline.NumDeleted: 342
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !32, !noalias !140 ; 3 uses
  %i.b = trunc i64 %i.a to i1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !140
  %.sink1.i = lshr i64 %i.a, 1                    ; 7 uses
  %i.f = shl i64 %i.e, 1
  %i.g = select i1 %i.b, i64 %i.f, i64 32         ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_:bb.a
  unreachable

_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i: ; preds = %bb.a
  %2 = load ptr, ptr %i.c, align 8, !noalias !140
  %i.j = shl nuw nsw i64 %i.g, 3
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30 ; 9 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.sink1.i ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051223inlined_vector_internal7StorageIPNS0_7LogSinkELm16ESaIS4_EE15EmplaceBackSlowIJRKS4_EEERS4_DpOT_:bb.a
  br i1 %exitcond.not.i.3, label %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit, label %.lr.ph.i, !llvm.loop !148

_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN4absl12lts_2025051223inlined_vector_internal13MallocAdapterISaIPNS0_7LogSinkEELb0EE8AllocateERS5_m.exit.i
  %3 = load i64, ptr %0, align 8, !tbaa !32       ; 2 uses
  %4 = trunc i64 %3 to i1
  br i1 %4, label %bb.c, label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

bb.c:                                             ; preds = %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit
  %5 = load ptr, ptr %i.c, align 8, !tbaa !20
  %6 = load i64, ptr %i.d, align 8, !tbaa !20
  %i.au = shl i64 %6, 3
  tail call void @_ZdlPvm(ptr noundef %5, i64 noundef %i.au) #28
  %.pre = load i64, ptr %0, align 8, !tbaa !32
  br label %_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit

_ZN4absl12lts_2025051223inlined_vector_internal21AllocationTransactionISaIPNS0_7LogSinkEEED2Ev.exit: ; preds = %bb.c, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit
  %i.av = phi i64 [ %.pre, %bb.c ], [ %3, %_ZN4absl12lts_2025051223inlined_vector_internal17ConstructElementsISaIPNS0_7LogSinkEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvRNS0_8internal13type_identityIT_E4typeENSt16allocator_traitsISD_E7pointerERT0_NSI_9size_typeE.exit ]
  store ptr %i.k, ptr %i.c, align 8, !tbaa !20
  store i64 %i.g, ptr %i.d, align 8, !tbaa !20
  %i.aw = or i64 %i.av, 1
end_hunk_2
