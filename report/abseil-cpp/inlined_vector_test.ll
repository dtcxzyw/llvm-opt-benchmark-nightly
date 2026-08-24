Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 190
loop-unroll.NumUnrolled: 287
begin_hunk_0_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE6InsertINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEPiPKiT_m:bb.a
  %i.fx = load ptr, ptr %i.fs, align 8, !tbaa !1148 ; 3 uses
  %i.fy = add nuw i64 %.05.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, label %.lr.ph.i66, !llvm.loop !1400

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i66
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i66.epil.preheader

.lr.ph.i66.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i66.preheader
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i66.preheader ], [ %i.fy, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %2, %.lr.ph.i66.preheader ], [ %i.fx, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i66.epil

.lr.ph.i66.epil:                                  ; preds = %.lr.ph.i66.epil, %.lr.ph.i66.epil.preheader
  %.05.i.epil = phi i64 [ %i.ge, %.lr.ph.i66.epil ], [ %.05.i.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %i.fz = phi ptr [ %i.gd, %.lr.ph.i66.epil ], [ %.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i66.epil ], [ 0, %.lr.ph.i66.epil.preheader ]
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.05.i.epil
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !132
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !132
  %i.gd = load ptr, ptr %i.fz, align 8, !tbaa !1148 ; 2 uses
  %i.ge = add nuw i64 %.05.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i66.epil, !llvm.loop !1401

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i66.epil, %bb.i
  %.sroa.0117.0 = phi ptr [ %2, %bb.i ], [ %i.fx, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph.i66.epil ] ; 2 uses
  %.not.i69 = icmp eq i64 %3, %i.dw
  br i1 %.not.i69, label %.loopexit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %xtraiter168 = and i64 %i.ea, 3                 ; 3 uses
  %i.gf = sub i64 %.sink1.i, %.sroa.speculated
  %i.gg = icmp ugt i64 %i.gf, -4
  br i1 %i.gg, label %.lr.ph.i72.epil.preheader, label %.lr.ph.i72.preheader.new

.lr.ph.i72.preheader.new:                         ; preds = %.lr.ph.i72.preheader
  %unroll_iter174 = and i64 %i.ea, -4
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72, %.lr.ph.i72.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i72.preheader.new ], [ %i.hb, %.lr.ph.i72 ] ; 5 uses
  %i.gh = phi ptr [ %.sroa.0117.0, %.lr.ph.i72.preheader.new ], [ %i.ha, %.lr.ph.i72 ] ; 2 uses
  %niter175 = phi i64 [ 0, %.lr.ph.i72.preheader.new ], [ %niter175.next.3, %.lr.ph.i72 ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !132
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !132
  %i.gl = load ptr, ptr %i.gh, align 8, !tbaa !1148 ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !132
  store i32 %i.gp, ptr %i.gn, align 4, !tbaa !132
  %i.gq = load ptr, ptr %i.gl, align 8, !tbaa !1148 ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !132
  store i32 %i.gu, ptr %i.gs, align 4, !tbaa !132
  %i.gv = load ptr, ptr %i.gq, align 8, !tbaa !1148 ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 12
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 8
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !132
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !132
  %i.ha = load ptr, ptr %i.gv, align 8, !tbaa !1148 ; 2 uses
  %i.hb = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter175.next.3 = add i64 %niter175, 4         ; 2 uses
  %niter175.ncmp.3 = icmp eq i64 %niter175.next.3, %unroll_iter174
  br i1 %niter175.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i72, !llvm.loop !1390

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i72
  %lcmp.mod172.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod172.not, label %.loopexit, label %.lr.ph.i72.epil.preheader

.lr.ph.i72.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i72.preheader ], [ %i.hb, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init171 = phi ptr [ %.sroa.0117.0, %.lr.ph.i72.preheader ], [ %i.ha, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i72.epil

.lr.ph.i72.epil:                                  ; preds = %.lr.ph.i72.epil, %.lr.ph.i72.epil.preheader
  %.06.i.epil = phi i64 [ %i.hh, %.lr.ph.i72.epil ], [ %.06.i.epil.init, %.lr.ph.i72.epil.preheader ] ; 2 uses
  %i.hc = phi ptr [ %i.hg, %.lr.ph.i72.epil ], [ %.epil.init171, %.lr.ph.i72.epil.preheader ] ; 2 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %.lr.ph.i72.epil ], [ 0, %.lr.ph.i72.epil.preheader ]
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %.06.i.epil
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !132
  store i32 %i.hf, ptr %i.hd, align 4, !tbaa !132
  %i.hg = load ptr, ptr %i.hc, align 8, !tbaa !1148
  %i.hh = add nuw i64 %.06.i.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %.loopexit, label %.lr.ph.i72.epil, !llvm.loop !1402

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.epil, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %i.hi = shl i64 %3, 1
  %i.hj = load i64, ptr %0, align 8, !tbaa !45
  %i.hk = add i64 %i.hj, %i.hi
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit
  %storemerge = phi i64 [ %i.hk, %.loopexit ], [ %i.du, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit ]
  %.0 = phi ptr [ %i.dx, %.loopexit ], [ %i.t, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit ]
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
  %i.a = alloca i64, align 8                      ; 10 uses
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
  %.0466 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]  ; 3 uses
  %.not467 = icmp eq i64 %.0466, 0
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit
  %i.l = add nuw nsw i64 %.0466, 1                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond644.not = icmp eq i64 %i.l, 20
  br i1 %exitcond644.not, label %bb.b, label %.preheader, !llvm.loop !1403

.lr.ph.i.i:                                       ; preds = %.preheader, %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit
  %.023463 = phi i64 [ 0, %.preheader ], [ %i.tx, %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit ] ; 10 uses
  %i.m = shl i64 %.023463, 3
  %i.n = shl i64 %.023463, 3
  %i.o = shl i64 %.023463, 3
  %i.p = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 14 uses
  store ptr null, ptr %i.p, align 8, !tbaa !1148
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 9999, ptr %i.q, align 8, !tbaa !132
  %i.r = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i.1 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i.1:                                       ; preds = %.lr.ph.i.i
  store ptr null, ptr %i.r, align 8, !tbaa !1148
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 8888, ptr %i.s, align 8, !tbaa !132
  store ptr %i.r, ptr %i.p, align 8, !tbaa !1148
  %i.t = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i.2 unwind label %.lr.ph.i.i.i.preheader ; 3 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  store ptr null, ptr %i.t, align 8, !tbaa !1148
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 7777, ptr %i.u, align 8, !tbaa !132
  store ptr %i.t, ptr %i.r, align 8, !tbaa !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !1404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !45
  br i1 %.not467, label %._crit_edge, label %.lr.ph

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc.i.1, %.lr.ph.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.p, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.v = load ptr, ptr %.013.i.i.i, align 8, !tbaa !1148 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 16) #39
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit104, label %.lr.ph.i.i.i, !llvm.loop !1151

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit, %.noexc.i.2
  %.sroa.0161.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.0161.3, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 21 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.18.1, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 19 uses
  %.sroa.38.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.38.3, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.idx = shl nuw nsw i64 %.023463, 3             ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0161.0.lcssa, i64 %.idx ; 23 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = ptrtoint ptr %.sroa.0161.0.lcssa to i64  ; 9 uses
  %i.z = icmp eq ptr %i.w, %.sroa.18.0.lcssa
  br i1 %i.z, label %.lr.ph.i, label %.lr.ph.i124

