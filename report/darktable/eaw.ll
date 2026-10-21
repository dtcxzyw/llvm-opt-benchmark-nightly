Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/eaw?download=true
inline.NumInlined: 23
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@eaw_decompose_and_synthesize:bb.a
  br i1 %exitcond324.not, label %._crit_edge304, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @eaw_synthesize(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = load <4 x float>, ptr %3, align 4, !tbaa !12 ; 6 uses
  %i.b = load <4 x float>, ptr %4, align 4, !tbaa !12 ; 3 uses
  %i.c = sext i32 %5 to i64
  %i.d = sext i32 %6 to i64
  %i.e = mul nsw i64 %i.d, %i.c                   ; 5 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.g = shl i64 %.020.epil.init, 2               ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.j = load <4 x float>, ptr %i.i, align 4, !tbaa !12 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn <4 x float> %i.j, %i.a
  %i.l = fadd reassoc nsz arcp contract afn <4 x float> %i.j, %i.a
  %i.m = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.k, <4 x float> zeroinitializer)
  %i.o = fadd reassoc nsz arcp contract afn <4 x float> %i.n, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %i.b
  %i.q = load <4 x float>, ptr %i.h, align 4, !tbaa !12
  %i.r = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %i.h, align 4, !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  tail call void @llvm.x86.sse.sfence()
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = shl i64 %.020, 2                         ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.v = load <4 x float>, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %i.v, %i.a
  %i.x = fadd reassoc nsz arcp contract afn <4 x float> %i.v, %i.a
  %i.y = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> zeroinitializer)
  %i.z = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.w, <4 x float> zeroinitializer)
  %i.aa = fadd reassoc nsz arcp contract afn <4 x float> %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn <4 x float> %i.aa, %i.b
  %i.ac = load <4 x float>, ptr %i.t, align 4, !tbaa !12
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, %i.ac
  store <4 x float> %i.ad, ptr %i.t, align 4, !tbaa !12
  %i.ae = shl i64 %.020, 2
  %i.af = or disjoint i64 %i.ae, 4                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ai = load <4 x float>, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn <4 x float> %i.ai, %i.a
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.ai, %i.a
  %i.al = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ak, <4 x float> zeroinitializer)
  %i.am = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aj, <4 x float> zeroinitializer)
  %i.an = fadd reassoc nsz arcp contract afn <4 x float> %i.am, %i.al
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.b
  %i.ap = load <4 x float>, ptr %i.ag, align 4, !tbaa !12
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ao, %i.ap
  store <4 x float> %i.aq, ptr %i.ag, align 4, !tbaa !12
  %i.ar = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @eaw_dn_decompose(ptr noalias nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = shl nuw i32 1, %4                        ; 6 uses
  %i.b = shl i32 2, %4                            ; 6 uses
  %i.c = icmp sgt i32 %7, 0
  br i1 %i.c, label %.lr.ph288, label %.preheader

.lr.ph288:                                        ; preds = %bb.a
  %.not.i = icmp sgt i32 %7, %i.a
  %i.d = add nsw i32 %7, -1                       ; 3 uses
  %i.e = add nuw i32 %i.d, %i.a
  %i.f = sext i32 %6 to i64                       ; 3 uses
  %i.g = sext i32 %i.b to i64                     ; 2 uses
  %i.h = sub nsw i32 %7, %i.b
  %i.i = sub nsw i32 %6, %i.b                     ; 3 uses
  %i.j = shl nsw i64 %i.f, 2                      ; 2 uses
  %i.k = fmul reassoc nsz arcp contract afn float %5, 2.000000e-02 ; 3 uses
  %i.l = sext i32 %i.a to i64                     ; 2 uses
  %.idx236 = shl nsw i64 %i.l, 4                  ; 5 uses
  %i.m = add nsw i32 %6, -5
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.l, 2
  %i.p = mul i64 %i.o, %i.n
  %i.q = add nsw i32 %6, -1
  %i.r = sext i32 %i.i to i64
  %i.s = shl i32 -2, %4
  %i.t = shl nsw i32 -1, %4
  %broadcast.splatinsert563 = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat564 = shufflevector <8 x float> %broadcast.splatinsert563, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert561 = insertelement <8 x i64> poison, i64 %i.j, i64 0
  %broadcast.splat562 = shufflevector <8 x i64> %broadcast.splatinsert561, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat554 = shufflevector <8 x i32> %broadcast.splatinsert553, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.u = shl <8 x i32> <i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>, %broadcast.splat554
  %broadcast.splatinsert557 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat558 = shufflevector <8 x i32> %broadcast.splatinsert557, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <8 x i32> poison, i32 %i.d, i64 0
  %broadcast.splat560 = shufflevector <8 x i32> %broadcast.splatinsert559, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.v = insertelement <5 x float> poison, float %i.k, i64 0
  %i.w = shufflevector <5 x float> %i.v, <5 x float> poison, <5 x i32> zeroinitializer
  %broadcast.splatinsert538 = insertelement <8 x float> poison, float %i.k, i64 0
  %broadcast.splat539 = shufflevector <8 x float> %broadcast.splatinsert538, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.x = shl <8 x i32> <i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>, %broadcast.splat
  %broadcast.splatinsert528 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat529 = shufflevector <8 x i32> %broadcast.splatinsert528, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <8 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat531 = shufflevector <8 x i32> %broadcast.splatinsert530, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %.sroa.16.0 = phi nsz float [ 0.000000e+00, %bb.a ], [ %.sroa.16.7, %._crit_edge ]
  %.sroa.22.0 = phi nsz float [ 0.000000e+00, %bb.a ], [ %.sroa.22.7, %._crit_edge ]
  %i.y = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.pi, %._crit_edge ]
  store <2 x float> %i.y, ptr %3, align 4, !tbaa !12
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 4, !tbaa !12
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !12
  ret void

bb.b:                                             ; preds = %.lr.ph288, %._crit_edge
  %.0224286 = phi i32 [ 0, %.lr.ph288 ], [ %i.pk, %._crit_edge ] ; 6 uses
  %i.z = phi <2 x float> [ zeroinitializer, %.lr.ph288 ], [ %i.pi, %._crit_edge ] ; 2 uses
  %i.aa = phi <2 x float> [ zeroinitializer, %.lr.ph288 ], [ %i.pj, %._crit_edge ] ; 2 uses
  br i1 %.not.i, label %bb.c, label %dwt_interleave_rows.exit

bb.c:                                             ; preds = %bb.b
  %i.ab = sdiv i32 %i.e, %i.a                     ; 4 uses
  %i.ac = srem i32 %7, %i.a                       ; 3 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = mul nsw i32 %i.ac, %i.ab                ; 2 uses
  %i.af = icmp slt i32 %.0224286, %i.ae
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ag = sdiv i32 %.0224286, %i.ab
  %i.ah = srem i32 %.0224286, %i.ab
  %i.ai = shl i32 %i.ah, %4
  %i.aj = add nsw i32 %i.ai, %i.ag
  br label %dwt_interleave_rows.exit

