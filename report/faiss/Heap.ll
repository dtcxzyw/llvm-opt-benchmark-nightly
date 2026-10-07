Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/Heap?download=true
inline.NumInlined: 378
inline.NumDeleted: 155
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5faiss9HeapArrayINS_4CMinIflEEE7reorderEv.omp_outlined:bb.a
  %i.bb = fcmp oeq float %i.aa, %i.ak
  %i.bc = icmp slt i64 %i.ac, %i.am
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.at, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.ak, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.aw, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.am, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.af, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %i.ae, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.be, align 4, !tbaa !33
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bf, align 8, !tbaa !30
  %i.bg = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = icmp ugt i64 %i.bg, %i.y
  br i1 %i.bi, label %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1

_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i, %bb.f, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load float, ptr %i.z, align 4, !tbaa !33
  %.pre69.i.i = load i64, ptr %i.ab, align 8, !tbaa !30
  br label %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i, %bb.d
  %i.bj = phi i64 [ %i.ac, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %i.bk = phi float [ %i.aa, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMinIflE4cmp2Effll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.lcssa.i.i
  store float %i.bk, ptr %i.bl, align 4, !tbaa !33
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.lcssa.i.i
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !30
  %i.bn = xor i64 %.041.i, -1
  %i.bo = add i64 %i.o, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bo
  store float %i.w, ptr %i.bp, align 4, !tbaa !33
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bo
  store i64 %i.x, ptr %i.bq, align 8, !tbaa !30
  %.not.i = icmp ne i64 %i.x, -1
  %i.br = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.br         ; 2 uses
  %i.bs = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !2

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.bu = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.bv, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.by, i64 %i.bz, i1 false)
  %i.ca = icmp ult i64 %.0.lcssa.i, %i.o
  br i1 %i.ca, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.cb = sub nuw i64 %i.o, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.ce, align 4, !tbaa !33
  store <2 x float> splat (float f0xFF7FFFFF), ptr %i.cf, align 4, !tbaa !33
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cd ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.cg, align 8, !tbaa !30
  store <2 x i64> splat (i64 -1), ptr %i.ch, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !89

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader26

.lr.ph44.i.preheader26:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader26, %.lr.ph44.i
  %.242.i = phi i64 [ %i.cl, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader26 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.242.i
  store float f0xFF7FFFFF, ptr %i.cj, align 4, !tbaa !33
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.242.i
  store i64 -1, ptr %i.ck, align 8, !tbaa !30
  %i.cl = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cl, %i.o
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !90

_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  %i.cm = add nsw i64 %.013, 1
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.not = icmp slt i64 %.013, %i.cn
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12heap_reorderINS_4CMinIflEEEEmmPNT_1TEPNS3_2TIE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5faiss9HeapArrayINS_4CMinIflEEE16per_line_extremaEPfPl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  store ptr %2, ptr %i.b, align 8, !tbaa !41
  %i.e = load i64, ptr %0, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !27
  %i.h = mul i64 %i.g, %i.e
  %i.i = icmp ugt i64 %i.h, 100000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK5faiss9HeapArrayINS_4CMinIflEEE16per_line_extremaEPfPl.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !31
  call void @_ZNK5faiss9HeapArrayINS_4CMinIflEEE16per_line_extremaEPfPl.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr nonnull %0, ptr %i.a, ptr %i.b) #3
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss9HeapArrayINS_4CMinIflEEE16per_line_extremaEPfPl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i64 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i64 1, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 4 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !30
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 12 uses
  %.not43 = icmp sgt i64 %i.k, %i.j
  br i1 %.not43, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !40     ; 7 uses
  %.not37 = icmp eq ptr %i.o, null                ; 4 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !41     ; 5 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %.lr.ph46.split.us, label %.lr.ph46.split

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  %i.q = load i64, ptr %i.n, align 8, !tbaa !27   ; 5 uses
  %.not81 = icmp eq i64 %i.q, 0
  br i1 %.not81, label %.lr.ph46.split.us.split, label %.lr.ph46.split.us.split.us

.lr.ph46.split.us.split.us:                       ; preds = %.lr.ph46.split.us
  br i1 %.not37, label %._crit_edge47, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph46.split.us.split.us
  %smax = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k)
  %xtraiter150 = and i64 %i.q, 3                  ; 3 uses
  %i.r = icmp ult i64 %i.q, 4
  %unroll_iter154 = and i64 %i.q, -4
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %.03344.us.us = phi i64 [ %i.ap, %._crit_edge.us.us ], [ %i.k, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.s = mul i64 %i.q, %.03344.us.us
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s ; 5 uses
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.041.us.us = phi i64 [ %i.aj, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %.03040.us.us = phi float [ %.1.us.us.3, %.lr.ph.us.us.new ], [ f0x7F7FFFFF, %.lr.ph.us.us ] ; 2 uses
  %niter155 = phi i64 [ %niter155.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.v = load float, ptr %i.u, align 4, !tbaa !33 ; 2 uses
  %i.w = fcmp olt float %i.v, %.03040.us.us
  %.1.us.us = select i1 %i.w, float %i.v, float %.03040.us.us ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !33 ; 2 uses
  %i.aa = fcmp olt float %i.z, %.1.us.us
  %.1.us.us.1 = select i1 %i.aa, float %i.z, float %.1.us.us ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !33 ; 2 uses
  %i.ae = fcmp olt float %i.ad, %.1.us.us.1
  %.1.us.us.2 = select i1 %i.ae, float %i.ad, float %.1.us.us.1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  %i.ai = fcmp olt float %i.ah, %.1.us.us.2
  %.1.us.us.3 = select i1 %i.ai, float %i.ah, float %.1.us.us.2 ; 3 uses
  %i.aj = add nuw i64 %.041.us.us, 4              ; 2 uses
  %niter155.next.3 = add nuw i64 %niter155, 4     ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, %unroll_iter154
  br i1 %niter155.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !91

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod151.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %.041.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.aj, %._crit_edge.us.us.unr-lcssa ]
  %.03040.us.us.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.us.us ], [ %.1.us.us.3, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.041.us.us.epil = phi i64 [ %.041.us.us.epil.init, %.epil.preheader ], [ %i.an, %bb.c ] ; 2 uses
  %.03040.us.us.epil = phi float [ %.03040.us.us.epil.init, %.epil.preheader ], [ %.1.us.us.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us.epil
  %i.al = load float, ptr %i.ak, align 4, !tbaa !33 ; 2 uses
  %i.am = fcmp olt float %i.al, %.03040.us.us.epil
  %.1.us.us.epil = select i1 %i.am, float %i.al, float %.03040.us.us.epil ; 2 uses
  %i.an = add nuw i64 %.041.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter150
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !92

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.1.us.us.lcssa = phi float [ %.1.us.us.3, %._crit_edge.us.us.unr-lcssa ], [ %.1.us.us.epil, %bb.c ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03344.us.us
  store float %.1.us.us.lcssa, ptr %i.ao, align 4, !tbaa !33
  %i.ap = add i64 %.03344.us.us, 1
  %exitcond92.not = icmp eq i64 %.03344.us.us, %smax
  br i1 %exitcond92.not, label %._crit_edge47, label %.lr.ph.us.us

.lr.ph46.split.us.split:                          ; preds = %.lr.ph46.split.us
  br i1 %.not37, label %._crit_edge47, label %.lr.ph46.split.us.split.split.preheader

.lr.ph46.split.us.split.split.preheader:          ; preds = %.lr.ph46.split.us.split
  %smax93 = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %i.aq = add i64 %smax93, 1
  %i.ar = sub i64 %i.aq, %i.k                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph46.split.us.split.split.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.split.us.split.split.preheader
  %n.vec = and i64 %i.ar, -8                      ; 3 uses
  %i.as = add i64 %i.k, %n.vec
  %i.at = getelementptr [4 x i8], ptr %i.o, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.au, align 4, !tbaa !33
  store <4 x float> splat (float f0x7F7FFFFF), ptr %i.av, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge47, label %.lr.ph46.split.us.split.split.preheader122

.lr.ph46.split.us.split.split.preheader122:       ; preds = %.lr.ph46.split.us.split.split.preheader, %middle.block
  %.03344.us.ph = phi i64 [ %i.k, %.lr.ph46.split.us.split.split.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph46.split.us.split.split

.lr.ph46.split.us.split.split:                    ; preds = %.lr.ph46.split.us.split.split.preheader122, %.lr.ph46.split.us.split.split
  %.03344.us = phi i64 [ %i.ay, %.lr.ph46.split.us.split.split ], [ %.03344.us.ph, %.lr.ph46.split.us.split.split.preheader122 ] ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03344.us
  store float f0x7F7FFFFF, ptr %i.ax, align 4, !tbaa !33
  %i.ay = add i64 %.03344.us, 1
  %exitcond94.not = icmp eq i64 %.03344.us, %smax93
  br i1 %exitcond94.not, label %._crit_edge47, label %.lr.ph46.split.us.split.split, !llvm.loop !94

.lr.ph46.split:                                   ; preds = %.lr.ph46
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !28
  %.fr74 = freeze ptr %i.ba                       ; 3 uses
  %.not75 = icmp eq ptr %.fr74, null
  br i1 %.not75, label %.lr.ph46.split.split.us, label %.lr.ph46.split.split

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46.split
  br i1 %.not37, label %.lr.ph46.split.split.us.split.us, label %.lr.ph46.split.split.us.split

.lr.ph46.split.split.us.split.us:                 ; preds = %.lr.ph46.split.split.us, %._crit_edge.us55.us
  %.03344.us48.us = phi i64 [ %i.br, %._crit_edge.us55.us ], [ %i.k, %.lr.ph46.split.split.us ] ; 4 uses
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !27  ; 6 uses
  %i.bc = mul i64 %i.bb, %.03344.us48.us
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bc ; 3 uses
  %.not77 = icmp eq i64 %i.bb, 0
  br i1 %.not77, label %._crit_edge.us55.us, label %.lr.ph.us49.us.preheader

.lr.ph.us49.us.preheader:                         ; preds = %.lr.ph46.split.split.us.split.us
  %xtraiter144 = and i64 %i.bb, 1
  %i.be = icmp eq i64 %i.bb, 1
  br i1 %i.be, label %.lr.ph.us49.us.epil.preheader, label %.lr.ph.us49.us.preheader.new

.lr.ph.us49.us.preheader.new:                     ; preds = %.lr.ph.us49.us.preheader
  %unroll_iter148 = and i64 %i.bb, -2
  br label %.lr.ph.us49.us

.lr.ph.us49.us:                                   ; preds = %.lr.ph.us49.us, %.lr.ph.us49.us.preheader.new
  %.041.us50.us = phi i64 [ 0, %.lr.ph.us49.us.preheader.new ], [ %i.bm, %.lr.ph.us49.us ] ; 4 uses
  %.03040.us51.us = phi float [ f0x7F7FFFFF, %.lr.ph.us49.us.preheader.new ], [ %.1.us54.us.1, %.lr.ph.us49.us ] ; 2 uses
  %.03139.us52.us = phi i64 [ -1, %.lr.ph.us49.us.preheader.new ], [ %.132.us53.us.1, %.lr.ph.us49.us ]
  %niter149 = phi i64 [ 0, %.lr.ph.us49.us.preheader.new ], [ %niter149.next.1, %.lr.ph.us49.us ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.041.us50.us
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !33 ; 2 uses
  %i.bh = fcmp olt float %i.bg, %.03040.us51.us   ; 2 uses
  %.132.us53.us = select i1 %i.bh, i64 %.041.us50.us, i64 %.03139.us52.us
  %.1.us54.us = select i1 %i.bh, float %i.bg, float %.03040.us51.us ; 2 uses
  %i.bi = or disjoint i64 %.041.us50.us, 1        ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !33 ; 2 uses
  %i.bl = fcmp olt float %i.bk, %.1.us54.us       ; 2 uses
  %.132.us53.us.1 = select i1 %i.bl, i64 %i.bi, i64 %.132.us53.us ; 3 uses
  %.1.us54.us.1 = select i1 %i.bl, float %i.bk, float %.1.us54.us ; 2 uses
  %i.bm = add nuw i64 %.041.us50.us, 2            ; 2 uses
  %niter149.next.1 = add nuw i64 %niter149, 2     ; 2 uses
  %niter149.ncmp.1 = icmp eq i64 %niter149.next.1, %unroll_iter148
  br i1 %niter149.ncmp.1, label %._crit_edge.us55.us.loopexit.unr-lcssa, label %.lr.ph.us49.us, !llvm.loop !91

._crit_edge.us55.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.us49.us
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %._crit_edge.us55.us, label %.lr.ph.us49.us.epil.preheader

.lr.ph.us49.us.epil.preheader:                    ; preds = %._crit_edge.us55.us.loopexit.unr-lcssa, %.lr.ph.us49.us.preheader
  %.041.us50.us.epil.init = phi i64 [ 0, %.lr.ph.us49.us.preheader ], [ %i.bm, %._crit_edge.us55.us.loopexit.unr-lcssa ] ; 2 uses
  %.03040.us51.us.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.us49.us.preheader ], [ %.1.us54.us.1, %._crit_edge.us55.us.loopexit.unr-lcssa ]
  %.03139.us52.us.epil.init = phi i64 [ -1, %.lr.ph.us49.us.preheader ], [ %.132.us53.us.1, %._crit_edge.us55.us.loopexit.unr-lcssa ]
  %lcmp.mod147 = trunc i64 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod147)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.041.us50.us.epil.init
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !33
  %i.bp = fcmp olt float %i.bo, %.03040.us51.us.epil.init
  %.132.us53.us.epil = select i1 %i.bp, i64 %.041.us50.us.epil.init, i64 %.03139.us52.us.epil.init
  br label %._crit_edge.us55.us

._crit_edge.us55.us:                              ; preds = %.lr.ph.us49.us.epil.preheader, %._crit_edge.us55.us.loopexit.unr-lcssa, %.lr.ph46.split.split.us.split.us
  %.031.lcssa.us58.us = phi i64 [ -1, %.lr.ph46.split.split.us.split.us ], [ %.132.us53.us.1, %._crit_edge.us55.us.loopexit.unr-lcssa ], [ %.132.us53.us.epil, %.lr.ph.us49.us.epil.preheader ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.03344.us48.us
  store i64 %.031.lcssa.us58.us, ptr %i.bq, align 8, !tbaa !30
  %i.br = add nsw i64 %.03344.us48.us, 1
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.us60.us.not = icmp slt i64 %.03344.us48.us, %i.bs
  br i1 %.not.us60.us.not, label %.lr.ph46.split.split.us.split.us, label %._crit_edge47

.lr.ph46.split.split.us.split:                    ; preds = %.lr.ph46.split.split.us, %._crit_edge.us55
  %.03344.us48 = phi i64 [ %i.ck, %._crit_edge.us55 ], [ %i.k, %.lr.ph46.split.split.us ] ; 5 uses
  %i.bt = load i64, ptr %i.n, align 8, !tbaa !27  ; 6 uses
  %i.bu = mul i64 %i.bt, %.03344.us48
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bu ; 3 uses
  %.not76 = icmp eq i64 %i.bt, 0
  br i1 %.not76, label %._crit_edge.us55, label %.lr.ph.us49.preheader

.lr.ph.us49.preheader:                            ; preds = %.lr.ph46.split.split.us.split
  %xtraiter137 = and i64 %i.bt, 1
  %i.bw = icmp eq i64 %i.bt, 1
  br i1 %i.bw, label %.lr.ph.us49.epil.preheader, label %.lr.ph.us49.preheader.new

.lr.ph.us49.preheader.new:                        ; preds = %.lr.ph.us49.preheader
  %unroll_iter142 = and i64 %i.bt, -2
  br label %.lr.ph.us49

.lr.ph.us49:                                      ; preds = %.lr.ph.us49, %.lr.ph.us49.preheader.new
  %.041.us50 = phi i64 [ 0, %.lr.ph.us49.preheader.new ], [ %i.ce, %.lr.ph.us49 ] ; 4 uses
  %.03040.us51 = phi float [ f0x7F7FFFFF, %.lr.ph.us49.preheader.new ], [ %.1.us54.1, %.lr.ph.us49 ] ; 2 uses
  %.03139.us52 = phi i64 [ -1, %.lr.ph.us49.preheader.new ], [ %.132.us53.1, %.lr.ph.us49 ]
  %niter143 = phi i64 [ 0, %.lr.ph.us49.preheader.new ], [ %niter143.next.1, %.lr.ph.us49 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.041.us50
  %i.by = load float, ptr %i.bx, align 4, !tbaa !33 ; 2 uses
  %i.bz = fcmp olt float %i.by, %.03040.us51      ; 2 uses
  %.132.us53 = select i1 %i.bz, i64 %.041.us50, i64 %.03139.us52
  %.1.us54 = select i1 %i.bz, float %i.by, float %.03040.us51 ; 2 uses
  %i.ca = or disjoint i64 %.041.us50, 1           ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !33 ; 2 uses
  %i.cd = fcmp olt float %i.cc, %.1.us54          ; 2 uses
  %.132.us53.1 = select i1 %i.cd, i64 %i.ca, i64 %.132.us53 ; 3 uses
  %.1.us54.1 = select i1 %i.cd, float %i.cc, float %.1.us54 ; 3 uses
  %i.ce = add nuw i64 %.041.us50, 2               ; 2 uses
  %niter143.next.1 = add nuw i64 %niter143, 2     ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %._crit_edge.us55.loopexit.unr-lcssa, label %.lr.ph.us49, !llvm.loop !91

._crit_edge.us55.loopexit.unr-lcssa:              ; preds = %.lr.ph.us49
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %._crit_edge.us55, label %.lr.ph.us49.epil.preheader

.lr.ph.us49.epil.preheader:                       ; preds = %._crit_edge.us55.loopexit.unr-lcssa, %.lr.ph.us49.preheader
  %.041.us50.epil.init = phi i64 [ 0, %.lr.ph.us49.preheader ], [ %i.ce, %._crit_edge.us55.loopexit.unr-lcssa ] ; 2 uses
  %.03040.us51.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.us49.preheader ], [ %.1.us54.1, %._crit_edge.us55.loopexit.unr-lcssa ] ; 2 uses
  %.03139.us52.epil.init = phi i64 [ -1, %.lr.ph.us49.preheader ], [ %.132.us53.1, %._crit_edge.us55.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.bt to i1
  call void @llvm.assume(i1 %lcmp.mod141)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.041.us50.epil.init
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %.03040.us51.epil.init ; 2 uses
  %.132.us53.epil = select i1 %i.ch, i64 %.041.us50.epil.init, i64 %.03139.us52.epil.init
  %.1.us54.epil = select i1 %i.ch, float %i.cg, float %.03040.us51.epil.init
  br label %._crit_edge.us55

._crit_edge.us55:                                 ; preds = %.lr.ph.us49.epil.preheader, %._crit_edge.us55.loopexit.unr-lcssa, %.lr.ph46.split.split.us.split
  %.031.lcssa.us58 = phi i64 [ -1, %.lr.ph46.split.split.us.split ], [ %.132.us53.1, %._crit_edge.us55.loopexit.unr-lcssa ], [ %.132.us53.epil, %.lr.ph.us49.epil.preheader ]
  %.030.lcssa.us59 = phi float [ f0x7F7FFFFF, %.lr.ph46.split.split.us.split ], [ %.1.us54.1, %._crit_edge.us55.loopexit.unr-lcssa ], [ %.1.us54.epil, %.lr.ph.us49.epil.preheader ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03344.us48
  store float %.030.lcssa.us59, ptr %i.ci, align 4, !tbaa !33
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.03344.us48
  store i64 %.031.lcssa.us58, ptr %i.cj, align 8, !tbaa !30
  %i.ck = add nsw i64 %.03344.us48, 1
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.us60.not = icmp slt i64 %.03344.us48, %i.cl
  br i1 %.not.us60.not, label %.lr.ph46.split.split.us.split, label %._crit_edge47

.lr.ph46.split.split:                             ; preds = %.lr.ph46.split
  br i1 %.not37, label %.lr.ph46.split.split.split.us, label %.lr.ph46.split.split.split

.lr.ph46.split.split.split.us:                    ; preds = %.lr.ph46.split.split, %._crit_edge.us68.thread
  %.03344.us61 = phi i64 [ %i.df, %._crit_edge.us68.thread ], [ %i.k, %.lr.ph46.split.split ] ; 4 uses
  %i.cm = load i64, ptr %i.n, align 8, !tbaa !27  ; 6 uses
  %i.cn = mul i64 %i.cm, %.03344.us61             ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cn ; 3 uses
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %._crit_edge.us68.thread, label %.lr.ph.us62.preheader

.lr.ph.us62.preheader:                            ; preds = %.lr.ph46.split.split.split.us
  %xtraiter131 = and i64 %i.cm, 1
  %i.cp = icmp eq i64 %i.cm, 1
  br i1 %i.cp, label %.lr.ph.us62.epil.preheader, label %.lr.ph.us62.preheader.new

.lr.ph.us62.preheader.new:                        ; preds = %.lr.ph.us62.preheader
  %unroll_iter135 = and i64 %i.cm, -2
  br label %.lr.ph.us62

.lr.ph.us62:                                      ; preds = %.lr.ph.us62, %.lr.ph.us62.preheader.new
  %.041.us63 = phi i64 [ 0, %.lr.ph.us62.preheader.new ], [ %i.cx, %.lr.ph.us62 ] ; 4 uses
  %.03040.us64 = phi float [ f0x7F7FFFFF, %.lr.ph.us62.preheader.new ], [ %.1.us67.1, %.lr.ph.us62 ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5faiss9HeapArrayINS_4CMaxIflEEE7reorderEv.omp_outlined:bb.a
  %i.bb = fcmp oeq float %i.aa, %i.ak
  %i.bc = icmp sgt i64 %i.ac, %i.am
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i
  %.sink79.i.i = phi float [ %i.at, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.ak, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.aw, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.am, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.af, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %i.ae, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.062.i.i
  store float %.sink79.i.i, ptr %i.be, align 4, !tbaa !33
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bf, align 8, !tbaa !30
  %i.bg = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = icmp ugt i64 %i.bg, %i.y
  br i1 %i.bi, label %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !4

_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i, %bb.f, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load float, ptr %i.z, align 4, !tbaa !33
  %.pre69.i.i = load i64, ptr %i.ab, align 8, !tbaa !30
  br label %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i, %bb.d
  %i.bj = phi i64 [ %i.ac, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %i.bk = phi float [ %i.aa, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxIflE4cmp2Effll.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.lcssa.i.i
  store float %i.bk, ptr %i.bl, align 4, !tbaa !33
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.lcssa.i.i
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !30
  %i.bn = xor i64 %.041.i, -1
  %i.bo = add i64 %i.o, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bo
  store float %i.w, ptr %i.bp, align 4, !tbaa !33
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bo
  store i64 %i.x, ptr %i.bq, align 8, !tbaa !30
  %.not.i = icmp ne i64 %i.x, -1
  %i.br = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.br         ; 2 uses
  %i.bs = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !5

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.bu = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.bv, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.by, i64 %i.bz, i1 false)
  %i.ca = icmp ult i64 %.0.lcssa.i, %i.o
  br i1 %i.ca, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.cb = sub nuw i64 %i.o, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ce, align 4, !tbaa !33
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.cf, align 4, !tbaa !33
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cd ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.cg, align 8, !tbaa !30
  store <2 x i64> splat (i64 -1), ptr %i.ch, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader26

.lr.ph44.i.preheader26:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader26, %.lr.ph44.i
  %.242.i = phi i64 [ %i.cl, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader26 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.242.i
  store float f0x7F7FFFFF, ptr %i.cj, align 4, !tbaa !33
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.242.i
  store i64 -1, ptr %i.ck, align 8, !tbaa !30
  %i.cl = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cl, %i.o
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !105

_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  %i.cm = add nsw i64 %.013, 1
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.not = icmp slt i64 %.013, %i.cn
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIflEEEEmmPNT_1TEPNS3_2TIE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5faiss9HeapArrayINS_4CMaxIflEEE16per_line_extremaEPfPl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !40
  store ptr %2, ptr %i.b, align 8, !tbaa !41
  %i.e = load i64, ptr %0, align 8, !tbaa !54
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !52
  %i.h = mul i64 %i.g, %i.e
  %i.i = icmp ugt i64 %i.h, 100000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK5faiss9HeapArrayINS_4CMaxIflEEE16per_line_extremaEPfPl.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !31
  call void @_ZNK5faiss9HeapArrayINS_4CMaxIflEEE16per_line_extremaEPfPl.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr nonnull %0, ptr %i.a, ptr %i.b) #3
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss9HeapArrayINS_4CMaxIflEEE16per_line_extremaEPfPl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i64 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i64 1, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 4 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !30
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 12 uses
  %.not43 = icmp sgt i64 %i.k, %i.j
  br i1 %.not43, label %._crit_edge47, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !51   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !40     ; 7 uses
  %.not37 = icmp eq ptr %i.o, null                ; 4 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !41     ; 5 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %.lr.ph46.split.us, label %.lr.ph46.split

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  %i.q = load i64, ptr %i.n, align 8, !tbaa !52   ; 5 uses
  %.not81 = icmp eq i64 %i.q, 0
  br i1 %.not81, label %.lr.ph46.split.us.split, label %.lr.ph46.split.us.split.us

.lr.ph46.split.us.split.us:                       ; preds = %.lr.ph46.split.us
  br i1 %.not37, label %._crit_edge47, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph46.split.us.split.us
  %smax = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k)
  %xtraiter150 = and i64 %i.q, 3                  ; 3 uses
  %i.r = icmp ult i64 %i.q, 4
  %unroll_iter154 = and i64 %i.q, -4
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  %lcmp.mod153 = icmp ne i64 %xtraiter150, 0
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %.03344.us.us = phi i64 [ %i.ap, %._crit_edge.us.us ], [ %i.k, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.s = mul i64 %i.q, %.03344.us.us
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.s ; 5 uses
  br i1 %i.r, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %.041.us.us = phi i64 [ %i.aj, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %.03040.us.us = phi float [ %.1.us.us.3, %.lr.ph.us.us.new ], [ f0xFF7FFFFF, %.lr.ph.us.us ] ; 2 uses
  %niter155 = phi i64 [ %niter155.next.3, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.v = load float, ptr %i.u, align 4, !tbaa !33 ; 2 uses
  %i.w = fcmp ogt float %i.v, %.03040.us.us
  %.1.us.us = select i1 %i.w, float %i.v, float %.03040.us.us ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.z = load float, ptr %i.y, align 4, !tbaa !33 ; 2 uses
  %i.aa = fcmp ogt float %i.z, %.1.us.us
  %.1.us.us.1 = select i1 %i.aa, float %i.z, float %.1.us.us ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !33 ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.1.us.us.1
  %.1.us.us.2 = select i1 %i.ae, float %i.ad, float %.1.us.us.1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !33 ; 2 uses
  %i.ai = fcmp ogt float %i.ah, %.1.us.us.2
  %.1.us.us.3 = select i1 %i.ai, float %i.ah, float %.1.us.us.2 ; 3 uses
  %i.aj = add nuw i64 %.041.us.us, 4              ; 2 uses
  %niter155.next.3 = add nuw i64 %niter155, 4     ; 2 uses
  %niter155.ncmp.3 = icmp eq i64 %niter155.next.3, %unroll_iter154
  br i1 %niter155.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !106

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod151.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %.041.us.us.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %i.aj, %._crit_edge.us.us.unr-lcssa ]
  %.03040.us.us.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.us.us ], [ %.1.us.us.3, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod153)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.041.us.us.epil = phi i64 [ %.041.us.us.epil.init, %.epil.preheader ], [ %i.an, %bb.c ] ; 2 uses
  %.03040.us.us.epil = phi float [ %.03040.us.us.epil.init, %.epil.preheader ], [ %.1.us.us.epil, %bb.c ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.041.us.us.epil
  %i.al = load float, ptr %i.ak, align 4, !tbaa !33 ; 2 uses
  %i.am = fcmp ogt float %i.al, %.03040.us.us.epil
  %.1.us.us.epil = select i1 %i.am, float %i.al, float %.03040.us.us.epil ; 2 uses
  %i.an = add nuw i64 %.041.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter150
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !107

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.1.us.us.lcssa = phi float [ %.1.us.us.3, %._crit_edge.us.us.unr-lcssa ], [ %.1.us.us.epil, %bb.c ]
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03344.us.us
  store float %.1.us.us.lcssa, ptr %i.ao, align 4, !tbaa !33
  %i.ap = add i64 %.03344.us.us, 1
  %exitcond92.not = icmp eq i64 %.03344.us.us, %smax
  br i1 %exitcond92.not, label %._crit_edge47, label %.lr.ph.us.us

.lr.ph46.split.us.split:                          ; preds = %.lr.ph46.split.us
  br i1 %.not37, label %._crit_edge47, label %.lr.ph46.split.us.split.split.preheader

.lr.ph46.split.us.split.split.preheader:          ; preds = %.lr.ph46.split.us.split
  %smax93 = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %i.aq = add i64 %smax93, 1
  %i.ar = sub i64 %i.aq, %i.k                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 8
  br i1 %min.iters.check, label %.lr.ph46.split.us.split.split.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph46.split.us.split.split.preheader
  %n.vec = and i64 %i.ar, -8                      ; 3 uses
  %i.as = add i64 %i.k, %n.vec
  %i.at = getelementptr [4 x i8], ptr %i.o, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %i.at, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.au, align 4, !tbaa !33
  store <4 x float> splat (float f0xFF7FFFFF), ptr %i.av, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !108

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %._crit_edge47, label %.lr.ph46.split.us.split.split.preheader122

.lr.ph46.split.us.split.split.preheader122:       ; preds = %.lr.ph46.split.us.split.split.preheader, %middle.block
  %.03344.us.ph = phi i64 [ %i.k, %.lr.ph46.split.us.split.split.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph46.split.us.split.split

.lr.ph46.split.us.split.split:                    ; preds = %.lr.ph46.split.us.split.split.preheader122, %.lr.ph46.split.us.split.split
  %.03344.us = phi i64 [ %i.ay, %.lr.ph46.split.us.split.split ], [ %.03344.us.ph, %.lr.ph46.split.us.split.split.preheader122 ] ; 3 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03344.us
  store float f0xFF7FFFFF, ptr %i.ax, align 4, !tbaa !33
  %i.ay = add i64 %.03344.us, 1
  %exitcond94.not = icmp eq i64 %.03344.us, %smax93
  br i1 %exitcond94.not, label %._crit_edge47, label %.lr.ph46.split.us.split.split, !llvm.loop !109

.lr.ph46.split:                                   ; preds = %.lr.ph46
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !53
  %.fr74 = freeze ptr %i.ba                       ; 3 uses
  %.not75 = icmp eq ptr %.fr74, null
  br i1 %.not75, label %.lr.ph46.split.split.us, label %.lr.ph46.split.split

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46.split
  br i1 %.not37, label %.lr.ph46.split.split.us.split.us, label %.lr.ph46.split.split.us.split

.lr.ph46.split.split.us.split.us:                 ; preds = %.lr.ph46.split.split.us, %._crit_edge.us55.us
  %.03344.us48.us = phi i64 [ %i.br, %._crit_edge.us55.us ], [ %i.k, %.lr.ph46.split.split.us ] ; 4 uses
  %i.bb = load i64, ptr %i.n, align 8, !tbaa !52  ; 6 uses
  %i.bc = mul i64 %i.bb, %.03344.us48.us
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bc ; 3 uses
  %.not77 = icmp eq i64 %i.bb, 0
  br i1 %.not77, label %._crit_edge.us55.us, label %.lr.ph.us49.us.preheader

.lr.ph.us49.us.preheader:                         ; preds = %.lr.ph46.split.split.us.split.us
  %xtraiter144 = and i64 %i.bb, 1
  %i.be = icmp eq i64 %i.bb, 1
  br i1 %i.be, label %.lr.ph.us49.us.epil.preheader, label %.lr.ph.us49.us.preheader.new

.lr.ph.us49.us.preheader.new:                     ; preds = %.lr.ph.us49.us.preheader
  %unroll_iter148 = and i64 %i.bb, -2
  br label %.lr.ph.us49.us

.lr.ph.us49.us:                                   ; preds = %.lr.ph.us49.us, %.lr.ph.us49.us.preheader.new
  %.041.us50.us = phi i64 [ 0, %.lr.ph.us49.us.preheader.new ], [ %i.bm, %.lr.ph.us49.us ] ; 4 uses
  %.03040.us51.us = phi float [ f0xFF7FFFFF, %.lr.ph.us49.us.preheader.new ], [ %.1.us54.us.1, %.lr.ph.us49.us ] ; 2 uses
  %.03139.us52.us = phi i64 [ -1, %.lr.ph.us49.us.preheader.new ], [ %.132.us53.us.1, %.lr.ph.us49.us ]
  %niter149 = phi i64 [ 0, %.lr.ph.us49.us.preheader.new ], [ %niter149.next.1, %.lr.ph.us49.us ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.041.us50.us
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !33 ; 2 uses
  %i.bh = fcmp ogt float %i.bg, %.03040.us51.us   ; 2 uses
  %.132.us53.us = select i1 %i.bh, i64 %.041.us50.us, i64 %.03139.us52.us
  %.1.us54.us = select i1 %i.bh, float %i.bg, float %.03040.us51.us ; 2 uses
  %i.bi = or disjoint i64 %.041.us50.us, 1        ; 2 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !33 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, %.1.us54.us       ; 2 uses
  %.132.us53.us.1 = select i1 %i.bl, i64 %i.bi, i64 %.132.us53.us ; 3 uses
  %.1.us54.us.1 = select i1 %i.bl, float %i.bk, float %.1.us54.us ; 2 uses
  %i.bm = add nuw i64 %.041.us50.us, 2            ; 2 uses
  %niter149.next.1 = add nuw i64 %niter149, 2     ; 2 uses
  %niter149.ncmp.1 = icmp eq i64 %niter149.next.1, %unroll_iter148
  br i1 %niter149.ncmp.1, label %._crit_edge.us55.us.loopexit.unr-lcssa, label %.lr.ph.us49.us, !llvm.loop !106

._crit_edge.us55.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.us49.us
  %lcmp.mod145.not = icmp eq i64 %xtraiter144, 0
  br i1 %lcmp.mod145.not, label %._crit_edge.us55.us, label %.lr.ph.us49.us.epil.preheader

.lr.ph.us49.us.epil.preheader:                    ; preds = %._crit_edge.us55.us.loopexit.unr-lcssa, %.lr.ph.us49.us.preheader
  %.041.us50.us.epil.init = phi i64 [ 0, %.lr.ph.us49.us.preheader ], [ %i.bm, %._crit_edge.us55.us.loopexit.unr-lcssa ] ; 2 uses
  %.03040.us51.us.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.us49.us.preheader ], [ %.1.us54.us.1, %._crit_edge.us55.us.loopexit.unr-lcssa ]
  %.03139.us52.us.epil.init = phi i64 [ -1, %.lr.ph.us49.us.preheader ], [ %.132.us53.us.1, %._crit_edge.us55.us.loopexit.unr-lcssa ]
  %lcmp.mod147 = trunc i64 %i.bb to i1
  call void @llvm.assume(i1 %lcmp.mod147)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.041.us50.us.epil.init
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !33
  %i.bp = fcmp ogt float %i.bo, %.03040.us51.us.epil.init
  %.132.us53.us.epil = select i1 %i.bp, i64 %.041.us50.us.epil.init, i64 %.03139.us52.us.epil.init
  br label %._crit_edge.us55.us

._crit_edge.us55.us:                              ; preds = %.lr.ph.us49.us.epil.preheader, %._crit_edge.us55.us.loopexit.unr-lcssa, %.lr.ph46.split.split.us.split.us
  %.031.lcssa.us58.us = phi i64 [ -1, %.lr.ph46.split.split.us.split.us ], [ %.132.us53.us.1, %._crit_edge.us55.us.loopexit.unr-lcssa ], [ %.132.us53.us.epil, %.lr.ph.us49.us.epil.preheader ]
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.03344.us48.us
  store i64 %.031.lcssa.us58.us, ptr %i.bq, align 8, !tbaa !30
  %i.br = add nsw i64 %.03344.us48.us, 1
  %i.bs = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.us60.us.not = icmp slt i64 %.03344.us48.us, %i.bs
  br i1 %.not.us60.us.not, label %.lr.ph46.split.split.us.split.us, label %._crit_edge47

.lr.ph46.split.split.us.split:                    ; preds = %.lr.ph46.split.split.us, %._crit_edge.us55
  %.03344.us48 = phi i64 [ %i.ck, %._crit_edge.us55 ], [ %i.k, %.lr.ph46.split.split.us ] ; 5 uses
  %i.bt = load i64, ptr %i.n, align 8, !tbaa !52  ; 6 uses
  %i.bu = mul i64 %i.bt, %.03344.us48
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bu ; 3 uses
  %.not76 = icmp eq i64 %i.bt, 0
  br i1 %.not76, label %._crit_edge.us55, label %.lr.ph.us49.preheader

.lr.ph.us49.preheader:                            ; preds = %.lr.ph46.split.split.us.split
  %xtraiter137 = and i64 %i.bt, 1
  %i.bw = icmp eq i64 %i.bt, 1
  br i1 %i.bw, label %.lr.ph.us49.epil.preheader, label %.lr.ph.us49.preheader.new

.lr.ph.us49.preheader.new:                        ; preds = %.lr.ph.us49.preheader
  %unroll_iter142 = and i64 %i.bt, -2
  br label %.lr.ph.us49

.lr.ph.us49:                                      ; preds = %.lr.ph.us49, %.lr.ph.us49.preheader.new
  %.041.us50 = phi i64 [ 0, %.lr.ph.us49.preheader.new ], [ %i.ce, %.lr.ph.us49 ] ; 4 uses
  %.03040.us51 = phi float [ f0xFF7FFFFF, %.lr.ph.us49.preheader.new ], [ %.1.us54.1, %.lr.ph.us49 ] ; 2 uses
  %.03139.us52 = phi i64 [ -1, %.lr.ph.us49.preheader.new ], [ %.132.us53.1, %.lr.ph.us49 ]
  %niter143 = phi i64 [ 0, %.lr.ph.us49.preheader.new ], [ %niter143.next.1, %.lr.ph.us49 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.041.us50
  %i.by = load float, ptr %i.bx, align 4, !tbaa !33 ; 2 uses
  %i.bz = fcmp ogt float %i.by, %.03040.us51      ; 2 uses
  %.132.us53 = select i1 %i.bz, i64 %.041.us50, i64 %.03139.us52
  %.1.us54 = select i1 %i.bz, float %i.by, float %.03040.us51 ; 2 uses
  %i.ca = or disjoint i64 %.041.us50, 1           ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !33 ; 2 uses
  %i.cd = fcmp ogt float %i.cc, %.1.us54          ; 2 uses
  %.132.us53.1 = select i1 %i.cd, i64 %i.ca, i64 %.132.us53 ; 3 uses
  %.1.us54.1 = select i1 %i.cd, float %i.cc, float %.1.us54 ; 3 uses
  %i.ce = add nuw i64 %.041.us50, 2               ; 2 uses
  %niter143.next.1 = add nuw i64 %niter143, 2     ; 2 uses
  %niter143.ncmp.1 = icmp eq i64 %niter143.next.1, %unroll_iter142
  br i1 %niter143.ncmp.1, label %._crit_edge.us55.loopexit.unr-lcssa, label %.lr.ph.us49, !llvm.loop !106

._crit_edge.us55.loopexit.unr-lcssa:              ; preds = %.lr.ph.us49
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %._crit_edge.us55, label %.lr.ph.us49.epil.preheader

.lr.ph.us49.epil.preheader:                       ; preds = %._crit_edge.us55.loopexit.unr-lcssa, %.lr.ph.us49.preheader
  %.041.us50.epil.init = phi i64 [ 0, %.lr.ph.us49.preheader ], [ %i.ce, %._crit_edge.us55.loopexit.unr-lcssa ] ; 2 uses
  %.03040.us51.epil.init = phi float [ f0xFF7FFFFF, %.lr.ph.us49.preheader ], [ %.1.us54.1, %._crit_edge.us55.loopexit.unr-lcssa ] ; 2 uses
  %.03139.us52.epil.init = phi i64 [ -1, %.lr.ph.us49.preheader ], [ %.132.us53.1, %._crit_edge.us55.loopexit.unr-lcssa ]
  %lcmp.mod141 = trunc i64 %i.bt to i1
  call void @llvm.assume(i1 %lcmp.mod141)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %.041.us50.epil.init
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %i.ch = fcmp ogt float %i.cg, %.03040.us51.epil.init ; 2 uses
  %.132.us53.epil = select i1 %i.ch, i64 %.041.us50.epil.init, i64 %.03139.us52.epil.init
  %.1.us54.epil = select i1 %i.ch, float %i.cg, float %.03040.us51.epil.init
  br label %._crit_edge.us55

._crit_edge.us55:                                 ; preds = %.lr.ph.us49.epil.preheader, %._crit_edge.us55.loopexit.unr-lcssa, %.lr.ph46.split.split.us.split
  %.031.lcssa.us58 = phi i64 [ -1, %.lr.ph46.split.split.us.split ], [ %.132.us53.1, %._crit_edge.us55.loopexit.unr-lcssa ], [ %.132.us53.epil, %.lr.ph.us49.epil.preheader ]
  %.030.lcssa.us59 = phi float [ f0xFF7FFFFF, %.lr.ph46.split.split.us.split ], [ %.1.us54.1, %._crit_edge.us55.loopexit.unr-lcssa ], [ %.1.us54.epil, %.lr.ph.us49.epil.preheader ]
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03344.us48
  store float %.030.lcssa.us59, ptr %i.ci, align 4, !tbaa !33
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.03344.us48
  store i64 %.031.lcssa.us58, ptr %i.cj, align 8, !tbaa !30
  %i.ck = add nsw i64 %.03344.us48, 1
  %i.cl = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.us60.not = icmp slt i64 %.03344.us48, %i.cl
  br i1 %.not.us60.not, label %.lr.ph46.split.split.us.split, label %._crit_edge47

.lr.ph46.split.split:                             ; preds = %.lr.ph46.split
  br i1 %.not37, label %.lr.ph46.split.split.split.us, label %.lr.ph46.split.split.split

.lr.ph46.split.split.split.us:                    ; preds = %.lr.ph46.split.split, %._crit_edge.us68.thread
  %.03344.us61 = phi i64 [ %i.df, %._crit_edge.us68.thread ], [ %i.k, %.lr.ph46.split.split ] ; 4 uses
  %i.cm = load i64, ptr %i.n, align 8, !tbaa !52  ; 6 uses
  %i.cn = mul i64 %i.cm, %.03344.us61             ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cn ; 3 uses
  %.not = icmp eq i64 %i.cm, 0
  br i1 %.not, label %._crit_edge.us68.thread, label %.lr.ph.us62.preheader

.lr.ph.us62.preheader:                            ; preds = %.lr.ph46.split.split.split.us
  %xtraiter131 = and i64 %i.cm, 1
  %i.cp = icmp eq i64 %i.cm, 1
  br i1 %i.cp, label %.lr.ph.us62.epil.preheader, label %.lr.ph.us62.preheader.new

.lr.ph.us62.preheader.new:                        ; preds = %.lr.ph.us62.preheader
  %unroll_iter135 = and i64 %i.cm, -2
  br label %.lr.ph.us62

.lr.ph.us62:                                      ; preds = %.lr.ph.us62, %.lr.ph.us62.preheader.new
  %.041.us63 = phi i64 [ 0, %.lr.ph.us62.preheader.new ], [ %i.cx, %.lr.ph.us62 ] ; 4 uses
  %.03040.us64 = phi float [ f0xFF7FFFFF, %.lr.ph.us62.preheader.new ], [ %.1.us67.1, %.lr.ph.us62 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5faiss9HeapArrayINS_4CMinIilEEE7reorderEv.omp_outlined:bb.a
  %i.bb = icmp eq i32 %i.aa, %i.ak
  %i.bc = icmp slt i64 %i.ac, %i.am
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i
  %.sink79.i.i = phi i32 [ %i.at, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %i.ak, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.aw, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %i.am, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.af, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %i.ae, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.062.i.i
  store i32 %.sink79.i.i, ptr %i.be, align 4, !tbaa !31
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bf, align 8, !tbaa !30
  %i.bg = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = icmp ugt i64 %i.bg, %i.y
  br i1 %i.bi, label %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !147

_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i, %bb.f, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load i32, ptr %i.z, align 4, !tbaa !31
  %.pre69.i.i = load i64, ptr %i.ab, align 8, !tbaa !30
  br label %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i, %bb.d
  %i.bj = phi i64 [ %i.ac, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %i.bk = phi i32 [ %i.aa, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMinIilE4cmp2Eiill.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.lcssa.i.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.lcssa.i.i
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !30
  %i.bn = xor i64 %.041.i, -1
  %i.bo = add i64 %i.o, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bo
  store i32 %i.w, ptr %i.bp, align 4, !tbaa !31
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bo
  store i64 %i.x, ptr %i.bq, align 8, !tbaa !30
  %.not.i = icmp ne i64 %i.x, -1
  %i.br = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.br         ; 2 uses
  %i.bs = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !148

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMinIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.bu = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.bv, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.by, i64 %i.bz, i1 false)
  %i.ca = icmp ult i64 %.0.lcssa.i, %i.o
  br i1 %i.ca, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.cb = sub nuw i64 %i.o, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <2 x i32> splat (i32 -2147483648), ptr %i.ce, align 4, !tbaa !31
  store <2 x i32> splat (i32 -2147483648), ptr %i.cf, align 4, !tbaa !31
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cd ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.cg, align 8, !tbaa !30
  store <2 x i64> splat (i64 -1), ptr %i.ch, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !149

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader26

.lr.ph44.i.preheader26:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader26, %.lr.ph44.i
  %.242.i = phi i64 [ %i.cl, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader26 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.242.i
  store i32 -2147483648, ptr %i.cj, align 4, !tbaa !31
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.242.i
  store i64 -1, ptr %i.ck, align 8, !tbaa !30
  %i.cl = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cl, %i.o
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !150

_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  %i.cm = add nsw i64 %.013, 1
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.not = icmp slt i64 %.013, %i.cn
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12heap_reorderINS_4CMinIilEEEEmmPNT_1TEPNS3_2TIE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5faiss9HeapArrayINS_4CMinIilEEE16per_line_extremaEPiPl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  store ptr %2, ptr %i.b, align 8, !tbaa !41
  %i.e = load i64, ptr %0, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69
  %i.h = mul i64 %i.g, %i.e
  %i.i = icmp ugt i64 %i.h, 100000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK5faiss9HeapArrayINS_4CMinIilEEE16per_line_extremaEPiPl.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !31
  call void @_ZNK5faiss9HeapArrayINS_4CMinIilEEE16per_line_extremaEPiPl.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr nonnull %0, ptr %i.a, ptr %i.b) #3
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss9HeapArrayINS_4CMinIilEEE16per_line_extremaEPiPl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !71     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i64 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i64 1, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 4 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !30
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 12 uses
  %.not44 = icmp sgt i64 %i.k, %i.j
  br i1 %.not44, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !61     ; 7 uses
  %.not37 = icmp eq ptr %i.o, null                ; 4 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !41     ; 5 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %.lr.ph47.split.us, label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47
  %i.q = load i64, ptr %i.n, align 8, !tbaa !69   ; 6 uses
  %.not82 = icmp eq i64 %i.q, 0
  br i1 %.not82, label %.lr.ph47.split.us.split, label %.lr.ph47.split.us.split.us

.lr.ph47.split.us.split.us:                       ; preds = %.lr.ph47.split.us
  br i1 %.not37, label %._crit_edge48, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph47.split.us.split.us
  %smax = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k)
  %min.iters.check = icmp ult i64 %i.q, 8
  %n.vec = and i64 %i.q, -8                       ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %.03345.us.us = phi i64 [ %i.ad, %._crit_edge.us.us ], [ %i.k, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.r = mul i64 %i.q, %.03345.us.us
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.r ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.body ], [ splat (i32 2147483647), %.lr.ph.us.us ]
  %vec.phi122 = phi <4 x i32> [ %i.w, %vector.body ], [ splat (i32 2147483647), %.lr.ph.us.us ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !31
  %wide.load123 = load <4 x i32>, ptr %i.u, align 4, !tbaa !31
  %i.v = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.w = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load123, <4 x i32> %vec.phi122) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !151

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.v, <4 x i32> %i.w)
  %i.y = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %.042.us.us.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec, %middle.block ]
  %.03041.us.us.ph = phi i32 [ 2147483647, %.lr.ph.us.us ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.042.us.us = phi i64 [ %i.ab, %scalar.ph ], [ %.042.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.03041.us.us = phi i32 [ %spec.select39.us.us, %scalar.ph ], [ %.03041.us.us.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.042.us.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %spec.select39.us.us = call i32 @llvm.smin.i32(i32 %i.aa, i32 %.03041.us.us) ; 2 uses
  %i.ab = add nuw i64 %.042.us.us, 1              ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.q
  br i1 %exitcond92.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !152

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %spec.select39.us.us.lcssa = phi i32 [ %i.y, %middle.block ], [ %spec.select39.us.us, %scalar.ph ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03345.us.us
  store i32 %spec.select39.us.us.lcssa, ptr %i.ac, align 4, !tbaa !31
  %i.ad = add i64 %.03345.us.us, 1
  %exitcond93.not = icmp eq i64 %.03345.us.us, %smax
  br i1 %exitcond93.not, label %._crit_edge48, label %.lr.ph.us.us

.lr.ph47.split.us.split:                          ; preds = %.lr.ph47.split.us
  br i1 %.not37, label %._crit_edge48, label %.lr.ph47.split.us.split.split.preheader

.lr.ph47.split.us.split.split.preheader:          ; preds = %.lr.ph47.split.us.split
  %smax94 = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %i.ae = add i64 %smax94, 1
  %i.af = sub i64 %i.ae, %i.k                     ; 3 uses
  %min.iters.check125 = icmp ult i64 %i.af, 8
  br i1 %min.iters.check125, label %.lr.ph47.split.us.split.split.preheader134, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph47.split.us.split.split.preheader
  %n.vec127 = and i64 %i.af, -8                   ; 3 uses
  %i.ag = add i64 %i.k, %n.vec127
  %i.ah = getelementptr [4 x i8], ptr %i.o, i64 %i.k
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index129 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> splat (i32 2147483647), ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> splat (i32 2147483647), ptr %i.aj, align 4, !tbaa !31
  %index.next130 = add nuw i64 %index129, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.ak, label %middle.block131, label %vector.body128, !llvm.loop !153

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i64 %i.af, %n.vec127
  br i1 %cmp.n132, label %._crit_edge48, label %.lr.ph47.split.us.split.split.preheader134

.lr.ph47.split.us.split.split.preheader134:       ; preds = %.lr.ph47.split.us.split.split.preheader, %middle.block131
  %.03345.us.ph = phi i64 [ %i.k, %.lr.ph47.split.us.split.split.preheader ], [ %i.ag, %middle.block131 ]
  br label %.lr.ph47.split.us.split.split

.lr.ph47.split.us.split.split:                    ; preds = %.lr.ph47.split.us.split.split.preheader134, %.lr.ph47.split.us.split.split
  %.03345.us = phi i64 [ %i.am, %.lr.ph47.split.us.split.split ], [ %.03345.us.ph, %.lr.ph47.split.us.split.split.preheader134 ] ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03345.us
  store i32 2147483647, ptr %i.al, align 4, !tbaa !31
  %i.am = add i64 %.03345.us, 1
  %exitcond95.not = icmp eq i64 %.03345.us, %smax94
  br i1 %exitcond95.not, label %._crit_edge48, label %.lr.ph47.split.us.split.split, !llvm.loop !154

.lr.ph47.split:                                   ; preds = %.lr.ph47
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !70
  %.fr75 = freeze ptr %i.ao                       ; 3 uses
  %.not76 = icmp eq ptr %.fr75, null
  br i1 %.not76, label %.lr.ph47.split.split.us, label %.lr.ph47.split.split

.lr.ph47.split.split.us:                          ; preds = %.lr.ph47.split
  br i1 %.not37, label %.lr.ph47.split.split.us.split.us, label %.lr.ph47.split.split.us.split

.lr.ph47.split.split.us.split.us:                 ; preds = %.lr.ph47.split.split.us, %._crit_edge.us56.us
  %.03345.us49.us = phi i64 [ %i.bo, %._crit_edge.us56.us ], [ %i.k, %.lr.ph47.split.split.us ] ; 4 uses
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !69  ; 5 uses
  %i.aq = mul i64 %i.ap, %.03345.us49.us
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq ; 5 uses
  %.not78 = icmp eq i64 %i.ap, 0
  br i1 %.not78, label %._crit_edge.us56.us, label %.lr.ph.us50.us.preheader

.lr.ph.us50.us.preheader:                         ; preds = %.lr.ph47.split.split.us.split.us
  %xtraiter160 = and i64 %i.ap, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ap, 4
  br i1 %i.as, label %.lr.ph.us50.us.epil.preheader, label %.lr.ph.us50.us.preheader.new

.lr.ph.us50.us.preheader.new:                     ; preds = %.lr.ph.us50.us.preheader
  %unroll_iter165 = and i64 %i.ap, -4
  br label %.lr.ph.us50.us

.lr.ph.us50.us:                                   ; preds = %.lr.ph.us50.us, %.lr.ph.us50.us.preheader.new
  %.042.us51.us = phi i64 [ 0, %.lr.ph.us50.us.preheader.new ], [ %i.bi, %.lr.ph.us50.us ] ; 6 uses
  %.03041.us52.us = phi i32 [ 2147483647, %.lr.ph.us50.us.preheader.new ], [ %spec.select39.us55.us.3, %.lr.ph.us50.us ] ; 2 uses
  %.03140.us53.us = phi i64 [ -1, %.lr.ph.us50.us.preheader.new ], [ %spec.select.us54.us.3, %.lr.ph.us50.us ]
  %niter166 = phi i64 [ 0, %.lr.ph.us50.us.preheader.new ], [ %niter166.next.3, %.lr.ph.us50.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.042.us51.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31 ; 2 uses
  %i.av = icmp slt i32 %i.au, %.03041.us52.us
  %spec.select.us54.us = select i1 %i.av, i64 %.042.us51.us, i64 %.03140.us53.us
  %spec.select39.us55.us = call i32 @llvm.smin.i32(i32 %i.au, i32 %.03041.us52.us) ; 2 uses
  %i.aw = or disjoint i64 %.042.us51.us, 1        ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !31 ; 2 uses
  %i.az = icmp slt i32 %i.ay, %spec.select39.us55.us
  %spec.select.us54.us.1 = select i1 %i.az, i64 %i.aw, i64 %spec.select.us54.us
  %spec.select39.us55.us.1 = call i32 @llvm.smin.i32(i32 %i.ay, i32 %spec.select39.us55.us) ; 2 uses
  %i.ba = or disjoint i64 %.042.us51.us, 2        ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, %spec.select39.us55.us.1
  %spec.select.us54.us.2 = select i1 %i.bd, i64 %i.ba, i64 %spec.select.us54.us.1
  %spec.select39.us55.us.2 = call i32 @llvm.smin.i32(i32 %i.bc, i32 %spec.select39.us55.us.1) ; 2 uses
  %i.be = or disjoint i64 %.042.us51.us, 3        ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !31 ; 2 uses
  %i.bh = icmp slt i32 %i.bg, %spec.select39.us55.us.2
  %spec.select.us54.us.3 = select i1 %i.bh, i64 %i.be, i64 %spec.select.us54.us.2 ; 3 uses
  %spec.select39.us55.us.3 = call i32 @llvm.smin.i32(i32 %i.bg, i32 %spec.select39.us55.us.2) ; 2 uses
  %i.bi = add nuw i64 %.042.us51.us, 4            ; 2 uses
  %niter166.next.3 = add nuw i64 %niter166, 4     ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %._crit_edge.us56.us.loopexit.unr-lcssa, label %.lr.ph.us50.us, !llvm.loop !155

._crit_edge.us56.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.us50.us
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod162.not, label %._crit_edge.us56.us, label %.lr.ph.us50.us.epil.preheader

.lr.ph.us50.us.epil.preheader:                    ; preds = %._crit_edge.us56.us.loopexit.unr-lcssa, %.lr.ph.us50.us.preheader
  %.042.us51.us.epil.init = phi i64 [ 0, %.lr.ph.us50.us.preheader ], [ %i.bi, %._crit_edge.us56.us.loopexit.unr-lcssa ]
  %.03041.us52.us.epil.init = phi i32 [ 2147483647, %.lr.ph.us50.us.preheader ], [ %spec.select39.us55.us.3, %._crit_edge.us56.us.loopexit.unr-lcssa ]
  %.03140.us53.us.epil.init = phi i64 [ -1, %.lr.ph.us50.us.preheader ], [ %spec.select.us54.us.3, %._crit_edge.us56.us.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter160, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.us50.us.epil

.lr.ph.us50.us.epil:                              ; preds = %.lr.ph.us50.us.epil, %.lr.ph.us50.us.epil.preheader
  %.042.us51.us.epil = phi i64 [ %i.bm, %.lr.ph.us50.us.epil ], [ %.042.us51.us.epil.init, %.lr.ph.us50.us.epil.preheader ] ; 3 uses
  %.03041.us52.us.epil = phi i32 [ %spec.select39.us55.us.epil, %.lr.ph.us50.us.epil ], [ %.03041.us52.us.epil.init, %.lr.ph.us50.us.epil.preheader ] ; 2 uses
  %.03140.us53.us.epil = phi i64 [ %spec.select.us54.us.epil, %.lr.ph.us50.us.epil ], [ %.03140.us53.us.epil.init, %.lr.ph.us50.us.epil.preheader ]
  %epil.iter161 = phi i64 [ %epil.iter161.next, %.lr.ph.us50.us.epil ], [ 0, %.lr.ph.us50.us.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.042.us51.us.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31 ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %.03041.us52.us.epil
  %spec.select.us54.us.epil = select i1 %i.bl, i64 %.042.us51.us.epil, i64 %.03140.us53.us.epil ; 2 uses
  %spec.select39.us55.us.epil = call i32 @llvm.smin.i32(i32 %i.bk, i32 %.03041.us52.us.epil)
  %i.bm = add nuw i64 %.042.us51.us.epil, 1
  %epil.iter161.next = add i64 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i64 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %._crit_edge.us56.us, label %.lr.ph.us50.us.epil, !llvm.loop !156

._crit_edge.us56.us:                              ; preds = %._crit_edge.us56.us.loopexit.unr-lcssa, %.lr.ph.us50.us.epil, %.lr.ph47.split.split.us.split.us
  %.031.lcssa.us59.us = phi i64 [ -1, %.lr.ph47.split.split.us.split.us ], [ %spec.select.us54.us.3, %._crit_edge.us56.us.loopexit.unr-lcssa ], [ %spec.select.us54.us.epil, %.lr.ph.us50.us.epil ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.03345.us49.us
  store i64 %.031.lcssa.us59.us, ptr %i.bn, align 8, !tbaa !30
  %i.bo = add nsw i64 %.03345.us49.us, 1
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.us61.us.not = icmp slt i64 %.03345.us49.us, %i.bp
  br i1 %.not.us61.us.not, label %.lr.ph47.split.split.us.split.us, label %._crit_edge48

.lr.ph47.split.split.us.split:                    ; preds = %.lr.ph47.split.split.us, %._crit_edge.us56
  %.03345.us49 = phi i64 [ %i.cq, %._crit_edge.us56 ], [ %i.k, %.lr.ph47.split.split.us ] ; 5 uses
  %i.bq = load i64, ptr %i.n, align 8, !tbaa !69  ; 5 uses
  %i.br = mul i64 %i.bq, %.03345.us49
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.br ; 5 uses
  %.not77 = icmp eq i64 %i.bq, 0
  br i1 %.not77, label %._crit_edge.us56, label %.lr.ph.us50.preheader

.lr.ph.us50.preheader:                            ; preds = %.lr.ph47.split.split.us.split
  %xtraiter152 = and i64 %i.bq, 3                 ; 3 uses
  %i.bt = icmp ult i64 %i.bq, 4
  br i1 %i.bt, label %.lr.ph.us50.epil.preheader, label %.lr.ph.us50.preheader.new

.lr.ph.us50.preheader.new:                        ; preds = %.lr.ph.us50.preheader
  %unroll_iter158 = and i64 %i.bq, -4
  br label %.lr.ph.us50

.lr.ph.us50:                                      ; preds = %.lr.ph.us50, %.lr.ph.us50.preheader.new
  %.042.us51 = phi i64 [ 0, %.lr.ph.us50.preheader.new ], [ %i.cj, %.lr.ph.us50 ] ; 6 uses
  %.03041.us52 = phi i32 [ 2147483647, %.lr.ph.us50.preheader.new ], [ %spec.select39.us55.3, %.lr.ph.us50 ] ; 2 uses
  %.03140.us53 = phi i64 [ -1, %.lr.ph.us50.preheader.new ], [ %spec.select.us54.3, %.lr.ph.us50 ]
  %niter159 = phi i64 [ 0, %.lr.ph.us50.preheader.new ], [ %niter159.next.3, %.lr.ph.us50 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.042.us51
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %.03041.us52
  %spec.select.us54 = select i1 %i.bw, i64 %.042.us51, i64 %.03140.us53
  %spec.select39.us55 = call i32 @llvm.smin.i32(i32 %i.bv, i32 %.03041.us52) ; 2 uses
  %i.bx = or disjoint i64 %.042.us51, 1           ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !31 ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %spec.select39.us55
  %spec.select.us54.1 = select i1 %i.ca, i64 %i.bx, i64 %spec.select.us54
  %spec.select39.us55.1 = call i32 @llvm.smin.i32(i32 %i.bz, i32 %spec.select39.us55) ; 2 uses
  %i.cb = or disjoint i64 %.042.us51, 2           ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !31 ; 2 uses
  %i.ce = icmp slt i32 %i.cd, %spec.select39.us55.1
  %spec.select.us54.2 = select i1 %i.ce, i64 %i.cb, i64 %spec.select.us54.1
  %spec.select39.us55.2 = call i32 @llvm.smin.i32(i32 %i.cd, i32 %spec.select39.us55.1) ; 2 uses
  %i.cf = or disjoint i64 %.042.us51, 3           ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !31 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, %spec.select39.us55.2
  %spec.select.us54.3 = select i1 %i.ci, i64 %i.cf, i64 %spec.select.us54.2 ; 3 uses
  %spec.select39.us55.3 = call i32 @llvm.smin.i32(i32 %i.ch, i32 %spec.select39.us55.2) ; 3 uses
  %i.cj = add nuw i64 %.042.us51, 4               ; 2 uses
  %niter159.next.3 = add nuw i64 %niter159, 4     ; 2 uses
  %niter159.ncmp.3 = icmp eq i64 %niter159.next.3, %unroll_iter158
  br i1 %niter159.ncmp.3, label %._crit_edge.us56.loopexit.unr-lcssa, label %.lr.ph.us50, !llvm.loop !155

._crit_edge.us56.loopexit.unr-lcssa:              ; preds = %.lr.ph.us50
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %._crit_edge.us56, label %.lr.ph.us50.epil.preheader

.lr.ph.us50.epil.preheader:                       ; preds = %._crit_edge.us56.loopexit.unr-lcssa, %.lr.ph.us50.preheader
  %.042.us51.epil.init = phi i64 [ 0, %.lr.ph.us50.preheader ], [ %i.cj, %._crit_edge.us56.loopexit.unr-lcssa ]
  %.03041.us52.epil.init = phi i32 [ 2147483647, %.lr.ph.us50.preheader ], [ %spec.select39.us55.3, %._crit_edge.us56.loopexit.unr-lcssa ]
  %.03140.us53.epil.init = phi i64 [ -1, %.lr.ph.us50.preheader ], [ %spec.select.us54.3, %._crit_edge.us56.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter152, 0
  call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph.us50.epil

.lr.ph.us50.epil:                                 ; preds = %.lr.ph.us50.epil, %.lr.ph.us50.epil.preheader
  %.042.us51.epil = phi i64 [ %i.cn, %.lr.ph.us50.epil ], [ %.042.us51.epil.init, %.lr.ph.us50.epil.preheader ] ; 3 uses
  %.03041.us52.epil = phi i32 [ %spec.select39.us55.epil, %.lr.ph.us50.epil ], [ %.03041.us52.epil.init, %.lr.ph.us50.epil.preheader ] ; 2 uses
  %.03140.us53.epil = phi i64 [ %spec.select.us54.epil, %.lr.ph.us50.epil ], [ %.03140.us53.epil.init, %.lr.ph.us50.epil.preheader ]
  %epil.iter153 = phi i64 [ %epil.iter153.next, %.lr.ph.us50.epil ], [ 0, %.lr.ph.us50.epil.preheader ]
end_hunk_2
begin_hunk_3_@_ZN5faiss9HeapArrayINS_4CMaxIilEEE7reorderEv.omp_outlined:bb.a
  %i.bb = icmp eq i32 %i.aa, %i.ak
  %i.bc = icmp sgt i64 %i.ac, %i.am
  %i.bd = and i1 %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i
  %.sink79.i.i = phi i32 [ %i.at, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %i.ak, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ]
  %.sink.i.i = phi i64 [ %i.aw, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %i.am, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ]
  %.1.i.i = phi i64 [ %i.af, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %i.ae, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ] ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.062.i.i
  store i32 %.sink79.i.i, ptr %i.be, align 4, !tbaa !31
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.062.i.i
  store i64 %.sink.i.i, ptr %i.bf, align 8, !tbaa !30
  %i.bg = shl i64 %.1.i.i, 1                      ; 3 uses
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = icmp ugt i64 %i.bg, %i.y
  br i1 %i.bi, label %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !169

_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i: ; preds = %bb.g, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i, %bb.f, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i
  %.0.lcssa.ph.i.i = phi i64 [ %.1.i.i, %bb.g ], [ %.062.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit61.i.i ], [ %.062.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit.thread.i.i ], [ %.062.i.i, %bb.f ]
  %.pre68.i.i = load i32, ptr %i.z, align 4, !tbaa !31
  %.pre69.i.i = load i64, ptr %i.ab, align 8, !tbaa !30
  br label %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i

_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i: ; preds = %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i, %bb.d
  %i.bj = phi i64 [ %i.ac, %bb.d ], [ %.pre69.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %i.bk = phi i32 [ %i.aa, %bb.d ], [ %.pre68.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i ]
  %.0.lcssa.i.i = phi i64 [ 1, %bb.d ], [ %.0.lcssa.ph.i.i, %_ZN5faiss4CMaxIilE4cmp2Eiill.exit60.thread.loopexit.i.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.0.lcssa.i.i
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.0.lcssa.i.i
  store i64 %i.bj, ptr %i.bm, align 8, !tbaa !30
  %i.bn = xor i64 %.041.i, -1
  %i.bo = add i64 %i.o, %i.bn                     ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bo
  store i32 %i.w, ptr %i.bp, align 4, !tbaa !31
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.bo
  store i64 %i.x, ptr %i.bq, align 8, !tbaa !30
  %.not.i = icmp ne i64 %i.x, -1
  %i.br = zext i1 %.not.i to i64
  %spec.select.i = add i64 %.041.i, %i.br         ; 2 uses
  %i.bs = add nuw i64 %.03740.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bs, %i.o
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !170

._crit_edge.i:                                    ; preds = %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %spec.select.i, %_ZN5faiss8heap_popINS_4CMaxIilEEEEvmPNT_1TEPNS3_2TIE.exit.i ] ; 8 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.bu = sub i64 0, %.0.lcssa.i                  ; 2 uses
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = shl i64 %.0.lcssa.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.r, ptr align 4 %i.bv, i64 %i.bw, i1 false)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.bu
  %i.bz = shl i64 %.0.lcssa.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr align 8 %i.by, i64 %i.bz, i1 false)
  %i.ca = icmp ult i64 %.0.lcssa.i, %i.o
  br i1 %i.ca, label %.lr.ph44.i.preheader, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit

.lr.ph44.i.preheader:                             ; preds = %._crit_edge.i
  %i.cb = sub nuw i64 %i.o, %.0.lcssa.i           ; 3 uses
  %min.iters.check = icmp ult i64 %i.cb, 4
  br i1 %min.iters.check, label %.lr.ph44.i.preheader26, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.preheader
  %n.vec = and i64 %i.cb, -4                      ; 3 uses
  %i.cc = add i64 %.0.lcssa.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cd = add nuw i64 %.0.lcssa.i, %index         ; 2 uses
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store <2 x i32> splat (i32 2147483647), ptr %i.ce, align 4, !tbaa !31
  store <2 x i32> splat (i32 2147483647), ptr %i.cf, align 4, !tbaa !31
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.cd ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.cg, align 8, !tbaa !30
  store <2 x i64> splat (i64 -1), ptr %i.ch, align 8, !tbaa !30
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i.preheader26

.lr.ph44.i.preheader26:                           ; preds = %.lr.ph44.i.preheader, %middle.block
  %.242.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph44.i.preheader ], [ %i.cc, %middle.block ]
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %.lr.ph44.i.preheader26, %.lr.ph44.i
  %.242.i = phi i64 [ %i.cl, %.lr.ph44.i ], [ %.242.i.ph, %.lr.ph44.i.preheader26 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.242.i
  store i32 2147483647, ptr %i.cj, align 4, !tbaa !31
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.242.i
  store i64 -1, ptr %i.ck, align 8, !tbaa !30
  %i.cl = add nuw i64 %.242.i, 1                  ; 2 uses
  %exitcond47.not.i = icmp eq i64 %i.cl, %i.o
  br i1 %exitcond47.not.i, label %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit, label %.lr.ph44.i, !llvm.loop !172

_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit: ; preds = %.lr.ph44.i, %middle.block, %._crit_edge.i
  %i.cm = add nsw i64 %.013, 1
  %i.cn = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.not = icmp slt i64 %.013, %i.cn
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5faiss12heap_reorderINS_4CMaxIilEEEEmmPNT_1TEPNS3_2TIE.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr void @_ZNK5faiss9HeapArrayINS_4CMaxIilEEE16per_line_extremaEPiPl(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !61
  store ptr %2, ptr %i.b, align 8, !tbaa !41
  %i.e = load i64, ptr %0, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !74
  %i.h = mul i64 %i.g, %i.e
  %i.i = icmp ugt i64 %i.h, 100000
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK5faiss9HeapArrayINS_4CMaxIilEEE16per_line_extremaEPiPl.omp_outlined, ptr nonnull %0, ptr nonnull %i.a, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.d)
  store i32 %i.d, ptr %i.c, align 4, !tbaa !31
  call void @_ZNK5faiss9HeapArrayINS_4CMaxIilEEE16per_line_extremaEPiPl.omp_outlined(ptr nonnull %i.c, ptr nonnull poison, ptr nonnull %0, ptr %i.a, ptr %i.b) #3
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZNK5faiss9HeapArrayINS_4CMaxIilEEE16per_line_extremaEPiPl.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4) #6 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !76     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i64 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store i64 1, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 4 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !30
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 12 uses
  %.not44 = icmp sgt i64 %i.k, %i.j
  br i1 %.not44, label %._crit_edge48, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !73   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !61     ; 7 uses
  %.not37 = icmp eq ptr %i.o, null                ; 4 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !41     ; 5 uses
  %.not38 = icmp eq ptr %i.p, null
  br i1 %.not38, label %.lr.ph47.split.us, label %.lr.ph47.split

.lr.ph47.split.us:                                ; preds = %.lr.ph47
  %i.q = load i64, ptr %i.n, align 8, !tbaa !74   ; 6 uses
  %.not82 = icmp eq i64 %i.q, 0
  br i1 %.not82, label %.lr.ph47.split.us.split, label %.lr.ph47.split.us.split.us

.lr.ph47.split.us.split.us:                       ; preds = %.lr.ph47.split.us
  br i1 %.not37, label %._crit_edge48, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph47.split.us.split.us
  %smax = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k)
  %min.iters.check = icmp ult i64 %i.q, 8
  %n.vec = and i64 %i.q, -8                       ; 3 uses
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %.03345.us.us = phi i64 [ %i.ad, %._crit_edge.us.us ], [ %i.k, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.r = mul i64 %i.q, %.03345.us.us
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.r ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.v, %vector.body ], [ splat (i32 -2147483648), %.lr.ph.us.us ]
  %vec.phi122 = phi <4 x i32> [ %i.w, %vector.body ], [ splat (i32 -2147483648), %.lr.ph.us.us ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %wide.load = load <4 x i32>, ptr %i.t, align 4, !tbaa !31
  %wide.load123 = load <4 x i32>, ptr %i.u, align 4, !tbaa !31
  %i.v = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi) ; 2 uses
  %i.w = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load123, <4 x i32> %vec.phi122) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.v, <4 x i32> %i.w)
  %i.y = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %.042.us.us.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec, %middle.block ]
  %.03041.us.us.ph = phi i32 [ -2147483648, %.lr.ph.us.us ], [ %i.y, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.042.us.us = phi i64 [ %i.ab, %scalar.ph ], [ %.042.us.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.03041.us.us = phi i32 [ %spec.select39.us.us, %scalar.ph ], [ %.03041.us.us.ph, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %.042.us.us
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %spec.select39.us.us = call i32 @llvm.smax.i32(i32 %i.aa, i32 %.03041.us.us) ; 2 uses
  %i.ab = add nuw i64 %.042.us.us, 1              ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ab, %i.q
  br i1 %exitcond92.not, label %._crit_edge.us.us, label %scalar.ph, !llvm.loop !174

._crit_edge.us.us:                                ; preds = %scalar.ph, %middle.block
  %spec.select39.us.us.lcssa = phi i32 [ %i.y, %middle.block ], [ %spec.select39.us.us, %scalar.ph ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03345.us.us
  store i32 %spec.select39.us.us.lcssa, ptr %i.ac, align 4, !tbaa !31
  %i.ad = add i64 %.03345.us.us, 1
  %exitcond93.not = icmp eq i64 %.03345.us.us, %smax
  br i1 %exitcond93.not, label %._crit_edge48, label %.lr.ph.us.us

.lr.ph47.split.us.split:                          ; preds = %.lr.ph47.split.us
  br i1 %.not37, label %._crit_edge48, label %.lr.ph47.split.us.split.split.preheader

.lr.ph47.split.us.split.split.preheader:          ; preds = %.lr.ph47.split.us.split
  %smax94 = call i64 @llvm.smax.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %i.ae = add i64 %smax94, 1
  %i.af = sub i64 %i.ae, %i.k                     ; 3 uses
  %min.iters.check125 = icmp ult i64 %i.af, 8
  br i1 %min.iters.check125, label %.lr.ph47.split.us.split.split.preheader134, label %vector.ph126

vector.ph126:                                     ; preds = %.lr.ph47.split.us.split.split.preheader
  %n.vec127 = and i64 %i.af, -8                   ; 3 uses
  %i.ag = add i64 %i.k, %n.vec127
  %i.ah = getelementptr [4 x i8], ptr %i.o, i64 %i.k
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next130, %vector.body128 ] ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.ah, i64 %index129 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> splat (i32 -2147483648), ptr %i.ai, align 4, !tbaa !31
  store <4 x i32> splat (i32 -2147483648), ptr %i.aj, align 4, !tbaa !31
  %index.next130 = add nuw i64 %index129, 8       ; 2 uses
  %i.ak = icmp eq i64 %index.next130, %n.vec127
  br i1 %i.ak, label %middle.block131, label %vector.body128, !llvm.loop !175

middle.block131:                                  ; preds = %vector.body128
  %cmp.n132 = icmp eq i64 %i.af, %n.vec127
  br i1 %cmp.n132, label %._crit_edge48, label %.lr.ph47.split.us.split.split.preheader134

.lr.ph47.split.us.split.split.preheader134:       ; preds = %.lr.ph47.split.us.split.split.preheader, %middle.block131
  %.03345.us.ph = phi i64 [ %i.k, %.lr.ph47.split.us.split.split.preheader ], [ %i.ag, %middle.block131 ]
  br label %.lr.ph47.split.us.split.split

.lr.ph47.split.us.split.split:                    ; preds = %.lr.ph47.split.us.split.split.preheader134, %.lr.ph47.split.us.split.split
  %.03345.us = phi i64 [ %i.am, %.lr.ph47.split.us.split.split ], [ %.03345.us.ph, %.lr.ph47.split.us.split.split.preheader134 ] ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.o, i64 %.03345.us
  store i32 -2147483648, ptr %i.al, align 4, !tbaa !31
  %i.am = add i64 %.03345.us, 1
  %exitcond95.not = icmp eq i64 %.03345.us, %smax94
  br i1 %exitcond95.not, label %._crit_edge48, label %.lr.ph47.split.us.split.split, !llvm.loop !176

.lr.ph47.split:                                   ; preds = %.lr.ph47
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !75
  %.fr75 = freeze ptr %i.ao                       ; 3 uses
  %.not76 = icmp eq ptr %.fr75, null
  br i1 %.not76, label %.lr.ph47.split.split.us, label %.lr.ph47.split.split

.lr.ph47.split.split.us:                          ; preds = %.lr.ph47.split
  br i1 %.not37, label %.lr.ph47.split.split.us.split.us, label %.lr.ph47.split.split.us.split

.lr.ph47.split.split.us.split.us:                 ; preds = %.lr.ph47.split.split.us, %._crit_edge.us56.us
  %.03345.us49.us = phi i64 [ %i.bo, %._crit_edge.us56.us ], [ %i.k, %.lr.ph47.split.split.us ] ; 4 uses
  %i.ap = load i64, ptr %i.n, align 8, !tbaa !74  ; 5 uses
  %i.aq = mul i64 %i.ap, %.03345.us49.us
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.aq ; 5 uses
  %.not78 = icmp eq i64 %i.ap, 0
  br i1 %.not78, label %._crit_edge.us56.us, label %.lr.ph.us50.us.preheader

.lr.ph.us50.us.preheader:                         ; preds = %.lr.ph47.split.split.us.split.us
  %xtraiter160 = and i64 %i.ap, 3                 ; 3 uses
  %i.as = icmp ult i64 %i.ap, 4
  br i1 %i.as, label %.lr.ph.us50.us.epil.preheader, label %.lr.ph.us50.us.preheader.new

.lr.ph.us50.us.preheader.new:                     ; preds = %.lr.ph.us50.us.preheader
  %unroll_iter165 = and i64 %i.ap, -4
  br label %.lr.ph.us50.us

.lr.ph.us50.us:                                   ; preds = %.lr.ph.us50.us, %.lr.ph.us50.us.preheader.new
  %.042.us51.us = phi i64 [ 0, %.lr.ph.us50.us.preheader.new ], [ %i.bi, %.lr.ph.us50.us ] ; 6 uses
  %.03041.us52.us = phi i32 [ -2147483648, %.lr.ph.us50.us.preheader.new ], [ %spec.select39.us55.us.3, %.lr.ph.us50.us ] ; 2 uses
  %.03140.us53.us = phi i64 [ -1, %.lr.ph.us50.us.preheader.new ], [ %spec.select.us54.us.3, %.lr.ph.us50.us ]
  %niter166 = phi i64 [ 0, %.lr.ph.us50.us.preheader.new ], [ %niter166.next.3, %.lr.ph.us50.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.042.us51.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31 ; 2 uses
  %i.av = icmp sgt i32 %i.au, %.03041.us52.us
  %spec.select.us54.us = select i1 %i.av, i64 %.042.us51.us, i64 %.03140.us53.us
  %spec.select39.us55.us = call i32 @llvm.smax.i32(i32 %i.au, i32 %.03041.us52.us) ; 2 uses
  %i.aw = or disjoint i64 %.042.us51.us, 1        ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !31 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, %spec.select39.us55.us
  %spec.select.us54.us.1 = select i1 %i.az, i64 %i.aw, i64 %spec.select.us54.us
  %spec.select39.us55.us.1 = call i32 @llvm.smax.i32(i32 %i.ay, i32 %spec.select39.us55.us) ; 2 uses
  %i.ba = or disjoint i64 %.042.us51.us, 2        ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !31 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, %spec.select39.us55.us.1
  %spec.select.us54.us.2 = select i1 %i.bd, i64 %i.ba, i64 %spec.select.us54.us.1
  %spec.select39.us55.us.2 = call i32 @llvm.smax.i32(i32 %i.bc, i32 %spec.select39.us55.us.1) ; 2 uses
  %i.be = or disjoint i64 %.042.us51.us, 3        ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !31 ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, %spec.select39.us55.us.2
  %spec.select.us54.us.3 = select i1 %i.bh, i64 %i.be, i64 %spec.select.us54.us.2 ; 3 uses
  %spec.select39.us55.us.3 = call i32 @llvm.smax.i32(i32 %i.bg, i32 %spec.select39.us55.us.2) ; 2 uses
  %i.bi = add nuw i64 %.042.us51.us, 4            ; 2 uses
  %niter166.next.3 = add nuw i64 %niter166, 4     ; 2 uses
  %niter166.ncmp.3 = icmp eq i64 %niter166.next.3, %unroll_iter165
  br i1 %niter166.ncmp.3, label %._crit_edge.us56.us.loopexit.unr-lcssa, label %.lr.ph.us50.us, !llvm.loop !177

._crit_edge.us56.us.loopexit.unr-lcssa:           ; preds = %.lr.ph.us50.us
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod162.not, label %._crit_edge.us56.us, label %.lr.ph.us50.us.epil.preheader

.lr.ph.us50.us.epil.preheader:                    ; preds = %._crit_edge.us56.us.loopexit.unr-lcssa, %.lr.ph.us50.us.preheader
  %.042.us51.us.epil.init = phi i64 [ 0, %.lr.ph.us50.us.preheader ], [ %i.bi, %._crit_edge.us56.us.loopexit.unr-lcssa ]
  %.03041.us52.us.epil.init = phi i32 [ -2147483648, %.lr.ph.us50.us.preheader ], [ %spec.select39.us55.us.3, %._crit_edge.us56.us.loopexit.unr-lcssa ]
  %.03140.us53.us.epil.init = phi i64 [ -1, %.lr.ph.us50.us.preheader ], [ %spec.select.us54.us.3, %._crit_edge.us56.us.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter160, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.us50.us.epil

.lr.ph.us50.us.epil:                              ; preds = %.lr.ph.us50.us.epil, %.lr.ph.us50.us.epil.preheader
  %.042.us51.us.epil = phi i64 [ %i.bm, %.lr.ph.us50.us.epil ], [ %.042.us51.us.epil.init, %.lr.ph.us50.us.epil.preheader ] ; 3 uses
  %.03041.us52.us.epil = phi i32 [ %spec.select39.us55.us.epil, %.lr.ph.us50.us.epil ], [ %.03041.us52.us.epil.init, %.lr.ph.us50.us.epil.preheader ] ; 2 uses
  %.03140.us53.us.epil = phi i64 [ %spec.select.us54.us.epil, %.lr.ph.us50.us.epil ], [ %.03140.us53.us.epil.init, %.lr.ph.us50.us.epil.preheader ]
  %epil.iter161 = phi i64 [ %epil.iter161.next, %.lr.ph.us50.us.epil ], [ 0, %.lr.ph.us50.us.epil.preheader ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %.042.us51.us.epil
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, %.03041.us52.us.epil
  %spec.select.us54.us.epil = select i1 %i.bl, i64 %.042.us51.us.epil, i64 %.03140.us53.us.epil ; 2 uses
  %spec.select39.us55.us.epil = call i32 @llvm.smax.i32(i32 %i.bk, i32 %.03041.us52.us.epil)
  %i.bm = add nuw i64 %.042.us51.us.epil, 1
  %epil.iter161.next = add i64 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i64 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %._crit_edge.us56.us, label %.lr.ph.us50.us.epil, !llvm.loop !178

._crit_edge.us56.us:                              ; preds = %._crit_edge.us56.us.loopexit.unr-lcssa, %.lr.ph.us50.us.epil, %.lr.ph47.split.split.us.split.us
  %.031.lcssa.us59.us = phi i64 [ -1, %.lr.ph47.split.split.us.split.us ], [ %spec.select.us54.us.3, %._crit_edge.us56.us.loopexit.unr-lcssa ], [ %spec.select.us54.us.epil, %.lr.ph.us50.us.epil ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.03345.us49.us
  store i64 %.031.lcssa.us59.us, ptr %i.bn, align 8, !tbaa !30
  %i.bo = add nsw i64 %.03345.us49.us, 1
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.us61.us.not = icmp slt i64 %.03345.us49.us, %i.bp
  br i1 %.not.us61.us.not, label %.lr.ph47.split.split.us.split.us, label %._crit_edge48

.lr.ph47.split.split.us.split:                    ; preds = %.lr.ph47.split.split.us, %._crit_edge.us56
  %.03345.us49 = phi i64 [ %i.cq, %._crit_edge.us56 ], [ %i.k, %.lr.ph47.split.split.us ] ; 5 uses
  %i.bq = load i64, ptr %i.n, align 8, !tbaa !74  ; 5 uses
  %i.br = mul i64 %i.bq, %.03345.us49
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.br ; 5 uses
  %.not77 = icmp eq i64 %i.bq, 0
  br i1 %.not77, label %._crit_edge.us56, label %.lr.ph.us50.preheader

.lr.ph.us50.preheader:                            ; preds = %.lr.ph47.split.split.us.split
  %xtraiter152 = and i64 %i.bq, 3                 ; 3 uses
  %i.bt = icmp ult i64 %i.bq, 4
  br i1 %i.bt, label %.lr.ph.us50.epil.preheader, label %.lr.ph.us50.preheader.new

.lr.ph.us50.preheader.new:                        ; preds = %.lr.ph.us50.preheader
  %unroll_iter158 = and i64 %i.bq, -4
  br label %.lr.ph.us50

.lr.ph.us50:                                      ; preds = %.lr.ph.us50, %.lr.ph.us50.preheader.new
  %.042.us51 = phi i64 [ 0, %.lr.ph.us50.preheader.new ], [ %i.cj, %.lr.ph.us50 ] ; 6 uses
  %.03041.us52 = phi i32 [ -2147483648, %.lr.ph.us50.preheader.new ], [ %spec.select39.us55.3, %.lr.ph.us50 ] ; 2 uses
  %.03140.us53 = phi i64 [ -1, %.lr.ph.us50.preheader.new ], [ %spec.select.us54.3, %.lr.ph.us50 ]
  %niter159 = phi i64 [ 0, %.lr.ph.us50.preheader.new ], [ %niter159.next.3, %.lr.ph.us50 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.042.us51
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !31 ; 2 uses
  %i.bw = icmp sgt i32 %i.bv, %.03041.us52
  %spec.select.us54 = select i1 %i.bw, i64 %.042.us51, i64 %.03140.us53
  %spec.select39.us55 = call i32 @llvm.smax.i32(i32 %i.bv, i32 %.03041.us52) ; 2 uses
  %i.bx = or disjoint i64 %.042.us51, 1           ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !31 ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, %spec.select39.us55
  %spec.select.us54.1 = select i1 %i.ca, i64 %i.bx, i64 %spec.select.us54
  %spec.select39.us55.1 = call i32 @llvm.smax.i32(i32 %i.bz, i32 %spec.select39.us55) ; 2 uses
  %i.cb = or disjoint i64 %.042.us51, 2           ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !31 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, %spec.select39.us55.1
  %spec.select.us54.2 = select i1 %i.ce, i64 %i.cb, i64 %spec.select.us54.1
  %spec.select39.us55.2 = call i32 @llvm.smax.i32(i32 %i.cd, i32 %spec.select39.us55.1) ; 2 uses
  %i.cf = or disjoint i64 %.042.us51, 3           ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !31 ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, %spec.select39.us55.2
  %spec.select.us54.3 = select i1 %i.ci, i64 %i.cf, i64 %spec.select.us54.2 ; 3 uses
  %spec.select39.us55.3 = call i32 @llvm.smax.i32(i32 %i.ch, i32 %spec.select39.us55.2) ; 3 uses
  %i.cj = add nuw i64 %.042.us51, 4               ; 2 uses
  %niter159.next.3 = add nuw i64 %niter159, 4     ; 2 uses
  %niter159.ncmp.3 = icmp eq i64 %niter159.next.3, %unroll_iter158
  br i1 %niter159.ncmp.3, label %._crit_edge.us56.loopexit.unr-lcssa, label %.lr.ph.us50, !llvm.loop !177

._crit_edge.us56.loopexit.unr-lcssa:              ; preds = %.lr.ph.us50
  %lcmp.mod154.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod154.not, label %._crit_edge.us56, label %.lr.ph.us50.epil.preheader

.lr.ph.us50.epil.preheader:                       ; preds = %._crit_edge.us56.loopexit.unr-lcssa, %.lr.ph.us50.preheader
  %.042.us51.epil.init = phi i64 [ 0, %.lr.ph.us50.preheader ], [ %i.cj, %._crit_edge.us56.loopexit.unr-lcssa ]
  %.03041.us52.epil.init = phi i32 [ -2147483648, %.lr.ph.us50.preheader ], [ %spec.select39.us55.3, %._crit_edge.us56.loopexit.unr-lcssa ]
  %.03140.us53.epil.init = phi i64 [ -1, %.lr.ph.us50.preheader ], [ %spec.select.us54.3, %._crit_edge.us56.loopexit.unr-lcssa ]
  %lcmp.mod157 = icmp ne i64 %xtraiter152, 0
  call void @llvm.assume(i1 %lcmp.mod157)
  br label %.lr.ph.us50.epil

.lr.ph.us50.epil:                                 ; preds = %.lr.ph.us50.epil, %.lr.ph.us50.epil.preheader
  %.042.us51.epil = phi i64 [ %i.cn, %.lr.ph.us50.epil ], [ %.042.us51.epil.init, %.lr.ph.us50.epil.preheader ] ; 3 uses
  %.03041.us52.epil = phi i32 [ %spec.select39.us55.epil, %.lr.ph.us50.epil ], [ %.03041.us52.epil.init, %.lr.ph.us50.epil.preheader ] ; 2 uses
  %.03140.us53.epil = phi i64 [ %spec.select.us54.epil, %.lr.ph.us50.epil ], [ %.03140.us53.epil.init, %.lr.ph.us50.epil.preheader ]
  %epil.iter153 = phi i64 [ %epil.iter153.next, %.lr.ph.us50.epil ], [ 0, %.lr.ph.us50.epil.preheader ]
end_hunk_3