.lr.ph.i:                                         ; preds = %._crit_edge, %.noexc108
  %.sroa.0161.4 = phi ptr [ %.sroa.0161.8, %.noexc108 ], [ %.sroa.0161.0.lcssa, %._crit_edge ] ; 10 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.5, %.noexc108 ], [ %.sroa.18.0.lcssa, %._crit_edge ] ; 8 uses
  %.sroa.38.4 = phi ptr [ %.sroa.38.8, %.noexc108 ], [ %.sroa.38.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.7.035.i = phi ptr [ %i.bi, %.noexc108 ], [ %i.p, %._crit_edge ] ; 2 uses
  %.sroa.024.034.i = phi ptr [ %i.bh, %.noexc108 ], [ %i.p, %._crit_edge ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.024.034.i, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.7.035.i, i64 8
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !132 ; 2 uses
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !132 ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.18.2 to i64         ; 2 uses
  %i.af = ptrtoint ptr %.sroa.0161.4 to i64       ; 3 uses
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %.not.i142 = icmp eq ptr %.sroa.18.2, %.sroa.38.4
  br i1 %.not.i142, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.sroa.6213.0.insert.ext = zext i32 %i.ad to i64
  %.sroa.6213.0.insert.shift = shl nuw i64 %.sroa.6213.0.insert.ext, 32
  %.sroa.0207.0.insert.ext = zext i32 %i.ac to i64
  %.sroa.0207.0.insert.insert = or disjoint i64 %.sroa.6213.0.insert.shift, %.sroa.0207.0.insert.ext
  store i64 %.sroa.0207.0.insert.insert, ptr %.sroa.18.2, align 4
  br label %.noexc108

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = icmp eq i64 %i.ag, 9223372036854775800
  br i1 %i.ah, label %bb.f, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i144

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc153 unwind label %.loopexit.split-lp

.noexc153:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i144: ; preds = %bb.e
  %i.ai = ashr exact i64 %i.ag, 3                 ; 3 uses
  %.sroa.speculated.i.i.i145 = call i64 @llvm.umax.i64(i64 %i.ai, i64 1)
  %i.aj = add nsw i64 %.sroa.speculated.i.i.i145, %i.ai ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.ai
  %i.al = call i64 @llvm.umin.i64(i64 %i.aj, i64 1152921504606846975)
  %i.am = select i1 %i.ak, i64 1152921504606846975, i64 %i.al ; 3 uses
  %.not.i.i.i146 = icmp ne i64 %i.am, 0
  call void @llvm.assume(i1 %.not.i.i.i146)
  %i.an = shl nuw nsw i64 %i.am, 3
  %i.ao = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.an) #41
          to label %.noexc154 unwind label %.loopexit ; 8 uses

.noexc154:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i144
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ag
  %.sroa.6213.0.insert.ext215 = zext i32 %i.ad to i64
  %.sroa.6213.0.insert.shift216 = shl nuw i64 %.sroa.6213.0.insert.ext215, 32
  %.sroa.0207.0.insert.ext210 = zext i32 %i.ac to i64
  %.sroa.0207.0.insert.insert212 = or disjoint i64 %.sroa.6213.0.insert.shift216, %.sroa.0207.0.insert.ext210
  store i64 %.sroa.0207.0.insert.insert212, ptr %i.ap, align 4
  %.not10.i.i.i.i.i147 = icmp eq ptr %.sroa.0161.4, %.sroa.18.2
  br i1 %.not10.i.i.i.i.i147, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i148.preheader

.lr.ph.i.i.i.i.i148.preheader:                    ; preds = %.noexc154
  %i.aq = ptrtoaddr ptr %i.ao to i64
  %i.ar = add i64 %i.ae, -8
  %i.as = sub i64 %i.ar, %i.af                    ; 2 uses
  %i.at = lshr i64 %i.as, 3
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 24
  %i.av = sub i64 %i.af, %i.aq
  %diff.check = icmp ugt i64 %i.av, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i148.preheader1277, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i148.preheader
  %n.vec = and i64 %i.au, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %.sroa.0161.4, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.az ; 2 uses
  %next.gep1076 = getelementptr i8, ptr %.sroa.0161.4, i64 %i.az ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.ba = getelementptr i8, ptr %next.gep1076, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1076, align 4, !alias.scope !1409, !noalias !1406
  %wide.load1077 = load <2 x i64>, ptr %i.ba, align 4, !alias.scope !1409, !noalias !1406
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1406, !noalias !1409
  store <2 x i64> %wide.load1077, ptr %i.bb, align 4, !alias.scope !1406, !noalias !1409
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1411

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i148.preheader1277

.lr.ph.i.i.i.i.i148.preheader1277:                ; preds = %.lr.ph.i.i.i.i.i148.preheader, %middle.block
  %.012.i.i.i.i.i149.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i148.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.i150.ph = phi ptr [ %.sroa.0161.4, %.lr.ph.i.i.i.i.i148.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i.i148

.lr.ph.i.i.i.i.i148:                              ; preds = %.lr.ph.i.i.i.i.i148.preheader1277, %.lr.ph.i.i.i.i.i148
  %.012.i.i.i.i.i149 = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i148 ], [ %.012.i.i.i.i.i149.ph, %.lr.ph.i.i.i.i.i148.preheader1277 ] ; 2 uses
  %.0911.i.i.i.i.i150 = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i148 ], [ %.0911.i.i.i.i.i150.ph, %.lr.ph.i.i.i.i.i148.preheader1277 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1409)
  %i.bd = load i64, ptr %.0911.i.i.i.i.i150, align 4, !alias.scope !1409, !noalias !1406
  store i64 %i.bd, ptr %.012.i.i.i.i.i149, align 4, !alias.scope !1406, !noalias !1409
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i150, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i149, i64 8 ; 2 uses
  %.not.i.i.i.i.i151 = icmp eq ptr %i.be, %.sroa.18.2
  br i1 %.not.i.i.i.i.i151, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i148, !llvm.loop !1412

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i148, %middle.block, %.noexc154
  %.0.lcssa.i.i.i.i.i152 = phi ptr [ %i.ao, %.noexc154 ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i.i148 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0161.4, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0161.4, i64 noundef %i.ag) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.am
  br label %.noexc108

