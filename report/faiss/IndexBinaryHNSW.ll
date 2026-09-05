Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/IndexBinaryHNSW?download=true
inline.NumInlined: 541
inline.NumDeleted: 286
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE12end_multipleEv.omp_outlined:bb.a
; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN5faiss17HeapResultHandlerINS_4CMaxIflEELb0EE10add_resultEfl(ptr noundef nonnull align 8 dereferenceable(56) %0, float noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !147
  %i.c = fcmp ogt float %i.b, %1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !156  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !157  ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.g, i64 -4 ; 4 uses
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 -8 ; 4 uses
  %i.l = icmp ult i64 %i.e, 2
  br i1 %i.l, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %.phi.trans.insert.i = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %i.m = phi i64 [ %i.ap, %bb.e ], [ 3, %.lr.ph.preheader.i ]
  %i.n = phi i64 [ %i.ao, %bb.e ], [ 2, %.lr.ph.preheader.i ] ; 7 uses
  %.056.i = phi i64 [ %.1.i, %bb.e ], [ 1, %.lr.ph.preheader.i ] ; 6 uses
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i, label %bb.c

.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !tbaa !100
  br label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.n
  %i.q = load float, ptr %i.p, align 4, !tbaa !100 ; 4 uses
  %i.r = getelementptr [4 x i8], ptr %i.g, i64 %i.n
  %i.s = load float, ptr %i.r, align 4, !tbaa !100 ; 5 uses
  %i.t = getelementptr [8 x i8], ptr %i.i, i64 %i.n
  %i.u = load i64, ptr %i.t, align 8, !tbaa !68   ; 3 uses
  %i.v = fcmp ogt float %i.q, %i.s
  br i1 %i.v, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit.i:              ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = fcmp oeq float %i.q, %i.s
  %i.z = icmp sgt i64 %i.x, %i.u
  %i.aa = and i1 %i.y, %i.z
  br i1 %i.aa, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, label %bb.d

_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i:       ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i, %bb.c, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i
  %i.ab = phi float [ %.pre.i, %.lr.ph._ZN5faiss4CMaxIflE4cmp2Effll.exit.thread_crit_edge.i ], [ %i.q, %bb.c ], [ %i.q, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i ] ; 3 uses
  %i.ac = fcmp ogt float %1, %i.ab
  br i1 %i.ac, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i:            ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.n
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = fcmp oeq float %1, %i.ab
  %i.ag = icmp sgt i64 %2, %i.ae
  %i.ah = and i1 %i.af, %i.ag
  br i1 %i.ah, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %bb.e

bb.d:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.i
  %i.ai = fcmp ogt float %1, %i.s
  br i1 %i.ai, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i

_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i:            ; preds = %bb.d
  %i.aj = fcmp oeq float %1, %i.s
  %i.ak = icmp sgt i64 %2, %i.u
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i
  %.sink71.i = phi float [ %i.ab, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.s, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ]
  %.sink.i = phi i64 [ %i.ae, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.u, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ]
  %.1.i = phi i64 [ %i.n, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %i.m, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.056.i
  store float %.sink71.i, ptr %i.am, align 4, !tbaa !100
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.056.i
  store i64 %.sink.i, ptr %i.an, align 8, !tbaa !68
  %i.ao = shl i64 %.1.i, 1                        ; 3 uses
  %i.ap = or disjoint i64 %i.ao, 1
  %i.aq = icmp ugt i64 %i.ao, %i.e
  br i1 %i.aq, label %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit, label %.lr.ph.i, !llvm.loop !4

_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i, %bb.d, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i, %bb.e, %bb.b
  %.0.lcssa.i = phi i64 [ 1, %bb.b ], [ %.1.i, %bb.e ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit54.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit55.i ], [ %.056.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i ], [ %.056.i, %bb.d ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.0.lcssa.i
  store float %1, ptr %i.ar, align 4, !tbaa !100
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.0.lcssa.i
  store i64 %2, ptr %i.as, align 8, !tbaa !68
  %i.at = load float, ptr %i.g, align 4, !tbaa !100
  store float %i.at, ptr %i.a, align 8, !tbaa !147
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN5faiss16heap_replace_topINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIES4_S6_.exit
  ret i1 %i.c
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss22HeapBlockResultHandlerINS_4CMaxIflEELb0EE19SingleResultHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #28
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #9

declare noundef double @_ZN5faiss12getmillisecsEv() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #15

declare noundef i32 @_ZN5faiss4HNSW17prepare_level_tabEmb(ptr noundef nonnull align 8 dereferenceable(5206), i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN5faiss10LockVector7prepareEm(ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

declare void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000), i64 noundef) unnamed_addr #2

declare noundef i32 @_ZN5faiss15RandomGenerator8rand_intEi(ptr noundef nonnull align 8 dereferenceable(5000), i32 noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss12_GLOBAL__N_117hnsw_add_verticesERNS_15IndexBinaryHNSWEmmPKhbb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5289) %3, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(5206) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr noundef nonnull align 8 dereferenceable(24) %12) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %13 = alloca %"class.std::unique_ptr", align 8  ; 6 uses
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.e = load i64, ptr %2, align 8, !tbaa !68
  invoke void @_ZN5faiss12VisitedTable6createEmSt8optionalIbE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %13, i64 noundef %i.e, i16 0)
          to label %bb.b unwind label %.loopexit.split-lp

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZNK5faiss15IndexBinaryHNSW21get_distance_computerEv(ptr noundef nonnull align 8 dereferenceable(5289) %3)
          to label %bb.c unwind label %.loopexit.split-lp ; 8 uses

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %4, align 1, !tbaa !70, !range !61, !noundef !62
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @omp_get_thread_num()
  %.fr57 = freeze i32 %i.i
  %i.j = icmp eq i32 %.fr57, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.fr = phi i1 [ false, %bb.c ], [ %i.j, %bb.d ]
  %i.k = load i64, ptr %6, align 8, !tbaa !68     ; 4 uses
  %i.l = load i64, ptr %5, align 8, !tbaa !68     ; 2 uses
  %i.m = icmp ult i64 %i.k, %i.l
  %.pre = load i32, ptr %0, align 4, !tbaa !72    ; 6 uses
  br i1 %i.m, label %bb.f, label %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.n = xor i64 %i.k, -1
  %i.o = add i64 %i.l, %i.n                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.o, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  store i32 0, ptr %i.d, align 4, !tbaa !72
  call void @__kmpc_dispatch_init_8u(ptr nonnull @4, i32 %.pre, i32 1073741859, i64 0, i64 %i.o, i64 1, i64 1)
  %i.p = call i32 @__kmpc_dispatch_next_8u(ptr nonnull @4, i32 %.pre, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not53 = icmp eq i32 %i.p, 0
  br i1 %.not53, label %._crit_edge, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 5257 ; 2 uses
  br i1 %.fr, label %.lr.ph55.split.us, label %.lr.ph55.split

.lr.ph55.split.us:                                ; preds = %.lr.ph55, %.loopexit.us
  %.04154.us = phi i64 [ %.1.lcssa.us, %.loopexit.us ], [ 0, %.lr.ph55 ] ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !68, !llvm.access.group !227
  %i.u = add i64 %i.t, 1
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %.lr.ph.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %bb.j, %.lr.ph55.split.us
  %.1.lcssa.us = phi i64 [ %.04154.us, %.lr.ph55.split.us ], [ %.2.us.us, %bb.j ]
  %14 = call i32 @__kmpc_dispatch_next_8u(ptr nonnull @4, i32 %.pre, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not.us = icmp eq i32 %14, 0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph55.split.us

.lr.ph.us:                                        ; preds = %.lr.ph55.split.us, %bb.j
  %.051.us.us = phi i64 [ %i.ay, %bb.j ], [ %i.s, %.lr.ph55.split.us ] ; 2 uses
  %.150.us.us = phi i64 [ %.2.us.us, %bb.j ], [ %.04154.us, %.lr.ph55.split.us ] ; 2 uses
  %i.w = add i64 %.051.us.us, %i.k                ; 2 uses
  %i.x = load ptr, ptr %7, align 8, !tbaa !67, !llvm.access.group !227
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.w
  %i.z = load i32, ptr %i.y, align 4, !tbaa !72, !llvm.access.group !227 ; 2 uses
  %i.aa = load ptr, ptr %8, align 8, !tbaa !69, !llvm.access.group !227
  %i.ab = sext i32 %i.z to i64
  %i.ac = load i64, ptr %9, align 8, !tbaa !68, !llvm.access.group !227
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !101, !llvm.access.group !227
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ag
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !54, !llvm.access.group !227
  %i.aj = load ptr, ptr %i.ai, align 8, !llvm.access.group !227
  invoke void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.ah)
          to label %bb.g unwind label %.loopexit48.split.us.split.us, !llvm.access.group !227

bb.g:                                             ; preds = %.lr.ph.us
  %i.ak = load i32, ptr %11, align 4, !tbaa !72, !llvm.access.group !227 ; 2 uses
  %i.al = load ptr, ptr %13, align 8, !tbaa !161, !llvm.access.group !227
  %i.am = load i8, ptr %i.r, align 1, !tbaa !143, !range !61, !llvm.access.group !227, !noundef !62
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = icmp eq i32 %i.ak, 0
  %spec.select.us.us = and i1 %i.ao, %i.an
  invoke void @_ZN5faiss4HNSW14add_with_locksERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.ak, i32 noundef %i.z, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.al, i1 noundef zeroext %spec.select.us.us)
          to label %bb.h unwind label %.loopexit48.split.us.split.us, !llvm.access.group !227

bb.h:                                             ; preds = %bb.g
  %i.ap = load i64, ptr %6, align 8, !tbaa !68, !llvm.access.group !227 ; 2 uses
  %i.aq = sub i64 %i.w, %i.ap                     ; 3 uses
  %i.ar = add i64 %.150.us.us, 10000
  %i.as = icmp ugt i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load i64, ptr %5, align 8, !tbaa !68, !llvm.access.group !227
  %i.au = sub i64 %i.at, %i.ap
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.aq, i64 noundef %i.au), !llvm.access.group !227 ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !76, !llvm.access.group !227
  %i.ax = call i32 @fflush(ptr noundef %i.aw), !llvm.access.group !227 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2.us.us = phi i64 [ %i.aq, %bb.i ], [ %.150.us.us, %bb.h ] ; 2 uses
  %i.ay = add nuw i64 %.051.us.us, 1              ; 2 uses
  %i.az = load i64, ptr %i.b, align 8, !tbaa !68, !llvm.access.group !227
  %i.ba = add i64 %i.az, 1
  %i.bb = icmp ult i64 %i.ay, %i.ba
  br i1 %i.bb, label %.lr.ph.us, label %.loopexit.us, !llvm.loop !228

