Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/distances?download=true
inline.NumInlined: 1926
inline.NumDeleted: 792
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN5faiss9knn_L2sqrEPKfS1_mmmmPfPlS1_PKNS_10IDSelectorE:bb.a
  %i.tv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i627.i, i64 72 ; 2 uses
  %.not.i.i.i.i628.i = icmp eq ptr %i.tv, %i.tr
  br i1 %.not.i.i.i.i628.i, label %_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i629.i, label %.lr.ph.i.i.i.i626.i, !llvm.loop !9

_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i629.i: ; preds = %.lr.ph.i.i.i.i626.i
  %.pr.i.i630.i = load ptr, ptr %i.to, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exit.i.i631.i

_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exit.i.i631.i: ; preds = %_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i629.i, %_ZN5faiss12_GLOBAL__N_116Run_search_L2sqr1fINS_27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKfSA_mmmSA_.exit.i
  %i.tw = phi ptr [ %.pr.i.i630.i, %_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i629.i ], [ %i.tp, %_ZN5faiss12_GLOBAL__N_116Run_search_L2sqr1fINS_27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKfSA_mmmSA_.exit.i ] ; 3 uses
  %.not.i.i1.i.i632.i = icmp eq ptr %i.tw, null
  br i1 %.not.i.i1.i.i632.i, label %_ZNSt6vectorIN5faiss13ReservoirTopNINS0_4CMaxIflEEEESaIS4_EED2Ev.exit.i633.i, label %bb.cn

bb.cn:                                            ; preds = %_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exit.i.i631.i
  %i.tx = getelementptr inbounds nuw i8, ptr %15, i64 136
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !98
  %i.tz = ptrtoint ptr %i.ty to i64
  %i.ua = ptrtoint ptr %i.tw to i64
  %i.ub = sub i64 %i.tz, %i.ua
  call void @_ZdlPvm(ptr noundef nonnull %i.tw, i64 noundef %i.ub) #27, !inline_history !161
  br label %_ZNSt6vectorIN5faiss13ReservoirTopNINS0_4CMaxIflEEEESaIS4_EED2Ev.exit.i633.i

_ZNSt6vectorIN5faiss13ReservoirTopNINS0_4CMaxIflEEEESaIS4_EED2Ev.exit.i633.i: ; preds = %bb.cn, %_ZSt8_DestroyIPN5faiss13ReservoirTopNINS0_4CMaxIflEEEES4_EvT_S6_RSaIT0_E.exit.i.i631.i
  %i.uc = getelementptr inbounds nuw i8, ptr %15, i64 96
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i1.i634.i = icmp eq ptr %i.ud, null
  br i1 %.not.i.i.i1.i634.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit.i635.i, label %bb.co

bb.co:                                            ; preds = %_ZNSt6vectorIN5faiss13ReservoirTopNINS0_4CMaxIflEEEESaIS4_EED2Ev.exit.i633.i
  %i.ue = getelementptr inbounds nuw i8, ptr %15, i64 112
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !53
  %i.ug = ptrtoint ptr %i.uf to i64
  %i.uh = ptrtoint ptr %i.ud to i64
  %i.ui = sub i64 %i.ug, %i.uh
  call void @_ZdlPvm(ptr noundef nonnull %i.ud, i64 noundef %i.ui) #27, !inline_history !161
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit.i635.i

_ZNSt6vectorIlSaIlEED2Ev.exit.i635.i:             ; preds = %bb.co, %_ZNSt6vectorIN5faiss13ReservoirTopNINS0_4CMaxIflEEEESaIS4_EED2Ev.exit.i633.i
  %i.uj = load ptr, ptr %i.pl, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i2.i636.i = icmp eq ptr %i.uj, null
  br i1 %.not.i.i.i2.i636.i, label %_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EED2Ev.exit.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit.i635.i
  %i.uk = getelementptr inbounds nuw i8, ptr %15, i64 88
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !49
  %i.um = ptrtoint ptr %i.ul to i64
  %i.un = ptrtoint ptr %i.uj to i64
  %i.uo = sub i64 %i.um, %i.un
  call void @_ZdlPvm(ptr noundef nonnull %i.uj, i64 noundef %i.uo) #27, !inline_history !161
  br label %_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EED2Ev.exit.i

_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EED2Ev.exit.i: ; preds = %bb.cp, %_ZNSt6vectorIlSaIlEED2Ev.exit.i635.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  br label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit

