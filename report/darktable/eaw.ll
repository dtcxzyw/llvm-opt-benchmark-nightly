Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/eaw?download=true
inline.NumInlined: 23
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 28
begin_hunk_0_@eaw_synthesize:bb.a
  %i.g = shl i64 %.020.epil.init, 2               ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.j = load <4 x float>, ptr %i.i, align 4, !tbaa !11 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn <4 x float> %i.j, %i.a
  %i.l = fadd reassoc nsz arcp contract afn <4 x float> %i.j, %i.a
  %i.m = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.k, <4 x float> zeroinitializer)
  %i.o = fadd reassoc nsz arcp contract afn <4 x float> %i.n, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %i.b
  %i.q = load <4 x float>, ptr %i.h, align 4, !tbaa !11
  %i.r = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %i.h, align 4, !tbaa !11
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
  %i.v = load <4 x float>, ptr %i.u, align 4, !tbaa !11 ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %i.v, %i.a
  %i.x = fadd reassoc nsz arcp contract afn <4 x float> %i.v, %i.a
  %i.y = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> zeroinitializer)
  %i.z = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.w, <4 x float> zeroinitializer)
  %i.aa = fadd reassoc nsz arcp contract afn <4 x float> %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn <4 x float> %i.aa, %i.b
  %i.ac = load <4 x float>, ptr %i.t, align 4, !tbaa !11
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, %i.ac
  store <4 x float> %i.ad, ptr %i.t, align 4, !tbaa !11
  %i.ae = shl i64 %.020, 2
  %i.af = or disjoint i64 %i.ae, 4                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ai = load <4 x float>, ptr %i.ah, align 4, !tbaa !11 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn <4 x float> %i.ai, %i.a
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.ai, %i.a
  %i.al = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ak, <4 x float> zeroinitializer)
  %i.am = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aj, <4 x float> zeroinitializer)
  %i.an = fadd reassoc nsz arcp contract afn <4 x float> %i.am, %i.al
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.b
  %i.ap = load <4 x float>, ptr %i.ag, align 4, !tbaa !11
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ao, %i.ap
  store <4 x float> %i.aq, ptr %i.ag, align 4, !tbaa !11
  %i.ar = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @eaw_dn_decompose(ptr noalias nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph288, label %.preheader

.lr.ph288:                                        ; preds = %bb.a
  %i.b = insertelement <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, i32 %4, i64 2 ; 2 uses
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.d = shl <4 x i32> <i32 -2, i32 -1, i32 1, i32 2>, %i.c ; 3 uses
  %i.e = extractelement <4 x i32> %i.d, i64 2     ; 5 uses
  %.not.i = icmp sgt i32 %7, %i.e
  %i.f = add nsw i32 %7, -1                       ; 3 uses
  %i.g = add nuw i32 %i.f, %i.e
  %i.h = sext i32 %6 to i64                       ; 3 uses
  %i.i = extractelement <4 x i32> %i.d, i64 3     ; 5 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = sub nsw i32 %7, %i.i
  %i.l = sub nsw i32 %6, %i.i                     ; 3 uses
  %i.m = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %5, 2.000000e-02 ; 3 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %.idx236 = shl nsw i64 %i.o, 4                  ; 24 uses
  %i.p = add nsw i32 %6, -5
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.o, 2
  %i.s = mul i64 %i.r, %i.q                       ; 4 uses
  %i.t = add nsw i32 %6, -1
  %i.u = sext i32 %i.l to i64
  %i.v = shufflevector <4 x i32> %i.b, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 2, i32 6, i32 7>
  %i.w = shl <4 x i32> %i.d, %i.v
  %broadcast.splatinsert563 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat564 = shufflevector <8 x float> %broadcast.splatinsert563, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert561 = insertelement <8 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat562 = shufflevector <8 x i64> %broadcast.splatinsert561, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat554 = shufflevector <8 x i32> %broadcast.splatinsert553, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.x = shl <8 x i32> <i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>, %broadcast.splat554
  %broadcast.splatinsert557 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat558 = shufflevector <8 x i32> %broadcast.splatinsert557, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat560 = shufflevector <8 x i32> %broadcast.splatinsert559, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.y = insertelement <5 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <5 x float> %i.y, <5 x float> poison, <5 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert538 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat539 = shufflevector <8 x float> %broadcast.splatinsert538, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = shl <8 x i32> <i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>, %broadcast.splat
  %broadcast.splatinsert528 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat529 = shufflevector <8 x i32> %broadcast.splatinsert528, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat531 = shufflevector <8 x i32> %broadcast.splatinsert530, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.ab = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.zi, %._crit_edge ]
  store <4 x float> %i.ab, ptr %3, align 4, !tbaa !11
  ret void