.loopexit48.split.us.split.us:                    ; preds = %bb.g, %.lr.ph.us
  %lpad.loopexit.us.us = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit48

.loopexit:                                        ; preds = %bb.l, %.lr.ph55.split
  %i.bc = call i32 @__kmpc_dispatch_next_8u(ptr nonnull @4, i32 %.pre, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c)
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph55.split

.lr.ph55.split:                                   ; preds = %.lr.ph55, %.loopexit
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.be = load i64, ptr %i.b, align 8, !tbaa !68, !llvm.access.group !227
  %i.bf = add i64 %i.be, 1
  %i.bg = icmp ult i64 %i.bd, %i.bf
  br i1 %i.bg, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph55.split, %bb.l
  %.051 = phi i64 [ %i.ca, %bb.l ], [ %i.bd, %.lr.ph55.split ] ; 2 uses
  %i.bh = load ptr, ptr %7, align 8, !tbaa !67, !llvm.access.group !227
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %.051
  %i.bj = getelementptr [4 x i8], ptr %i.bi, i64 %i.k
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !72, !llvm.access.group !227 ; 2 uses
  %i.bl = load ptr, ptr %8, align 8, !tbaa !69, !llvm.access.group !227
  %i.bm = sext i32 %i.bk to i64
  %i.bn = load i64, ptr %9, align 8, !tbaa !68, !llvm.access.group !227
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = load i32, ptr %i.q, align 4, !tbaa !101, !llvm.access.group !227
  %i.bq = sext i32 %i.bp to i64
  %i.br = mul i64 %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.br
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !54, !llvm.access.group !227
  %i.bu = load ptr, ptr %i.bt, align 8, !llvm.access.group !227
  invoke void %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.bs)
          to label %bb.k unwind label %.loopexit48.split, !llvm.access.group !227

