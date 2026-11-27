Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7627
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 180
loop-unroll.NumUnrolled: 277
begin_hunk_0_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE15DestroyContentsEv:bb.a
  %.02.i = phi i64 [ %i.e, %.lr.ph.i ], [ %i.d, %bb.a ]
  %i.e = add nsw i64 %.02.i, -1                   ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.e
  tail call fastcc void @_ZN12_GLOBAL__N_110RefCountedD2Ev(ptr noundef nonnull readonly align 8 dead_on_return(16) dereferenceable(16) %i.f) #36
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit, label %.lr.ph.i, !llvm.loop !23

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit: ; preds = %.lr.ph.i
  %.val.i.pre = load i64, ptr %0, align 8, !tbaa !199
  br label %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit

_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit, %bb.a
  %.val.i = phi i64 [ %.val.i.pre, %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit.loopexit ], [ %.val, %bb.a ]
  %i.g = trunc i64 %.val.i to i1
  br i1 %i.g, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE21DeallocateIfAllocatedEv.exit

bb.b:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit
  %.val1.i = load ptr, ptr %i.b, align 8, !tbaa !200
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.h, align 8, !tbaa !200
  %i.i = shl i64 %.val2.i, 4
  tail call void @_ZdlPvm(ptr noundef %.val1.i, i64 noundef %i.i) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE21DeallocateIfAllocatedEv.exit

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE21DeallocateIfAllocatedEv.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14DestroyAdapterISaIN12_GLOBAL__N_110RefCountedEELb0EE15DestroyElementsERS5_PS4_m.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136InlinedVectorTest_NoDefaultCtor_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_136InlinedVectorTest_NoDefaultCtor_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_136InlinedVectorTest_NoDefaultCtor_TestE, i64 16), ptr %i.a, align 8, !tbaa !171
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_136InlinedVectorTest_NoDefaultCtor_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_136InlinedVectorTest_NoDefaultCtor_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_113NoDefaultCtorELm1ESaIS3_EED2Ev.exit:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129InlinedVectorTest_NoCopy_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_129InlinedVectorTest_NoCopy_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_129InlinedVectorTest_NoCopy_TestE, i64 16), ptr %i.a, align 8, !tbaa !171
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_129InlinedVectorTest_NoCopy_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_129InlinedVectorTest_NoCopy_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_16NoCopyELm1ESaIS3_EED2Ev.exit:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131InlinedVectorTest_NoAssign_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131InlinedVectorTest_NoAssign_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_131InlinedVectorTest_NoAssign_TestE, i64 16), ptr %i.a, align 8, !tbaa !171
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_131InlinedVectorTest_NoAssign_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_131InlinedVectorTest_NoAssign_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18NoAssignELm1ESaIS3_EED2Ev.exit:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131InlinedVectorTest_MoveOnly_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131InlinedVectorTest_MoveOnly_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_131InlinedVectorTest_MoveOnly_TestE, i64 16), ptr %i.a, align 8, !tbaa !171
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_131InlinedVectorTest_MoveOnly_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_131InlinedVectorTest_MoveOnly_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EE9push_backEOS3_.exit23:
  %1 = alloca %"class.absl::lts_20260526::InlinedVector.291", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store i64 6, ptr %1, align 8, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.d = load i16, ptr %i.c, align 1
  store i16 %i.d, ptr %i.b, align 8
  store i64 6, ptr %1, align 8, !tbaa !199
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.f = load i16, ptr %i.e, align 1
  store i16 %i.f, ptr %i.b, align 8
  store i64 4, ptr %1, align 8, !tbaa !199
  store i64 6, ptr %1, align 8, !tbaa !199
  %i.g = load i16, ptr %i.b, align 8
  store i16 %i.g, ptr %i.c, align 1
  %.pre.i.i = load i64, ptr %1, align 8, !tbaa !199
  %.val1.i.i51.pre.pre = load ptr, ptr %i.b, align 8 ; 2 uses
  %.val4.i.i.i54.pre.pre = load i64, ptr %i.a, align 8, !noalias !1503
  %i.h = add i64 %.pre.i.i, 2                     ; 5 uses
  store i64 %i.h, ptr %1, align 8, !tbaa !199
  %i.i = trunc i64 %i.h to i1                     ; 3 uses
  %i.j = select i1 %i.i, ptr %.val1.i.i51.pre.pre, ptr %i.b
  %.sink.i.i.i56 = select i1 %i.i, i64 %.val4.i.i.i54.pre.pre, i64 16 ; 2 uses
  %.sink5.i.i.i57 = lshr i64 %i.h, 1              ; 3 uses
  %i.k = add nuw i64 %.sink5.i.i.i57, 1           ; 2 uses
  %.not.i.i58 = icmp ult i64 %.sink5.i.i.i57, %.sink.i.i.i56
  br i1 %.not.i.i58, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_18MoveOnlyEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit84.i.i68, label %bb.a