bb.b:                                             ; preds = %.lr.ph288, %._crit_edge
  %.0224286 = phi i32 [ 0, %.lr.ph288 ], [ %i.zj, %._crit_edge ] ; 6 uses
  %i.ac = phi <4 x float> [ zeroinitializer, %.lr.ph288 ], [ %i.zi, %._crit_edge ] ; 2 uses
  br i1 %.not.i, label %bb.c, label %dwt_interleave_rows.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = sdiv i32 %i.g, %i.e                     ; 4 uses
  %i.ae = srem i32 %7, %i.e                       ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = mul nsw i32 %i.ae, %i.ad                ; 2 uses
  %i.ah = icmp slt i32 %.0224286, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = sdiv i32 %.0224286, %i.ad
  %i.aj = srem i32 %.0224286, %i.ad
  %i.ak = shl i32 %i.aj, %4
  %i.al = add nsw i32 %i.ak, %i.ai
  br label %dwt_interleave_rows.exit

bb.f:                                             ; preds = %bb.d
  %i.am = sub nsw i32 %.0224286, %i.ag            ; 2 uses
  %i.an = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.ao = sdiv i32 %i.am, %i.an
  %i.ap = add nsw i32 %i.ao, %i.ae
  %i.aq = srem i32 %i.am, %i.an
  %i.ar = shl i32 %i.aq, %4
  %i.as = add nsw i32 %i.ap, %i.ar
  br label %dwt_interleave_rows.exit

dwt_interleave_rows.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %.1.i = phi i32 [ %.0224286, %bb.b ], [ %i.al, %bb.e ], [ %i.as, %bb.f ] ; 5 uses
  %i.at = sext i32 %.1.i to i64                   ; 2 uses
  %i.au = shl nsw i64 %i.at, 2
  %i.av = mul i64 %i.au, %i.h                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.az = icmp uge i32 %.1.i, %i.i
  %.not = icmp ult i32 %.1.i, %i.k
  %or.cond = select i1 %i.az, i1 %.not, i1 false
  %i.ba = select i1 %or.cond, i32 %i.i, i32 %i.l  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader, label %.preheader242

.lr.ph.preheader:                                 ; preds = %dwt_interleave_rows.exit
  %wide.trip.count = zext nneg i32 %i.ba to i64
  %broadcast.splatinsert555 = insertelement <8 x i32> poison, i32 %.1.i, i64 0
  %broadcast.splat556 = shufflevector <8 x i32> %broadcast.splatinsert555, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bc = add <8 x i32> %i.x, %broadcast.splat556 ; 2 uses
  %i.bd = icmp slt <8 x i32> %i.bc, %broadcast.splat558
  %i.be = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bc, <8 x i32> zeroinitializer)
  %i.bf = select <8 x i1> %i.bd, <8 x i32> %i.be, <8 x i32> %broadcast.splat560
  %i.bg = zext nneg <8 x i32> %i.bf to <8 x i64>
  %i.bh = mul <8 x i64> %broadcast.splat562, %i.bg
  %wide.gep566 = getelementptr [4 x i8], ptr %1, <8 x i64> %i.bh ; 5 uses
  br label %.lr.ph