bb.k:                                             ; preds = %.lr.ph
  %i.bv = load i32, ptr %11, align 4, !tbaa !72, !llvm.access.group !227 ; 2 uses
  %i.bw = load ptr, ptr %13, align 8, !tbaa !161, !llvm.access.group !227
  %i.bx = load i8, ptr %i.r, align 1, !tbaa !143, !range !61, !llvm.access.group !227, !noundef !62
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = icmp eq i32 %i.bv, 0
  %spec.select = and i1 %i.bz, %i.by
  invoke void @_ZN5faiss4HNSW14add_with_locksERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i32 noundef %i.bv, i32 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.bw, i1 noundef zeroext %spec.select)
          to label %bb.l unwind label %.loopexit48.split, !llvm.access.group !227

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw i64 %.051, 1                    ; 2 uses
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !68, !llvm.access.group !227
  %i.cc = add i64 %i.cb, 1
  %i.cd = icmp ult i64 %i.ca, %i.cc
  br i1 %i.cd, label %.lr.ph, label %.loopexit, !llvm.loop !228

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %bb.f
  call void @__kmpc_dispatch_deinit(ptr nonnull @4, i32 %.pre)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge, %bb.e
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre)
  %i.ce = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %i.f) #19, !inline_history !0
  %i.ch = load ptr, ptr %13, align 8, !tbaa !161  ; 3 uses
  %.not.i44 = icmp eq ptr %i.ch, null
  br i1 %.not.i44, label %_ZNSt10unique_ptrIN5faiss12VisitedTableESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN5faiss12VisitedTableEEclEPS1_.exit.i

