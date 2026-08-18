inline.NumInlined: 27469
inline.NumDeleted: 7596
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 289
begin_hunk_0_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE6InsertINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEPiPKiT_m:bb.a
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, label %.lr.ph.i66, !llvm.loop !1399

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i66
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i66.epil.preheader

.lr.ph.i66.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i66.preheader
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i66.preheader ], [ %i.fu, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %2, %.lr.ph.i66.preheader ], [ %i.ft, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i66.epil

.lr.ph.i66.epil:                                  ; preds = %.lr.ph.i66.epil, %.lr.ph.i66.epil.preheader
  %.05.i.epil = phi i64 [ %i.ga, %.lr.ph.i66.epil ], [ %.05.i.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %i.fv = phi ptr [ %i.fz, %.lr.ph.i66.epil ], [ %.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i66.epil ], [ 0, %.lr.ph.i66.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.05.i.epil
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !132
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !132
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !1148 ; 2 uses
  %i.ga = add nuw i64 %.05.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i66.epil, !llvm.loop !1400

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i66.epil, %bb.i
  %.sroa.0117.0 = phi ptr [ %2, %bb.i ], [ %i.ft, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.i66.epil ] ; 2 uses
  %.not.i69 = icmp eq i64 %3, %i.ds
  br i1 %.not.i69, label %.loopexit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %xtraiter168 = and i64 %i.dw, 3                 ; 3 uses
  %i.gb = sub i64 %.sink1.i, %.sroa.speculated
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %.lr.ph.i72.epil.preheader, label %.lr.ph.i72.preheader.new

.lr.ph.i72.preheader.new:                         ; preds = %.lr.ph.i72.preheader
  %unroll_iter174 = and i64 %i.dw, -4
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72, %.lr.ph.i72.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i72.preheader.new ], [ %i.gx, %.lr.ph.i72 ] ; 5 uses
  %i.gd = phi ptr [ %.sroa.0117.0, %.lr.ph.i72.preheader.new ], [ %i.gw, %.lr.ph.i72 ] ; 2 uses
  %niter175 = phi i64 [ 0, %.lr.ph.i72.preheader.new ], [ %niter175.next.3, %.lr.ph.i72 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !132
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !132
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !1148 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !132
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !132
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !1148 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !132
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !132
  %i.gr = load ptr, ptr %i.gm, align 8, !tbaa !1148 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !132
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !132
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !1148 ; 2 uses
  %i.gx = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter175.next.3 = add i64 %niter175, 4         ; 2 uses
  %niter175.ncmp.3 = icmp eq i64 %niter175.next.3, %unroll_iter174
  br i1 %niter175.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i72, !llvm.loop !1389

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i72
  %lcmp.mod172.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod172.not, label %.loopexit, label %.lr.ph.i72.epil.preheader

.lr.ph.i72.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i72.preheader ], [ %i.gx, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init171 = phi ptr [ %.sroa.0117.0, %.lr.ph.i72.preheader ], [ %i.gw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i72.epil

.lr.ph.i72.epil:                                  ; preds = %.lr.ph.i72.epil, %.lr.ph.i72.epil.preheader
  %.06.i.epil = phi i64 [ %i.hd, %.lr.ph.i72.epil ], [ %.06.i.epil.init, %.lr.ph.i72.epil.preheader ] ; 2 uses
  %i.gy = phi ptr [ %i.hc, %.lr.ph.i72.epil ], [ %.epil.init171, %.lr.ph.i72.epil.preheader ] ; 2 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %.lr.ph.i72.epil ], [ 0, %.lr.ph.i72.epil.preheader ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i.epil
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !132
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !132
  %i.hc = load ptr, ptr %i.gy, align 8, !tbaa !1148
  %i.hd = add nuw i64 %.06.i.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %.loopexit, label %.lr.ph.i72.epil, !llvm.loop !1401

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.epil, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %i.he = shl i64 %3, 1
  %i.hf = load i64, ptr %0, align 8, !tbaa !45
  %i.hg = add i64 %i.hf, %i.he
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit
  %storemerge = phi i64 [ %i.hg, %.loopexit ], [ %i.dq, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit ]
  %.0 = phi ptr [ %i.dt, %.loopexit ], [ %i.t, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !45
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122IntPairVec_Insert_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122IntPairVec_Insert_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_122IntPairVec_Insert_TestE, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122IntPairVec_Insert_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_122IntPairVec_Insert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.404", align 8 ; 15 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %5 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.414", align 8 ; 11 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0440 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]  ; 3 uses
  %.not441 = icmp eq i64 %.0440, 0
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit
  %i.l = add nuw nsw i64 %.0440, 1                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond618.not = icmp eq i64 %i.l, 20
  br i1 %exitcond618.not, label %bb.b, label %.preheader, !llvm.loop !1402

.lr.ph.i.i:                                       ; preds = %.preheader, %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit
  %.023437 = phi i64 [ 0, %.preheader ], [ %i.tx, %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit ] ; 13 uses
  %i.m = shl nuw nsw i64 %.023437, 3
  %i.n = shl i64 %.023437, 3
  %i.o = shl nuw nsw i64 %.023437, 3
  %i.p = shl nuw nsw i64 %.023437, 3
  %11 = add nuw i64 %.023437, 2305843009213693951
  %12 = and i64 %11, 2305843009213693951          ; 2 uses
  %i.q = add nuw nsw i64 %12, 1                   ; 2 uses
  %i.r = shl i64 %.023437, 3
  %i.s = shl i64 %.023437, 3
  %i.t = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 14 uses
  store ptr null, ptr %i.t, align 8, !tbaa !1148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 9999, ptr %i.u, align 8, !tbaa !132
  %i.v = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i.1 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i.1:                                       ; preds = %.lr.ph.i.i
  store ptr null, ptr %i.v, align 8, !tbaa !1148
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i32 8888, ptr %i.w, align 8, !tbaa !132
  store ptr %i.v, ptr %i.t, align 8, !tbaa !1148
  %i.x = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i.2 unwind label %.lr.ph.i.i.i.preheader ; 3 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  store ptr null, ptr %i.x, align 8, !tbaa !1148
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 7777, ptr %i.y, align 8, !tbaa !132
  store ptr %i.x, ptr %i.v, align 8, !tbaa !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !45
  br i1 %.not441, label %._crit_edge, label %.lr.ph

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc.i.1, %.lr.ph.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.t, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.z = load ptr, ptr %.013.i.i.i, align 8, !tbaa !1148 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 16) #39
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit101, label %.lr.ph.i.i.i, !llvm.loop !1151

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit, %.noexc.i.2
  %.sroa.0155.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.0155.3, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 21 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.18.1, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 19 uses
  %.sroa.38.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.38.3, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.idx = shl nuw nsw i64 %.023437, 3             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0155.0.lcssa, i64 %.idx ; 23 uses
  %i.ab = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.0155.0.lcssa to i64 ; 9 uses
  %i.ad = icmp eq ptr %i.aa, %.sroa.18.0.lcssa
  br i1 %i.ad, label %.lr.ph.i, label %.lr.ph.i119

.lr.ph.i:                                         ; preds = %._crit_edge, %.noexc104
  %.sroa.0155.4 = phi ptr [ %.sroa.0155.8, %.noexc104 ], [ %.sroa.0155.0.lcssa, %._crit_edge ] ; 10 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.5, %.noexc104 ], [ %.sroa.18.0.lcssa, %._crit_edge ] ; 8 uses
  %.sroa.38.4 = phi ptr [ %.sroa.38.8, %.noexc104 ], [ %.sroa.38.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.7.035.i = phi ptr [ %i.bm, %.noexc104 ], [ %i.t, %._crit_edge ] ; 2 uses
  %.sroa.024.034.i = phi ptr [ %i.bl, %.noexc104 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.024.034.i, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.035.i, i64 8
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !132 ; 2 uses
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !132 ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.18.2 to i64         ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.0155.4 to i64       ; 3 uses
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %.not.i136 = icmp eq ptr %.sroa.18.2, %.sroa.38.4
  br i1 %.not.i136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.sroa.6203.0.insert.ext = zext i32 %i.ah to i64
  %.sroa.6203.0.insert.shift = shl nuw i64 %.sroa.6203.0.insert.ext, 32
  %.sroa.0197.0.insert.ext = zext i32 %i.ag to i64
  %.sroa.0197.0.insert.insert = or disjoint i64 %.sroa.6203.0.insert.shift, %.sroa.0197.0.insert.ext
  store i64 %.sroa.0197.0.insert.insert, ptr %.sroa.18.2, align 4
  br label %.noexc104

bb.e:                                             ; preds = %.lr.ph.i
  %i.al = icmp eq i64 %i.ak, 9223372036854775800
  br i1 %i.al, label %bb.f, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i138

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc147 unwind label %.loopexit.split-lp

.noexc147:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i138: ; preds = %bb.e
  %i.am = ashr exact i64 %i.ak, 3                 ; 3 uses
  %.sroa.speculated.i.i.i139 = call i64 @llvm.umax.i64(i64 %i.am, i64 1)
  %i.an = add nsw i64 %.sroa.speculated.i.i.i139, %i.am ; 2 uses
  %i.ao = icmp ult i64 %i.an, %i.am
  %i.ap = call i64 @llvm.umin.i64(i64 %i.an, i64 1152921504606846975)
  %i.aq = select i1 %i.ao, i64 1152921504606846975, i64 %i.ap ; 3 uses
  %.not.i.i.i140 = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i140)
  %i.ar = shl nuw nsw i64 %i.aq, 3
  %i.as = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #41
          to label %.noexc148 unwind label %.loopexit ; 8 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i138
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ak
  %.sroa.6203.0.insert.ext205 = zext i32 %i.ah to i64
  %.sroa.6203.0.insert.shift206 = shl nuw i64 %.sroa.6203.0.insert.ext205, 32
  %.sroa.0197.0.insert.ext200 = zext i32 %i.ag to i64
  %.sroa.0197.0.insert.insert202 = or disjoint i64 %.sroa.6203.0.insert.shift206, %.sroa.0197.0.insert.ext200
  store i64 %.sroa.0197.0.insert.insert202, ptr %i.at, align 4
  %.not10.i.i.i.i.i141 = icmp eq ptr %.sroa.0155.4, %.sroa.18.2
  br i1 %.not10.i.i.i.i.i141, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142.preheader

.lr.ph.i.i.i.i.i142.preheader:                    ; preds = %.noexc148
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = add i64 %i.ai, -8
  %i.aw = sub i64 %i.av, %i.aj                    ; 2 uses
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aw, 24
  %i.az = sub i64 %i.aj, %i.au
  %diff.check = icmp ugt i64 %i.az, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i142.preheader1240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i142.preheader
  %n.vec = and i64 %i.ay, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.as, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %.sroa.0155.4, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.as, i64 %i.bd ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %.sroa.0155.4, i64 %i.bd ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.be = getelementptr i8, ptr %next.gep1039, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1039, align 4, !alias.scope !1408, !noalias !1405
  %wide.load1040 = load <2 x i64>, ptr %i.be, align 4, !alias.scope !1408, !noalias !1405
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1405, !noalias !1408
  store <2 x i64> %wide.load1040, ptr %i.bf, align 4, !alias.scope !1405, !noalias !1408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !1410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142.preheader1240

.lr.ph.i.i.i.i.i142.preheader1240:                ; preds = %.lr.ph.i.i.i.i.i142.preheader, %middle.block
  %.012.i.i.i.i.i143.ph = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i142.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i144.ph = phi ptr [ %.sroa.0155.4, %.lr.ph.i.i.i.i.i142.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i142

.lr.ph.i.i.i.i.i142:                              ; preds = %.lr.ph.i.i.i.i.i142.preheader1240, %.lr.ph.i.i.i.i.i142
  %.012.i.i.i.i.i143 = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i142 ], [ %.012.i.i.i.i.i143.ph, %.lr.ph.i.i.i.i.i142.preheader1240 ] ; 2 uses
  %.0911.i.i.i.i.i144 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i142 ], [ %.0911.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i142.preheader1240 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.bh = load i64, ptr %.0911.i.i.i.i.i144, align 4, !alias.scope !1408, !noalias !1405
  store i64 %i.bh, ptr %.012.i.i.i.i.i143, align 4, !alias.scope !1405, !noalias !1408
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i144, i64 8 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i143, i64 8 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.bi, %.sroa.18.2
  br i1 %.not.i.i.i.i.i145, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142, !llvm.loop !1411

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i142, %middle.block, %.noexc148
  %.0.lcssa.i.i.i.i.i146 = phi ptr [ %i.as, %.noexc148 ], [ %i.bb, %middle.block ], [ %i.bj, %.lr.ph.i.i.i.i.i142 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0155.4, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.4, i64 noundef %i.ak) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.aq
  br label %.noexc104

.noexc104:                                        ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %.sroa.0155.8 = phi ptr [ %i.as, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0155.4, %bb.d ] ; 2 uses
  %.0.lcssa.i.i.i.i.i146.pn = phi ptr [ %.0.lcssa.i.i.i.i.i146, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.2, %bb.d ]
  %.sroa.38.8 = phi ptr [ %i.bk, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.4, %bb.d ] ; 2 uses
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i146.pn, i64 8 ; 2 uses
  %i.bl = load ptr, ptr %.sroa.024.034.i, align 8, !tbaa !1148 ; 2 uses
  %i.bm = load ptr, ptr %.sroa.7.035.i, align 8, !tbaa !1148 ; 2 uses
  %i.bn = icmp ne ptr %i.bl, null
  %i.bo = icmp ne ptr %i.bm, null
  %.not3.i.i103 = select i1 %i.bn, i1 true, i1 %i.bo
  br i1 %.not3.i.i103, label %.lr.ph.i, label %.lr.ph.i.i54.preheader, !llvm.loop !1412

.lr.ph.i119:                                      ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i
  %.sroa.17.0 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 2 uses
  %.sroa.0188.0 = phi ptr [ %.sroa.0188.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 10 uses
  %i.bp = phi ptr [ %i.dc, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 5 uses
  %i.bq = phi ptr [ %.sroa.11.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 4 uses
  %.sroa.5.018.i = phi ptr [ %i.de, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ %i.t, %._crit_edge ] ; 2 uses
  %.sroa.09.017.i = phi ptr [ %i.dd, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.09.017.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122IntPairVec_Insert_Test8TestBodyEv:bb.a
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i112 ], [ %.sroa.08.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 9 uses
  %i.ho = load i64, ptr %.sroa.08.011.i.i.i.i.i, align 4
  store i64 %i.ho, ptr %.012.i.i.i.i.i113, align 4
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 8
  %i.hr = load i64, ptr %i.hp, align 4
  store i64 %i.hr, ptr %i.hq, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 16
  %i.hu = load i64, ptr %i.hs, align 4
  store i64 %i.hu, ptr %i.ht, align 4
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24
  %i.hw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 24
  %i.hx = load i64, ptr %i.hv, align 4
  store i64 %i.hx, ptr %i.hw, align 4
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 32
  %i.hz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 32
  %i.ia = load i64, ptr %i.hy, align 4
  store i64 %i.ia, ptr %i.hz, align 4
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 40
  %i.ic = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 40
  %i.id = load i64, ptr %i.ib, align 4
  store i64 %i.id, ptr %i.ic, align 4
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 48
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 48
  %i.ig = load i64, ptr %i.ie, align 4
  store i64 %i.ig, ptr %i.if, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 56 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 56
  %i.ij = load i64, ptr %i.ih, align 4
  store i64 %i.ij, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 64
  %i.il = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 64
  %.not.i.i.i.i.i114.7 = icmp eq ptr %i.ih, %.0.lcssa.i.i.i.i.i132.pn
  br i1 %.not.i.i.i.i.i114.7, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i112, !llvm.loop !1437

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112, %middle.block1195, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.im = sub nuw nsw i64 %i.dq, %i.dv
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0.lcssa, i64 %i.im ; 5 uses
  %i.io = add i64 %i.ds, -8
  %i.ip = add i64 %i.n, %i.ac
  %i.iq = sub i64 %i.io, %i.ip                    ; 2 uses
  %i.ir = lshr i64 %i.iq, 3
  %i.is = add nuw nsw i64 %i.ir, 1                ; 2 uses
  %min.iters.check1168 = icmp ult i64 %i.iq, 72
  br i1 %min.iters.check1168, label %.lr.ph.i.i.i.i.i54.i.preheader, label %vector.memcheck1165

vector.memcheck1165:                              ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i
  %i.it = shl i64 %.023437, 3
  %i.iu = add i64 %i.dp, %i.ds
  %i.iv = add i64 %i.it, %i.ac
  %i.iw = add i64 %i.iv, %i.du
  %i.ix = sub i64 %i.iw, %i.iu
  %diff.check1166 = icmp ugt i64 %i.ix, -32
  br i1 %diff.check1166, label %.lr.ph.i.i.i.i.i54.i.preheader, label %vector.ph1169

vector.ph1169:                                    ; preds = %vector.memcheck1165
  %n.vec1170 = and i64 %i.is, 4611686018427387900 ; 3 uses
  %i.iy = shl i64 %n.vec1170, 3                   ; 2 uses
  %i.iz = getelementptr i8, ptr %i.in, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.aa, i64 %i.iy
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1177, %vector.body1171 ] ; 2 uses
  %i.jb = shl i64 %index1172, 3                   ; 2 uses
  %next.gep1173.a = getelementptr i8, ptr %i.in, i64 %i.jb ; 2 uses
  %next.gep1174 = getelementptr i8, ptr %i.aa, i64 %i.jb ; 2 uses
  %i.jc = getelementptr i8, ptr %next.gep1174, i64 16
  %wide.load1175.a = load <2 x i64>, ptr %next.gep1174, align 4
  %wide.load1176 = load <2 x i64>, ptr %i.jc, align 4
  %i.jd = getelementptr i8, ptr %next.gep1173.a, i64 16
  store <2 x i64> %wide.load1175.a, ptr %next.gep1173.a, align 4
  store <2 x i64> %wide.load1176, ptr %i.jd, align 4
  %index.next1177 = add nuw i64 %index1172, 4     ; 2 uses
  %i.je = icmp eq i64 %index.next1177, %n.vec1170
  br i1 %i.je, label %middle.block1178, label %vector.body1171, !llvm.loop !1438

middle.block1178:                                 ; preds = %vector.body1171
  %cmp.n1179 = icmp eq i64 %i.is, %n.vec1170
  br i1 %cmp.n1179, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i, label %.lr.ph.i.i.i.i.i54.i.preheader

.lr.ph.i.i.i.i.i54.i.preheader:                   ; preds = %vector.memcheck1165, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, %middle.block1178
  %.013.i.i.i.i.i55.i.ph = phi ptr [ %i.in, %vector.memcheck1165 ], [ %i.in, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i ], [ %i.iz, %middle.block1178 ]
  %.sroa.08.012.i.i.i.i.i56.i.ph = phi ptr [ %i.aa, %vector.memcheck1165 ], [ %i.aa, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i ], [ %i.ja, %middle.block1178 ]
  br label %.lr.ph.i.i.i.i.i54.i

.lr.ph.i.i.i.i.i54.i:                             ; preds = %.lr.ph.i.i.i.i.i54.i.preheader, %.lr.ph.i.i.i.i.i54.i
  %.013.i.i.i.i.i55.i = phi ptr [ %i.jh, %.lr.ph.i.i.i.i.i54.i ], [ %.013.i.i.i.i.i55.i.ph, %.lr.ph.i.i.i.i.i54.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i54.i ], [ %.sroa.08.012.i.i.i.i.i56.i.ph, %.lr.ph.i.i.i.i.i54.i.preheader ] ; 2 uses
  %i.jf = load i64, ptr %.sroa.08.012.i.i.i.i.i56.i, align 4
  store i64 %i.jf, ptr %.013.i.i.i.i.i55.i, align 4
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56.i, i64 8 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55.i, i64 8
  %.not.i.i.i.i.i57.i = icmp eq ptr %i.jg, %.sroa.18.0.lcssa
  br i1 %.not.i.i.i.i.i57.i, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i, label %.lr.ph.i.i.i.i.i54.i, !llvm.loop !1439

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i: ; preds = %.lr.ph.i.i.i.i.i54.i, %middle.block1178
  %i.ji = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.du ; 3 uses
  %i.jj = icmp sgt i64 %i.dv, 0
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i61.i.preheader, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit

.lr.ph.i.i.i.i.i61.i.preheader:                   ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i
  %min.iters.check1142 = icmp ult i64 %i.dv, 4
  br i1 %min.iters.check1142, label %.lr.ph.i.i.i.i.i61.i.preheader1246, label %vector.memcheck1135

vector.memcheck1135:                              ; preds = %.lr.ph.i.i.i.i.i61.i.preheader
  %i.jk = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %i.o
  %scevgep1136.a = getelementptr i8, ptr %i.jk, i64 %i.du
  %scevgep1137 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.du
  %bound01138 = icmp ult ptr %i.aa, %scevgep1137
  %bound11139 = icmp ult ptr %.sroa.0188.1, %scevgep1136.a
  %found.conflict1140 = and i1 %bound01138, %bound11139
  br i1 %found.conflict1140, label %.lr.ph.i.i.i.i.i61.i.preheader1246, label %vector.ph1143

vector.ph1143:                                    ; preds = %vector.memcheck1135
  %n.vec1144 = and i64 %i.dv, 9223372036854775804 ; 3 uses
  %i.jl = and i64 %i.dv, 3
  %i.jm = shl i64 %n.vec1144, 3                   ; 2 uses
  %i.jn = getelementptr i8, ptr %i.aa, i64 %i.jm
  %i.jo = getelementptr i8, ptr %.sroa.0188.1, i64 %i.jm
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1143
  %index1146 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1159, %vector.body1145 ] ; 2 uses
  %i.jp = shl i64 %index1146, 3                   ; 3 uses
  %i.jq = or disjoint i64 %i.jp, 16               ; 2 uses
  %next.gep1147.a = getelementptr i8, ptr %i.aa, i64 %i.jp
  %next.gep1148.a = getelementptr i8, ptr %i.aa, i64 %i.jq
  %next.gep1149.a = getelementptr i8, ptr %.sroa.0188.1, i64 %i.jp
  %next.gep1150 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.jq
  %wide.vec1151 = load <4 x i32>, ptr %next.gep1149.a, align 4, !tbaa !132, !alias.scope !1440
  %wide.vec1154 = load <4 x i32>, ptr %next.gep1150, align 4, !tbaa !132, !alias.scope !1440
  store <4 x i32> %wide.vec1151, ptr %next.gep1147.a, align 4, !tbaa !132, !alias.scope !1443, !noalias !1440
  store <4 x i32> %wide.vec1154, ptr %next.gep1148.a, align 4, !tbaa !132, !alias.scope !1443, !noalias !1440
  %index.next1159 = add nuw i64 %index1146, 4     ; 2 uses
  %i.jr = icmp eq i64 %index.next1159, %n.vec1144
  br i1 %i.jr, label %middle.block1160, label %vector.body1145, !llvm.loop !1445

middle.block1160:                                 ; preds = %vector.body1145
  %cmp.n1161 = icmp eq i64 %i.dv, %n.vec1144
  br i1 %cmp.n1161, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, label %.lr.ph.i.i.i.i.i61.i.preheader1246

.lr.ph.i.i.i.i.i61.i.preheader1246:               ; preds = %vector.memcheck1135, %.lr.ph.i.i.i.i.i61.i.preheader, %middle.block1160
  %.012.i.i.i.i.i62.i.ph = phi i64 [ %i.dv, %vector.memcheck1135 ], [ %i.dv, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jl, %middle.block1160 ]
  %.0811.i.i.i.i.i63.i.ph = phi ptr [ %i.aa, %vector.memcheck1135 ], [ %i.aa, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jn, %middle.block1160 ]
  %.0910.i.i.i.i.i64.i.ph = phi ptr [ %.sroa.0188.1, %vector.memcheck1135 ], [ %.sroa.0188.1, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jo, %middle.block1160 ]
  br label %.lr.ph.i.i.i.i.i61.i

.lr.ph.i.i.i.i.i61.i:                             ; preds = %.lr.ph.i.i.i.i.i61.i.preheader1246, %.lr.ph.i.i.i.i.i61.i
  %.012.i.i.i.i.i62.i = phi i64 [ %i.jy, %.lr.ph.i.i.i.i.i61.i ], [ %.012.i.i.i.i.i62.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1246 ] ; 2 uses
  %.0811.i.i.i.i.i63.i = phi ptr [ %i.jx, %.lr.ph.i.i.i.i.i61.i ], [ %.0811.i.i.i.i.i63.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1246 ] ; 3 uses
  %.0910.i.i.i.i.i64.i = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i61.i ], [ %.0910.i.i.i.i.i64.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1246 ] ; 3 uses
  %i.js = load i32, ptr %.0910.i.i.i.i.i64.i, align 4, !tbaa !132
  store i32 %i.js, ptr %.0811.i.i.i.i.i63.i, align 4, !tbaa !1413
  %i.jt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64.i, i64 4
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !132
  %i.jv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63.i, i64 4
  store i32 %i.ju, ptr %i.jv, align 4, !tbaa !1415
  %i.jw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64.i, i64 8
  %i.jx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63.i, i64 8
  %i.jy = add nsw i64 %.012.i.i.i.i.i62.i, -1
  %i.jz = icmp samesign ugt i64 %.012.i.i.i.i.i62.i, 1
  br i1 %i.jz, label %.lr.ph.i.i.i.i.i61.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, !llvm.loop !1446

bb.s:                                             ; preds = %bb.p
  %i.ka = sub i64 %i.ds, %i.ac
  %i.kb = ashr exact i64 %i.ka, 3                 ; 4 uses
  %i.kc = sub nsw i64 1152921504606846975, %i.kb
  %i.kd = icmp ult i64 %i.kc, %i.dq
  br i1 %i.kd, label %bb.t, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #38
          to label %.noexc117 unwind label %.loopexit.split-lp246

.noexc117:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.kb, i64 %i.dq)
  %i.ke = add nsw i64 %.sroa.speculated.i.i, %i.kb ; 2 uses
  %i.kf = icmp ult i64 %i.ke, %i.kb
  %i.kg = call i64 @llvm.umin.i64(i64 %i.ke, i64 1152921504606846975)
  %i.kh = select i1 %i.kf, i64 1152921504606846975, i64 %i.kg ; 3 uses
  %.not.i.i116 = icmp eq i64 %i.kh, 0
  br i1 %.not.i.i116, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ki = shl nuw nsw i64 %i.kh, 3
  %i.kj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ki) #41
          to label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i unwind label %.loopexit245

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.u, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.kk = phi ptr [ null, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.kj, %bb.u ] ; 7 uses
  %.not11.i.i.i.i.i66.i = icmp eq i64 %.023437, 0
  br i1 %.not11.i.i.i.i.i66.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i.preheader.a

.lr.ph.i.i.i.i.i67.i.preheader.a:                 ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i
  %i.kl = ptrtoaddr ptr %i.kk to i64
  %min.iters.check1081 = icmp samesign ult i64 %12, 3
  %i.km = sub i64 %i.ac, %i.kl
  %diff.check1079 = icmp ugt i64 %i.km, -32
  %or.cond1235 = or i1 %min.iters.check1081, %diff.check1079
  br i1 %or.cond1235, label %.lr.ph.i.i.i.i.i67.i.preheader1244, label %vector.ph1082

vector.ph1082:                                    ; preds = %.lr.ph.i.i.i.i.i67.i.preheader.a
  %n.vec1083 = and i64 %i.q, 4611686018427387900  ; 3 uses
  %i.kn = shl i64 %n.vec1083, 3                   ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kk, i64 %i.kn  ; 2 uses
  %i.kp = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %i.kn
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %vector.ph1082
  %index1085 = phi i64 [ 0, %vector.ph1082 ], [ %index.next1090, %vector.body1084 ] ; 2 uses
  %i.kq = shl i64 %index1085, 3                   ; 2 uses
  %next.gep1086.a = getelementptr i8, ptr %i.kk, i64 %i.kq ; 2 uses
  %next.gep1087 = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %i.kq ; 2 uses
  %i.kr = getelementptr i8, ptr %next.gep1087, i64 16
  %wide.load1088.a = load <2 x i64>, ptr %next.gep1087, align 4
  %wide.load1089 = load <2 x i64>, ptr %i.kr, align 4
  %i.ks = getelementptr i8, ptr %next.gep1086.a, i64 16
  store <2 x i64> %wide.load1088.a, ptr %next.gep1086.a, align 4
  store <2 x i64> %wide.load1089, ptr %i.ks, align 4
  %index.next1090 = add nuw i64 %index1085, 4     ; 2 uses
  %i.kt = icmp eq i64 %index.next1090, %n.vec1083
  br i1 %i.kt, label %middle.block1091, label %vector.body1084, !llvm.loop !1447

middle.block1091:                                 ; preds = %vector.body1084
  %cmp.n1092 = icmp eq i64 %i.q, %n.vec1083
  br i1 %cmp.n1092, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i.preheader1244

.lr.ph.i.i.i.i.i67.i.preheader1244:               ; preds = %.lr.ph.i.i.i.i.i67.i.preheader.a, %middle.block1091
  %.013.i.i.i.i.i68.i.ph = phi ptr [ %i.kk, %.lr.ph.i.i.i.i.i67.i.preheader.a ], [ %i.ko, %middle.block1091 ]
  %.sroa.08.012.i.i.i.i.i69.i.ph = phi ptr [ %.sroa.0155.0.lcssa, %.lr.ph.i.i.i.i.i67.i.preheader.a ], [ %i.kp, %middle.block1091 ]
  br label %.lr.ph.i.i.i.i.i67.i

.lr.ph.i.i.i.i.i67.i:                             ; preds = %.lr.ph.i.i.i.i.i67.i.preheader1244, %.lr.ph.i.i.i.i.i67.i
  %.013.i.i.i.i.i68.i = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i67.i ], [ %.013.i.i.i.i.i68.i.ph, %.lr.ph.i.i.i.i.i67.i.preheader1244 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i69.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i67.i ], [ %.sroa.08.012.i.i.i.i.i69.i.ph, %.lr.ph.i.i.i.i.i67.i.preheader1244 ] ; 2 uses
  %i.ku = load i64, ptr %.sroa.08.012.i.i.i.i.i69.i, align 4
  store i64 %i.ku, ptr %.013.i.i.i.i.i68.i, align 4
  %i.kv = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i69.i, i64 8 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i68.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i70.i = icmp eq ptr %i.kv, %i.aa
  br i1 %.not.i.i.i.i.i70.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i, !llvm.loop !1448

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i67.i, %middle.block1091, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i.i71.i = phi ptr [ %i.kk, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i ], [ %i.ko, %middle.block1091 ], [ %i.kw, %.lr.ph.i.i.i.i.i67.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i71.i1043 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i71.i to i64 ; 3 uses
  %i.kx = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i132.pn to i64 ; 2 uses
  %i.ky = sub i64 %i.kx, %.sroa.0188.11061.le     ; 2 uses
  %i.kz = lshr i64 %i.ky, 3
  %i.la = add nuw nsw i64 %i.kz, 1                ; 2 uses
  %min.iters.check1064 = icmp ult i64 %i.ky, 24
  %i.lb = sub i64 %.sroa.0188.11061.le, %.0.lcssa.i.i.i.i.i71.i1043
  %diff.check1062 = icmp ugt i64 %i.lb, -32
  %or.cond1236 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1236, label %.lr.ph.i.i.i.i73.i.preheader, label %vector.ph1065

vector.ph1065:                                    ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %n.vec1066 = and i64 %i.la, 4611686018427387900 ; 3 uses
  %i.lc = shl i64 %n.vec1066, 3                   ; 2 uses
  %i.ld = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71.i, i64 %i.lc ; 2 uses
  %i.le = getelementptr i8, ptr %.sroa.0188.1, i64 %i.lc
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1073, %vector.body1067 ] ; 2 uses
  %i.lf = shl i64 %index1068, 3                   ; 2 uses
  %next.gep1069 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71.i, i64 %i.lf ; 2 uses
  %next.gep1070 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.lf ; 2 uses
  %i.lg = getelementptr i8, ptr %next.gep1070, i64 16
  %wide.load1071 = load <2 x i64>, ptr %next.gep1070, align 4
  %wide.load1072 = load <2 x i64>, ptr %i.lg, align 4
  %i.lh = getelementptr i8, ptr %next.gep1069, i64 16
  store <2 x i64> %wide.load1071, ptr %next.gep1069, align 4
  store <2 x i64> %wide.load1072, ptr %i.lh, align 4
  %index.next1073 = add nuw i64 %index1068, 4     ; 2 uses
  %i.li = icmp eq i64 %index.next1073, %n.vec1066
  br i1 %i.li, label %middle.block1074, label %vector.body1067, !llvm.loop !1449

middle.block1074:                                 ; preds = %vector.body1067
  %cmp.n1075 = icmp eq i64 %i.la, %n.vec1066
  br i1 %cmp.n1075, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i.preheader

.lr.ph.i.i.i.i73.i.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, %middle.block1074
  %.012.i.i.i.i74.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.ld, %middle.block1074 ] ; 2 uses
  %.sroa.08.011.i.i.i.i75.i.ph = phi ptr [ %.sroa.0188.1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.le, %middle.block1074 ] ; 3 uses
  %.sroa.08.011.i.i.i.i75.i.ph1433 = ptrtoaddr ptr %.sroa.08.011.i.i.i.i75.i.ph to i64
  %i.lj = sub i64 %i.kx, %.sroa.08.011.i.i.i.i75.i.ph1433 ; 2 uses
  %i.lk = lshr i64 %i.lj, 3
  %i.ll = add nuw nsw i64 %i.lk, 1
  %xtraiter1434 = and i64 %i.ll, 7                ; 2 uses
  %lcmp.mod1435.not = icmp eq i64 %xtraiter1434, 0
  br i1 %lcmp.mod1435.not, label %.lr.ph.i.i.i.i73.i.prol.loopexit, label %.lr.ph.i.i.i.i73.i.prol