bb.cq:                                            ; preds = %bb.bx
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %.body623.i

.body623.i:                                       ; preds = %bb.cq, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit114.i.i.i578.i
  %eh.lpad-body624.i = phi { ptr, i32 } [ %i.up, %bb.cq ], [ %.pn.pn.pn.pn.i.i.i579.i, %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit114.i.i.i578.i ]
  call void @_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %15) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #5
  br label %common.resume

_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit: ; preds = %_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb0EED2Ev.exit.i, %_ZN5faiss12_GLOBAL__N_116Run_search_L2sqr1fINS_22HeapBlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKfSA_mmmSA_.exit.i, %_ZN5faiss12_GLOBAL__N_116Run_search_L2sqr1fINS_22Top1BlockResultHandlerINS_4CMaxIflEELb0EEEEEvRT_PKfSA_mmmSA_.exit.i, %_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.exit
  %.not65 = icmp eq i64 %.057.ph, 0
  br i1 %.not65, label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit
  %i.uq = mul i64 %5, %3                          ; 5 uses
  %.not129 = icmp eq i64 %i.uq, 0
  br i1 %.not129, label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.uq, 1
  %i.ur = icmp eq i64 %i.uq, 1
  br i1 %i.ur, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.uq, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.ct, %.lr.ph.preheader.new
  %.0128 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.vb, %bb.ct ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.ct ]
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0128 ; 2 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !32 ; 2 uses
  %i.uu = icmp sgt i64 %i.ut, -1
  br i1 %i.uu, label %bb.cr, label %.lr.ph.1

bb.cr:                                            ; preds = %.lr.ph
  %i.uv = add nuw nsw i64 %i.ut, %.057.ph
  store i64 %i.uv, ptr %i.us, align 8, !tbaa !32
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.cr
  %i.uw = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0128
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8 ; 2 uses
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !32 ; 2 uses
  %i.uz = icmp sgt i64 %i.uy, -1
  br i1 %i.uz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.lr.ph.1
  %i.va = add nuw nsw i64 %i.uy, %.057.ph
  store i64 %i.va, ptr %i.ux, align 8, !tbaa !32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.lr.ph.1
  %i.vb = add nuw i64 %.0128, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !394

_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread.loopexit.unr-lcssa: ; preds = %bb.ct
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.vb, %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread.loopexit.unr-lcssa ]
  %lcmp.mod220 = trunc i64 %i.uq to i1
  call void @llvm.assume(i1 %lcmp.mod220)
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %.0128.epil.init ; 2 uses
  %i.vd = load i64, ptr %i.vc, align 8, !tbaa !32 ; 2 uses
  %i.ve = icmp sgt i64 %i.vd, -1
  br i1 %i.ve, label %bb.cu, label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread

bb.cu:                                            ; preds = %.lr.ph.epil.preheader
  %i.vf = add nuw nsw i64 %i.vd, %.057.ph
  store i64 %i.vf, ptr %i.vc, align 8, !tbaa !32
  br label %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread

_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread: ; preds = %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit.thread.loopexit.unr-lcssa, %bb.cu, %.lr.ph.epil.preheader, %.preheader, %_ZN5faiss27ReservoirBlockResultHandlerINS_4CMaxIflEELb1EED2Ev.exit.i, %_ZN5faiss12_GLOBAL__N_120exhaustive_L2sqr_seqINS_22HeapBlockResultHandlerINS_4CMaxIflEELb1EEEEEvPKfS7_mmmRT_.exit.i.i, %_ZN5faiss12_GLOBAL__N_120exhaustive_L2sqr_seqINS_22Top1BlockResultHandlerINS_4CMaxIflEELb1EEEEEvPKfS7_mmmRT_.exit.i.i, %bb.e, %_ZN5faiss26dispatch_knn_ResultHandlerINS_12_GLOBAL__N_116Run_search_L2sqrEJPKfS4_mmmS4_EEENT_1TEmPfPlmNS_10MetricTypeEPKNS_10IDSelectorERS5_DpT0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss16knn_L2sqr_by_idxEPKfS1_PKlmmmmmPfPll(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, ptr noundef %8, ptr noundef %9, i64 noundef %10) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  %i.g = alloca i64, align 8                      ; 3 uses
  %i.h = alloca i64, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %i.j = alloca ptr, align 8                      ; 3 uses
  %i.k = alloca ptr, align 8                      ; 3 uses
  %i.l = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !30
  store ptr %1, ptr %i.c, align 8, !tbaa !30
  store ptr %2, ptr %i.d, align 8, !tbaa !46
  store i64 %3, ptr %i.e, align 8, !tbaa !32
  store i64 %4, ptr %i.f, align 8, !tbaa !32
  store i64 %5, ptr %i.g, align 8, !tbaa !32
  store i64 %6, ptr %i.h, align 8, !tbaa !32
  store i64 %7, ptr %i.i, align 8, !tbaa !32
  store ptr %8, ptr %i.j, align 8, !tbaa !30
  store ptr %9, ptr %i.k, align 8, !tbaa !46
  %i.m = icmp slt i64 %10, 0
  %spec.store.select = select i1 %i.m, i64 %5, i64 %10
  store i64 %spec.store.select, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.o = icmp ugt i64 %4, 100
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @"_ZZN5faiss16knn_L2sqr_by_idxEPKfS1_PKlmmmmmPfPllENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined", ptr nonnull %i.f, ptr nonnull %i.b, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.j, ptr nonnull %i.i, ptr nonnull %i.k, ptr nonnull %i.h, ptr nonnull %i.g, ptr nonnull %i.c)
  br label %"_ZN5faiss15with_simd_levelIZNS_16knn_L2sqr_by_idxEPKfS2_PKlmmmmmPfPllE3$_0EEDaOT_.exit"

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.n)
  store i32 %i.n, ptr %i.a, align 4, !tbaa !33
  call void @"_ZZN5faiss16knn_L2sqr_by_idxEPKfS1_PKlmmmmmPfPllENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined"(ptr nonnull %i.a, ptr nonnull poison, ptr %i.f, ptr %i.b, ptr %i.e, ptr %i.d, ptr %i.l, ptr %i.j, ptr %i.i, ptr %i.k, ptr %i.h, ptr %i.g, ptr %i.c) #5
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.n)
  br label %"_ZN5faiss15with_simd_levelIZNS_16knn_L2sqr_by_idxEPKfS2_PKlmmmmmPfPllE3$_0EEDaOT_.exit"

"_ZN5faiss15with_simd_levelIZNS_16knn_L2sqr_by_idxEPKfS2_PKlmmmmmPfPllE3$_0EEDaOT_.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faissL20knn_db_parallel_implINS_4CMaxIflEEEEvPKfS4_mmmmPfPlS4_.omp_outlined(ptr noalias nofree readnone captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %14) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = tail call i32 @omp_get_thread_num()      ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = load i64, ptr %2, align 8, !tbaa !32     ; 2 uses
  %i.i = mul i64 %i.h, %i.g
  %i.j = load i32, ptr %3, align 4, !tbaa !33
  %i.k = sext i32 %i.j to i64                     ; 2 uses
  %i.l = udiv i64 %i.i, %i.k                      ; 6 uses
  %i.m = add nsw i32 %i.f, 1
  %i.n = sext i32 %i.m to i64
  %i.o = mul i64 %i.h, %i.n
  %i.p = udiv i64 %i.o, %i.k                      ; 3 uses
  %i.q = sub i64 %i.p, %i.l                       ; 4 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %i.t = icmp ne i64 %i.p, %i.l
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.l
  %i.v = load ptr, ptr %5, align 8, !tbaa !30
  %i.w = load i64, ptr %6, align 8, !tbaa !32     ; 2 uses
  %i.x = mul i64 %i.w, %i.l
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.x
  tail call void @_ZN5faiss16fvec_norms_L2sqrEPfPKfmm(ptr noundef nonnull %i.u, ptr noundef %i.y, i64 noundef %i.w, i64 noundef %i.q)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = load ptr, ptr %7, align 8, !tbaa !48
  %i.aa = load i64, ptr %8, align 8, !tbaa !32    ; 4 uses
  %i.ab = mul i64 %i.aa, %i.g
  %i.ac = load i64, ptr %9, align 8, !tbaa !32    ; 2 uses
  %i.ad = mul i64 %i.ab, %i.ac                    ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = load ptr, ptr %10, align 8, !tbaa !52
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  %.not101 = icmp eq i64 %i.aa, 0
  br i1 %.not101, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, %.lr.ph, %bb.c
  %.lcssa = phi i64 [ 0, %bb.c ], [ %i.aa, %.lr.ph ], [ %i.av, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ]
  %.not = icmp eq i64 %i.p, %i.l
  br i1 %.not, label %bb.l, label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit
  %i.ai = phi i64 [ %i.av, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ], [ %i.aa, %.lr.ph ]
  %.06788 = phi i64 [ %i.aw, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit ], [ 0, %.lr.ph ] ; 2 uses
  %i.aj = load i64, ptr %9, align 8, !tbaa !32    ; 6 uses
  %i.ak = mul i64 %i.aj, %.06788                  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ak ; 2 uses
  %.not87 = icmp eq i64 %i.aj, 0
  br i1 %.not87, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %.lr.ph.split
  %min.iters.check = icmp ult i64 %i.aj, 4
  br i1 %min.iters.check, label %.lr.ph46.i.preheader129, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.i.preheader
  %n.vec = and i64 %i.aj, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.an, align 4, !tbaa !35
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ao, align 4, !tbaa !35
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ap, align 8, !tbaa !32
  store <2 x i64> splat (i64 -1), ptr %i.aq, align 8, !tbaa !32
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !397

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aj, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i.preheader129

