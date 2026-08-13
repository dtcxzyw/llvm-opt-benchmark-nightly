inline.NumInlined: 608
inline.NumDeleted: 306
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK5faiss16ProductQuantizer10search_sdcEPKhmS2_mPNS_9HeapArrayINS_4CMaxIflEEEEb.omp_outlined:bb.a
  store i64 %i.hs, ptr %i.hv, align 8, !tbaa !88
  %i.hw = xor i64 %.03740.i.i, -1
  %i.hx = add i64 %i.gc, %i.hw                    ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.hx
  store float %i.gf, ptr %i.hy, align 4, !tbaa !36
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.hx
  store i64 %i.gg, ptr %i.hz, align 8, !tbaa !88
  %.not.i.i = icmp ne i64 %i.gg, -1
  %i.ia = zext i1 %.not.i.i to i64
  %spec.select.i.i = add i64 %.03740.i.i, %i.ia   ; 2 uses
  %i.ib = add nuw i64 %.041.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ib, %i.gc
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.n, !llvm.loop !186

._crit_edge.i.i:                                  ; preds = %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i, %bb.m
  %.037.lcssa.i.i = phi i64 [ 0, %bb.m ], [ %spec.select.i.i, %_ZN5faiss8heap_popINS_4CMaxIflEEEEvmPNT_1TEPNS3_2TIE.exit.i.i ] ; 8 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.gc
  %i.id = sub i64 0, %.037.lcssa.i.i              ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.id
  %i.if = shl i64 %.037.lcssa.i.i, 2
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ae, ptr align 4 %i.ie, i64 %i.if, i1 false)
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.gc
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.id
  %i.ii = shl i64 %.037.lcssa.i.i, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.ih, i64 %i.ii, i1 false)
  %i.ij = icmp ult i64 %.037.lcssa.i.i, %i.gc
  br i1 %i.ij, label %.lr.ph44.i.i.preheader, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit

.lr.ph44.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.ik = sub nuw i64 %i.gc, %.037.lcssa.i.i      ; 3 uses
  %min.iters.check = icmp ult i64 %i.ik, 4
  br i1 %min.iters.check, label %.lr.ph44.i.i.preheader114, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i.i.preheader
  %n.vec = and i64 %i.ik, -4                      ; 3 uses
  %i.il = add i64 %.037.lcssa.i.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.im = add nuw i64 %.037.lcssa.i.i, %index     ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.im ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.in, align 4, !tbaa !36
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.io, align 4, !tbaa !36
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.im ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  store <2 x i64> splat (i64 -1), ptr %i.ip, align 8, !tbaa !88
  store <2 x i64> splat (i64 -1), ptr %i.iq, align 8, !tbaa !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %middle.block, label %vector.body, !llvm.loop !239

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ik, %n.vec
  br i1 %cmp.n, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i.preheader114

.lr.ph44.i.i.preheader114:                        ; preds = %.lr.ph44.i.i.preheader, %middle.block
  %.242.i.i.ph = phi i64 [ %.037.lcssa.i.i, %.lr.ph44.i.i.preheader ], [ %i.il, %middle.block ]
  br label %.lr.ph44.i.i

.lr.ph44.i.i:                                     ; preds = %.lr.ph44.i.i.preheader114, %.lr.ph44.i.i
  %.242.i.i = phi i64 [ %i.iu, %.lr.ph44.i.i ], [ %.242.i.i.ph, %.lr.ph44.i.i.preheader114 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %.242.i.i
  store float f0x7F7FFFFF, ptr %i.is, align 4, !tbaa !36
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.242.i.i
  store i64 -1, ptr %i.it, align 8, !tbaa !88
  %i.iu = add nuw i64 %.242.i.i, 1                ; 2 uses
  %exitcond47.not.i.i = icmp eq i64 %i.iu, %i.gc
  br i1 %exitcond47.not.i.i, label %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, label %.lr.ph44.i.i, !llvm.loop !240

_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit:       ; preds = %.lr.ph44.i.i, %middle.block, %._crit_edge.i.i, %._crit_edge66
  %i.iv = add nsw i64 %.05168, 1
  %i.iw = load i64, ptr %i.b, align 8, !tbaa !88
  %.not.not = icmp slt i64 %.05168, %i.iw
  br i1 %.not.not, label %bb.e, label %._crit_edge71

._crit_edge71:                                    ; preds = %_ZN5faiss15maxheap_reorderIfEEmmPT_Pl.exit, %bb.d
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %.pre76)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge71, %_ZNSt6vectorIPKfSaIS1_EEC2EmRKS2_.exit
  call void @__kmpc_barrier(ptr nonnull @3, i32 %.pre76)
  %.not.i.i.i = icmp eq ptr %.sroa.054.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKfSaIS1_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ix = ptrtoint ptr %.sroa.9.0 to i64
  %i.iy = ptrtoint ptr %.sroa.054.0 to i64
  %i.iz = sub i64 %i.ix, %i.iy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.054.0, i64 noundef %i.iz) #29
  br label %_ZNSt6vectorIPKfSaIS1_EED2Ev.exit