bb.f:                                             ; preds = %bb.d
  %i.ak = sub nsw i32 %.0224286, %i.ae            ; 2 uses
  %i.al = add nsw i32 %i.ab, -1                   ; 2 uses
  %i.am = sdiv i32 %i.ak, %i.al
  %i.an = add nsw i32 %i.am, %i.ac
  %i.ao = srem i32 %i.ak, %i.al
  %i.ap = shl i32 %i.ao, %4
  %i.aq = add nsw i32 %i.an, %i.ap
  br label %dwt_interleave_rows.exit

dwt_interleave_rows.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %.1.i = phi i32 [ %.0224286, %bb.b ], [ %i.aj, %bb.e ], [ %i.aq, %bb.f ] ; 5 uses
  %i.ar = sext i32 %.1.i to i64                   ; 2 uses
  %i.as = shl nsw i64 %i.ar, 2
  %i.at = mul i64 %i.as, %i.f                     ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.at ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.ax = icmp uge i32 %.1.i, %i.b
  %.not = icmp ult i32 %.1.i, %i.h
  %or.cond = select i1 %i.ax, i1 %.not, i1 false
  %i.ay = select i1 %or.cond, i32 %i.b, i32 %i.i  ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph.preheader, label %.preheader242

.lr.ph.preheader:                                 ; preds = %dwt_interleave_rows.exit
  %wide.trip.count = zext nneg i32 %i.ay to i64
  %8 = shufflevector <2 x float> %i.z, <2 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert555 = insertelement <8 x i32> poison, i32 %.1.i, i64 0
  %broadcast.splat556 = shufflevector <8 x i32> %broadcast.splatinsert555, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.ba = add <8 x i32> %i.u, %broadcast.splat556 ; 2 uses
  %i.bb = icmp slt <8 x i32> %i.ba, %broadcast.splat558
  %i.bc = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ba, <8 x i32> zeroinitializer)
  %i.bd = select <8 x i1> %i.bb, <8 x i32> %i.bc, <8 x i32> %broadcast.splat560
  %i.be = zext nneg <8 x i32> %i.bd to <8 x i64>
  %i.bf = mul <8 x i64> %broadcast.splat562, %i.be
  %wide.gep566 = getelementptr [4 x i8], ptr %1, <8 x i64> %i.bf ; 5 uses
  br label %.lr.ph

.preheader242.loopexit:                           ; preds = %.lr.ph
  %9 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %10 = shufflevector <4 x float> %22, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %.preheader242

.preheader242:                                    ; preds = %.preheader242.loopexit, %dwt_interleave_rows.exit
  %.0221.lcssa = phi ptr [ %i.au, %dwt_interleave_rows.exit ], [ %i.ht, %.preheader242.loopexit ] ; 2 uses
  %.0216.lcssa = phi ptr [ %i.av, %dwt_interleave_rows.exit ], [ %i.hu, %.preheader242.loopexit ] ; 2 uses
  %.0213.lcssa = phi ptr [ %i.aw, %dwt_interleave_rows.exit ], [ %i.hv, %.preheader242.loopexit ] ; 2 uses
  %.0211.lcssa = phi i32 [ 0, %dwt_interleave_rows.exit ], [ %i.ay, %.preheader242.loopexit ] ; 3 uses
  %i.bg = phi <2 x float> [ %i.aa, %dwt_interleave_rows.exit ], [ %9, %.preheader242.loopexit ] ; 2 uses
  %i.bh = phi <2 x float> [ %i.z, %dwt_interleave_rows.exit ], [ %10, %.preheader242.loopexit ] ; 2 uses
  %i.bi = icmp slt i32 %.0211.lcssa, %i.i
  br i1 %i.bi, label %.lr.ph268, label %.preheader241