.lr.ph.i.i.i.i73.i.prol:                          ; preds = %.lr.ph.i.i.i.i73.i.preheader, %.lr.ph.i.i.i.i73.i.prol
  %.012.i.i.i.i74.i.prol = phi ptr [ %i.lo, %.lr.ph.i.i.i.i73.i.prol ], [ %.012.i.i.i.i74.i.ph, %.lr.ph.i.i.i.i73.i.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i75.i.prol = phi ptr [ %i.ln, %.lr.ph.i.i.i.i73.i.prol ], [ %.sroa.08.011.i.i.i.i75.i.ph, %.lr.ph.i.i.i.i73.i.preheader ] ; 2 uses
  %prol.iter1436 = phi i64 [ %prol.iter1436.next, %.lr.ph.i.i.i.i73.i.prol ], [ 0, %.lr.ph.i.i.i.i73.i.preheader ]
  %i.lm = load i64, ptr %.sroa.08.011.i.i.i.i75.i.prol, align 4
  store i64 %i.lm, ptr %.012.i.i.i.i74.i.prol, align 4
  %i.ln = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i.prol, i64 8 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i.prol, i64 8 ; 3 uses
  %prol.iter1436.next = add i64 %prol.iter1436, 1 ; 2 uses
  %prol.iter1436.cmp.not = icmp eq i64 %prol.iter1436.next, %xtraiter1434
  br i1 %prol.iter1436.cmp.not, label %.lr.ph.i.i.i.i73.i.prol.loopexit, label %.lr.ph.i.i.i.i73.i.prol, !llvm.loop !1450

.lr.ph.i.i.i.i73.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i73.i.prol, %.lr.ph.i.i.i.i73.i.preheader
  %.lcssa1267.unr = phi ptr [ poison, %.lr.ph.i.i.i.i73.i.preheader ], [ %i.lo, %.lr.ph.i.i.i.i73.i.prol ]
  %.012.i.i.i.i74.i.unr = phi ptr [ %.012.i.i.i.i74.i.ph, %.lr.ph.i.i.i.i73.i.preheader ], [ %i.lo, %.lr.ph.i.i.i.i73.i.prol ]
  %.sroa.08.011.i.i.i.i75.i.unr = phi ptr [ %.sroa.08.011.i.i.i.i75.i.ph, %.lr.ph.i.i.i.i73.i.preheader ], [ %i.ln, %.lr.ph.i.i.i.i73.i.prol ]
  %i.lp = icmp ult i64 %i.lj, 56
  br i1 %i.lp, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i

.lr.ph.i.i.i.i73.i:                               ; preds = %.lr.ph.i.i.i.i73.i.prol.loopexit, %.lr.ph.i.i.i.i73.i
  %.012.i.i.i.i74.i = phi ptr [ %i.mn, %.lr.ph.i.i.i.i73.i ], [ %.012.i.i.i.i74.i.unr, %.lr.ph.i.i.i.i73.i.prol.loopexit ] ; 9 uses
  %.sroa.08.011.i.i.i.i75.i = phi ptr [ %i.mm, %.lr.ph.i.i.i.i73.i ], [ %.sroa.08.011.i.i.i.i75.i.unr, %.lr.ph.i.i.i.i73.i.prol.loopexit ] ; 9 uses
  %i.lq = load i64, ptr %.sroa.08.011.i.i.i.i75.i, align 4
  store i64 %i.lq, ptr %.012.i.i.i.i74.i, align 4
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 8
  %i.ls = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 8
  %i.lt = load i64, ptr %i.lr, align 4
  store i64 %i.lt, ptr %i.ls, align 4
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 16
  %i.lw = load i64, ptr %i.lu, align 4
  store i64 %i.lw, ptr %i.lv, align 4
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 24
  %i.ly = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 24
  %i.lz = load i64, ptr %i.lx, align 4
  store i64 %i.lz, ptr %i.ly, align 4
  %i.ma = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 32
  %i.mb = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 32
  %i.mc = load i64, ptr %i.ma, align 4
  store i64 %i.mc, ptr %i.mb, align 4
  %i.md = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 40
  %i.me = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 40
  %i.mf = load i64, ptr %i.md, align 4
  store i64 %i.mf, ptr %i.me, align 4
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 48
  %i.mh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 48
  %i.mi = load i64, ptr %i.mg, align 4
  store i64 %i.mi, ptr %i.mh, align 4
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 56 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 56
  %i.ml = load i64, ptr %i.mj, align 4
  store i64 %i.ml, ptr %i.mk, align 4
  %i.mm = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 64
  %i.mn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 64 ; 2 uses
  %.not.i.i.i.i76.i.7 = icmp eq ptr %i.mj, %.0.lcssa.i.i.i.i.i132.pn
  br i1 %.not.i.i.i.i76.i.7, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i, !llvm.loop !1451

.lr.ph.i.i.i.i.i80.i.preheader:                   ; preds = %.lr.ph.i.i.i.i73.i.prol.loopexit, %.lr.ph.i.i.i.i73.i, %middle.block1074
  %.lcssa877 = phi ptr [ %i.ld, %middle.block1074 ], [ %.lcssa1267.unr, %.lr.ph.i.i.i.i73.i.prol.loopexit ], [ %i.mn, %.lr.ph.i.i.i.i73.i ] ; 5 uses
  %i.mo = add i64 %i.ds, -8
  %i.mp = add i64 %i.r, %i.ac
  %i.mq = sub i64 %i.mo, %i.mp                    ; 2 uses
  %i.mr = lshr i64 %i.mq, 3
  %i.ms = add nuw nsw i64 %i.mr, 1                ; 2 uses
  %min.iters.check1046 = icmp ult i64 %i.mq, 72
  br i1 %min.iters.check1046, label %.lr.ph.i.i.i.i.i80.i.preheader1243, label %vector.memcheck1042

vector.memcheck1042:                              ; preds = %.lr.ph.i.i.i.i.i80.i.preheader
  %i.mt = add i64 %.0.lcssa.i.i.i.i.i71.i1043, 8
  %i.mu = add i64 %i.s, %i.ac
  %i.mv = sub i64 %i.mt, %i.mu
  %i.mw = ptrtoaddr ptr %.lcssa877 to i64
  %reass.sub = sub i64 %i.mw, %.0.lcssa.i.i.i.i.i71.i1043
  %op.rdx = add i64 %reass.sub, -9
  %op.rdx1238 = add i64 %op.rdx, %i.mv
  %diff.check1044 = icmp ult i64 %op.rdx1238, 31
  br i1 %diff.check1044, label %.lr.ph.i.i.i.i.i80.i.preheader1243, label %vector.ph1047

vector.ph1047:                                    ; preds = %vector.memcheck1042
  %n.vec1048 = and i64 %i.ms, 4611686018427387900 ; 3 uses
  %i.mx = shl i64 %n.vec1048, 3                   ; 2 uses
  %i.my = getelementptr i8, ptr %.lcssa877, i64 %i.mx ; 2 uses
  %i.mz = getelementptr i8, ptr %i.aa, i64 %i.mx
  br label %vector.body1049

vector.body1049:                                  ; preds = %vector.body1049, %vector.ph1047
  %index1050 = phi i64 [ 0, %vector.ph1047 ], [ %index.next1055, %vector.body1049 ] ; 2 uses
  %i.na = shl i64 %index1050, 3                   ; 2 uses
  %next.gep1051 = getelementptr i8, ptr %.lcssa877, i64 %i.na ; 2 uses
  %next.gep1052 = getelementptr i8, ptr %i.aa, i64 %i.na ; 2 uses
  %i.nb = getelementptr i8, ptr %next.gep1052, i64 16
  %wide.load1053 = load <2 x i64>, ptr %next.gep1052, align 4
  %wide.load1054 = load <2 x i64>, ptr %i.nb, align 4
  %i.nc = getelementptr i8, ptr %next.gep1051, i64 16
  store <2 x i64> %wide.load1053, ptr %next.gep1051, align 4
  store <2 x i64> %wide.load1054, ptr %i.nc, align 4
  %index.next1055 = add nuw i64 %index1050, 4     ; 2 uses
  %i.nd = icmp eq i64 %index.next1055, %n.vec1048
  br i1 %i.nd, label %middle.block1056, label %vector.body1049, !llvm.loop !1452

middle.block1056:                                 ; preds = %vector.body1049
  %cmp.n1057 = icmp eq i64 %i.ms, %n.vec1048
  br i1 %cmp.n1057, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit85.i, label %.lr.ph.i.i.i.i.i80.i.preheader1243

.lr.ph.i.i.i.i.i80.i.preheader1243:               ; preds = %vector.memcheck1042, %.lr.ph.i.i.i.i.i80.i.preheader, %middle.block1056
  %.013.i.i.i.i.i81.i.ph = phi ptr [ %.lcssa877, %vector.memcheck1042 ], [ %.lcssa877, %.lr.ph.i.i.i.i.i80.i.preheader ], [ %i.my, %middle.block1056 ]
  %.sroa.08.012.i.i.i.i.i82.i.ph = phi ptr [ %i.aa, %vector.memcheck1042 ], [ %i.aa, %.lr.ph.i.i.i.i.i80.i.preheader ], [ %i.mz, %middle.block1056 ]
  br label %.lr.ph.i.i.i.i.i80.i

.lr.ph.i.i.i.i.i80.i:                             ; preds = %.lr.ph.i.i.i.i.i80.i.preheader1243, %.lr.ph.i.i.i.i.i80.i
  %.013.i.i.i.i.i81.i = phi ptr [ %i.ng, %.lr.ph.i.i.i.i.i80.i ], [ %.013.i.i.i.i.i81.i.ph, %.lr.ph.i.i.i.i.i80.i.preheader1243 ] ; 2 uses
end_hunk_1