_ZNSt6vectorIPKfSaIS1_EED2Ev.exit:                ; preds = %bb.r, %bb.s
  ret void

bb.t:                                             ; preds = %bb.c, %bb.b
  %i.ja = landingpad { ptr, i32 }
          catch ptr null
  %i.jb = extractvalue { ptr, i32 } %i.ja, 0
  tail call void @__clang_call_terminate(ptr %i.jb) #31
  unreachable
}

; Function Attrs: convergent nounwind
declare void @__kmpc_barrier(ptr, i32) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss16ProductQuantizer25sync_transposed_centroidsEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  %i.f = mul i64 %i.e, %i.c                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 2 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 2                   ; 3 uses
  %i.n = icmp ugt i64 %i.f, %i.m
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = sub nuw i64 %i.f, %i.m
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o)
  %.pre = load i64, ptr %i.d, align 8, !tbaa !30
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.p = icmp ult i64 %i.f, %i.m
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.q
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.q, ptr %i.g, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.r = phi i64 [ %.pre, %bb.b ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28   ; 4 uses
  %i.v = mul i64 %i.u, %i.r                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33   ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !34   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2                 ; 3 uses
  %i.ad = icmp ugt i64 %i.v, %i.ac
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ae = sub nuw i64 %i.v, %i.ac
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.ae)
  %.pre40 = load i64, ptr %i.t, align 8, !tbaa !28
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit25

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.af = icmp ult i64 %i.v, %i.ac
  br i1 %i.af, label %bb.g, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit25

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.v ; 2 uses
  %.not.i.i23 = icmp eq ptr %i.x, %i.ag
  br i1 %.not.i.i23, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit25, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i24

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i24:      ; preds = %bb.g
  store ptr %i.ag, ptr %i.w, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit25

_ZNSt6vectorIfSaIfEE6resizeEm.exit25:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i24
  %i.ah = phi i64 [ %.pre40, %bb.e ], [ %i.u, %bb.f ], [ %i.u, %bb.g ], [ %i.u, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i24 ] ; 6 uses
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %._crit_edge.split, label %.preheader26.lr.ph

.preheader26.lr.ph:                               ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit25
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !30  ; 7 uses
  %.not35 = icmp eq i64 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %.not35, label %._crit_edge.split, label %.preheader26.lr.ph.split

.preheader26.lr.ph.split:                         ; preds = %.preheader26.lr.ph
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26 ; 6 uses
  %.not36 = icmp eq i64 %i.al, 0
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !34  ; 2 uses
  br i1 %.not36, label %.preheader26.lver.check, label %.preheader26.lr.ph.split.split.us

.preheader26.lr.ph.split.split.us:                ; preds = %.preheader26.lr.ph.split
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !34
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !34
  %xtraiter = and i64 %i.al, 1
  %i.ap = icmp eq i64 %i.al, 1
  %unroll_iter = and i64 %i.al, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod55 = trunc i64 %i.al to i1
  br label %.preheader26.us