.lr.ph268:                                        ; preds = %.preheader242
  %i.bj = sub nsw i64 %i.ar, %i.g
  %i.bk = mul nsw i64 %i.bj, %i.f
  %i.bl = zext nneg i32 %.0211.lcssa to i64
  %invariant.op = sub i64 %i.bk, %i.g
  br label %bb.g

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0213251 = phi ptr [ %i.aw, %.lr.ph.preheader ], [ %i.hv, %.lr.ph ] ; 2 uses
  %.0216250 = phi ptr [ %i.av, %.lr.ph.preheader ], [ %i.hu, %.lr.ph ] ; 2 uses
  %.0221249 = phi ptr [ %i.au, %.lr.ph.preheader ], [ %i.ht, %.lr.ph ] ; 5 uses
  %11 = phi <4 x float> [ %8, %.lr.ph.preheader ], [ %22, %.lr.ph ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0221249, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %.0221249, i64 8
  %i.bo = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.bp = add nsw i32 %i.s, %i.bo
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 0)
  %i.bq = shl nuw nsw i32 %spec.store.select, 2
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = add nsw i32 %i.t, %i.bo
  %spec.store.select.1 = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %i.bt = shl nuw nsw i32 %spec.store.select.1, 2
  %i.bu = zext nneg i32 %i.bt to i64
  %gep.2.idx = shl i64 %indvars.iv, 4
  %i.bv = add nsw i32 %i.a, %i.bo
  %spec.store.select.3 = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0)
  %i.bw = shl nuw nsw i32 %spec.store.select.3, 2
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = add nsw i32 %i.b, %i.bo
  %spec.store.select.4 = tail call i32 @llvm.smax.i32(i32 %i.by, i32 0)
  %i.bz = shl nuw nsw i32 %spec.store.select.4, 2
  %i.ca = zext nneg i32 %i.bz to i64
  %wide.masked.gather568 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 20, i64 40, i64 60, i64 80, i64 100, i64 120, i64 140>), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.cb = load float, ptr %i.bm, align 4, !tbaa !12
  %broadcast.splatinsert549 = insertelement <8 x float> poison, float %i.cb, i64 0
  %broadcast.splat550 = shufflevector <8 x float> %broadcast.splatinsert549, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.gep567 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.br ; 4 uses
  %wide.gep570 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep567, i64 4
  %wide.masked.gather571 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep570, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.cc = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather571 ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn <8 x float> %i.cc, %i.cc
  %i.ce = load float, ptr %.0221249, align 4, !tbaa !12
  %broadcast.splatinsert547 = insertelement <8 x float> poison, float %i.ce, i64 0
  %broadcast.splat548 = shufflevector <8 x float> %broadcast.splatinsert547, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.masked.gather569 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep567, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.cf = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather569 ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn <8 x float> %i.cf, %i.cf
  %i.ch = fadd reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cg
  %i.ci = load float, ptr %i.bn, align 4, !tbaa !12
  %broadcast.splatinsert551 = insertelement <8 x float> poison, float %i.ci, i64 0
  %broadcast.splat552 = shufflevector <8 x float> %broadcast.splatinsert551, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.gep572 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep567, i64 8
  %wide.masked.gather573 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep572, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.cj = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather573 ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, %i.cj
  %i.cl = fadd reassoc nsz arcp contract afn <8 x float> %i.ch, %i.ck
  %i.cm = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.cl
  %i.cn = fadd reassoc nsz arcp contract afn <8 x float> %i.cm, splat (float -9.000000e+00) ; 2 uses
  %i.co = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cn, zeroinitializer
  %i.cp = select reassoc nsz arcp contract afn <8 x i1> %i.co, <8 x float> zeroinitializer, <8 x float> %i.cn
  %i.cq = fmul reassoc nsz arcp contract afn <8 x float> %i.cp, splat (float f0x4B000000)
  %i.cr = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.cq ; 2 uses
  %i.cs = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.cr, splat (float f0x4B000000)
  %i.ct = select reassoc nsz arcp contract afn <8 x i1> %i.cs, <8 x float> %i.cr, <8 x float> zeroinitializer
  %i.cu = fptosi <8 x float> %i.ct to <8 x i32>
  %i.cv = bitcast <8 x i32> %i.cu to <8 x float>
  %i.cw = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather568, %i.cv ; 5 uses
  %wide.masked.gather577 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 20, i64 40, i64 60, i64 80, i64 100, i64 120, i64 140>), <8 x i64> splat (i64 4)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %wide.gep576 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.bu ; 4 uses
  %wide.gep579 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep576, i64 4
  %wide.masked.gather580 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep579, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.cx = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather580 ; 2 uses
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %i.cx, %i.cx
  %wide.masked.gather578 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep576, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.cz = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather578 ; 2 uses
  %i.da = fmul reassoc nsz arcp contract afn <8 x float> %i.cz, %i.cz
  %i.db = fadd reassoc nsz arcp contract afn <8 x float> %i.cy, %i.da
  %wide.gep581 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep576, i64 8
  %wide.masked.gather582 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep581, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.dc = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather582 ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn <8 x float> %i.dc, %i.dc
  %i.de = fadd reassoc nsz arcp contract afn <8 x float> %i.db, %i.dd
  %i.df = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.de
  %i.dg = fadd reassoc nsz arcp contract afn <8 x float> %i.df, splat (float -9.000000e+00) ; 2 uses
  %i.dh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dg, zeroinitializer
  %i.di = select reassoc nsz arcp contract afn <8 x i1> %i.dh, <8 x float> zeroinitializer, <8 x float> %i.dg
  %i.dj = fmul reassoc nsz arcp contract afn <8 x float> %i.di, splat (float f0x4B000000)
  %i.dk = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.dj ; 2 uses
  %i.dl = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.dk, splat (float f0x4B000000)
  %i.dm = select reassoc nsz arcp contract afn <8 x i1> %i.dl, <8 x float> %i.dk, <8 x float> zeroinitializer
  %i.dn = fptosi <8 x float> %i.dm to <8 x i32>
  %i.do = bitcast <8 x i32> %i.dn to <8 x float>
  %i.dp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather577, %i.do ; 5 uses
  %i.dq = fadd reassoc nsz arcp contract afn <8 x float> %i.cw, %i.dp
  %wide.masked.gather586 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 20, i64 40, i64 60, i64 80, i64 100, i64 120, i64 140>), <8 x i64> splat (i64 8)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %wide.gep585 = getelementptr i8, <8 x ptr> %wide.gep566, i64 %gep.2.idx ; 4 uses
  %wide.gep588 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep585, i64 4
  %wide.masked.gather589 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep588, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.dr = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather589 ; 2 uses
  %i.ds = fmul reassoc nsz arcp contract afn <8 x float> %i.dr, %i.dr
  %wide.masked.gather587 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep585, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.dt = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather587 ; 2 uses
  %i.du = fmul reassoc nsz arcp contract afn <8 x float> %i.dt, %i.dt
  %i.dv = fadd reassoc nsz arcp contract afn <8 x float> %i.ds, %i.du
  %wide.gep590 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep585, i64 8
  %wide.masked.gather591 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep590, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.dw = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather591 ; 2 uses
  %i.dx = fmul reassoc nsz arcp contract afn <8 x float> %i.dw, %i.dw
  %i.dy = fadd reassoc nsz arcp contract afn <8 x float> %i.dv, %i.dx
  %i.dz = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.dy
  %i.ea = fadd reassoc nsz arcp contract afn <8 x float> %i.dz, splat (float -9.000000e+00) ; 2 uses
  %i.eb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ea, zeroinitializer
  %i.ec = select reassoc nsz arcp contract afn <8 x i1> %i.eb, <8 x float> zeroinitializer, <8 x float> %i.ea
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %i.ec, splat (float f0x4B000000)
  %i.ee = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.ed ; 2 uses
  %i.ef = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ee, splat (float f0x4B000000)
  %i.eg = select reassoc nsz arcp contract afn <8 x i1> %i.ef, <8 x float> %i.ee, <8 x float> zeroinitializer
  %i.eh = fptosi <8 x float> %i.eg to <8 x i32>
  %i.ei = bitcast <8 x i32> %i.eh to <8 x float>
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather586, %i.ei ; 5 uses
  %i.ek = fadd reassoc nsz arcp contract afn <8 x float> %i.dq, %i.ej
  %wide.masked.gather595 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 20, i64 40, i64 60, i64 80, i64 100, i64 120, i64 140>), <8 x i64> splat (i64 12)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %wide.gep594 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.bx ; 4 uses
  %wide.gep597 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep594, i64 4
  %wide.masked.gather598 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep597, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.el = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather598 ; 2 uses
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %i.el, %i.el
  %wide.masked.gather596 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep594, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.en = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather596 ; 2 uses
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %i.en, %i.en
  %i.ep = fadd reassoc nsz arcp contract afn <8 x float> %i.em, %i.eo
  %wide.gep599 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep594, i64 8
  %wide.masked.gather600 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep599, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.eq = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather600 ; 2 uses
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.eq, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn <8 x float> %i.ep, %i.er
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.es
  %i.eu = fadd reassoc nsz arcp contract afn <8 x float> %i.et, splat (float -9.000000e+00) ; 2 uses
  %i.ev = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.eu, zeroinitializer
  %i.ew = select reassoc nsz arcp contract afn <8 x i1> %i.ev, <8 x float> zeroinitializer, <8 x float> %i.eu
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.ew, splat (float f0x4B000000)
  %i.ey = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.ex ; 2 uses
  %i.ez = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ey, splat (float f0x4B000000)
  %i.fa = select reassoc nsz arcp contract afn <8 x i1> %i.ez, <8 x float> %i.ey, <8 x float> zeroinitializer
  %i.fb = fptosi <8 x float> %i.fa to <8 x i32>
  %i.fc = bitcast <8 x i32> %i.fb to <8 x float>
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather595, %i.fc ; 5 uses
  %i.fe = fadd reassoc nsz arcp contract afn <8 x float> %i.ek, %i.fd
  %wide.masked.gather604 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw (i8, ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 20, i64 40, i64 60, i64 80, i64 100, i64 120, i64 140>), <8 x i64> splat (i64 16)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %wide.gep603 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.ca ; 4 uses
  %wide.gep606 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep603, i64 4
  %wide.masked.gather607 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep606, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.ff = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather607 ; 2 uses
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.ff, %i.ff
  %wide.masked.gather605 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep603, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.fh = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather605 ; 2 uses
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.fh, %i.fh
  %i.fj = fadd reassoc nsz arcp contract afn <8 x float> %i.fg, %i.fi
  %wide.gep608 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep603, i64 8
  %wide.masked.gather609 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep608, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.fk = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather609 ; 2 uses
  %i.fl = fmul reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fk
  %i.fm = fadd reassoc nsz arcp contract afn <8 x float> %i.fj, %i.fl
  %i.fn = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.fm
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, splat (float -9.000000e+00) ; 2 uses
  %i.fp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fo, zeroinitializer
  %i.fq = select reassoc nsz arcp contract afn <8 x i1> %i.fp, <8 x float> zeroinitializer, <8 x float> %i.fo
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %i.fq, splat (float f0x4B000000)
  %i.fs = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.fr ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.fs, splat (float f0x4B000000)
  %i.fu = select reassoc nsz arcp contract afn <8 x i1> %i.ft, <8 x float> %i.fs, <8 x float> zeroinitializer
  %i.fv = fptosi <8 x float> %i.fu to <8 x i32>
  %i.fw = bitcast <8 x i32> %i.fv to <8 x float>
  %i.fx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather604, %i.fw ; 5 uses
  %i.fy = fadd reassoc nsz arcp contract afn <8 x float> %i.fe, %i.fx
  %i.fz = shufflevector <8 x float> %i.fy, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.ga = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.fz)
  %wide.gep574 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep567, i64 12
  %wide.masked.gather575 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep574, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.gb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather575, %i.cw
  %wide.gep583 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep576, i64 12
  %wide.masked.gather584 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep583, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather584, %i.dp
  %i.gd = fadd reassoc nsz arcp contract afn <8 x float> %i.gb, %i.gc
  %wide.gep592 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep585, i64 12
  %wide.masked.gather593 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep592, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather593, %i.ej
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %i.gd, %i.ge
  %wide.gep601 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep594, i64 12
  %wide.masked.gather602 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep601, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather602, %i.fd
  %i.gh = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %i.gg
  %wide.gep610 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep603, i64 12
  %wide.masked.gather611 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep610, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.gi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather611, %i.fx
  %i.gj = fadd reassoc nsz arcp contract afn <8 x float> %i.gh, %i.gi
  %i.gk = shufflevector <8 x float> %i.gj, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.gl = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gk)
  %i.gm = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather573, %i.cw
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather582, %i.dp
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gm, %i.gn
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather591, %i.ej
  %i.gq = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gp
  %i.gr = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather600, %i.fd
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %i.gr
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather609, %i.fx
  %i.gu = fadd reassoc nsz arcp contract afn <8 x float> %i.gs, %i.gt
  %i.gv = shufflevector <8 x float> %i.gu, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.gw = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gv)
  %i.gx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather571, %i.cw
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather580, %i.dp
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gx, %i.gy
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather589, %i.ej
  %i.hb = fadd reassoc nsz arcp contract afn <8 x float> %i.gz, %i.ha
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather598, %i.fd
  %i.hd = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %i.hc
  %i.he = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather607, %i.fx
  %i.hf = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, %i.he
  %i.hg = shufflevector <8 x float> %i.hf, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.hh = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.hg)
  %i.hi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather569, %i.cw
  %i.hj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather578, %i.dp
  %i.hk = fadd reassoc nsz arcp contract afn <8 x float> %i.hi, %i.hj
  %i.hl = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather587, %i.ej
  %i.hm = fadd reassoc nsz arcp contract afn <8 x float> %i.hk, %i.hl
  %i.hn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather596, %i.fd
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %i.hm, %i.hn
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather605, %i.fx
  %i.hq = fadd reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hp
  %i.hr = shufflevector <8 x float> %i.hq, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.hs = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.hr)
  %12 = insertelement <4 x float> poison, float %i.hs, i64 0
  %13 = insertelement <4 x float> %12, float %i.hh, i64 1
  %14 = insertelement <4 x float> %13, float %i.gw, i64 2
  %15 = insertelement <4 x float> %14, float %i.gl, i64 3
  %16 = insertelement <4 x float> poison, float %i.ga, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = fdiv reassoc nsz arcp contract afn <4 x float> %15, %17 ; 2 uses
  store <4 x float> %18, ptr %.0213251, align 4, !tbaa !12
  %19 = load <4 x float>, ptr %.0221249, align 4, !tbaa !12
  %20 = fsub reassoc nsz arcp contract afn <4 x float> %19, %18 ; 3 uses
  %21 = fmul reassoc nsz arcp contract afn <4 x float> %20, %20
  %22 = fadd reassoc nsz arcp contract afn <4 x float> %11, %21 ; 3 uses
  store <4 x float> %20, ptr %.0216250, align 16, !tbaa !13, !alias.scope !30, !nontemporal !14
  %i.ht = getelementptr inbounds nuw i8, ptr %.0221249, i64 16 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0216250, i64 16 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.0213251, i64 16 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond303.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond303.not, label %.preheader242.loopexit, label %.lr.ph