.lr.ph46.i.preheader129:                          ; preds = %.lr.ph46.i.preheader, %middle.block
  %.045.i.ph = phi i64 [ 0, %.lr.ph46.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader129, %.lr.ph46.i
  %.045.i = phi i64 [ %i.au, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader129 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.045.i
  store float f0x7F7FFFFF, ptr %i.as, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.045.i
  store i64 -1, ptr %i.at, align 8, !tbaa !32
  %i.au = add nuw i64 %.045.i, 1                  ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.au, %i.aj
  br i1 %exitcond51.not.i, label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, label %.lr.ph46.i, !llvm.loop !398

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit: ; preds = %.lr.ph46.i, %middle.block
  %.pre = load i64, ptr %8, align 8, !tbaa !32
  br label %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit

_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit: ; preds = %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit, %.lr.ph.split
  %i.av = phi i64 [ %.pre, %_ZN5faiss12heap_heapifyINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIEPKS4_PKS6_m.exit.loopexit ], [ %i.ai, %.lr.ph.split ] ; 3 uses
  %i.aw = add nuw i64 %.06788, 1                  ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  br i1 %i.ax, label %.lr.ph.split, label %._crit_edge, !llvm.loop !399

bb.d:                                             ; preds = %._crit_edge
  %i.ay = load i64, ptr %11, align 8, !tbaa !32
  %.sroa.speculated78 = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.ay)
  %i.az = mul i64 %.sroa.speculated78, %.lcssa    ; 2 uses
  %i.ba = icmp ugt i64 %i.az, 4611686018427387903
  %i.bb = shl i64 %i.az, 2
  %i.bc = select i1 %i.ba, i64 -1, i64 %i.bb
  %i.bd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #26
          to label %.lr.ph99.preheader unwind label %.loopexit.split-lp ; 3 uses

.lr.ph99.preheader:                               ; preds = %bb.d
  %.pre104 = load i64, ptr %11, align 8, !tbaa !32
  %.pre105 = load i64, ptr %8, align 8, !tbaa !32
  br label %.lr.ph99

_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit: ; preds = %._crit_edge97.split
  call void @_ZdaPv(ptr noundef nonnull %i.bd) #27
  br label %bb.l

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %._crit_edge97.split
  %i.be = phi i64 [ %i.bx, %._crit_edge97.split ], [ %.pre105, %.lr.ph99.preheader ]
  %i.bf = phi i64 [ %i.by, %._crit_edge97.split ], [ %.pre104, %.lr.ph99.preheader ]
  %.06698 = phi i64 [ %i.bz, %._crit_edge97.split ], [ 0, %.lr.ph99.preheader ] ; 5 uses
  %i.bg = add i64 %i.bf, %.06698
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.q, i64 %i.bg) ; 2 uses
  %i.bh = sub i64 %.sroa.speculated, %.06698      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store float 1.000000e+00, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.bi = trunc i64 %i.bh to i32
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  %i.bj = trunc i64 %i.be to i32
  store i32 %i.bj, ptr %i.d, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  %i.bk = load i64, ptr %6, align 8, !tbaa !32    ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  store i32 %i.bl, ptr %i.e, align 4, !tbaa !33
  %i.bm = load ptr, ptr %5, align 8, !tbaa !30
  %i.bn = add i64 %.06698, %i.l                   ; 2 uses
  %i.bo = mul i64 %i.bk, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load ptr, ptr %12, align 8, !tbaa !30
  %i.br = invoke i32 @sgemm_(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %i.bp, ptr noundef nonnull %i.e, ptr noundef %i.bq, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %.loopexit  ; 0 uses

bb.e:                                             ; preds = %.lr.ph99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.bs = load i64, ptr %8, align 8, !tbaa !32    ; 2 uses
  %i.bt = icmp ne i64 %i.bs, 0
  %i.bu = icmp ne i64 %.sroa.speculated, %.06698
  %or.cond100 = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %or.cond100, label %.lr.ph96.split, label %._crit_edge97.split

.lr.ph96.split:                                   ; preds = %bb.e
  %i.bv = load ptr, ptr %13, align 8, !tbaa !30
  %i.bw = load ptr, ptr %14, align 8, !tbaa !30
  br label %.lr.ph92

._crit_edge97.split:                              ; preds = %._crit_edge93, %bb.e
  %i.bx = phi i64 [ %i.bs, %bb.e ], [ %i.cm, %._crit_edge93 ]
  %i.by = load i64, ptr %11, align 8, !tbaa !32   ; 2 uses
  %i.bz = add i64 %i.by, %.06698                  ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.q
  br i1 %i.ca, label %.lr.ph99, label %_ZNSt10unique_ptrIA_fSt14default_deleteIS0_EED2Ev.exit, !llvm.loop !400

.lr.ph92:                                         ; preds = %.lr.ph96.split, %._crit_edge93
  %.06594 = phi i64 [ 0, %.lr.ph96.split ], [ %i.cl, %._crit_edge93 ] ; 4 uses
  %i.cb = load i64, ptr %9, align 8, !tbaa !32
  %i.cc = mul i64 %i.cb, %.06594                  ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.cc ; 4 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.cc ; 2 uses
  %i.cf = mul i64 %.06594, %i.bh
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.cf
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !35
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.06594
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 -4 ; 4 uses
  %i.ck = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 4 uses
  br label %bb.f

._crit_edge93:                                    ; preds = %bb.k
  %i.cl = add nuw i64 %.06594, 1                  ; 2 uses
  %i.cm = load i64, ptr %8, align 8, !tbaa !32    ; 2 uses
  %i.cn = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph92, label %._crit_edge97.split, !llvm.loop !401

bb.f:                                             ; preds = %.lr.ph92, %bb.k
  %.090 = phi i64 [ 0, %.lr.ph92 ], [ %i.ei, %bb.k ] ; 3 uses
  %.06489 = phi float [ %i.ch, %.lr.ph92 ], [ %.1, %bb.k ] ; 2 uses
  %i.co = add i64 %.090, %i.bn                    ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %.090
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !35
  %i.cr = load float, ptr %i.ci, align 4, !tbaa !35
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.co
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !35
  %i.cu = fadd float %i.cr, %i.ct
  %i.cv = call float @llvm.fmuladd.f32(float %i.cq, float -2.000000e+00, float %i.cu) ; 2 uses
  %i.cw = fcmp olt float %i.cv, 0.000000e+00
  %spec.store.select = select i1 %i.cw, float 0.000000e+00, float %i.cv ; 6 uses
  %i.cx = fcmp ogt float %.06489, %spec.store.select
  br i1 %i.cx, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.cy = load i64, ptr %9, align 8, !tbaa !32    ; 4 uses
  %i.cz = icmp ult i64 %i.cy, 2
  br i1 %i.cz, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cy
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %i.da = phi i64 [ %i.ed, %bb.j ], [ 3, %.lr.ph.preheader.i ]
  %i.db = phi i64 [ %i.ec, %bb.j ], [ 2, %.lr.ph.preheader.i ] ; 7 uses
  %.056.i = phi i64 [ %.1.i, %bb.j ], [ 1, %.lr.ph.preheader.i ] ; 6 uses
  %i.dc = icmp eq i64 %i.db, %i.cy
  br i1 %i.dc, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i, label %bb.h

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !35
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.db
  %i.de = load float, ptr %i.dd, align 4, !tbaa !35 ; 4 uses
  %i.df = getelementptr [4 x i8], ptr %i.cd, i64 %i.db
  %i.dg = load float, ptr %i.df, align 4, !tbaa !35 ; 5 uses
  %i.dh = getelementptr [8 x i8], ptr %i.ce, i64 %i.db
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !32 ; 3 uses
  %i.dj = fcmp ogt float %i.de, %i.dg
  br i1 %i.dj, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i:              ; preds = %bb.h
end_hunk_0