.preheader26.us:                                  ; preds = %._crit_edge30.split.us.us, %.preheader26.lr.ph.split.split.us
  %.031.us = phi i64 [ 0, %.preheader26.lr.ph.split.split.us ], [ %i.br, %._crit_edge30.split.us.us ] ; 5 uses
  %i.aq = mul i64 %i.ai, %.031.us                 ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %i.am, i64 %i.aq
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us, %.preheader26.us
  %.02129.us.us = phi i64 [ 0, %.preheader26.us ], [ %i.bq, %._crit_edge.us.us ] ; 4 uses
  %i.as = add i64 %i.aq, %.02129.us.us
  %i.at = mul i64 %i.al, %i.as
  %i.au = getelementptr [4 x i8], ptr %i.an, i64 %i.at ; 3 uses
  %invariant.gep.us.us = getelementptr [4 x i8], ptr %i.ao, i64 %.02129.us.us ; 3 uses
  br i1 %i.ap, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %.01928.us.us = phi i64 [ %i.bi, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 4 uses
  %.02027.us.us = phi float [ %i.bh, %.preheader.us.us.new ], [ 0.000000e+00, %.preheader.us.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.av = getelementptr [4 x i8], ptr %i.au, i64 %.01928.us.us
  %i.aw = load float, ptr %i.av, align 4, !tbaa !36 ; 3 uses
  %i.ax = mul i64 %.01928.us.us, %i.ah
  %i.ay = add i64 %i.ax, %.031.us
  %i.az = mul i64 %i.ay, %i.ai
  %gep.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.az
  store float %i.aw, ptr %gep.us.us, align 4, !tbaa !36
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %.02027.us.us)
  %i.bb = or disjoint i64 %.01928.us.us, 1        ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.au, i64 %i.bb
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !36 ; 3 uses
  %i.be = mul i64 %i.bb, %i.ah
  %i.bf = add i64 %i.be, %.031.us
  %i.bg = mul i64 %i.bf, %i.ai
  %gep.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.bg
  store float %i.bd, ptr %gep.us.us.1, align 4, !tbaa !36
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bd, float %i.bd, float %i.ba) ; 3 uses
  %i.bi = add nuw i64 %.01928.us.us, 2            ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !241

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %.01928.us.us.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %i.bi, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.02027.us.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.us ], [ %i.bh, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.bj = getelementptr [4 x i8], ptr %i.au, i64 %.01928.us.us.epil.init
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !36 ; 3 uses
  %i.bl = mul i64 %.01928.us.us.epil.init, %i.ah
  %i.bm = add i64 %i.bl, %.031.us
  %i.bn = mul i64 %i.bm, %i.ai
  %gep.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.bn
  store float %i.bk, ptr %gep.us.us.epil, align 4, !tbaa !36
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %.02027.us.us.epil.init)
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.bh, %._crit_edge.us.us.unr-lcssa ], [ %i.bo, %.epil.preheader ]
  %i.bp = getelementptr [4 x i8], ptr %i.ar, i64 %.02129.us.us
  store float %.lcssa, ptr %i.bp, align 4, !tbaa !36
  %i.bq = add nuw i64 %.02129.us.us, 1            ; 2 uses
  %exitcond38.not = icmp eq i64 %i.bq, %i.ai
  br i1 %exitcond38.not, label %._crit_edge30.split.us.us, label %.preheader.us.us, !llvm.loop !242

._crit_edge30.split.us.us:                        ; preds = %._crit_edge.us.us
  %i.br = add nuw i64 %.031.us, 1                 ; 2 uses
  %exitcond39.not = icmp eq i64 %i.br, %i.ah
  br i1 %exitcond39.not, label %._crit_edge.split, label %.preheader26.us, !llvm.loop !243

.preheader26.lver.check:                          ; preds = %.preheader26.lr.ph.split
  %flatten.mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.ah, i64 %i.ai) ; 2 uses
  %flatten.tripcount = extractvalue { i64, i1 } %flatten.mul, 0 ; 2 uses
  %flatten.overflow = extractvalue { i64, i1 } %flatten.mul, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %flatten.tripcount, i64 1)
  %umax.sink = select i1 %flatten.overflow, i64 %flatten.tripcount, i64 %umax
  %1 = shl i64 %umax.sink, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.am, i8 0, i64 %1, i1 false), !tbaa !36
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge30.split.us.us, %.preheader26.lver.check, %.preheader26.lr.ph, %_ZNSt6vectorIfSaIfEE6resizeEm.exit25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss16ProductQuantizer26clear_transposed_centroidsEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE5clearEv.exit, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit

_ZNSt6vectorIfSaIfEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = icmp eq ptr %i.f, %i.b
  br i1 %i.g, label %_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit
  %i.h = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIfSaIfEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #21 ; 0 uses
  br label %_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit

_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit:       ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !34   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33
  %.not.i.i1 = icmp eq ptr %i.l, %i.j
  br i1 %.not.i.i1, label %_ZNSt6vectorIfSaIfEE5clearEv.exit3, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i2

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i2:       ; preds = %_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit
  store ptr %i.j, ptr %i.k, align 8, !tbaa !33
  br label %_ZNSt6vectorIfSaIfEE5clearEv.exit3

_ZNSt6vectorIfSaIfEE5clearEv.exit3:               ; preds = %_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35
  %i.o = icmp eq ptr %i.n, %i.j
  br i1 %i.o, label %_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit4, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit3
  %i.p = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIfSaIfEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.i) #21 ; 0 uses
  br label %_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit4

_ZNSt6vectorIfSaIfEE13shrink_to_fitEv.exit4:      ; preds = %_ZNSt6vectorIfSaIfEE5clearEv.exit3, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIfSaIfEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !84     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 7 uses
  %i.g = icmp ugt i64 %i.f, 9223372036854775804
  br i1 %i.g, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #30
          to label %.noexc.i unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i

.noexc.i:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr null, i64 %i.f
  br label %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit

_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28
          to label %.noexc5.i unwind label %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ; 6 uses

.noexc5.i:                                        ; preds = %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f ; 4 uses
  %i.k = icmp samesign ugt i64 %i.f, 4
  br i1 %i.k, label %bb.c, label %bb.d, !prof !244

bb.c:                                             ; preds = %.noexc5.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.i, ptr align 4 %i.a, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit

bb.d:                                             ; preds = %.noexc5.i
  %i.l = icmp eq i64 %i.f, 4
  br i1 %i.l, label %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit.thread, label %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit

_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit.thread: ; preds = %bb.d
  %i.m = load float, ptr %i.a, align 4, !tbaa !36
  store float %i.m, ptr %i.i, align 4, !tbaa !36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !35
  store ptr %i.i, ptr %0, align 8, !tbaa !34
  store ptr %i.j, ptr %i.b, align 8, !tbaa !33
  store ptr %i.j, ptr %i.n, align 8, !tbaa !35
  br label %bb.e

_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i:           ; preds = %bb.b, %_ZNSt12_Vector_baseIfSaIfEE11_M_allocateEm.exit.i.i
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %.09 = extractvalue { ptr, i32 } %i.p, 0
  %i.q = tail call ptr @__cxa_begin_catch(ptr %.09) #21 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.f

_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit: ; preds = %bb.d, %bb.c, %.thread.i.i
  %.sroa.12.0 = phi ptr [ %i.h, %.thread.i.i ], [ %i.j, %bb.c ], [ %i.j, %bb.d ] ; 2 uses
  %.sroa.012.0 = phi ptr [ null, %.thread.i.i ], [ %i.i, %bb.c ], [ %i.i, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !35
  store ptr %.sroa.012.0, ptr %0, align 8, !tbaa !34
  store ptr %.sroa.12.0, ptr %i.b, align 8, !tbaa !33
  store ptr %.sroa.12.0, ptr %i.r, align 8, !tbaa !35
  %.not.i.i.i10 = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit.thread, %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit
  %i.t = phi ptr [ %i.o, %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit.thread ], [ %i.s, %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit ]
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = sub i64 %i.u, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.v) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.e, %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i
  %.0 = phi i1 [ false, %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i ], [ true, %_ZNSt6vectorIfSaIfEEC2ISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPfS1_EEEvEET_S9_RKS0_.exit ], [ true, %bb.e ]
  ret i1 %.0

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIfSaIfEED2Ev.exit.i
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #31
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { convergent nounwind }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
end_hunk_0