.preheader241.loopexit:                           ; preds = %bb.h
  %i.hw = trunc nuw nsw i64 %indvars.iv.next309 to i32
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader241.loopexit, %.preheader242
  %.1222.lcssa = phi ptr [ %i.lh, %.preheader241.loopexit ], [ %.0221.lcssa, %.preheader242 ]
  %.1217.lcssa = phi ptr [ %i.li, %.preheader241.loopexit ], [ %.0216.lcssa, %.preheader242 ]
  %.1214.lcssa = phi ptr [ %i.lj, %.preheader241.loopexit ], [ %.0213.lcssa, %.preheader242 ]
  %.1212.lcssa = phi i32 [ %i.hw, %.preheader241.loopexit ], [ %.0211.lcssa, %.preheader242 ] ; 2 uses
  %i.hx = phi <2 x float> [ %i.kz, %.preheader241.loopexit ], [ %i.bh, %.preheader242 ] ; 2 uses
  %i.hy = phi <2 x float> [ %i.lg, %.preheader241.loopexit ], [ %i.bg, %.preheader242 ] ; 3 uses
  %23 = extractelement <2 x float> %i.hy, i64 1   ; 2 uses
  %i.hz = extractelement <2 x float> %i.hy, i64 0 ; 2 uses
  %24 = icmp slt i32 %.1212.lcssa, %6
  br i1 %24, label %.lr.ph285, label %._crit_edge