.noexc.i.i.i.invoke:                              ; preds = %bb.a
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc.i.i.i.cont unwind label %bb.f

.noexc.i.i.i.cont:                                ; preds = %.noexc.i.i.i.invoke
  unreachable

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EE9push_backEOS3_.exit23
  %i.l = shl nuw i64 %.sink.i.i.i56, 1
  %.sroa.speculated.i.i.i59 = tail call noundef i64 @llvm.umax.i64(i64 %i.l, i64 %i.k) ; 3 uses
  %i.m = icmp slt i64 %.sroa.speculated.i.i.i59, 0
  br i1 %i.m, label %.noexc.i.i.i.invoke, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_18MoveOnlyEELb0EE8AllocateERS5_m.exit.i.i.i60, !prof !214

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_18MoveOnlyEELb0EE8AllocateERS5_m.exit.i.i.i60: ; preds = %bb.a
  %i.n = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.sroa.speculated.i.i.i59) #41
          to label %.noexc72 unwind label %bb.f

.noexc72:                                         ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_18MoveOnlyEELb0EE8AllocateERS5_m.exit.i.i.i60
  %.val.i75.i.i61 = load i64, ptr %1, align 8, !tbaa !199
  %i.o = trunc i64 %.val.i75.i.i61 to i1
  br i1 %i.o, label %bb.b, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_18MoveOnlyEEED2Ev.exit.i.i62

bb.b:                                             ; preds = %.noexc72
  %.val1.i76.i.i65 = load ptr, ptr %i.b, align 8, !tbaa !200
  %.val2.i.i.i66 = load i64, ptr %i.a, align 8, !tbaa !200
  tail call void @_ZdlPvm(ptr noundef %.val1.i76.i.i65, i64 noundef %.val2.i.i.i66) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_18MoveOnlyEEED2Ev.exit.i.i62

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_18MoveOnlyEEED2Ev.exit.i.i62: ; preds = %bb.b, %.noexc72
  store ptr %i.n, ptr %i.b, align 8, !tbaa !200
  store i64 %.sroa.speculated.i.i.i59, ptr %i.a, align 8, !tbaa !200
  %i.p = shl i64 %i.k, 1
  %i.q = or disjoint i64 %i.p, 1
  br label %bb.d

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_18MoveOnlyEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit84.i.i68: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EE9push_backEOS3_.exit23
  %i.r = icmp ugt i64 %i.h, 5
  br i1 %i.r, label %bb.c, label %_ZSt13move_backwardIPN12_GLOBAL__N_18MoveOnlyES2_ET0_T_S4_S3_.exit.i.i69, !prof !226

bb.c:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_18MoveOnlyEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit84.i.i68
  %2 = add nsw i64 %.sink5.i.i.i57, -1
  %.val1.i.i51.sroa.gep = getelementptr i8, ptr %.val1.i.i51.pre.pre, i64 1
  %.sroa.sel90 = select i1 %i.i, ptr %.val1.i.i51.sroa.gep, ptr %i.c
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.sel90, ptr align 1 %i.j, i64 %2, i1 false)
  %.pre.i.i70 = load i64, ptr %1, align 8, !tbaa !199
  br label %_ZSt13move_backwardIPN12_GLOBAL__N_18MoveOnlyES2_ET0_T_S4_S3_.exit.i.i69