.preheader242:                                    ; preds = %.lr.ph, %dwt_interleave_rows.exit
  %.0221.lcssa = phi ptr [ %i.aw, %dwt_interleave_rows.exit ], [ %i.if, %.lr.ph ] ; 2 uses
  %.0216.lcssa = phi ptr [ %i.ax, %dwt_interleave_rows.exit ], [ %i.ig, %.lr.ph ] ; 2 uses
  %.0213.lcssa = phi ptr [ %i.ay, %dwt_interleave_rows.exit ], [ %i.ih, %.lr.ph ] ; 2 uses
  %.0211.lcssa = phi i32 [ 0, %dwt_interleave_rows.exit ], [ %i.ba, %.lr.ph ] ; 3 uses
  %i.bi = phi <4 x float> [ %i.ac, %dwt_interleave_rows.exit ], [ %i.ie, %.lr.ph ] ; 2 uses
  %i.bj = icmp slt i32 %.0211.lcssa, %i.l
  br i1 %i.bj, label %.lr.ph268, label %.preheader241

.lr.ph268:                                        ; preds = %.preheader242
  %i.bk = sub nsw i64 %i.at, %i.j
  %i.bl = mul nsw i64 %i.bk, %i.h
  %i.bm = zext nneg i32 %.0211.lcssa to i64
  %invariant.op = sub i64 %i.bl, %i.j
  br label %.preheader240

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %.0213251 = phi ptr [ %i.ay, %.lr.ph.preheader ], [ %i.ih, %.lr.ph ] ; 2 uses
  %.0216250 = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.ig, %.lr.ph ] ; 2 uses
  %.0221249 = phi ptr [ %i.aw, %.lr.ph.preheader ], [ %i.if, %.lr.ph ] ; 5 uses
  %i.bn = phi <4 x float> [ %i.ac, %.lr.ph.preheader ], [ %i.ie, %.lr.ph ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0221249, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %.0221249, i64 8
  %i.bq = trunc i64 %indvars.iv to i32
  %8 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %9 = shufflevector <4 x i32> %8, <4 x i32> poison, <4 x i32> zeroinitializer
  %gep.2.idx = shl i64 %indvars.iv, 4
  %i.br = add <4 x i32> %i.w, %9
  %i.bs = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.br, <4 x i32> zeroinitializer)
  %i.bt = shl nuw nsw <4 x i32> %i.bs, splat (i32 2) ; 4 uses
  %i.bu = extractelement <4 x i32> %i.bt, i64 0
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = extractelement <4 x i32> %i.bt, i64 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = extractelement <4 x i32> %i.bt, i64 2
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = extractelement <4 x i32> %i.bt, i64 3
  %i.cb = zext nneg i32 %i.ca to i64
  %wide.masked.gather568 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw ([4 x i8], ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 5, i64 10, i64 15, i64 20, i64 25, i64 30, i64 35>), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %i.cc = load float, ptr %i.bo, align 4, !tbaa !11
  %broadcast.splatinsert549 = insertelement <8 x float> poison, float %i.cc, i64 0
  %broadcast.splat550 = shufflevector <8 x float> %broadcast.splatinsert549, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.gep567 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.bv ; 4 uses
  %wide.gep570 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep567, i64 4
  %wide.masked.gather571 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep570, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.cd = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather571 ; 2 uses
  %i.ce = fmul reassoc nsz arcp contract afn <8 x float> %i.cd, %i.cd
  %i.cf = load float, ptr %.0221249, align 4, !tbaa !11
  %broadcast.splatinsert547 = insertelement <8 x float> poison, float %i.cf, i64 0
  %broadcast.splat548 = shufflevector <8 x float> %broadcast.splatinsert547, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.masked.gather569 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep567, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather569 ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %i.cg, %i.cg
  %i.ci = fadd reassoc nsz arcp contract afn <8 x float> %i.ce, %i.ch
  %i.cj = load float, ptr %i.bp, align 4, !tbaa !11
  %broadcast.splatinsert551 = insertelement <8 x float> poison, float %i.cj, i64 0
  %broadcast.splat552 = shufflevector <8 x float> %broadcast.splatinsert551, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %wide.gep572 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep567, i64 8
  %wide.masked.gather573 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep572, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.ck = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather573 ; 2 uses
  %i.cl = fmul reassoc nsz arcp contract afn <8 x float> %i.ck, %i.ck
  %i.cm = fadd reassoc nsz arcp contract afn <8 x float> %i.ci, %i.cl
  %i.cn = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.cm
  %i.co = fadd reassoc nsz arcp contract afn <8 x float> %i.cn, splat (float -9.000000e+00) ; 2 uses
  %i.cp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.co, zeroinitializer
  %i.cq = select reassoc nsz arcp contract afn <8 x i1> %i.cp, <8 x float> zeroinitializer, <8 x float> %i.co
  %i.cr = fmul reassoc nsz arcp contract afn <8 x float> %i.cq, splat (float f0x4B000000)
  %i.cs = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.cr ; 2 uses
  %i.ct = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.cs, splat (float f0x4B000000)
  %i.cu = select reassoc nsz arcp contract afn <8 x i1> %i.ct, <8 x float> %i.cs, <8 x float> zeroinitializer
  %i.cv = fptosi <8 x float> %i.cu to <8 x i32>
  %i.cw = bitcast <8 x i32> %i.cv to <8 x float>
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather568, %i.cw ; 5 uses
  %wide.masked.gather577 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw ([4 x i8], ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 5, i64 10, i64 15, i64 20, i64 25, i64 30, i64 35>), <8 x i64> splat (i64 4)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %wide.gep576 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.bx ; 4 uses
  %wide.gep579 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep576, i64 4
  %wide.masked.gather580 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep579, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.cy = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather580 ; 2 uses
  %i.cz = fmul reassoc nsz arcp contract afn <8 x float> %i.cy, %i.cy
  %wide.masked.gather578 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep576, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.da = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather578 ; 2 uses
  %i.db = fmul reassoc nsz arcp contract afn <8 x float> %i.da, %i.da
  %i.dc = fadd reassoc nsz arcp contract afn <8 x float> %i.cz, %i.db
  %wide.gep581 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep576, i64 8
  %wide.masked.gather582 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep581, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.dd = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather582 ; 2 uses
  %i.de = fmul reassoc nsz arcp contract afn <8 x float> %i.dd, %i.dd
  %i.df = fadd reassoc nsz arcp contract afn <8 x float> %i.dc, %i.de
  %i.dg = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.df
  %i.dh = fadd reassoc nsz arcp contract afn <8 x float> %i.dg, splat (float -9.000000e+00) ; 2 uses
  %i.di = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.dh, zeroinitializer
  %i.dj = select reassoc nsz arcp contract afn <8 x i1> %i.di, <8 x float> zeroinitializer, <8 x float> %i.dh
  %i.dk = fmul reassoc nsz arcp contract afn <8 x float> %i.dj, splat (float f0x4B000000)
  %i.dl = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.dk ; 2 uses
  %i.dm = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.dl, splat (float f0x4B000000)
  %i.dn = select reassoc nsz arcp contract afn <8 x i1> %i.dm, <8 x float> %i.dl, <8 x float> zeroinitializer
  %i.do = fptosi <8 x float> %i.dn to <8 x i32>
  %i.dp = bitcast <8 x i32> %i.do to <8 x float>
  %i.dq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather577, %i.dp ; 5 uses
  %i.dr = fadd reassoc nsz arcp contract afn <8 x float> %i.cx, %i.dq
  %wide.masked.gather586 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw ([4 x i8], ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 5, i64 10, i64 15, i64 20, i64 25, i64 30, i64 35>), <8 x i64> splat (i64 8)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %wide.gep585 = getelementptr i8, <8 x ptr> %wide.gep566, i64 %gep.2.idx ; 4 uses
  %wide.gep588 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep585, i64 4
  %wide.masked.gather589 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep588, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.ds = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather589 ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn <8 x float> %i.ds, %i.ds
  %wide.masked.gather587 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep585, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.du = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather587 ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn <8 x float> %i.du, %i.du
  %i.dw = fadd reassoc nsz arcp contract afn <8 x float> %i.dt, %i.dv
  %wide.gep590 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep585, i64 8
  %wide.masked.gather591 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep590, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.dx = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather591 ; 2 uses
  %i.dy = fmul reassoc nsz arcp contract afn <8 x float> %i.dx, %i.dx
  %i.dz = fadd reassoc nsz arcp contract afn <8 x float> %i.dw, %i.dy
  %i.ea = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.dz
  %i.eb = fadd reassoc nsz arcp contract afn <8 x float> %i.ea, splat (float -9.000000e+00) ; 2 uses
  %i.ec = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.eb, zeroinitializer
  %i.ed = select reassoc nsz arcp contract afn <8 x i1> %i.ec, <8 x float> zeroinitializer, <8 x float> %i.eb
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %i.ed, splat (float f0x4B000000)
  %i.ef = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.ee ; 2 uses
  %i.eg = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ef, splat (float f0x4B000000)
  %i.eh = select reassoc nsz arcp contract afn <8 x i1> %i.eg, <8 x float> %i.ef, <8 x float> zeroinitializer
  %i.ei = fptosi <8 x float> %i.eh to <8 x i32>
  %i.ej = bitcast <8 x i32> %i.ei to <8 x float>
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather586, %i.ej ; 5 uses
  %i.el = fadd reassoc nsz arcp contract afn <8 x float> %i.dr, %i.ek
  %wide.masked.gather595 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw ([4 x i8], ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 5, i64 10, i64 15, i64 20, i64 25, i64 30, i64 35>), <8 x i64> splat (i64 12)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %wide.gep594 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.bz ; 4 uses
  %wide.gep597 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep594, i64 4
  %wide.masked.gather598 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep597, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.em = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather598 ; 2 uses
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %i.em, %i.em
  %wide.masked.gather596 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep594, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.eo = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather596 ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.eo, %i.eo
  %i.eq = fadd reassoc nsz arcp contract afn <8 x float> %i.en, %i.ep
  %wide.gep599 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep594, i64 8
  %wide.masked.gather600 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep599, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.er = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather600 ; 2 uses
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %i.er
  %i.et = fadd reassoc nsz arcp contract afn <8 x float> %i.eq, %i.es
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.et
  %i.ev = fadd reassoc nsz arcp contract afn <8 x float> %i.eu, splat (float -9.000000e+00) ; 2 uses
  %i.ew = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ev, zeroinitializer
  %i.ex = select reassoc nsz arcp contract afn <8 x i1> %i.ew, <8 x float> zeroinitializer, <8 x float> %i.ev
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.ex, splat (float f0x4B000000)
  %i.ez = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.ey ; 2 uses
  %i.fa = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ez, splat (float f0x4B000000)
  %i.fb = select reassoc nsz arcp contract afn <8 x i1> %i.fa, <8 x float> %i.ez, <8 x float> zeroinitializer
  %i.fc = fptosi <8 x float> %i.fb to <8 x i32>
  %i.fd = bitcast <8 x i32> %i.fc to <8 x float>
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather595, %i.fd ; 5 uses
  %i.ff = fadd reassoc nsz arcp contract afn <8 x float> %i.el, %i.fe
  %wide.masked.gather604 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 getelementptr inbounds nuw (i8, <8 x ptr> getelementptr inbounds nuw ([4 x i8], ptr @eaw_dn_decompose.filter, <8 x i64> <i64 0, i64 5, i64 10, i64 15, i64 20, i64 25, i64 30, i64 35>), <8 x i64> splat (i64 16)), <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %wide.gep603 = getelementptr [4 x i8], <8 x ptr> %wide.gep566, i64 %i.cb ; 4 uses
  %wide.gep606 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep603, i64 4
  %wide.masked.gather607 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep606, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.fg = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat550, %wide.masked.gather607 ; 2 uses
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.fg, %i.fg
  %wide.masked.gather605 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep603, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.fi = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat548, %wide.masked.gather605 ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <8 x float> %i.fi, %i.fi
  %i.fk = fadd reassoc nsz arcp contract afn <8 x float> %i.fh, %i.fj
  %wide.gep608 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep603, i64 8
  %wide.masked.gather609 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep608, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11 ; 2 uses
  %i.fl = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat552, %wide.masked.gather609 ; 2 uses
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.fl, %i.fl
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fm
  %i.fo = fmul reassoc nsz arcp contract afn <8 x float> %broadcast.splat564, %i.fn
  %i.fp = fadd reassoc nsz arcp contract afn <8 x float> %i.fo, splat (float -9.000000e+00) ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fp, zeroinitializer
  %i.fr = select reassoc nsz arcp contract afn <8 x i1> %i.fq, <8 x float> zeroinitializer, <8 x float> %i.fp
  %i.fs = fmul reassoc nsz arcp contract afn <8 x float> %i.fr, splat (float f0x4B000000)
  %i.ft = fsub reassoc nsz arcp contract afn <8 x float> splat (float f0x4E7E0000), %i.fs ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.ft, splat (float f0x4B000000)
  %i.fv = select reassoc nsz arcp contract afn <8 x i1> %i.fu, <8 x float> %i.ft, <8 x float> zeroinitializer
  %i.fw = fptosi <8 x float> %i.fv to <8 x i32>
  %i.fx = bitcast <8 x i32> %i.fw to <8 x float>
  %i.fy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather604, %i.fx ; 5 uses
  %i.fz = fadd reassoc nsz arcp contract afn <8 x float> %i.ff, %i.fy
  %i.ga = shufflevector <8 x float> %i.fz, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.ga)
  %wide.gep574 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep567, i64 12
  %wide.masked.gather575 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep574, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather575, %i.cx
  %wide.gep583 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep576, i64 12
  %wide.masked.gather584 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep583, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %i.gd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather584, %i.dq
  %i.ge = fadd reassoc nsz arcp contract afn <8 x float> %i.gc, %i.gd
  %wide.gep592 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep585, i64 12
  %wide.masked.gather593 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep592, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %i.gf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather593, %i.ek
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gf
  %wide.gep601 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep594, i64 12
  %wide.masked.gather602 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep601, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %i.gh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather602, %i.fe
  %i.gi = fadd reassoc nsz arcp contract afn <8 x float> %i.gg, %i.gh
  %wide.gep610 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep603, i64 12
  %wide.masked.gather611 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep610, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 false, i1 false, i1 false>, <8 x float> poison), !tbaa !11
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather611, %i.fy
  %i.gk = fadd reassoc nsz arcp contract afn <8 x float> %i.gi, %i.gj
  %i.gl = shufflevector <8 x float> %i.gk, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.gm = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gl)
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather573, %i.cx
  %i.go = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather582, %i.dq
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.gn, %i.go
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather591, %i.ek
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gp, %i.gq
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather600, %i.fe
  %i.gt = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %i.gs
  %i.gu = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather609, %i.fy
  %i.gv = fadd reassoc nsz arcp contract afn <8 x float> %i.gt, %i.gu
  %i.gw = shufflevector <8 x float> %i.gv, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.gx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.gw)
  %i.gy = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather571, %i.cx
  %i.gz = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather580, %i.dq
  %i.ha = fadd reassoc nsz arcp contract afn <8 x float> %i.gy, %i.gz
  %i.hb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather589, %i.ek
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.ha, %i.hb
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather598, %i.fe
  %i.he = fadd reassoc nsz arcp contract afn <8 x float> %i.hc, %i.hd
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather607, %i.fy
  %i.hg = fadd reassoc nsz arcp contract afn <8 x float> %i.he, %i.hf
  %i.hh = shufflevector <8 x float> %i.hg, <8 x float> <float poison, float poison, float poison, float poison, float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15>
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.hh)
  %i.hj = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather569, %i.cx
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather578, %i.dq
end_hunk_0