bb.g:                                             ; preds = %.lr.ph268, %bb.h
  %indvars.iv308 = phi i64 [ %i.bl, %.lr.ph268 ], [ %indvars.iv.next309, %bb.h ] ; 2 uses
  %.1214266 = phi ptr [ %.0213.lcssa, %.lr.ph268 ], [ %i.lj, %bb.h ] ; 2 uses
  %.1217265 = phi ptr [ %.0216.lcssa, %.lr.ph268 ], [ %i.li, %bb.h ] ; 2 uses
  %.1222264 = phi ptr [ %.0221.lcssa, %.lr.ph268 ], [ %i.lh, %bb.h ] ; 5 uses
  %i.ia = phi <2 x float> [ %i.bg, %.lr.ph268 ], [ %i.lg, %bb.h ]
  %i.ib = phi <2 x float> [ %i.bh, %.lr.ph268 ], [ %i.kz, %bb.h ]
  %.reass = add i64 %indvars.iv308, %invariant.op
  %.idx = shl i64 %.reass, 4
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.id = load float, ptr %.1222264, align 4, !tbaa !12
  %i.ie = getelementptr inbounds nuw i8, ptr %.1222264, i64 4
  %i.if = load float, ptr %i.ie, align 4, !tbaa !12
  %i.ig = getelementptr inbounds nuw i8, ptr %.1222264, i64 8 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !12
  %25 = insertelement <5 x float> poison, float %i.if, i64 0
  %26 = shufflevector <5 x float> %25, <5 x float> poison, <5 x i32> zeroinitializer
  %27 = insertelement <5 x float> poison, float %i.id, i64 0
  %28 = shufflevector <5 x float> %27, <5 x float> poison, <5 x i32> zeroinitializer
  %29 = insertelement <5 x float> poison, float %i.ih, i64 0
  %30 = shufflevector <5 x float> %29, <5 x float> poison, <5 x i32> zeroinitializer
  br label %.preheader240