_ZNKSt14default_deleteIN5faiss12VisitedTableEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch) #19, !inline_history !1
  br label %_ZNSt10unique_ptrIN5faiss12VisitedTableESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss12VisitedTableESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN5faiss16DistanceComputerESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN5faiss12VisitedTableEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  ret void

.loopexit48.split:                                ; preds = %.lr.ph, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit48

.loopexit.split-lp:                               ; preds = %bb.a, %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit48

.loopexit48:                                      ; preds = %.loopexit48.split, %.loopexit48.split.us.split.us, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit48.split ], [ %lpad.loopexit.us.us, %.loopexit48.split.us.split.us ]
  %i.cl = extractvalue { ptr, i32 } %lpad.phi, 0
  call void @__clang_call_terminate(ptr %i.cl) #32
  unreachable
}

; Function Attrs: nounwind
declare i32 @omp_get_thread_num() local_unnamed_addr #11

; Function Attrs: nounwind
declare void @__kmpc_dispatch_init_8u(ptr, i32, i32, i64, i64, i64, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare i32 @__kmpc_dispatch_next_8u(ptr, i32, ptr, ptr, ptr, ptr) local_unnamed_addr #19

declare void @_ZN5faiss4HNSW14add_with_locksERNS_16DistanceComputerEiiRNS_10LockVectorERNS_12VisitedTableEb(ptr noundef nonnull align 8 dereferenceable(5206), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @__kmpc_dispatch_deinit(ptr, i32) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #15

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #25

declare void @_ZN5faiss4HNSW5resetEv(ptr noundef nonnull align 8 dereferenceable(5206)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20IndexBinaryHNSWCagraC2Ev(ptr noundef nonnull align 8 dereferenceable(5296) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN5faiss11IndexBinaryC2ElNS_10MetricTypeE(ptr noundef nonnull align 8 dereferenceable(5289) %0, i64 noundef 0, i32 noundef 1)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5faiss15IndexBinaryHNSWE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_ZN5faiss4HNSWC1Ei(ptr noundef nonnull align 8 dereferenceable(5206) %i.a, i32 noundef 32)
          to label %_ZN5faiss15IndexBinaryHNSWC2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN5faiss11IndexBinaryD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(5289) %0) #19
  resume { ptr, i32 } %i.b

_ZN5faiss15IndexBinaryHNSWC2Ev.exit:              ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5240
  store i8 0, ptr %i.c, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5248
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5256
  store i8 1, ptr %i.e, align 8, !tbaa !74
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5257
  store i8 0, ptr %i.f, align 1, !tbaa !143
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5264
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i8 0, i64 25, i1 false)
  store i8 1, ptr %i.h, align 1, !tbaa !55
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5faiss20IndexBinaryHNSWCagraE, i64 16), ptr %0, align 8, !tbaa !54
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5289
  store i8 0, ptr %i.i, align 1, !tbaa !96
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5292
  store i32 32, ptr %i.j, align 4, !tbaa !97
  store ptr null, ptr %i.d, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20IndexBinaryHNSWCagraC2Eii(ptr noundef nonnull align 8 dereferenceable(5296) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN5faiss15IndexBinaryHNSWC2Eii(ptr noundef nonnull align 8 dereferenceable(5289) %0, i32 noundef %1, i32 noundef %2)
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN5faiss20IndexBinaryHNSWCagraE, i64 16), ptr %0, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5289
  store i8 0, ptr %i.a, align 1, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 5292
  store i32 32, ptr %i.b, align 4, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5256
  store i8 1, ptr %i.c, align 8, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 5257
  store i8 1, ptr %i.d, align 1, !tbaa !143
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK5faiss20IndexBinaryHNSWCagra6searchElPKhlPiPlPKNS_16SearchParametersE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.std::random_device", align 8 ; 5 uses
  %9 = alloca %"class.std::mersenne_twister_engine", align 8 ; 7 uses
  %10 = alloca %"class.std::uniform_int_distribution", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 0, ptr %i.a, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i64 %i.g, ptr %i.b, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  store i64 1, ptr %i.c, align 8, !tbaa !68
end_hunk_0