.noexc108:                                        ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %.sroa.0161.8 = phi ptr [ %i.ao, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0161.4, %bb.d ] ; 2 uses
  %.0.lcssa.i.i.i.i.i152.pn = phi ptr [ %.0.lcssa.i.i.i.i.i152, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.2, %bb.d ]
  %.sroa.38.8 = phi ptr [ %i.bg, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.4, %bb.d ] ; 2 uses
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i152.pn, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %.sroa.024.034.i, align 8, !tbaa !1148 ; 2 uses
  %i.bi = load ptr, ptr %.sroa.7.035.i, align 8, !tbaa !1148 ; 2 uses
  %i.bj = icmp ne ptr %i.bh, null
  %i.bk = icmp ne ptr %i.bi, null
  %.not3.i.i107 = select i1 %i.bj, i1 true, i1 %i.bk
  br i1 %.not3.i.i107, label %.lr.ph.i, label %.lr.ph.i.i54.preheader, !llvm.loop !1413

.lr.ph.i124:                                      ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i
  %.sroa.17.0 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 3 uses
  %.sroa.0197.0 = phi ptr [ %.sroa.0197.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 10 uses
  %i.bl = phi ptr [ %i.da, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 5 uses
  %i.bm = phi ptr [ %.sroa.11.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 4 uses
  %.sroa.5.018.i = phi ptr [ %i.dc, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ %i.p, %._crit_edge ] ; 2 uses
  %.sroa.09.017.i = phi ptr [ %i.db, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ %i.p, %._crit_edge ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.09.017.i, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_122IntPairVec_Insert_Test8TestBodyEv:bb.a
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i116 ], [ %.sroa.08.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i116.prol.loopexit ] ; 9 uses
  %i.hm = load i64, ptr %.sroa.08.011.i.i.i.i.i, align 4
  store i64 %i.hm, ptr %.012.i.i.i.i.i117, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 8
  %i.hp = load i64, ptr %i.hn, align 4
  store i64 %i.hp, ptr %i.ho, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 16
  %i.hs = load i64, ptr %i.hq, align 4
  store i64 %i.hs, ptr %i.hr, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24
  %i.hu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 24
  %i.hv = load i64, ptr %i.ht, align 4
  store i64 %i.hv, ptr %i.hu, align 4
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 32
  %i.hy = load i64, ptr %i.hw, align 4
  store i64 %i.hy, ptr %i.hx, align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 40
  %i.ia = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 40
  %i.ib = load i64, ptr %i.hz, align 4
  store i64 %i.ib, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 48
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 48
  %i.ie = load i64, ptr %i.ic, align 4
  store i64 %i.ie, ptr %i.id, align 4
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 56 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 56
  %i.ih = load i64, ptr %i.if, align 4
  store i64 %i.ih, ptr %i.ig, align 4
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 64
  %i.ij = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i117, i64 64
  %.not.i.i.i.i.i118.7 = icmp eq ptr %i.if, %.0.lcssa.i.i.i.i.i138.pn
  br i1 %.not.i.i.i.i.i118.7, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i116, !llvm.loop !1438

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i116.prol.loopexit, %.lr.ph.i.i.i.i.i116, %middle.block1232, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ik = sub nuw nsw i64 %i.do, %i.dt
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0.lcssa, i64 %i.ik ; 5 uses
  %i.im = add i64 %i.dq, -8
  %i.in = add i64 %i.m, %i.y
  %i.io = sub i64 %i.im, %i.in                    ; 2 uses
  %i.ip = lshr i64 %i.io, 3
  %i.iq = add nuw nsw i64 %i.ip, 1                ; 2 uses
  %min.iters.check1205 = icmp ult i64 %i.io, 72
  br i1 %min.iters.check1205, label %.lr.ph.i.i.i.i.i54.i.preheader, label %vector.memcheck1202

vector.memcheck1202:                              ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i
  %i.ir = shl i64 %.023463, 3
  %i.is = add i64 %i.dn, %i.dq
  %i.it = add i64 %i.ir, %i.y
  %i.iu = add i64 %i.it, %i.ds
  %i.iv = sub i64 %i.iu, %i.is
  %diff.check1203 = icmp ugt i64 %i.iv, -32
  br i1 %diff.check1203, label %.lr.ph.i.i.i.i.i54.i.preheader, label %vector.ph1206

vector.ph1206:                                    ; preds = %vector.memcheck1202
  %n.vec1207 = and i64 %i.iq, 4611686018427387900 ; 3 uses
  %i.iw = shl i64 %n.vec1207, 3                   ; 2 uses
  %i.ix = getelementptr i8, ptr %i.il, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.w, i64 %i.iw
  br label %vector.body1208

vector.body1208:                                  ; preds = %vector.body1208, %vector.ph1206
  %index1209 = phi i64 [ 0, %vector.ph1206 ], [ %index.next1214, %vector.body1208 ] ; 2 uses
  %i.iz = shl i64 %index1209, 3                   ; 2 uses
  %next.gep1210 = getelementptr i8, ptr %i.il, i64 %i.iz ; 2 uses
  %next.gep1211 = getelementptr i8, ptr %i.w, i64 %i.iz ; 2 uses
  %i.ja = getelementptr i8, ptr %next.gep1211, i64 16
  %wide.load1212 = load <2 x i64>, ptr %next.gep1211, align 4
  %wide.load1213 = load <2 x i64>, ptr %i.ja, align 4
  %i.jb = getelementptr i8, ptr %next.gep1210, i64 16
  store <2 x i64> %wide.load1212, ptr %next.gep1210, align 4
  store <2 x i64> %wide.load1213, ptr %i.jb, align 4
  %index.next1214 = add nuw i64 %index1209, 4     ; 2 uses
  %i.jc = icmp eq i64 %index.next1214, %n.vec1207
  br i1 %i.jc, label %middle.block1215, label %vector.body1208, !llvm.loop !1439

middle.block1215:                                 ; preds = %vector.body1208
  %cmp.n1216 = icmp eq i64 %i.iq, %n.vec1207
  br i1 %cmp.n1216, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i, label %.lr.ph.i.i.i.i.i54.i.preheader

.lr.ph.i.i.i.i.i54.i.preheader:                   ; preds = %vector.memcheck1202, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, %middle.block1215
  %.013.i.i.i.i.i55.i.ph = phi ptr [ %i.il, %vector.memcheck1202 ], [ %i.il, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i ], [ %i.ix, %middle.block1215 ]
  %.sroa.08.012.i.i.i.i.i56.i.ph = phi ptr [ %i.w, %vector.memcheck1202 ], [ %i.w, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i ], [ %i.iy, %middle.block1215 ]
  br label %.lr.ph.i.i.i.i.i54.i

.lr.ph.i.i.i.i.i54.i:                             ; preds = %.lr.ph.i.i.i.i.i54.i.preheader, %.lr.ph.i.i.i.i.i54.i
  %.013.i.i.i.i.i55.i = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i54.i ], [ %.013.i.i.i.i.i55.i.ph, %.lr.ph.i.i.i.i.i54.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56.i = phi ptr [ %i.je, %.lr.ph.i.i.i.i.i54.i ], [ %.sroa.08.012.i.i.i.i.i56.i.ph, %.lr.ph.i.i.i.i.i54.i.preheader ] ; 2 uses
  %i.jd = load i64, ptr %.sroa.08.012.i.i.i.i.i56.i, align 4
  store i64 %i.jd, ptr %.013.i.i.i.i.i55.i, align 4
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56.i, i64 8 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55.i, i64 8
  %.not.i.i.i.i.i57.i = icmp eq ptr %i.je, %.sroa.18.0.lcssa
  br i1 %.not.i.i.i.i.i57.i, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i, label %.lr.ph.i.i.i.i.i54.i, !llvm.loop !1440

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i: ; preds = %.lr.ph.i.i.i.i.i54.i, %middle.block1215
  %i.jg = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ds ; 3 uses
  %i.jh = icmp sgt i64 %i.dt, 0
  br i1 %i.jh, label %.lr.ph.i.i.i.i.i61.i.preheader, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit

.lr.ph.i.i.i.i.i61.i.preheader:                   ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i
  %min.iters.check1179 = icmp ult i64 %i.dt, 4
  br i1 %min.iters.check1179, label %.lr.ph.i.i.i.i.i61.i.preheader1283, label %vector.memcheck1172

vector.memcheck1172:                              ; preds = %.lr.ph.i.i.i.i.i61.i.preheader
  %i.ji = getelementptr i8, ptr %.sroa.0161.0.lcssa, i64 %.idx
  %scevgep1173 = getelementptr i8, ptr %i.ji, i64 %i.ds
  %scevgep1174 = getelementptr i8, ptr %.sroa.0197.1, i64 %i.ds
  %bound01175 = icmp ult ptr %i.w, %scevgep1174
  %bound11176 = icmp ult ptr %.sroa.0197.1, %scevgep1173
  %found.conflict1177 = and i1 %bound01175, %bound11176
  br i1 %found.conflict1177, label %.lr.ph.i.i.i.i.i61.i.preheader1283, label %vector.ph1180

vector.ph1180:                                    ; preds = %vector.memcheck1172
  %n.vec1181 = and i64 %i.dt, 9223372036854775804 ; 3 uses
  %i.jj = and i64 %i.dt, 3
  %i.jk = shl i64 %n.vec1181, 3                   ; 2 uses
  %i.jl = getelementptr i8, ptr %i.w, i64 %i.jk
  %i.jm = getelementptr i8, ptr %.sroa.0197.1, i64 %i.jk
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.body1182, %vector.ph1180
  %index1183 = phi i64 [ 0, %vector.ph1180 ], [ %index.next1196, %vector.body1182 ] ; 2 uses
  %i.jn = shl i64 %index1183, 3                   ; 3 uses
  %i.jo = or disjoint i64 %i.jn, 16               ; 2 uses
  %next.gep1184 = getelementptr i8, ptr %i.w, i64 %i.jn
  %next.gep1185 = getelementptr i8, ptr %i.w, i64 %i.jo
  %next.gep1186 = getelementptr i8, ptr %.sroa.0197.1, i64 %i.jn
  %next.gep1187 = getelementptr i8, ptr %.sroa.0197.1, i64 %i.jo
  %wide.vec1188 = load <4 x i32>, ptr %next.gep1186, align 4, !tbaa !132, !alias.scope !1441
  %wide.vec1191 = load <4 x i32>, ptr %next.gep1187, align 4, !tbaa !132, !alias.scope !1441
  store <4 x i32> %wide.vec1188, ptr %next.gep1184, align 4, !tbaa !132, !alias.scope !1444, !noalias !1441
  store <4 x i32> %wide.vec1191, ptr %next.gep1185, align 4, !tbaa !132, !alias.scope !1444, !noalias !1441
  %index.next1196 = add nuw i64 %index1183, 4     ; 2 uses
  %i.jp = icmp eq i64 %index.next1196, %n.vec1181
  br i1 %i.jp, label %middle.block1197, label %vector.body1182, !llvm.loop !1446

middle.block1197:                                 ; preds = %vector.body1182
  %cmp.n1198 = icmp eq i64 %i.dt, %n.vec1181
  br i1 %cmp.n1198, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, label %.lr.ph.i.i.i.i.i61.i.preheader1283

.lr.ph.i.i.i.i.i61.i.preheader1283:               ; preds = %vector.memcheck1172, %.lr.ph.i.i.i.i.i61.i.preheader, %middle.block1197
  %.012.i.i.i.i.i62.i.ph = phi i64 [ %i.dt, %vector.memcheck1172 ], [ %i.dt, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jj, %middle.block1197 ]
  %.0811.i.i.i.i.i63.i.ph = phi ptr [ %i.w, %vector.memcheck1172 ], [ %i.w, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jl, %middle.block1197 ]
  %.0910.i.i.i.i.i64.i.ph = phi ptr [ %.sroa.0197.1, %vector.memcheck1172 ], [ %.sroa.0197.1, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jm, %middle.block1197 ]
  br label %.lr.ph.i.i.i.i.i61.i

.lr.ph.i.i.i.i.i61.i:                             ; preds = %.lr.ph.i.i.i.i.i61.i.preheader1283, %.lr.ph.i.i.i.i.i61.i
  %.012.i.i.i.i.i62.i = phi i64 [ %i.jw, %.lr.ph.i.i.i.i.i61.i ], [ %.012.i.i.i.i.i62.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1283 ] ; 2 uses
  %.0811.i.i.i.i.i63.i = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i61.i ], [ %.0811.i.i.i.i.i63.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1283 ] ; 3 uses
  %.0910.i.i.i.i.i64.i = phi ptr [ %i.ju, %.lr.ph.i.i.i.i.i61.i ], [ %.0910.i.i.i.i.i64.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1283 ] ; 3 uses
  %i.jq = load i32, ptr %.0910.i.i.i.i.i64.i, align 4, !tbaa !132
  store i32 %i.jq, ptr %.0811.i.i.i.i.i63.i, align 4, !tbaa !1414
  %i.jr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64.i, i64 4
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !132
  %i.jt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63.i, i64 4
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !1416
  %i.ju = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64.i, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63.i, i64 8
  %i.jw = add nsw i64 %.012.i.i.i.i.i62.i, -1
  %i.jx = icmp samesign ugt i64 %.012.i.i.i.i.i62.i, 1
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i61.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, !llvm.loop !1447

bb.s:                                             ; preds = %bb.p
  %i.jy = sub i64 %i.dq, %i.y
  %i.jz = ashr exact i64 %i.jy, 3                 ; 4 uses
  %i.ka = sub nsw i64 1152921504606846975, %i.jz
  %i.kb = icmp ult i64 %i.ka, %i.do
  br i1 %i.kb, label %bb.t, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #38
          to label %.noexc122 unwind label %.loopexit.split-lp272

.noexc122:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.jz, i64 %i.do)
  %i.kc = add nsw i64 %.sroa.speculated.i.i, %i.jz ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.jz
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i121 = icmp eq i64 %i.kf, 0
  br i1 %.not.i.i121, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #41
          to label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i unwind label %.loopexit271

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.u, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.ki = phi ptr [ null, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.kh, %bb.u ] ; 7 uses
  %.not11.i.i.i.i.i66.i = icmp eq i64 %.023463, 0
  br i1 %.not11.i.i.i.i.i66.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i.preheader

.lr.ph.i.i.i.i.i67.i.preheader:                   ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i
  %i.kj = ptrtoaddr ptr %i.ki to i64
  %11 = add nuw i64 %.023463, 2305843009213693951
  %12 = and i64 %11, 2305843009213693951          ; 2 uses
  %13 = add nuw nsw i64 %12, 1                    ; 2 uses
  %min.iters.check1118 = icmp samesign ult i64 %12, 3
  %i.kk = sub i64 %i.y, %i.kj
  %diff.check1116 = icmp ugt i64 %i.kk, -32
  %or.cond1272 = or i1 %min.iters.check1118, %diff.check1116
  br i1 %or.cond1272, label %.lr.ph.i.i.i.i.i67.i.preheader1281, label %vector.ph1119

vector.ph1119:                                    ; preds = %.lr.ph.i.i.i.i.i67.i.preheader
  %n.vec1120 = and i64 %13, 4611686018427387900   ; 3 uses
  %i.kl = shl i64 %n.vec1120, 3                   ; 2 uses
  %i.km = getelementptr i8, ptr %i.ki, i64 %i.kl  ; 2 uses
  %i.kn = getelementptr i8, ptr %.sroa.0161.0.lcssa, i64 %i.kl
  br label %vector.body1121

vector.body1121:                                  ; preds = %vector.body1121, %vector.ph1119
  %index1122 = phi i64 [ 0, %vector.ph1119 ], [ %index.next1127, %vector.body1121 ] ; 2 uses
  %i.ko = shl i64 %index1122, 3                   ; 2 uses
  %next.gep1123 = getelementptr i8, ptr %i.ki, i64 %i.ko ; 2 uses
  %next.gep1124 = getelementptr i8, ptr %.sroa.0161.0.lcssa, i64 %i.ko ; 2 uses
  %i.kp = getelementptr i8, ptr %next.gep1124, i64 16
  %wide.load1125 = load <2 x i64>, ptr %next.gep1124, align 4
  %wide.load1126 = load <2 x i64>, ptr %i.kp, align 4
  %i.kq = getelementptr i8, ptr %next.gep1123, i64 16
  store <2 x i64> %wide.load1125, ptr %next.gep1123, align 4
  store <2 x i64> %wide.load1126, ptr %i.kq, align 4
  %index.next1127 = add nuw i64 %index1122, 4     ; 2 uses
  %i.kr = icmp eq i64 %index.next1127, %n.vec1120
  br i1 %i.kr, label %middle.block1128, label %vector.body1121, !llvm.loop !1448

middle.block1128:                                 ; preds = %vector.body1121
  %cmp.n1129 = icmp eq i64 %13, %n.vec1120
  br i1 %cmp.n1129, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i.preheader1281

.lr.ph.i.i.i.i.i67.i.preheader1281:               ; preds = %.lr.ph.i.i.i.i.i67.i.preheader, %middle.block1128
  %.013.i.i.i.i.i68.i.ph = phi ptr [ %i.ki, %.lr.ph.i.i.i.i.i67.i.preheader ], [ %i.km, %middle.block1128 ]
  %.sroa.08.012.i.i.i.i.i69.i.ph = phi ptr [ %.sroa.0161.0.lcssa, %.lr.ph.i.i.i.i.i67.i.preheader ], [ %i.kn, %middle.block1128 ]
  br label %.lr.ph.i.i.i.i.i67.i

.lr.ph.i.i.i.i.i67.i:                             ; preds = %.lr.ph.i.i.i.i.i67.i.preheader1281, %.lr.ph.i.i.i.i.i67.i
  %.013.i.i.i.i.i68.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i67.i ], [ %.013.i.i.i.i.i68.i.ph, %.lr.ph.i.i.i.i.i67.i.preheader1281 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i69.i = phi ptr [ %i.kt, %.lr.ph.i.i.i.i.i67.i ], [ %.sroa.08.012.i.i.i.i.i69.i.ph, %.lr.ph.i.i.i.i.i67.i.preheader1281 ] ; 2 uses
  %i.ks = load i64, ptr %.sroa.08.012.i.i.i.i.i69.i, align 4
  store i64 %i.ks, ptr %.013.i.i.i.i.i68.i, align 4
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i69.i, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i68.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i70.i = icmp eq ptr %i.kt, %i.w
  br i1 %.not.i.i.i.i.i70.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i, !llvm.loop !1449

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i67.i, %middle.block1128, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i.i71.i = phi ptr [ %i.ki, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i ], [ %i.km, %middle.block1128 ], [ %i.ku, %.lr.ph.i.i.i.i.i67.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i71.i1080 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i71.i to i64 ; 3 uses
  %i.kv = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i138.pn to i64 ; 2 uses
  %i.kw = sub i64 %i.kv, %.sroa.0197.11098.le     ; 2 uses
  %i.kx = lshr i64 %i.kw, 3
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 2 uses
  %min.iters.check1101 = icmp ult i64 %i.kw, 24
  %i.kz = sub i64 %.sroa.0197.11098.le, %.0.lcssa.i.i.i.i.i71.i1080
  %diff.check1099 = icmp ugt i64 %i.kz, -32
  %or.cond1273 = select i1 %min.iters.check1101, i1 true, i1 %diff.check1099
  br i1 %or.cond1273, label %.lr.ph.i.i.i.i73.i.preheader, label %vector.ph1102

vector.ph1102:                                    ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %n.vec1103 = and i64 %i.ky, 4611686018427387900 ; 3 uses
  %i.la = shl i64 %n.vec1103, 3                   ; 2 uses
  %i.lb = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71.i, i64 %i.la ; 2 uses
  %i.lc = getelementptr i8, ptr %.sroa.0197.1, i64 %i.la
  br label %vector.body1104

vector.body1104:                                  ; preds = %vector.body1104, %vector.ph1102
  %index1105 = phi i64 [ 0, %vector.ph1102 ], [ %index.next1110, %vector.body1104 ] ; 2 uses
  %i.ld = shl i64 %index1105, 3                   ; 2 uses
  %next.gep1106 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71.i, i64 %i.ld ; 2 uses
  %next.gep1107 = getelementptr i8, ptr %.sroa.0197.1, i64 %i.ld ; 2 uses
  %i.le = getelementptr i8, ptr %next.gep1107, i64 16
  %wide.load1108 = load <2 x i64>, ptr %next.gep1107, align 4
  %wide.load1109 = load <2 x i64>, ptr %i.le, align 4
  %i.lf = getelementptr i8, ptr %next.gep1106, i64 16
  store <2 x i64> %wide.load1108, ptr %next.gep1106, align 4
  store <2 x i64> %wide.load1109, ptr %i.lf, align 4
  %index.next1110 = add nuw i64 %index1105, 4     ; 2 uses
  %i.lg = icmp eq i64 %index.next1110, %n.vec1103
  br i1 %i.lg, label %middle.block1111, label %vector.body1104, !llvm.loop !1450

middle.block1111:                                 ; preds = %vector.body1104
  %cmp.n1112 = icmp eq i64 %i.ky, %n.vec1103
  br i1 %cmp.n1112, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i.preheader

.lr.ph.i.i.i.i73.i.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, %middle.block1111
  %.012.i.i.i.i74.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.lb, %middle.block1111 ] ; 2 uses
  %.sroa.08.011.i.i.i.i75.i.ph = phi ptr [ %.sroa.0197.1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.lc, %middle.block1111 ] ; 3 uses
  %.sroa.08.011.i.i.i.i75.i.ph1481 = ptrtoaddr ptr %.sroa.08.011.i.i.i.i75.i.ph to i64
  %i.lh = sub i64 %i.kv, %.sroa.08.011.i.i.i.i75.i.ph1481 ; 2 uses
  %i.li = lshr i64 %i.lh, 3
  %i.lj = add nuw nsw i64 %i.li, 1
  %xtraiter1482 = and i64 %i.lj, 7                ; 2 uses
  %lcmp.mod1483.not = icmp eq i64 %xtraiter1482, 0
  br i1 %lcmp.mod1483.not, label %.lr.ph.i.i.i.i73.i.prol.loopexit, label %.lr.ph.i.i.i.i73.i.prol

.lr.ph.i.i.i.i73.i.prol:                          ; preds = %.lr.ph.i.i.i.i73.i.preheader, %.lr.ph.i.i.i.i73.i.prol
  %.012.i.i.i.i74.i.prol = phi ptr [ %i.lm, %.lr.ph.i.i.i.i73.i.prol ], [ %.012.i.i.i.i74.i.ph, %.lr.ph.i.i.i.i73.i.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i75.i.prol = phi ptr [ %i.ll, %.lr.ph.i.i.i.i73.i.prol ], [ %.sroa.08.011.i.i.i.i75.i.ph, %.lr.ph.i.i.i.i73.i.preheader ] ; 2 uses
  %prol.iter1484 = phi i64 [ %prol.iter1484.next, %.lr.ph.i.i.i.i73.i.prol ], [ 0, %.lr.ph.i.i.i.i73.i.preheader ]
  %i.lk = load i64, ptr %.sroa.08.011.i.i.i.i75.i.prol, align 4
  store i64 %i.lk, ptr %.012.i.i.i.i74.i.prol, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i.prol, i64 8 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i.prol, i64 8 ; 3 uses
  %prol.iter1484.next = add i64 %prol.iter1484, 1 ; 2 uses
  %prol.iter1484.cmp.not = icmp eq i64 %prol.iter1484.next, %xtraiter1482
  br i1 %prol.iter1484.cmp.not, label %.lr.ph.i.i.i.i73.i.prol.loopexit, label %.lr.ph.i.i.i.i73.i.prol, !llvm.loop !1451

.lr.ph.i.i.i.i73.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i73.i.prol, %.lr.ph.i.i.i.i73.i.preheader
  %.lcssa1304.unr = phi ptr [ poison, %.lr.ph.i.i.i.i73.i.preheader ], [ %i.lm, %.lr.ph.i.i.i.i73.i.prol ]
  %.012.i.i.i.i74.i.unr = phi ptr [ %.012.i.i.i.i74.i.ph, %.lr.ph.i.i.i.i73.i.preheader ], [ %i.lm, %.lr.ph.i.i.i.i73.i.prol ]
  %.sroa.08.011.i.i.i.i75.i.unr = phi ptr [ %.sroa.08.011.i.i.i.i75.i.ph, %.lr.ph.i.i.i.i73.i.preheader ], [ %i.ll, %.lr.ph.i.i.i.i73.i.prol ]
  %i.ln = icmp ult i64 %i.lh, 56
  br i1 %i.ln, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i

.lr.ph.i.i.i.i73.i:                               ; preds = %.lr.ph.i.i.i.i73.i.prol.loopexit, %.lr.ph.i.i.i.i73.i
  %.012.i.i.i.i74.i = phi ptr [ %i.ml, %.lr.ph.i.i.i.i73.i ], [ %.012.i.i.i.i74.i.unr, %.lr.ph.i.i.i.i73.i.prol.loopexit ] ; 9 uses
  %.sroa.08.011.i.i.i.i75.i = phi ptr [ %i.mk, %.lr.ph.i.i.i.i73.i ], [ %.sroa.08.011.i.i.i.i75.i.unr, %.lr.ph.i.i.i.i73.i.prol.loopexit ] ; 9 uses
  %i.lo = load i64, ptr %.sroa.08.011.i.i.i.i75.i, align 4
  store i64 %i.lo, ptr %.012.i.i.i.i74.i, align 4
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 8
  %i.lr = load i64, ptr %i.lp, align 4
  store i64 %i.lr, ptr %i.lq, align 4
  %i.ls = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 16
  %i.lt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 16
  %i.lu = load i64, ptr %i.ls, align 4
  store i64 %i.lu, ptr %i.lt, align 4
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 24
  %i.lw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 24
  %i.lx = load i64, ptr %i.lv, align 4
  store i64 %i.lx, ptr %i.lw, align 4
  %i.ly = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 32
  %i.lz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 32
  %i.ma = load i64, ptr %i.ly, align 4
  store i64 %i.ma, ptr %i.lz, align 4
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 40
  %i.mc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 40
  %i.md = load i64, ptr %i.mb, align 4
  store i64 %i.md, ptr %i.mc, align 4
  %i.me = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 48
  %i.mf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 48
  %i.mg = load i64, ptr %i.me, align 4
  store i64 %i.mg, ptr %i.mf, align 4
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 56 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 56
  %i.mj = load i64, ptr %i.mh, align 4
  store i64 %i.mj, ptr %i.mi, align 4
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i, i64 64
  %i.ml = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i, i64 64 ; 2 uses
  %.not.i.i.i.i76.i.7 = icmp eq ptr %i.mh, %.0.lcssa.i.i.i.i.i138.pn
  br i1 %.not.i.i.i.i76.i.7, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i, !llvm.loop !1452

.lr.ph.i.i.i.i.i80.i.preheader:                   ; preds = %.lr.ph.i.i.i.i73.i.prol.loopexit, %.lr.ph.i.i.i.i73.i, %middle.block1111
  %.lcssa903 = phi ptr [ %i.lb, %middle.block1111 ], [ %.lcssa1304.unr, %.lr.ph.i.i.i.i73.i.prol.loopexit ], [ %i.ml, %.lr.ph.i.i.i.i73.i ] ; 5 uses
  %i.mm = add i64 %i.dq, -8
  %i.mn = add i64 %i.n, %i.y
  %i.mo = sub i64 %i.mm, %i.mn                    ; 2 uses
  %i.mp = lshr i64 %i.mo, 3
  %i.mq = add nuw nsw i64 %i.mp, 1                ; 2 uses
  %min.iters.check1083 = icmp ult i64 %i.mo, 72
  br i1 %min.iters.check1083, label %.lr.ph.i.i.i.i.i80.i.preheader1280, label %vector.memcheck1079

vector.memcheck1079:                              ; preds = %.lr.ph.i.i.i.i.i80.i.preheader
  %i.mr = add i64 %.0.lcssa.i.i.i.i.i71.i1080, 8
  %i.ms = add i64 %i.o, %i.y
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = ptrtoaddr ptr %.lcssa903 to i64
  %reass.sub = sub i64 %i.mu, %.0.lcssa.i.i.i.i.i71.i1080
  %op.rdx = add i64 %reass.sub, -9
  %op.rdx1275 = add i64 %op.rdx, %i.mt
  %diff.check1081 = icmp ult i64 %op.rdx1275, 31
  br i1 %diff.check1081, label %.lr.ph.i.i.i.i.i80.i.preheader1280, label %vector.ph1084

vector.ph1084:                                    ; preds = %vector.memcheck1079
  %n.vec1085 = and i64 %i.mq, 4611686018427387900 ; 3 uses
  %i.mv = shl i64 %n.vec1085, 3                   ; 2 uses
  %i.mw = getelementptr i8, ptr %.lcssa903, i64 %i.mv ; 2 uses
  %i.mx = getelementptr i8, ptr %i.w, i64 %i.mv
  br label %vector.body1086

vector.body1086:                                  ; preds = %vector.body1086, %vector.ph1084
  %index1087 = phi i64 [ 0, %vector.ph1084 ], [ %index.next1092, %vector.body1086 ] ; 2 uses
  %i.my = shl i64 %index1087, 3                   ; 2 uses
  %next.gep1088 = getelementptr i8, ptr %.lcssa903, i64 %i.my ; 2 uses
  %next.gep1089 = getelementptr i8, ptr %i.w, i64 %i.my ; 2 uses
  %i.mz = getelementptr i8, ptr %next.gep1089, i64 16
  %wide.load1090 = load <2 x i64>, ptr %next.gep1089, align 4
  %wide.load1091 = load <2 x i64>, ptr %i.mz, align 4
  %i.na = getelementptr i8, ptr %next.gep1088, i64 16
  store <2 x i64> %wide.load1090, ptr %next.gep1088, align 4
  store <2 x i64> %wide.load1091, ptr %i.na, align 4
  %index.next1092 = add nuw i64 %index1087, 4     ; 2 uses
  %i.nb = icmp eq i64 %index.next1092, %n.vec1085
  br i1 %i.nb, label %middle.block1093, label %vector.body1086, !llvm.loop !1453

middle.block1093:                                 ; preds = %vector.body1086
  %cmp.n1094 = icmp eq i64 %i.mq, %n.vec1085
  br i1 %cmp.n1094, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit85.i, label %.lr.ph.i.i.i.i.i80.i.preheader1280
end_hunk_1