_ZSt13move_backwardIPN12_GLOBAL__N_18MoveOnlyES2_ET0_T_S4_S3_.exit.i.i69: ; preds = %bb.c, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_18MoveOnlyEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit84.i.i68
  %i.s = phi i64 [ %.pre.i.i70, %bb.c ], [ %i.h, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIN12_GLOBAL__N_18MoveOnlyEEE9ConstructINS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvSA_RT_m.exit84.i.i68 ]
  %i.t = add i64 %i.s, 2
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13move_backwardIPN12_GLOBAL__N_18MoveOnlyES2_ET0_T_S4_S3_.exit.i.i69, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_18MoveOnlyEEED2Ev.exit.i.i62
  %storemerge.i.i63 = phi i64 [ %i.t, %_ZSt13move_backwardIPN12_GLOBAL__N_18MoveOnlyES2_ET0_T_S4_S3_.exit.i.i69 ], [ %i.q, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIN12_GLOBAL__N_18MoveOnlyEEED2Ev.exit.i.i62 ] ; 2 uses
  store i64 %storemerge.i.i63, ptr %1, align 8, !tbaa !199
  %i.u = trunc i64 %storemerge.i.i63 to i1
  br i1 %i.u, label %bb.e, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i73 = load ptr, ptr %i.b, align 8, !tbaa !200
  %.val2.i.i.i74 = load i64, ptr %i.a, align 8, !tbaa !200
  tail call void @_ZdlPvm(ptr noundef %.val1.i.i.i73, i64 noundef %.val2.i.i.i74) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EED2Ev.exit

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.f:                                             ; preds = %.noexc.i.i.i.invoke, %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIN12_GLOBAL__N_18MoveOnlyEELb0EE8AllocateERS5_m.exit.i.i.i60
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load i64, ptr %1, align 8, !tbaa !199
  %i.x = trunc i64 %i.w to i1
  br i1 %i.x, label %bb.g, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EED2Ev.exit77

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i75 = load ptr, ptr %i.y, align 8, !tbaa !200
  %.val2.i.i.i76 = load i64, ptr %i.a, align 8, !tbaa !200
  tail call void @_ZdlPvm(ptr noundef %.val1.i.i.i75, i64 noundef %.val2.i.i.i76) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EED2Ev.exit77

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_18MoveOnlyELm2ESaIS3_EED2Ev.exit77: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %i.v
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131InlinedVectorTest_Noexcept_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_131InlinedVectorTest_Noexcept_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_131InlinedVectorTest_Noexcept_TestE, i64 16), ptr %i.a, align 8, !tbaa !171
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_131InlinedVectorTest_Noexcept_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_131InlinedVectorTest_Noexcept_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN7testing8internal26AssertionResultExpectationD2Ev.exit45:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  %i.a = load i8, ptr %1, align 8, !tbaa !222, !range !191, !noundef !192
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.j, label %bb.a

bb.a:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit45
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !223  ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.d, null
  br i1 %.not.i.i46, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !197
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.c, %bb.b
  %i.f = phi ptr [ %i.e, %bb.c ], [ @.str.216, %bb.b ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 487, ptr noundef %i.f)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.g = load ptr, ptr %2, align 8, !tbaa !225    ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.g, null
  br i1 %.not.i.i47, label %_ZN7testing7MessageD2Ev.exit49, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48: ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !171
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(128) %i.g) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit49

_ZN7testing7MessageD2Ev.exit49:                   ; preds = %bb.e, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i48
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn17 = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.l, %bb.g ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.n = load ptr, ptr %2, align 8, !tbaa !225    ; 3 uses
  %.not.i.i50 = icmp eq ptr %i.n, null
  br i1 %.not.i.i50, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51: ; preds = %bb.i
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !171
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(128) %i.n) #36, !inline_history !5
  br label %bb.l

bb.j:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit45, %_ZN7testing7MessageD2Ev.exit49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !223  ; 4 uses
  %.not.i.i53 = icmp eq ptr %i.s, null
  br i1 %.not.i.i53, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !197  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.k
  %i.w = load i64, ptr %i.u, align 8, !tbaa !200
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  ret void

bb.l:                                             ; preds = %bb.f, %bb.i, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51
  %.pn17.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %.pn17, %bb.i ], [ %.pn17, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i51 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn17.pn
}

declare void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i64, ptr, i32 noundef, ptr noundef byval(%"class.std::basic_string_view") align 8) unnamed_addr #2
end_hunk_0