.preheader240:                                    ; preds = %bb.g, %.preheader240
  %.0202262 = phi i32 [ 0, %bb.g ], [ %i.ku, %.preheader240 ]
  %.0203261 = phi i64 [ 0, %bb.g ], [ %i.kr, %.preheader240 ] ; 2 uses
  %.0219260 = phi ptr [ %i.ic, %bb.g ], [ %i.kt, %.preheader240 ] ; 4 uses
  %i.ii = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.kq, %.preheader240 ]
  %i.ij = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.kp, %.preheader240 ]
  %i.ik = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.kn, %.preheader240 ]
  %i.il = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.km, %.preheader240 ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0203261
  %i.in = getelementptr inbounds nuw i8, ptr %.0219260, i64 4
  %i.io = getelementptr inbounds nuw i8, ptr %.0219260, i64 %.idx236 ; 4 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 %.idx236 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %31 = getelementptr inbounds nuw i8, ptr %i.iq, i64 %.idx236 ; 4 uses
  %i.is = getelementptr inbounds nuw i8, ptr %31, i64 4
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 %.idx236 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %32, i64 4
  %i.iu = load <2 x float>, ptr %.0219260, align 4, !tbaa !12 ; 3 uses
  %33 = load float, ptr %i.in, align 4, !tbaa !12
  %34 = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %31, i64 8
  %35 = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %36 = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %37 = getelementptr inbounds nuw i8, ptr %.0219260, i64 8
  %38 = load <2 x float>, ptr %37, align 4, !tbaa !12 ; 2 uses
  %39 = load <2 x float>, ptr %i.io, align 4, !tbaa !12 ; 3 uses
  %40 = load float, ptr %i.ip, align 4, !tbaa !12
  %41 = load <2 x float>, ptr %36, align 4, !tbaa !12 ; 2 uses
  %i.iw = load <2 x float>, ptr %i.iq, align 4, !tbaa !12 ; 2 uses
  %42 = load float, ptr %i.ir, align 4, !tbaa !12
  %43 = load <2 x float>, ptr %35, align 4, !tbaa !12 ; 2 uses
  %44 = load <2 x float>, ptr %31, align 4, !tbaa !12 ; 2 uses
  %45 = load float, ptr %i.is, align 4, !tbaa !12
  %46 = load <2 x float>, ptr %i.iv, align 4, !tbaa !12 ; 2 uses
  %47 = load <5 x float>, ptr %i.im, align 4, !tbaa !12
  %i.ix = load <2 x float>, ptr %32, align 4, !tbaa !12 ; 2 uses
  %48 = load float, ptr %i.it, align 4, !tbaa !12
  %49 = shufflevector <2 x float> %i.iu, <2 x float> %39, <5 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison>
  %50 = shufflevector <2 x float> %i.iw, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %51 = shufflevector <5 x float> %49, <5 x float> %50, <5 x i32> <i32 0, i32 1, i32 5, i32 poison, i32 poison>
  %52 = shufflevector <2 x float> %44, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %53 = shufflevector <5 x float> %51, <5 x float> %52, <5 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison>
  %54 = shufflevector <2 x float> %i.ix, <2 x float> poison, <5 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 2 uses
  %55 = shufflevector <5 x float> %53, <5 x float> %54, <5 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5>
  %56 = fsub reassoc nsz arcp contract afn <5 x float> %28, %55 ; 2 uses
  %57 = fmul reassoc nsz arcp contract afn <5 x float> %56, %56
  %58 = shufflevector <2 x float> %i.iu, <2 x float> %39, <5 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 poison>
  %59 = shufflevector <5 x float> %58, <5 x float> %50, <5 x i32> <i32 0, i32 1, i32 6, i32 poison, i32 poison>
  %60 = shufflevector <5 x float> %59, <5 x float> %52, <5 x i32> <i32 0, i32 1, i32 2, i32 6, i32 poison>
  %61 = shufflevector <5 x float> %60, <5 x float> %54, <5 x i32> <i32 0, i32 1, i32 2, i32 3, i32 6>
  %62 = fsub reassoc nsz arcp contract afn <5 x float> %26, %61 ; 2 uses
  %63 = fmul reassoc nsz arcp contract afn <5 x float> %62, %62
  %64 = load <2 x float>, ptr %34, align 4, !tbaa !12 ; 2 uses
  %65 = shufflevector <2 x float> %38, <2 x float> %41, <5 x i32> <i32 0, i32 2, i32 poison, i32 poison, i32 poison>
  %66 = shufflevector <2 x float> %43, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %67 = shufflevector <5 x float> %65, <5 x float> %66, <5 x i32> <i32 0, i32 1, i32 5, i32 poison, i32 poison>
  %68 = shufflevector <2 x float> %46, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.iy = shufflevector <5 x float> %67, <5 x float> %68, <5 x i32> <i32 0, i32 1, i32 2, i32 5, i32 poison>
  %69 = shufflevector <2 x float> %64, <2 x float> poison, <5 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %70 = shufflevector <5 x float> %i.iy, <5 x float> %69, <5 x i32> <i32 0, i32 1, i32 2, i32 3, i32 5>
  %71 = fsub reassoc nsz arcp contract afn <5 x float> %30, %70 ; 2 uses
  %i.iz = fmul reassoc nsz arcp contract afn <5 x float> %71, %71
  %i.ja = fadd reassoc nsz arcp contract afn <5 x float> %63, %57
  %i.jb = fadd reassoc nsz arcp contract afn <5 x float> %i.ja, %i.iz
  %i.jc = fmul reassoc nsz arcp contract afn <5 x float> %i.w, %i.jb
  %i.jd = fadd reassoc nsz arcp contract afn <5 x float> %i.jc, splat (float -9.000000e+00) ; 2 uses
  %i.je = fcmp reassoc nsz arcp contract afn olt <5 x float> %i.jd, zeroinitializer
  %i.jf = select <5 x i1> %i.je, <5 x float> zeroinitializer, <5 x float> %i.jd
  %i.jg = fmul reassoc nsz arcp contract afn <5 x float> %i.jf, splat (float f0x4B000000)
  %i.jh = fsub reassoc nsz arcp contract afn <5 x float> splat (float f0x4E7E0000), %i.jg ; 2 uses
  %i.ji = fcmp reassoc nsz arcp contract afn oge <5 x float> %i.jh, splat (float f0x4B000000)
  %i.jj = select <5 x i1> %i.ji, <5 x float> %i.jh, <5 x float> zeroinitializer
  %i.jk = fptosi <5 x float> %i.jj to <5 x i32>
  %i.jl = bitcast <5 x i32> %i.jk to <5 x float>
  %i.jm = fmul reassoc nsz arcp contract afn <5 x float> %47, %i.jl ; 5 uses
  %i.jn = shufflevector <5 x float> %i.jm, <5 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.jo = fadd reassoc nsz arcp contract afn <2 x float> %i.ij, %i.jn
  %i.jp = fmul reassoc nsz arcp contract afn <2 x float> %38, %i.jn
  %i.jq = fadd reassoc nsz arcp contract afn <2 x float> %i.ii, %i.jp
  %72 = shufflevector <5 x float> %i.jm, <5 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jr = fadd reassoc nsz arcp contract afn <2 x float> %i.jo, %72
  %i.js = fmul reassoc nsz arcp contract afn <2 x float> %41, %72
  %i.jt = fadd reassoc nsz arcp contract afn <2 x float> %i.jq, %i.js
  %73 = shufflevector <5 x float> %i.jm, <5 x float> poison, <2 x i32> <i32 2, i32 2> ; 4 uses
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.jr, %73
  %i.jv = fmul reassoc nsz arcp contract afn <2 x float> %43, %73
  %i.jw = fadd reassoc nsz arcp contract afn <2 x float> %i.jt, %i.jv
  %74 = shufflevector <5 x float> %i.jm, <5 x float> poison, <2 x i32> <i32 3, i32 3> ; 4 uses
  %i.jx = fadd reassoc nsz arcp contract afn <2 x float> %i.ju, %74
  %i.jy = fmul reassoc nsz arcp contract afn <2 x float> %46, %74
  %i.jz = fadd reassoc nsz arcp contract afn <2 x float> %i.jw, %i.jy
  %75 = fadd reassoc nsz arcp contract afn <2 x float> %i.il, %i.jn
  %76 = insertelement <2 x float> %i.iu, float %33, i64 1
  %i.ka = fmul reassoc nsz arcp contract afn <2 x float> %76, %i.jn
  %i.kb = fadd reassoc nsz arcp contract afn <2 x float> %i.ik, %i.ka
  %i.kc = fadd reassoc nsz arcp contract afn <2 x float> %75, %72
  %77 = insertelement <2 x float> %39, float %40, i64 1
  %i.kd = fmul reassoc nsz arcp contract afn <2 x float> %77, %72
  %i.ke = fadd reassoc nsz arcp contract afn <2 x float> %i.kb, %i.kd
  %78 = fadd reassoc nsz arcp contract afn <2 x float> %i.kc, %73
  %79 = insertelement <2 x float> %i.iw, float %42, i64 1
  %i.kf = fmul reassoc nsz arcp contract afn <2 x float> %79, %73
  %i.kg = fadd reassoc nsz arcp contract afn <2 x float> %i.ke, %i.kf
  %i.kh = fadd reassoc nsz arcp contract afn <2 x float> %78, %74
  %80 = insertelement <2 x float> %44, float %45, i64 1
  %i.ki = fmul reassoc nsz arcp contract afn <2 x float> %80, %74
  %i.kj = fadd reassoc nsz arcp contract afn <2 x float> %i.kg, %i.ki
  %81 = insertelement <2 x float> %i.ix, float %48, i64 1
  %i.kk = shufflevector <5 x float> %i.jm, <5 x float> poison, <2 x i32> <i32 4, i32 4> ; 4 uses
  %i.kl = fmul reassoc nsz arcp contract afn <2 x float> %81, %i.kk
  %i.km = fadd reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kk ; 2 uses
  %i.kn = fadd reassoc nsz arcp contract afn <2 x float> %i.kj, %i.kl ; 2 uses
  %i.ko = fmul reassoc nsz arcp contract afn <2 x float> %64, %i.kk
  %i.kp = fadd reassoc nsz arcp contract afn <2 x float> %i.jx, %i.kk ; 2 uses
  %i.kq = fadd reassoc nsz arcp contract afn <2 x float> %i.jz, %i.ko ; 2 uses
  %i.kr = add nuw nsw i64 %.0203261, 5
  %i.ks = getelementptr inbounds nuw i8, ptr %32, i64 %.idx236
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.p
  %i.ku = add nuw nsw i32 %.0202262, 1            ; 2 uses
  %exitcond306.not = icmp eq i32 %i.ku, 5
  br i1 %exitcond306.not, label %bb.h, label %.preheader240

bb.h:                                             ; preds = %.preheader240
  %i.kv = fdiv reassoc nsz arcp contract afn <2 x float> %i.kn, %i.km ; 2 uses
  %i.kw = load <2 x float>, ptr %.1222264, align 4, !tbaa !12
  %i.kx = fsub reassoc nsz arcp contract afn <2 x float> %i.kw, %i.kv ; 3 uses
  %i.ky = fmul reassoc nsz arcp contract afn <2 x float> %i.kx, %i.kx
  %i.kz = fadd reassoc nsz arcp contract afn <2 x float> %i.ib, %i.ky ; 2 uses
  %i.la = fdiv reassoc nsz arcp contract afn <2 x float> %i.kq, %i.kp ; 2 uses
  %i.lb = shufflevector <2 x float> %i.kv, <2 x float> %i.la, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.lb, ptr %.1214266, align 4, !tbaa !12
  %i.lc = load <2 x float>, ptr %i.ig, align 4, !tbaa !12
  %i.ld = fsub reassoc nsz arcp contract afn <2 x float> %i.lc, %i.la ; 3 uses
  %i.le = fmul reassoc nsz arcp contract afn <2 x float> %i.ld, %i.ld
  %i.lf = shufflevector <2 x float> %i.kx, <2 x float> %i.ld, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.lg = fadd reassoc nsz arcp contract afn <2 x float> %i.ia, %i.le ; 2 uses
  store <4 x float> %i.lf, ptr %.1217265, align 16, !tbaa !13, !alias.scope !31, !nontemporal !14
  %i.lh = getelementptr inbounds nuw i8, ptr %.1222264, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.1217265, i64 16 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.1214266, i64 16 ; 2 uses
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 3 uses
  %i.lk = icmp slt i64 %indvars.iv.next309, %i.r
  br i1 %i.lk, label %bb.g, label %.preheader241.loopexit

.lr.ph285:                                        ; preds = %.preheader241, %bb.i
  %.sroa.16.6 = phi nsz float [ %i.mh, %bb.i ], [ %i.hz, %.preheader241 ]
  %.sroa.22.6 = phi nsz float [ %i.mo, %bb.i ], [ %23, %.preheader241 ]
  %.2284 = phi i32 [ %i.ms, %bb.i ], [ %.1212.lcssa, %.preheader241 ] ; 2 uses
  %.2215283 = phi ptr [ %i.mr, %bb.i ], [ %.1214.lcssa, %.preheader241 ] ; 4 uses
  %.2218282 = phi ptr [ %i.mq, %bb.i ], [ %.1217.lcssa, %.preheader241 ] ; 2 uses
  %.2223281 = phi ptr [ %i.mp, %bb.i ], [ %.1222.lcssa, %.preheader241 ] ; 4 uses
  %i.ll = phi <2 x float> [ %i.mc, %bb.i ], [ %i.hx, %.preheader241 ]
  %i.lm = getelementptr inbounds nuw i8, ptr %.2223281, i64 8
  %i.ln = load <2 x float>, ptr %.2223281, align 4, !tbaa !12 ; 3 uses
  %.pre433 = load float, ptr %i.lm, align 4, !tbaa !12 ; 2 uses
  %broadcast.splat535 = shufflevector <2 x float> %i.ln, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert526 = insertelement <8 x i32> poison, i32 %.2284, i64 0
  %broadcast.splat527 = shufflevector <8 x i32> %broadcast.splatinsert526, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.lo = add nsw <8 x i32> %i.x, %broadcast.splat527 ; 2 uses
  %i.lp = icmp slt <8 x i32> %i.lo, %broadcast.splat529
  %i.lq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.lo, <8 x i32> zeroinitializer)
  %i.lr = select <8 x i1> %i.lp, <8 x i32> %i.lq, <8 x i32> %broadcast.splat531
  %i.ls = shl nsw <8 x i32> %i.lr, splat (i32 2)
  %i.lt = sext <8 x i32> %i.ls to <8 x i64>
  %invariant.gep = getelementptr [4 x i8], ptr %1, <8 x i64> %i.lt
  %broadcast.splat533 = shufflevector <2 x float> %i.ln, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert536 = insertelement <8 x float> poison, float %.pre433, i64 0
  %broadcast.splat537 = shufflevector <8 x float> %broadcast.splatinsert536, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.ph

bb.i:                                             ; preds = %vector.ph
  %i.lu = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.pa, i64 1
  %i.lw = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.lx = insertelement <2 x float> %i.lw, float %i.ol, i64 1
  %i.ly = fdiv reassoc nsz arcp contract afn <2 x float> %i.lv, %i.lx ; 2 uses
  store <2 x float> %i.ly, ptr %.2215283, align 4, !tbaa !12
  %i.lz = fsub reassoc nsz arcp contract afn <2 x float> %i.ln, %i.ly ; 3 uses
  %i.ma = fmul reassoc nsz arcp contract afn <2 x float> %i.lz, %i.lz
  %i.mb = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mc = fadd reassoc nsz arcp contract afn <2 x float> %i.ll, %i.ma ; 2 uses
  %i.md = fdiv reassoc nsz arcp contract afn float %i.ow, %i.oi ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.2215283, i64 8
  store float %i.md, ptr %i.me, align 4, !tbaa !12
  %i.mf = fsub reassoc nsz arcp contract afn float %.pre433, %i.md ; 3 uses
  %.sroa.0.8.vec.insert = insertelement <4 x float> %i.mb, float %i.mf, i64 2
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn float %.sroa.16.6, %i.mg ; 3 uses
  %i.mi = fdiv reassoc nsz arcp contract afn float %i.os, %i.of ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %.2215283, i64 12
  store float %i.mi, ptr %i.mj, align 4, !tbaa !12
  %i.mk = getelementptr inbounds nuw i8, ptr %.2223281, i64 12
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !12
  %i.mm = fsub reassoc nsz arcp contract afn float %i.ml, %i.mi ; 3 uses
  %.sroa.0.12.vec.insert = insertelement <4 x float> %.sroa.0.8.vec.insert, float %i.mm, i64 3
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mm, %i.mm
  %i.mo = fadd reassoc nsz arcp contract afn float %.sroa.22.6, %i.mn ; 3 uses
  store <4 x float> %.sroa.0.12.vec.insert, ptr %.2218282, align 16, !tbaa !13, !alias.scope !32, !nontemporal !14
  %i.mp = getelementptr inbounds nuw i8, ptr %.2223281, i64 16
  %i.mq = getelementptr inbounds nuw i8, ptr %.2218282, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %.2215283, i64 16
  %i.ms = add nuw nsw i32 %.2284, 1               ; 2 uses
  %exitcond315.not = icmp eq i32 %i.ms, %6
  br i1 %exitcond315.not, label %._crit_edge.loopexit, label %.lr.ph285

vector.ph:                                        ; preds = %.lr.ph285, %vector.ph
  %.sroa.0323.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.pe, %vector.ph ]
  %.sroa.7.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.pa, %vector.ph ]
  %.sroa.11.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.ow, %vector.ph ]
  %.sroa.15.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.os, %vector.ph ]
  %.sroa.0318.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.oo, %vector.ph ]
  %.sroa.6.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.ol, %vector.ph ]
  %.sroa.9.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.oi, %vector.ph ]
  %.sroa.12.0 = phi nsz float [ 0.000000e+00, %.lr.ph285 ], [ %i.of, %vector.ph ]
  %.0197279 = phi i32 [ 0, %.lr.ph285 ], [ %i.pf, %vector.ph ] ; 2 uses
  %.0198278 = phi i64 [ 0, %.lr.ph285 ], [ %i.na, %vector.ph ] ; 2 uses
  %i.mt = add nsw i32 %.0197279, -2
  %i.mu = shl i32 %i.mt, %4
  %i.mv = add i32 %i.mu, %.1.i                    ; 2 uses
  %.not234 = icmp slt i32 %i.mv, %7
  %i.mw = tail call i32 @llvm.smax.i32(i32 %i.mv, i32 0)
  %i.mx = select i1 %.not234, i32 %i.mw, i32 %i.d
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = mul i64 %i.j, %i.my
  %i.na = add i64 %.0198278, 5
  %i.nb = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.0323.0, i64 0
  %i.nc = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.7.0, i64 0
  %i.nd = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.11.0, i64 0
  %i.ne = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.15.0, i64 0
  %i.nf = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.0318.0, i64 0
  %i.ng = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.6.0, i64 0
  %i.nh = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.9.0, i64 0
  %i.ni = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison>, float %.sroa.12.0, i64 0
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0198278
  %wide.masked.load = tail call <8 x float> @llvm.masked.load.v8f32.p0(ptr nonnull align 4 %i.nj, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %gep = getelementptr [4 x i8], <8 x ptr> %invariant.gep, i64 %i.mz ; 4 uses
  %wide.gep540 = getelementptr inbounds nuw i8, <8 x ptr> %gep, i64 4
  %wide.masked.gather541 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep540, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.nk = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat535, %wide.masked.gather541 ; 2 uses
  %i.nl = fmul reassoc nsz arcp contract afn <8 x float> %i.nk, %i.nk
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %gep, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.nm = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat533, %wide.masked.gather ; 2 uses
  %i.nn = fmul reassoc nsz arcp contract afn <8 x float> %i.nm, %i.nm
  %i.no = fadd reassoc nsz arcp contract afn <8 x float> %i.nl, %i.nn
  %wide.gep542 = getelementptr inbounds nuw i8, <8 x ptr> %gep, i64 8
  %wide.masked.gather543 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep542, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12 ; 2 uses
  %i.np = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat537, %wide.masked.gather543 ; 2 uses
  %i.nq = fmul reassoc nsz arcp contract afn <8 x float> %i.np, %i.np
  %i.nr = fadd reassoc nsz arcp contract afn <8 x float> %i.no, %i.nq
  %i.ns = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat539, %i.nr
  %i.nt = fadd reassoc nsz arcp contract afn <8 x float> %i.ns, splat (float -9.000000e+00) ; 2 uses
  %i.nu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.nt, zeroinitializer
  %i.nv = select reassoc nsz arcp contract afn <8 x i1> %i.nu, <8 x float> zeroinitializer, <8 x float> %i.nt
  %i.nw = fmul reassoc nsz arcp contract afn <8 x float> %i.nv, splat (float f0x4B000000)
  %i.nx = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.nw ; 2 uses
  %i.ny = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.nx, splat (float f0x4B000000)
  %i.nz = select reassoc nsz arcp contract afn <8 x i1> %i.ny, <8 x float> %i.nx, <8 x float> zeroinitializer
  %i.oa = fptosi <8 x float> %i.nz to <8 x i32>
  %i.ob = bitcast <8 x i32> %i.oa to <8 x float>
  %i.oc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.load, %i.ob ; 8 uses
  %i.od = fadd reassoc nsz arcp contract afn <8 x float> %i.ni, %i.oc
  %i.oe = shufflevector <8 x float> %i.od, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.of = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oe) ; 2 uses
  %i.og = fadd reassoc nsz arcp contract afn <8 x float> %i.nh, %i.oc
  %i.oh = shufflevector <8 x float> %i.og, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.oi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oh) ; 2 uses
  %i.oj = fadd reassoc nsz arcp contract afn <8 x float> %i.ng, %i.oc
  %i.ok = shufflevector <8 x float> %i.oj, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.ol = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ok) ; 2 uses
  %i.om = fadd reassoc nsz arcp contract afn <8 x float> %i.nf, %i.oc
  %i.on = shufflevector <8 x float> %i.om, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.oo = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.on) ; 2 uses
  %wide.gep544 = getelementptr inbounds nuw i8, <8 x ptr> %gep, i64 12
  %wide.masked.gather545 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep544, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !12
  %i.op = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather545, %i.oc
  %i.oq = fadd reassoc nsz arcp contract afn <8 x float> %i.ne, %i.op
  %i.or = shufflevector <8 x float> %i.oq, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.os = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.or) ; 2 uses
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather543, %i.oc
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.nd, %i.ot
  %i.ov = shufflevector <8 x float> %i.ou, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.ow = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ov) ; 2 uses
  %i.ox = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather541, %i.oc
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.nc, %i.ox
  %i.oz = shufflevector <8 x float> %i.oy, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.pa = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.oz) ; 2 uses
  %i.pb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.oc
  %i.pc = fadd reassoc nsz arcp contract afn <8 x float> %i.nb, %i.pb
  %i.pd = shufflevector <8 x float> %i.pc, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.pe = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.pd) ; 2 uses
  %i.pf = add nuw nsw i32 %.0197279, 1            ; 2 uses
  %exitcond313.not = icmp eq i32 %i.pf, 5
  br i1 %exitcond313.not, label %bb.i, label %vector.ph

._crit_edge.loopexit:                             ; preds = %bb.i
  %i.pg = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.ph = insertelement <2 x float> %i.pg, float %i.mo, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader241
  %.sroa.16.7 = phi nsz float [ %i.hz, %.preheader241 ], [ %i.mh, %._crit_edge.loopexit ]
  %.sroa.22.7 = phi nsz float [ %23, %.preheader241 ], [ %i.mo, %._crit_edge.loopexit ]
  %i.pi = phi <2 x float> [ %i.hx, %.preheader241 ], [ %i.mc, %._crit_edge.loopexit ] ; 2 uses
  %i.pj = phi <2 x float> [ %i.hy, %.preheader241 ], [ %i.ph, %._crit_edge.loopexit ]
  %i.pk = add nuw nsw i32 %.0224286, 1            ; 2 uses
  %exitcond316.not = icmp eq i32 %i.pk, %7
  br i1 %exitcond316.not, label %.preheader, label %bb.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #2

; Function Attrs: nounwind
declare void @llvm.x86.sse.sfence() #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <8 x float> @llvm.masked.load.v8f32.p0(ptr captures(none), <8 x i1>, <8 x float>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{i32 1}
!15 = distinct !{!15, i1 true, !"copy_pixel_nontemporal"}
!16 = distinct !{!16, !15, !"copy_pixel_nontemporal: argument 0"}
!17 = distinct !{!17, i1 true, !"copy_pixel_nontemporal"}
!18 = distinct !{!18, !17, !"copy_pixel_nontemporal: argument 0"}
!19 = distinct !{!19, i1 true, !"copy_pixel_nontemporal"}
!20 = distinct !{!20, !19, !"copy_pixel_nontemporal: argument 0"}
!21 = !{!16}
!22 = !{!18}
!23 = !{!20}
!24 = distinct !{!24, i1 true, !"copy_pixel_nontemporal"}
!25 = distinct !{!25, !24, !"copy_pixel_nontemporal: argument 0"}
!26 = distinct !{!26, i1 true, !"copy_pixel_nontemporal"}
!27 = distinct !{!27, !26, !"copy_pixel_nontemporal: argument 0"}
!28 = distinct !{!28, i1 true, !"copy_pixel_nontemporal"}
!29 = distinct !{!29, !28, !"copy_pixel_nontemporal: argument 0"}
!30 = !{!25}
!31 = !{!27}
!32 = !{!29}
end_hunk_0
