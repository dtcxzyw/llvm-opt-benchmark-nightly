Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_atempo?download=true
inline.NumInlined: 29
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@yae_adjust_position:bb.a
  %i.bc = shl i64 %index, 3                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.bc
  %next.gep48 = getelementptr i8, ptr %.val25, i64 %i.bc
  %next.gep49 = getelementptr i8, ptr %.val, i64 %i.bc
  %wide.vec = load <8 x float>, ptr %next.gep48, align 4, !tbaa !68, !alias.scope !133 ; 3 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec50 = load <8 x float>, ptr %next.gep49, align 4, !tbaa !68, !alias.scope !136 ; 3 uses
  %strided.vec51 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec53 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec54 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %strided.vec56 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec57 = shufflevector <8 x float> %wide.vec50, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.bd = fmul nsz <4 x float> %strided.vec54, %strided.vec57
  %i.be = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec, <4 x float> %strided.vec51, <4 x float> %i.bd)
  %i.bf = fneg nsz <4 x float> %strided.vec57
  %i.bg = fmul nsz <4 x float> %strided.vec53, %i.bf
  %i.bh = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec54, <4 x float> %strided.vec56, <4 x float> %i.bg)
  %interleaved.vec = shufflevector <4 x float> %i.be, <4 x float> %i.bh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %.lr.ph.i.i.preheader61, label %vector.body, !llvm.loop !138

.lr.ph.i.i.preheader61:                           ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.i.preheader
  %.027.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.ax, %vector.body ]
  %.02026.i.i.ph = phi ptr [ %i.ae, %vector.memcheck ], [ %i.ae, %.lr.ph.i.i.preheader ], [ %i.az, %vector.body ]
  %.02125.i.i.ph = phi ptr [ %.val25, %vector.memcheck ], [ %.val25, %.lr.ph.i.i.preheader ], [ %i.ba, %vector.body ]
  %.02224.i.i.ph = phi ptr [ %.val, %vector.memcheck ], [ %.val, %.lr.ph.i.i.preheader ], [ %i.bb, %vector.body ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader61, %.lr.ph.i.i
  %.027.i.i = phi i32 [ %i.bx, %.lr.ph.i.i ], [ %.027.i.i.ph, %.lr.ph.i.i.preheader61 ] ; 2 uses
  %.02026.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.02026.i.i.ph, %.lr.ph.i.i.preheader61 ] ; 3 uses
  %.02125.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.02125.i.i.ph, %.lr.ph.i.i.preheader61 ] ; 4 uses
  %.02224.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.02224.i.i.ph, %.lr.ph.i.i.preheader61 ] ; 4 uses
  %i.bj = load float, ptr %.02125.i.i, align 4, !tbaa !68
  %i.bk = load float, ptr %.02224.i.i, align 4, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 4
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !81 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.02224.i.i, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !81 ; 2 uses
  %i.bp = fmul nsz float %i.bm, %i.bo
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float %i.bk, float %i.bp)
  store float %i.bq, ptr %.02026.i.i, align 4, !tbaa !68
  %i.br = load float, ptr %.02224.i.i, align 4, !tbaa !68
  %i.bs = load float, ptr %.02125.i.i, align 4, !tbaa !68
  %i.bt = fneg nsz float %i.bo
  %i.bu = fmul nsz float %i.bs, %i.bt
  %i.bv = tail call nsz float @llvm.fmuladd.f32(float %i.bm, float %i.br, float %i.bu)
  %i.bw = getelementptr inbounds nuw i8, ptr %.02026.i.i, i64 4
  store float %i.bv, ptr %i.bw, align 4, !tbaa !81
  %i.bx = add nuw i32 %.027.i.i, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.02125.i.i, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.02224.i.i, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.02026.i.i, i64 8
  %exitcond.not.i.i = icmp eq i32 %.027.i.i, %i.o
  br i1 %exitcond.not.i.i, label %yae_xcorr_via_rdft.exit.i, label %.lr.ph.i.i, !llvm.loop !139

yae_xcorr_via_rdft.exit.i:                        ; preds = %.lr.ph.i.i, %bb.a
  tail call void %i.ak(ptr noundef %i.ai, ptr noundef %i.ag, ptr noundef %i.ae, i64 noundef 8) #10, !inline_history !140
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 0)
  %i.cb = tail call i32 @llvm.smin.i32(i32 %spec.select.i, i32 %i.o) ; 4 uses
  %i.cc = shl nsw i32 %i.p, 1
  %i.cd = sub i32 %i.cc, %i.ac
  %.neg.i = sdiv i32 %i.o, -16
  %i.ce = add i32 %.neg.i, %i.o
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.cd, i32 %i.ce)
  %i.cg = tail call i32 @llvm.smax.i32(i32 %i.cf, i32 0) ; 3 uses
  %i.ch = icmp slt i32 %i.cb, %i.cg
  br i1 %i.ch, label %.lr.ph.preheader.i, label %yae_align.exit

.lr.ph.preheader.i:                               ; preds = %yae_xcorr_via_rdft.exit.i
  %i.ci = sext i32 %i.cb to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ci
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.08.i = phi i32 [ %i.cw, %.lr.ph.i ], [ %i.cb, %.lr.ph.preheader.i ] ; 5 uses
  %.0517.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %i.cj, %.lr.ph.preheader.i ] ; 2 uses
  %.0526.i = phi float [ %.1.i, %.lr.ph.i ], [ f0xFF7FFFFF, %.lr.ph.preheader.i ] ; 2 uses
  %.0535.i = phi i32 [ %.154.i, %.lr.ph.i ], [ %i.al, %.lr.ph.preheader.i ]
  %i.ck = load float, ptr %.0517.i, align 4, !tbaa !76
  %i.cl = add nsw i32 %.08.i, %i.ac
  %i.cm = sitofp nsz i32 %i.cl to float
  %i.cn = sub nsw i32 %.08.i, %i.cb
  %i.co = sitofp nsz i32 %i.cn to float
  %i.cp = fmul nnan nsz float %i.cm, %i.co
  %i.cq = sub nsw i32 %i.cg, %.08.i
  %i.cr = sitofp nsz i32 %i.cq to float
  %i.cs = fmul nsz float %i.cp, %i.cr
  %i.ct = fmul nsz float %i.cs, %i.ck             ; 2 uses
  %i.cu = fcmp nsz ogt float %i.ct, %.0526.i      ; 2 uses
  %i.cv = sub nsw i32 %.08.i, %i.p
  %.154.i = select i1 %i.cu, i32 %i.cv, i32 %.0535.i ; 2 uses
  %.1.i = select nsz i1 %i.cu, float %i.ct, float %.0526.i
  %i.cw = add nsw i32 %.08.i, 1                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0517.i, i64 4
  %exitcond.not.i = icmp eq i32 %i.cw, %i.cg
  br i1 %exitcond.not.i, label %yae_align.exit, label %.lr.ph.i, !llvm.loop !84

yae_align.exit:                                   ; preds = %.lr.ph.i, %yae_xcorr_via_rdft.exit.i
  %.053.lcssa.i = phi i32 [ %i.al, %yae_xcorr_via_rdft.exit.i ], [ %.154.i, %.lr.ph.i ] ; 3 uses
  %.not = icmp eq i32 %.053.lcssa.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %yae_align.exit
  %i.cy = sext i32 %.053.lcssa.i to i64
  %i.cz = load i64, ptr %i.g, align 8, !tbaa !30
  %i.da = sub nsw i64 %i.cz, %i.cy
  store i64 %i.da, ptr %i.g, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 0, ptr %i.db, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %yae_align.exit
  ret i32 %.053.lcssa.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -11, 1) i32 @yae_overlap_add(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.c = load i64, ptr %i.b, align 8, !tbaa !28
  %i.d = and i64 %i.c, 1                          ; 2 uses
  %i.e = xor i64 %i.d, 1
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.d ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !30   ; 16 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30   ; 3 uses
  %. = tail call i64 @llvm.smax.i64(i64 %i.i, i64 %i.k) ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !63
  %i.p = sext i32 %i.o to i64
  %i.q = add nsw i64 %i.m, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !63
  %i.t = sext i32 %i.s to i64
  %i.u = add nsw i64 %i.k, %i.t
  %i.v = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.u) ; 7 uses
  %i.w = sub nsw i64 %i.v, %.                     ; 10 uses
  %.not = icmp sgt i64 %., %i.v
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, i32 noundef 798) #10
  tail call void @abort() #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %1, align 8, !tbaa !50
  %.fr430 = freeze ptr %i.x                       ; 20 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.aa = sub nsw i64 %., %i.k                    ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !51
  %i.ad = sext i32 %i.ac to i64                   ; 2 uses
  %i.ae = mul nsw i64 %i.aa, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %i.ae ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !94
  %i.ai = sub nsw i64 %., %i.m                    ; 2 uses
  %i.aj = mul nsw i64 %i.ai, %i.ad
  %i.ak = getelementptr inbounds i8, ptr %i.ah, i64 %i.aj ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !97 ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aa ; 5 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ai ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !20
  switch i32 %i.aq, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader258
    i32 2, label %.preheader260
    i32 3, label %.preheader262
    i32 4, label %.preheader264
  ]

.preheader264:                                    ; preds = %bb.c
  %i.ar = icmp sgt i64 %i.w, 0
  %i.as = icmp ult ptr %.fr430, %2
  %i.at = and i1 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph280, label %.loopexit

.lr.ph280:                                        ; preds = %.preheader264
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = load i32, ptr %i.au, align 4, !tbaa !92 ; 10 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph280.split.us, label %.lr.ph280.split.split.preheader

.lr.ph280.split.us:                               ; preds = %.lr.ph280
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !30
  %i.ay = add nsw i32 %i.av, -1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw nsw i64 %i.az, 3
  %3 = icmp slt i64 %i.ax, 0
  %i.bb = zext nneg i32 %i.av to i64              ; 4 uses
  %min.iters.check = icmp ult i32 %i.av, 4        ; 2 uses
  %n.vec588 = and i64 %i.bb, 2147483644           ; 4 uses
  %i.bc = trunc nuw nsw i64 %n.vec588 to i32
  %i.bd = shl nuw nsw i64 %n.vec588, 3            ; 3 uses
  %cmp.n602 = icmp eq i64 %n.vec588, %i.bb
  %n.vec = and i64 %i.bb, 2147483644              ; 4 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32
  %i.bf = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bb
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph280.split.us
  %i.bg = phi i64 [ %i.i, %.lr.ph280.split.us ], [ %i.eb, %._crit_edge.us ]
  %.0200279.us = phi i64 [ 0, %.lr.ph280.split.us ], [ %i.ea, %._crit_edge.us ]
  %.0201278.us = phi ptr [ %.fr430, %.lr.ph280.split.us ], [ %.us-phi273.us, %._crit_edge.us ] ; 8 uses
  %.0202277.us = phi ptr [ %i.af, %.lr.ph280.split.us ], [ %.us-phi272.us, %._crit_edge.us ] ; 6 uses
  %.0204276.us = phi ptr [ %i.ak, %.lr.ph280.split.us ], [ %.us-phi.us, %._crit_edge.us ] ; 8 uses
  %.4275.us = phi ptr [ %i.an, %.lr.ph280.split.us ], [ %i.ed, %._crit_edge.us ] ; 2 uses
  %.4245274.us = phi ptr [ %i.ao, %.lr.ph280.split.us ], [ %i.ec, %._crit_edge.us ] ; 2 uses
  %.0202277.us583 = ptrtoaddr ptr %.0202277.us to i64
  %.0201278.us575 = ptrtoaddr ptr %.0201278.us to i64 ; 3 uses
  %.0204276.us576 = ptrtoaddr ptr %.0204276.us to i64 ; 2 uses
  %i.bh = load float, ptr %.4245274.us, align 4, !tbaa !76 ; 4 uses
  %i.bi = load float, ptr %.4275.us, align 4, !tbaa !76 ; 4 uses
  br i1 %3, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us290.preheader

.lr.ph.split.us290.preheader:                     ; preds = %.lr.ph.us
  br i1 %min.iters.check, label %.lr.ph.split.us290.preheader750, label %vector.memcheck581

vector.memcheck581:                               ; preds = %.lr.ph.split.us290.preheader
  %i.bj = sub i64 %.0204276.us576, %.0201278.us575
  %diff.check582 = icmp ugt i64 %i.bj, -32
  %i.bk = sub i64 %.0202277.us583, %.0201278.us575
  %diff.check584 = icmp ugt i64 %i.bk, -32
  %conflict.rdx = or i1 %diff.check582, %diff.check584
  br i1 %conflict.rdx, label %.lr.ph.split.us290.preheader750, label %vector.ph587

vector.ph587:                                     ; preds = %vector.memcheck581
  %i.bl = getelementptr i8, ptr %.0201278.us, i64 %i.bd ; 2 uses
  %i.bm = getelementptr i8, ptr %.0202277.us, i64 %i.bd ; 2 uses
  %i.bn = getelementptr i8, ptr %.0204276.us, i64 %i.bd ; 2 uses
  %broadcast.splatinsert = insertelement <2 x float> poison, float %i.bi, i64 0
  %broadcast.splat = shufflevector <2 x float> %broadcast.splatinsert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert589 = insertelement <2 x float> poison, float %i.bh, i64 0
  %broadcast.splat590 = shufflevector <2 x float> %broadcast.splatinsert589, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body591

vector.body591:                                   ; preds = %vector.body591, %vector.ph587
  %index592 = phi i64 [ 0, %vector.ph587 ], [ %index.next600, %vector.body591 ] ; 2 uses
  %i.bo = shl i64 %index592, 3                    ; 3 uses
  %next.gep593 = getelementptr i8, ptr %.0201278.us, i64 %i.bo ; 2 uses
  %next.gep594 = getelementptr i8, ptr %.0202277.us, i64 %i.bo ; 2 uses
  %next.gep595 = getelementptr i8, ptr %.0204276.us, i64 %i.bo ; 2 uses
  %i.bp = getelementptr i8, ptr %next.gep595, i64 16
  %wide.load596 = load <2 x double>, ptr %next.gep595, align 8, !tbaa !128
  %wide.load597 = load <2 x double>, ptr %i.bp, align 8, !tbaa !128
  %i.bq = getelementptr i8, ptr %next.gep594, i64 16
  %wide.load598 = load <2 x double>, ptr %next.gep594, align 8, !tbaa !128
  %wide.load599 = load <2 x double>, ptr %i.bq, align 8, !tbaa !128
  %i.br = fptrunc nsz <2 x double> %wide.load598 to <2 x float>
  %i.bs = fptrunc nsz <2 x double> %wide.load599 to <2 x float>
  %i.bt = fptrunc nsz <2 x double> %wide.load596 to <2 x float>
  %i.bu = fptrunc nsz <2 x double> %wide.load597 to <2 x float>
  %i.bv = fmul nsz <2 x float> %broadcast.splat, %i.br
  %i.bw = fmul nsz <2 x float> %broadcast.splat, %i.bs
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %broadcast.splat590, <2 x float> %i.bv)
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %broadcast.splat590, <2 x float> %i.bw)
  %i.bz = fpext nsz <2 x float> %i.bx to <2 x double>
  %i.ca = fpext nsz <2 x float> %i.by to <2 x double>
  %i.cb = getelementptr i8, ptr %next.gep593, i64 16
  store <2 x double> %i.bz, ptr %next.gep593, align 8, !tbaa !128
  store <2 x double> %i.ca, ptr %i.cb, align 8, !tbaa !128
  %index.next600 = add nuw i64 %index592, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next600, %n.vec588
  br i1 %i.cc, label %middle.block601, label %vector.body591, !llvm.loop !141

middle.block601:                                  ; preds = %vector.body591
  br i1 %cmp.n602, label %._crit_edge.us, label %.lr.ph.split.us290.preheader750

.lr.ph.split.us290.preheader750:                  ; preds = %vector.memcheck581, %.lr.ph.split.us290.preheader, %middle.block601
  %.0269.us282.ph = phi i32 [ 0, %vector.memcheck581 ], [ 0, %.lr.ph.split.us290.preheader ], [ %i.bc, %middle.block601 ] ; 4 uses
  %.1268.us283.ph = phi ptr [ %.0201278.us, %vector.memcheck581 ], [ %.0201278.us, %.lr.ph.split.us290.preheader ], [ %i.bl, %middle.block601 ] ; 3 uses
  %.1203267.us284.ph = phi ptr [ %.0202277.us, %vector.memcheck581 ], [ %.0202277.us, %.lr.ph.split.us290.preheader ], [ %i.bm, %middle.block601 ] ; 3 uses
  %.1205266.us285.ph = phi ptr [ %.0204276.us, %vector.memcheck581 ], [ %.0204276.us, %.lr.ph.split.us290.preheader ], [ %i.bn, %middle.block601 ] ; 3 uses
  %i.cd = sub i32 %i.av, %.0269.us282.ph
  %.neg = add i32 %.0269.us282.ph, 1
  %xtraiter = and i32 %i.cd, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.us290.prol.loopexit, label %.lr.ph.split.us290.prol

.lr.ph.split.us290.prol:                          ; preds = %.lr.ph.split.us290.preheader750
  %i.ce = load double, ptr %.1205266.us285.ph, align 8, !tbaa !128
  %i.cf = load double, ptr %.1203267.us284.ph, align 8, !tbaa !128
  %i.cg = fptrunc nsz double %i.cf to float
  %i.ch = fptrunc nsz double %i.ce to float
  %i.ci = fmul nsz float %i.bi, %i.cg
  %i.cj = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float %i.bh, float %i.ci)
  %i.ck = fpext nsz float %i.cj to double
  store double %i.ck, ptr %.1268.us283.ph, align 8, !tbaa !128
  %i.cl = add nuw nsw i32 %.0269.us282.ph, 1
  %i.cm = getelementptr inbounds nuw i8, ptr %.1205266.us285.ph, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1203267.us284.ph, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.1268.us283.ph, i64 8 ; 2 uses
  br label %.lr.ph.split.us290.prol.loopexit

.lr.ph.split.us290.prol.loopexit:                 ; preds = %.lr.ph.split.us290.prol, %.lr.ph.split.us290.preheader750
  %.lcssa755.unr = phi ptr [ poison, %.lr.ph.split.us290.preheader750 ], [ %i.cm, %.lr.ph.split.us290.prol ]
  %.lcssa754.unr = phi ptr [ poison, %.lr.ph.split.us290.preheader750 ], [ %i.cn, %.lr.ph.split.us290.prol ]
  %.lcssa753.unr = phi ptr [ poison, %.lr.ph.split.us290.preheader750 ], [ %i.co, %.lr.ph.split.us290.prol ]
  %.0269.us282.unr = phi i32 [ %.0269.us282.ph, %.lr.ph.split.us290.preheader750 ], [ %i.cl, %.lr.ph.split.us290.prol ]
  %.1268.us283.unr = phi ptr [ %.1268.us283.ph, %.lr.ph.split.us290.preheader750 ], [ %i.co, %.lr.ph.split.us290.prol ]
  %.1203267.us284.unr = phi ptr [ %.1203267.us284.ph, %.lr.ph.split.us290.preheader750 ], [ %i.cn, %.lr.ph.split.us290.prol ]
  %.1205266.us285.unr = phi ptr [ %.1205266.us285.ph, %.lr.ph.split.us290.preheader750 ], [ %i.cm, %.lr.ph.split.us290.prol ]
  %i.cp = icmp eq i32 %i.av, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %.lr.ph.split.us290

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %i.cq = sub i64 %.0204276.us576, %.0201278.us575
  %diff.check = icmp ugt i64 %i.cq, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.us.preheader749, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.us.preheader
  %i.cr = getelementptr i8, ptr %.0201278.us, i64 %i.bf ; 2 uses
  %i.cs = getelementptr i8, ptr %.0204276.us, i64 %i.bf ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ct = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %.0201278.us, i64 %i.ct ; 2 uses
  %next.gep577 = getelementptr i8, ptr %.0204276.us, i64 %i.ct ; 2 uses
  %i.cu = getelementptr i8, ptr %next.gep577, i64 16
  %wide.load = load <2 x double>, ptr %next.gep577, align 8, !tbaa !128
  %wide.load578 = load <2 x double>, ptr %i.cu, align 8, !tbaa !128
  %i.cv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x double> %wide.load, ptr %next.gep, align 8, !tbaa !128
  store <2 x double> %wide.load578, ptr %i.cv, align 8, !tbaa !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.loopexit, label %.lr.ph.split.us.us.preheader749

.lr.ph.split.us.us.preheader749:                  ; preds = %.lr.ph.split.us.us.preheader, %middle.block
  %.0269.us.us.ph = phi i32 [ 0, %.lr.ph.split.us.us.preheader ], [ %i.be, %middle.block ] ; 4 uses
  %.1268.us.us.ph = phi ptr [ %.0201278.us, %.lr.ph.split.us.us.preheader ], [ %i.cr, %middle.block ] ; 2 uses
  %.1205266.us.us.ph = phi ptr [ %.0204276.us, %.lr.ph.split.us.us.preheader ], [ %i.cs, %middle.block ] ; 2 uses
  %i.cx = sub i32 %i.av, %.0269.us.us.ph
  %xtraiter759 = and i32 %i.cx, 7                 ; 2 uses
  %lcmp.mod760.not = icmp eq i32 %xtraiter759, 0
  br i1 %lcmp.mod760.not, label %.lr.ph.split.us.us.prol.loopexit, label %.lr.ph.split.us.us.prol

.lr.ph.split.us.us.prol:                          ; preds = %.lr.ph.split.us.us.preheader749, %.lr.ph.split.us.us.prol
  %.0269.us.us.prol = phi i32 [ %i.cz, %.lr.ph.split.us.us.prol ], [ %.0269.us.us.ph, %.lr.ph.split.us.us.preheader749 ]
  %.1268.us.us.prol = phi ptr [ %i.db, %.lr.ph.split.us.us.prol ], [ %.1268.us.us.ph, %.lr.ph.split.us.us.preheader749 ] ; 2 uses
  %.1205266.us.us.prol = phi ptr [ %i.da, %.lr.ph.split.us.us.prol ], [ %.1205266.us.us.ph, %.lr.ph.split.us.us.preheader749 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.split.us.us.prol ], [ 0, %.lr.ph.split.us.us.preheader749 ]
  %i.cy = load double, ptr %.1205266.us.us.prol, align 8, !tbaa !128
  store double %i.cy, ptr %.1268.us.us.prol, align 8, !tbaa !128
  %i.cz = add nuw nsw i32 %.0269.us.us.prol, 1    ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.1205266.us.us.prol, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1268.us.us.prol, i64 8 ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter759
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.us.prol.loopexit, label %.lr.ph.split.us.us.prol, !llvm.loop !143

.lr.ph.split.us.us.prol.loopexit:                 ; preds = %.lr.ph.split.us.us.prol, %.lr.ph.split.us.us.preheader749
  %.lcssa757.unr = phi ptr [ poison, %.lr.ph.split.us.us.preheader749 ], [ %i.da, %.lr.ph.split.us.us.prol ]
  %.lcssa756.unr = phi ptr [ poison, %.lr.ph.split.us.us.preheader749 ], [ %i.db, %.lr.ph.split.us.us.prol ]
  %.0269.us.us.unr = phi i32 [ %.0269.us.us.ph, %.lr.ph.split.us.us.preheader749 ], [ %i.cz, %.lr.ph.split.us.us.prol ]
  %.1268.us.us.unr = phi ptr [ %.1268.us.us.ph, %.lr.ph.split.us.us.preheader749 ], [ %i.db, %.lr.ph.split.us.us.prol ]
  %.1205266.us.us.unr = phi ptr [ %.1205266.us.us.ph, %.lr.ph.split.us.us.preheader749 ], [ %i.da, %.lr.ph.split.us.us.prol ]
  %i.dc = sub i32 %.0269.us.us.ph, %i.av
  %i.dd = icmp ugt i32 %i.dc, -8
  br i1 %i.dd, label %._crit_edge.us.loopexit, label %.lr.ph.split.us.us

.lr.ph.split.us290:                               ; preds = %.lr.ph.split.us290.prol.loopexit, %.lr.ph.split.us290
  %.0269.us282 = phi i32 [ %i.dv, %.lr.ph.split.us290 ], [ %.0269.us282.unr, %.lr.ph.split.us290.prol.loopexit ]
  %.1268.us283 = phi ptr [ %i.dy, %.lr.ph.split.us290 ], [ %.1268.us283.unr, %.lr.ph.split.us290.prol.loopexit ] ; 3 uses
  %.1203267.us284 = phi ptr [ %i.dx, %.lr.ph.split.us290 ], [ %.1203267.us284.unr, %.lr.ph.split.us290.prol.loopexit ] ; 3 uses
  %.1205266.us285 = phi ptr [ %i.dw, %.lr.ph.split.us290 ], [ %.1205266.us285.unr, %.lr.ph.split.us290.prol.loopexit ] ; 3 uses
  %i.de = load double, ptr %.1205266.us285, align 8, !tbaa !128
  %i.df = load double, ptr %.1203267.us284, align 8, !tbaa !128
  %i.dg = fptrunc nsz double %i.df to float
  %i.dh = fptrunc nsz double %i.de to float
  %i.di = fmul nsz float %i.bi, %i.dg
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %i.dh, float %i.bh, float %i.di)
  %i.dk = fpext nsz float %i.dj to double
  store double %i.dk, ptr %.1268.us283, align 8, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %.1205266.us285, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %.1203267.us284, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %.1268.us283, i64 8
  %i.do = load double, ptr %i.dl, align 8, !tbaa !128
  %i.dp = load double, ptr %i.dm, align 8, !tbaa !128
  %i.dq = fptrunc nsz double %i.dp to float
  %i.dr = fptrunc nsz double %i.do to float
  %i.ds = fmul nsz float %i.bi, %i.dq
  %i.dt = tail call nsz float @llvm.fmuladd.f32(float %i.dr, float %i.bh, float %i.ds)
  %i.du = fpext nsz float %i.dt to double
  store double %i.du, ptr %i.dn, align 8, !tbaa !128
  %i.dv = add nuw nsw i32 %.0269.us282, 2         ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.1205266.us285, i64 16 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.1203267.us284, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.1268.us283, i64 16 ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.dv, %i.av
  br i1 %exitcond.not.1, label %._crit_edge.us, label %.lr.ph.split.us290, !llvm.loop !145

._crit_edge.us.loopexit:                          ; preds = %.lr.ph.split.us.us.prol.loopexit, %.lr.ph.split.us.us, %middle.block
  %.lcssa573 = phi ptr [ %i.cs, %middle.block ], [ %.lcssa757.unr, %.lr.ph.split.us.us.prol.loopexit ], [ %i.fe, %.lr.ph.split.us.us ]
  %.lcssa572 = phi ptr [ %i.cr, %middle.block ], [ %.lcssa756.unr, %.lr.ph.split.us.us.prol.loopexit ], [ %i.ff, %.lr.ph.split.us.us ]
  %i.dz = getelementptr i8, ptr %.0202277.us, i64 %i.ba
  %scevgep = getelementptr i8, ptr %i.dz, i64 8
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph.split.us290.prol.loopexit, %.lr.ph.split.us290, %middle.block601, %._crit_edge.us.loopexit
  %.us-phi.us = phi ptr [ %.lcssa573, %._crit_edge.us.loopexit ], [ %i.bn, %middle.block601 ], [ %.lcssa755.unr, %.lr.ph.split.us290.prol.loopexit ], [ %i.dw, %.lr.ph.split.us290 ]
  %.us-phi272.us = phi ptr [ %scevgep, %._crit_edge.us.loopexit ], [ %i.bm, %middle.block601 ], [ %.lcssa754.unr, %.lr.ph.split.us290.prol.loopexit ], [ %i.dx, %.lr.ph.split.us290 ]
  %.us-phi273.us = phi ptr [ %.lcssa572, %._crit_edge.us.loopexit ], [ %i.bl, %middle.block601 ], [ %.lcssa753.unr, %.lr.ph.split.us290.prol.loopexit ], [ %i.dy, %.lr.ph.split.us290 ] ; 3 uses
  %i.ea = add nuw nsw i64 %.0200279.us, 1         ; 2 uses
  %i.eb = add nsw i64 %i.bg, 1                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.4245274.us, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %.4275.us, i64 4
  %i.ee = icmp slt i64 %i.ea, %i.w
  %i.ef = icmp ult ptr %.us-phi273.us, %2
  %i.eg = select i1 %i.ee, i1 %i.ef, i1 false
  br i1 %i.eg, label %.lr.ph.us, label %.loopexit.sink.split, !llvm.loop !146

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.prol.loopexit, %.lr.ph.split.us.us
  %.0269.us.us = phi i32 [ %i.fd, %.lr.ph.split.us.us ], [ %.0269.us.us.unr, %.lr.ph.split.us.us.prol.loopexit ]
  %.1268.us.us = phi ptr [ %i.ff, %.lr.ph.split.us.us ], [ %.1268.us.us.unr, %.lr.ph.split.us.us.prol.loopexit ] ; 9 uses
  %.1205266.us.us = phi ptr [ %i.fe, %.lr.ph.split.us.us ], [ %.1205266.us.us.unr, %.lr.ph.split.us.us.prol.loopexit ] ; 9 uses
  %i.eh = load double, ptr %.1205266.us.us, align 8, !tbaa !128
  store double %i.eh, ptr %.1268.us.us, align 8, !tbaa !128
  %i.ei = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 8
  %i.ek = load double, ptr %i.ei, align 8, !tbaa !128
  store double %i.ek, ptr %i.ej, align 8, !tbaa !128
  %i.el = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 16
  %i.en = load double, ptr %i.el, align 8, !tbaa !128
  store double %i.en, ptr %i.em, align 8, !tbaa !128
  %i.eo = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 24
  %i.ep = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 24
  %i.eq = load double, ptr %i.eo, align 8, !tbaa !128
  store double %i.eq, ptr %i.ep, align 8, !tbaa !128
  %i.er = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 32
  %i.es = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 32
  %i.et = load double, ptr %i.er, align 8, !tbaa !128
  store double %i.et, ptr %i.es, align 8, !tbaa !128
  %i.eu = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 40
  %i.ev = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 40
  %i.ew = load double, ptr %i.eu, align 8, !tbaa !128
  store double %i.ew, ptr %i.ev, align 8, !tbaa !128
  %i.ex = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 48
  %i.ez = load double, ptr %i.ex, align 8, !tbaa !128
  store double %i.ez, ptr %i.ey, align 8, !tbaa !128
  %i.fa = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 56
  %i.fb = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 56
  %i.fc = load double, ptr %i.fa, align 8, !tbaa !128
  store double %i.fc, ptr %i.fb, align 8, !tbaa !128
  %i.fd = add nuw nsw i32 %.0269.us.us, 8         ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.1205266.us.us, i64 64 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.1268.us.us, i64 64 ; 2 uses
  %exitcond473.not.7 = icmp eq i32 %i.fd, %i.av
  br i1 %exitcond473.not.7, label %._crit_edge.us.loopexit, label %.lr.ph.split.us.us, !llvm.loop !147

.lr.ph280.split.split.preheader:                  ; preds = %.lr.ph280
  %i.fg = add i64 %i.i, %i.v
  %i.fh = sub i64 %i.fg, %.
  br label %.loopexit.sink.split

.preheader262:                                    ; preds = %bb.c
  %i.fi = icmp sgt i64 %i.w, 0
  %i.fj = icmp ult ptr %.fr430, %2
  %i.fk = and i1 %i.fi, %i.fj
  br i1 %i.fk, label %.lr.ph314, label %.loopexit

.lr.ph314:                                        ; preds = %.preheader262
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !92 ; 10 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph314.split.us, label %.lr.ph314.split.split.preheader

.lr.ph314.split.us:                               ; preds = %.lr.ph314
  %i.fo = load i64, ptr %i.g, align 8, !tbaa !30
  %i.fp = add nsw i32 %i.fm, -1
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %4 = icmp slt i64 %i.fo, 0
  %i.fs = zext nneg i32 %i.fm to i64              ; 4 uses
  %min.iters.check612 = icmp ult i32 %i.fm, 8     ; 2 uses
  %n.vec635 = and i64 %i.fs, 2147483640           ; 4 uses
  %i.ft = trunc nuw nsw i64 %n.vec635 to i32
  %i.fu = shl nuw nsw i64 %n.vec635, 2            ; 3 uses
  %cmp.n651 = icmp eq i64 %n.vec635, %i.fs
  %n.vec614 = and i64 %i.fs, 2147483640           ; 4 uses
  %i.fv = trunc nuw nsw i64 %n.vec614 to i32
  %i.fw = shl nuw nsw i64 %n.vec614, 2            ; 2 uses
  %cmp.n623 = icmp eq i64 %n.vec614, %i.fs
  br label %.lr.ph.us323

.lr.ph.us323:                                     ; preds = %._crit_edge.us329, %.lr.ph314.split.us
  %i.fx = phi i64 [ %i.i, %.lr.ph314.split.us ], [ %i.id, %._crit_edge.us329 ]
  %.0207313.us = phi i64 [ 0, %.lr.ph314.split.us ], [ %i.ic, %._crit_edge.us329 ]
  %.0208312.us = phi ptr [ %.fr430, %.lr.ph314.split.us ], [ %.us-phi307.us, %._crit_edge.us329 ] ; 8 uses
  %.0210311.us = phi ptr [ %i.af, %.lr.ph314.split.us ], [ %.us-phi306.us, %._crit_edge.us329 ] ; 6 uses
  %.0212310.us = phi ptr [ %i.ak, %.lr.ph314.split.us ], [ %.us-phi305.us, %._crit_edge.us329 ] ; 8 uses
  %.3309.us = phi ptr [ %i.an, %.lr.ph314.split.us ], [ %i.if, %._crit_edge.us329 ] ; 2 uses
  %.3244308.us = phi ptr [ %i.ao, %.lr.ph314.split.us ], [ %i.ie, %._crit_edge.us329 ] ; 2 uses
  %.0210311.us629 = ptrtoaddr ptr %.0210311.us to i64
  %.0208312.us608 = ptrtoaddr ptr %.0208312.us to i64 ; 3 uses
  %.0212310.us609 = ptrtoaddr ptr %.0212310.us to i64 ; 2 uses
  %i.fy = load float, ptr %.3244308.us, align 4, !tbaa !76 ; 4 uses
  %i.fz = load float, ptr %.3309.us, align 4, !tbaa !76 ; 4 uses
  br i1 %4, label %.lr.ph.split.us.us330.preheader, label %.lr.ph.split.us328.preheader

.lr.ph.split.us328.preheader:                     ; preds = %.lr.ph.us323
  br i1 %min.iters.check612, label %.lr.ph.split.us328.preheader740, label %vector.memcheck627

vector.memcheck627:                               ; preds = %.lr.ph.split.us328.preheader
  %i.ga = sub i64 %.0212310.us609, %.0208312.us608
  %diff.check628 = icmp ugt i64 %i.ga, -32
  %i.gb = sub i64 %.0210311.us629, %.0208312.us608
  %diff.check630 = icmp ugt i64 %i.gb, -32
  %conflict.rdx631 = or i1 %diff.check628, %diff.check630
  br i1 %conflict.rdx631, label %.lr.ph.split.us328.preheader740, label %vector.ph634

vector.ph634:                                     ; preds = %vector.memcheck627
  %i.gc = getelementptr i8, ptr %.0208312.us, i64 %i.fu ; 2 uses
  %i.gd = getelementptr i8, ptr %.0210311.us, i64 %i.fu ; 2 uses
  %i.ge = getelementptr i8, ptr %.0212310.us, i64 %i.fu ; 2 uses
  %broadcast.splatinsert636 = insertelement <4 x float> poison, float %i.fz, i64 0
  %broadcast.splat637 = shufflevector <4 x float> %broadcast.splatinsert636, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert638 = insertelement <4 x float> poison, float %i.fy, i64 0
  %broadcast.splat639 = shufflevector <4 x float> %broadcast.splatinsert638, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body640

vector.body640:                                   ; preds = %vector.body640, %vector.ph634
  %index641 = phi i64 [ 0, %vector.ph634 ], [ %index.next649, %vector.body640 ] ; 2 uses
  %i.gf = shl i64 %index641, 2                    ; 3 uses
  %next.gep642 = getelementptr i8, ptr %.0208312.us, i64 %i.gf ; 2 uses
  %next.gep643 = getelementptr i8, ptr %.0210311.us, i64 %i.gf ; 2 uses
  %next.gep644 = getelementptr i8, ptr %.0212310.us, i64 %i.gf ; 2 uses
  %i.gg = getelementptr i8, ptr %next.gep644, i64 16
  %wide.load645 = load <4 x float>, ptr %next.gep644, align 4, !tbaa !76
  %wide.load646 = load <4 x float>, ptr %i.gg, align 4, !tbaa !76
  %i.gh = getelementptr i8, ptr %next.gep643, i64 16
  %wide.load647 = load <4 x float>, ptr %next.gep643, align 4, !tbaa !76
  %wide.load648 = load <4 x float>, ptr %i.gh, align 4, !tbaa !76
  %i.gi = fmul nsz <4 x float> %broadcast.splat637, %wide.load647
  %i.gj = fmul nsz <4 x float> %broadcast.splat637, %wide.load648
  %i.gk = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load645, <4 x float> %broadcast.splat639, <4 x float> %i.gi)
  %i.gl = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load646, <4 x float> %broadcast.splat639, <4 x float> %i.gj)
  %i.gm = getelementptr i8, ptr %next.gep642, i64 16
  store <4 x float> %i.gk, ptr %next.gep642, align 4, !tbaa !76
  store <4 x float> %i.gl, ptr %i.gm, align 4, !tbaa !76
  %index.next649 = add nuw i64 %index641, 8       ; 2 uses
  %i.gn = icmp eq i64 %index.next649, %n.vec635
  br i1 %i.gn, label %middle.block650, label %vector.body640, !llvm.loop !148

middle.block650:                                  ; preds = %vector.body640
  br i1 %cmp.n651, label %._crit_edge.us329, label %.lr.ph.split.us328.preheader740

.lr.ph.split.us328.preheader740:                  ; preds = %vector.memcheck627, %.lr.ph.split.us328.preheader, %middle.block650
  %.0206302.us319.ph = phi i32 [ 0, %vector.memcheck627 ], [ 0, %.lr.ph.split.us328.preheader ], [ %i.ft, %middle.block650 ] ; 4 uses
  %.1209301.us320.ph = phi ptr [ %.0208312.us, %vector.memcheck627 ], [ %.0208312.us, %.lr.ph.split.us328.preheader ], [ %i.gc, %middle.block650 ] ; 3 uses
  %.1211300.us321.ph = phi ptr [ %.0210311.us, %vector.memcheck627 ], [ %.0210311.us, %.lr.ph.split.us328.preheader ], [ %i.gd, %middle.block650 ] ; 3 uses
  %.1213299.us322.ph = phi ptr [ %.0212310.us, %vector.memcheck627 ], [ %.0212310.us, %.lr.ph.split.us328.preheader ], [ %i.ge, %middle.block650 ] ; 3 uses
  %i.go = sub i32 %i.fm, %.0206302.us319.ph
  %.neg773 = add i32 %.0206302.us319.ph, 1
  %xtraiter761 = and i32 %i.go, 1
  %lcmp.mod762.not = icmp eq i32 %xtraiter761, 0
  br i1 %lcmp.mod762.not, label %.lr.ph.split.us328.prol.loopexit, label %.lr.ph.split.us328.prol

.lr.ph.split.us328.prol:                          ; preds = %.lr.ph.split.us328.preheader740
  %i.gp = load float, ptr %.1213299.us322.ph, align 4, !tbaa !76
  %i.gq = load float, ptr %.1211300.us321.ph, align 4, !tbaa !76
  %i.gr = fmul nsz float %i.fz, %i.gq
  %i.gs = tail call nsz float @llvm.fmuladd.f32(float %i.gp, float %i.fy, float %i.gr)
  store float %i.gs, ptr %.1209301.us320.ph, align 4, !tbaa !76
  %i.gt = add nuw nsw i32 %.0206302.us319.ph, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.1213299.us322.ph, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.1211300.us321.ph, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.1209301.us320.ph, i64 4 ; 2 uses
  br label %.lr.ph.split.us328.prol.loopexit

.lr.ph.split.us328.prol.loopexit:                 ; preds = %.lr.ph.split.us328.prol, %.lr.ph.split.us328.preheader740
  %.lcssa745.unr = phi ptr [ poison, %.lr.ph.split.us328.preheader740 ], [ %i.gu, %.lr.ph.split.us328.prol ]
  %.lcssa744.unr = phi ptr [ poison, %.lr.ph.split.us328.preheader740 ], [ %i.gv, %.lr.ph.split.us328.prol ]
  %.lcssa743.unr = phi ptr [ poison, %.lr.ph.split.us328.preheader740 ], [ %i.gw, %.lr.ph.split.us328.prol ]
  %.0206302.us319.unr = phi i32 [ %.0206302.us319.ph, %.lr.ph.split.us328.preheader740 ], [ %i.gt, %.lr.ph.split.us328.prol ]
  %.1209301.us320.unr = phi ptr [ %.1209301.us320.ph, %.lr.ph.split.us328.preheader740 ], [ %i.gw, %.lr.ph.split.us328.prol ]
  %.1211300.us321.unr = phi ptr [ %.1211300.us321.ph, %.lr.ph.split.us328.preheader740 ], [ %i.gv, %.lr.ph.split.us328.prol ]
  %.1213299.us322.unr = phi ptr [ %.1213299.us322.ph, %.lr.ph.split.us328.preheader740 ], [ %i.gu, %.lr.ph.split.us328.prol ]
  %i.gx = icmp eq i32 %i.fm, %.neg773
  br i1 %i.gx, label %._crit_edge.us329, label %.lr.ph.split.us328

.lr.ph.split.us.us330.preheader:                  ; preds = %.lr.ph.us323
  %i.gy = sub i64 %.0212310.us609, %.0208312.us608
  %diff.check610 = icmp ugt i64 %i.gy, -32
  %or.cond714 = select i1 %min.iters.check612, i1 true, i1 %diff.check610
  br i1 %or.cond714, label %.lr.ph.split.us.us330.preheader739, label %vector.ph613

vector.ph613:                                     ; preds = %.lr.ph.split.us.us330.preheader
  %i.gz = getelementptr i8, ptr %.0208312.us, i64 %i.fw ; 2 uses
  %i.ha = getelementptr i8, ptr %.0212310.us, i64 %i.fw ; 2 uses
  br label %vector.body615

vector.body615:                                   ; preds = %vector.body615, %vector.ph613
  %index616 = phi i64 [ 0, %vector.ph613 ], [ %index.next621, %vector.body615 ] ; 2 uses
  %i.hb = shl i64 %index616, 2                    ; 2 uses
  %next.gep617 = getelementptr i8, ptr %.0208312.us, i64 %i.hb ; 2 uses
  %next.gep618 = getelementptr i8, ptr %.0212310.us, i64 %i.hb ; 2 uses
  %i.hc = getelementptr i8, ptr %next.gep618, i64 16
  %wide.load619 = load <4 x float>, ptr %next.gep618, align 4, !tbaa !76
  %wide.load620 = load <4 x float>, ptr %i.hc, align 4, !tbaa !76
  %i.hd = getelementptr i8, ptr %next.gep617, i64 16
  store <4 x float> %wide.load619, ptr %next.gep617, align 4, !tbaa !76
  store <4 x float> %wide.load620, ptr %i.hd, align 4, !tbaa !76
  %index.next621 = add nuw i64 %index616, 8       ; 2 uses
  %i.he = icmp eq i64 %index.next621, %n.vec614
  br i1 %i.he, label %middle.block622, label %vector.body615, !llvm.loop !149

middle.block622:                                  ; preds = %vector.body615
  br i1 %cmp.n623, label %._crit_edge.us329.loopexit, label %.lr.ph.split.us.us330.preheader739

.lr.ph.split.us.us330.preheader739:               ; preds = %.lr.ph.split.us.us330.preheader, %middle.block622
  %.0206302.us.us.ph = phi i32 [ 0, %.lr.ph.split.us.us330.preheader ], [ %i.fv, %middle.block622 ] ; 4 uses
  %.1209301.us.us.ph = phi ptr [ %.0208312.us, %.lr.ph.split.us.us330.preheader ], [ %i.gz, %middle.block622 ] ; 2 uses
  %.1213299.us.us.ph = phi ptr [ %.0212310.us, %.lr.ph.split.us.us330.preheader ], [ %i.ha, %middle.block622 ] ; 2 uses
  %i.hf = sub i32 %i.fm, %.0206302.us.us.ph
  %xtraiter764 = and i32 %i.hf, 7                 ; 2 uses
  %lcmp.mod765.not = icmp eq i32 %xtraiter764, 0
  br i1 %lcmp.mod765.not, label %.lr.ph.split.us.us330.prol.loopexit, label %.lr.ph.split.us.us330.prol

.lr.ph.split.us.us330.prol:                       ; preds = %.lr.ph.split.us.us330.preheader739, %.lr.ph.split.us.us330.prol
  %.0206302.us.us.prol = phi i32 [ %i.hh, %.lr.ph.split.us.us330.prol ], [ %.0206302.us.us.ph, %.lr.ph.split.us.us330.preheader739 ]
  %.1209301.us.us.prol = phi ptr [ %i.hj, %.lr.ph.split.us.us330.prol ], [ %.1209301.us.us.ph, %.lr.ph.split.us.us330.preheader739 ] ; 2 uses
  %.1213299.us.us.prol = phi ptr [ %i.hi, %.lr.ph.split.us.us330.prol ], [ %.1213299.us.us.ph, %.lr.ph.split.us.us330.preheader739 ] ; 2 uses
  %prol.iter766 = phi i32 [ %prol.iter766.next, %.lr.ph.split.us.us330.prol ], [ 0, %.lr.ph.split.us.us330.preheader739 ]
  %i.hg = load float, ptr %.1213299.us.us.prol, align 4, !tbaa !76
  store float %i.hg, ptr %.1209301.us.us.prol, align 4, !tbaa !76
  %i.hh = add nuw nsw i32 %.0206302.us.us.prol, 1 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.1213299.us.us.prol, i64 4 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.1209301.us.us.prol, i64 4 ; 3 uses
  %prol.iter766.next = add i32 %prol.iter766, 1   ; 2 uses
  %prol.iter766.cmp.not = icmp eq i32 %prol.iter766.next, %xtraiter764
  br i1 %prol.iter766.cmp.not, label %.lr.ph.split.us.us330.prol.loopexit, label %.lr.ph.split.us.us330.prol, !llvm.loop !150

.lr.ph.split.us.us330.prol.loopexit:              ; preds = %.lr.ph.split.us.us330.prol, %.lr.ph.split.us.us330.preheader739
  %.lcssa747.unr = phi ptr [ poison, %.lr.ph.split.us.us330.preheader739 ], [ %i.hi, %.lr.ph.split.us.us330.prol ]
  %.lcssa746.unr = phi ptr [ poison, %.lr.ph.split.us.us330.preheader739 ], [ %i.hj, %.lr.ph.split.us.us330.prol ]
  %.0206302.us.us.unr = phi i32 [ %.0206302.us.us.ph, %.lr.ph.split.us.us330.preheader739 ], [ %i.hh, %.lr.ph.split.us.us330.prol ]
  %.1209301.us.us.unr = phi ptr [ %.1209301.us.us.ph, %.lr.ph.split.us.us330.preheader739 ], [ %i.hj, %.lr.ph.split.us.us330.prol ]
  %.1213299.us.us.unr = phi ptr [ %.1213299.us.us.ph, %.lr.ph.split.us.us330.preheader739 ], [ %i.hi, %.lr.ph.split.us.us330.prol ]
  %i.hk = sub i32 %.0206302.us.us.ph, %i.fm
  %i.hl = icmp ugt i32 %i.hk, -8
  br i1 %i.hl, label %._crit_edge.us329.loopexit, label %.lr.ph.split.us.us330

.lr.ph.split.us328:                               ; preds = %.lr.ph.split.us328.prol.loopexit, %.lr.ph.split.us328
  %.0206302.us319 = phi i32 [ %i.hx, %.lr.ph.split.us328 ], [ %.0206302.us319.unr, %.lr.ph.split.us328.prol.loopexit ]
  %.1209301.us320 = phi ptr [ %i.ia, %.lr.ph.split.us328 ], [ %.1209301.us320.unr, %.lr.ph.split.us328.prol.loopexit ] ; 3 uses
  %.1211300.us321 = phi ptr [ %i.hz, %.lr.ph.split.us328 ], [ %.1211300.us321.unr, %.lr.ph.split.us328.prol.loopexit ] ; 3 uses
  %.1213299.us322 = phi ptr [ %i.hy, %.lr.ph.split.us328 ], [ %.1213299.us322.unr, %.lr.ph.split.us328.prol.loopexit ] ; 3 uses
  %i.hm = load float, ptr %.1213299.us322, align 4, !tbaa !76
  %i.hn = load float, ptr %.1211300.us321, align 4, !tbaa !76
  %i.ho = fmul nsz float %i.fz, %i.hn
  %i.hp = tail call nsz float @llvm.fmuladd.f32(float %i.hm, float %i.fy, float %i.ho)
  store float %i.hp, ptr %.1209301.us320, align 4, !tbaa !76
  %i.hq = getelementptr inbounds nuw i8, ptr %.1213299.us322, i64 4
  %i.hr = getelementptr inbounds nuw i8, ptr %.1211300.us321, i64 4
  %i.hs = getelementptr inbounds nuw i8, ptr %.1209301.us320, i64 4
  %i.ht = load float, ptr %i.hq, align 4, !tbaa !76
  %i.hu = load float, ptr %i.hr, align 4, !tbaa !76
  %i.hv = fmul nsz float %i.fz, %i.hu
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.fy, float %i.hv)
  store float %i.hw, ptr %i.hs, align 4, !tbaa !76
  %i.hx = add nuw nsw i32 %.0206302.us319, 2      ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.1213299.us322, i64 8 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.1211300.us321, i64 8 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.1209301.us320, i64 8 ; 2 uses
  %exitcond474.not.1 = icmp eq i32 %i.hx, %i.fm
  br i1 %exitcond474.not.1, label %._crit_edge.us329, label %.lr.ph.split.us328, !llvm.loop !151

._crit_edge.us329.loopexit:                       ; preds = %.lr.ph.split.us.us330.prol.loopexit, %.lr.ph.split.us.us330, %middle.block622
  %.lcssa567 = phi ptr [ %i.ha, %middle.block622 ], [ %.lcssa747.unr, %.lr.ph.split.us.us330.prol.loopexit ], [ %i.jg, %.lr.ph.split.us.us330 ]
  %.lcssa566 = phi ptr [ %i.gz, %middle.block622 ], [ %.lcssa746.unr, %.lr.ph.split.us.us330.prol.loopexit ], [ %i.jh, %.lr.ph.split.us.us330 ]
  %i.ib = getelementptr i8, ptr %.0210311.us, i64 %i.fr
  %scevgep475 = getelementptr i8, ptr %i.ib, i64 4
  br label %._crit_edge.us329

._crit_edge.us329:                                ; preds = %.lr.ph.split.us328.prol.loopexit, %.lr.ph.split.us328, %middle.block650, %._crit_edge.us329.loopexit
  %.us-phi305.us = phi ptr [ %.lcssa567, %._crit_edge.us329.loopexit ], [ %i.ge, %middle.block650 ], [ %.lcssa745.unr, %.lr.ph.split.us328.prol.loopexit ], [ %i.hy, %.lr.ph.split.us328 ]
  %.us-phi306.us = phi ptr [ %scevgep475, %._crit_edge.us329.loopexit ], [ %i.gd, %middle.block650 ], [ %.lcssa744.unr, %.lr.ph.split.us328.prol.loopexit ], [ %i.hz, %.lr.ph.split.us328 ]
  %.us-phi307.us = phi ptr [ %.lcssa566, %._crit_edge.us329.loopexit ], [ %i.gc, %middle.block650 ], [ %.lcssa743.unr, %.lr.ph.split.us328.prol.loopexit ], [ %i.ia, %.lr.ph.split.us328 ] ; 3 uses
  %i.ic = add nuw nsw i64 %.0207313.us, 1         ; 2 uses
  %i.id = add nsw i64 %i.fx, 1                    ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.3244308.us, i64 4
  %i.if = getelementptr inbounds nuw i8, ptr %.3309.us, i64 4
  %i.ig = icmp slt i64 %i.ic, %i.w
  %i.ih = icmp ult ptr %.us-phi307.us, %2
  %i.ii = select i1 %i.ig, i1 %i.ih, i1 false
  br i1 %i.ii, label %.lr.ph.us323, label %.loopexit.sink.split, !llvm.loop !152

.lr.ph.split.us.us330:                            ; preds = %.lr.ph.split.us.us330.prol.loopexit, %.lr.ph.split.us.us330
  %.0206302.us.us = phi i32 [ %i.jf, %.lr.ph.split.us.us330 ], [ %.0206302.us.us.unr, %.lr.ph.split.us.us330.prol.loopexit ]
  %.1209301.us.us = phi ptr [ %i.jh, %.lr.ph.split.us.us330 ], [ %.1209301.us.us.unr, %.lr.ph.split.us.us330.prol.loopexit ] ; 9 uses
  %.1213299.us.us = phi ptr [ %i.jg, %.lr.ph.split.us.us330 ], [ %.1213299.us.us.unr, %.lr.ph.split.us.us330.prol.loopexit ] ; 9 uses
  %i.ij = load float, ptr %.1213299.us.us, align 4, !tbaa !76
  store float %i.ij, ptr %.1209301.us.us, align 4, !tbaa !76
  %i.ik = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 4
  %i.il = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 4
  %i.im = load float, ptr %i.ik, align 4, !tbaa !76
  store float %i.im, ptr %i.il, align 4, !tbaa !76
  %i.in = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 8
  %i.io = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 8
  %i.ip = load float, ptr %i.in, align 4, !tbaa !76
  store float %i.ip, ptr %i.io, align 4, !tbaa !76
  %i.iq = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 12
  %i.ir = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 12
  %i.is = load float, ptr %i.iq, align 4, !tbaa !76
  store float %i.is, ptr %i.ir, align 4, !tbaa !76
  %i.it = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 16
  %i.iu = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 16
  %i.iv = load float, ptr %i.it, align 4, !tbaa !76
  store float %i.iv, ptr %i.iu, align 4, !tbaa !76
  %i.iw = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 20
  %i.ix = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 20
  %i.iy = load float, ptr %i.iw, align 4, !tbaa !76
  store float %i.iy, ptr %i.ix, align 4, !tbaa !76
  %i.iz = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 24
  %i.ja = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 24
  %i.jb = load float, ptr %i.iz, align 4, !tbaa !76
  store float %i.jb, ptr %i.ja, align 4, !tbaa !76
  %i.jc = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 28
  %i.jd = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 28
  %i.je = load float, ptr %i.jc, align 4, !tbaa !76
  store float %i.je, ptr %i.jd, align 4, !tbaa !76
  %i.jf = add nuw nsw i32 %.0206302.us.us, 8      ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.1213299.us.us, i64 32 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.1209301.us.us, i64 32 ; 2 uses
  %exitcond476.not.7 = icmp eq i32 %i.jf, %i.fm
  br i1 %exitcond476.not.7, label %._crit_edge.us329.loopexit, label %.lr.ph.split.us.us330, !llvm.loop !153

.lr.ph314.split.split.preheader:                  ; preds = %.lr.ph314
  %i.ji = add i64 %i.i, %i.v
  %i.jj = sub i64 %i.ji, %.
  br label %.loopexit.sink.split

.preheader260:                                    ; preds = %bb.c
  %i.jk = icmp sgt i64 %i.w, 0
  %i.jl = icmp ult ptr %.fr430, %2
  %i.jm = and i1 %i.jk, %i.jl
  br i1 %i.jm, label %.lr.ph358, label %.loopexit

.lr.ph358:                                        ; preds = %.preheader260
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !92 ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, 0
  br i1 %i.jp, label %.lr.ph358.split, label %.lr.ph358.split.us.split.preheader

.lr.ph358.split.us.split.preheader:               ; preds = %.lr.ph358
  %i.jq = add i64 %i.i, %i.v
  %i.jr = sub i64 %i.jq, %.
  br label %.loopexit.sink.split

.preheader258:                                    ; preds = %bb.c
  %i.js = icmp sgt i64 %i.w, 0
  %i.jt = icmp ult ptr %.fr430, %2
  %i.ju = and i1 %i.js, %i.jt
  br i1 %i.ju, label %.lr.ph388, label %.loopexit

.lr.ph388:                                        ; preds = %.preheader258
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !92 ; 12 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.lr.ph388.split.us, label %.lr.ph388.split.split.preheader

.lr.ph388.split.us:                               ; preds = %.lr.ph388
  %i.jy = load i64, ptr %i.g, align 8, !tbaa !30
  %i.jz = add nsw i32 %i.jw, -1
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = shl nuw nsw i64 %i.ka, 1
  %5 = icmp slt i64 %i.jy, 0
  %i.kc = zext nneg i32 %i.jw to i64              ; 7 uses
  %min.iters.check693 = icmp ult i32 %i.jw, 8
  %n.vec695 = and i64 %i.kc, 2147483640           ; 4 uses
  %i.kd = trunc nuw nsw i64 %n.vec695 to i32
  %i.ke = shl nuw nsw i64 %n.vec695, 1            ; 3 uses
  %cmp.n709 = icmp eq i64 %n.vec695, %i.kc
  %min.iters.check661 = icmp ult i32 %i.jw, 4
  %min.iters.check662 = icmp ult i32 %i.jw, 16
  %i.kf = and i64 %i.kc, 12
  %n.vec664 = and i64 %i.kc, 2147483632           ; 5 uses
  %i.kg = trunc nuw nsw i64 %n.vec664 to i32
  %i.kh = shl nuw nsw i64 %n.vec664, 1            ; 2 uses
  %cmp.n673 = icmp eq i64 %n.vec664, %i.kc
  %min.epilog.iters.check = icmp eq i64 %i.kf, 0
  %n.vec677 = and i64 %i.kc, 2147483644           ; 4 uses
  %i.ki = trunc nuw nsw i64 %n.vec677 to i32
  %i.kj = shl nuw nsw i64 %n.vec677, 1            ; 2 uses
  %cmp.n683 = icmp eq i64 %n.vec677, %i.kc
  br label %.lr.ph374.us

.lr.ph374.us:                                     ; preds = %._crit_edge375.us, %.lr.ph388.split.us
  %i.kk = phi i64 [ %i.i, %.lr.ph388.split.us ], [ %i.nb, %._crit_edge375.us ]
  %.0223387.us = phi i64 [ 0, %.lr.ph388.split.us ], [ %i.na, %._crit_edge375.us ]
  %.0224386.us = phi ptr [ %.fr430, %.lr.ph388.split.us ], [ %.us-phi381.us, %._crit_edge375.us ] ; 10 uses
  %.0226385.us = phi ptr [ %i.af, %.lr.ph388.split.us ], [ %.us-phi380.us, %._crit_edge375.us ] ; 6 uses
  %.0228384.us = phi ptr [ %i.ak, %.lr.ph388.split.us ], [ %.us-phi379.us, %._crit_edge375.us ] ; 10 uses
  %.1240383.us = phi ptr [ %i.an, %.lr.ph388.split.us ], [ %i.nd, %._crit_edge375.us ] ; 2 uses
  %.1242382.us = phi ptr [ %i.ao, %.lr.ph388.split.us ], [ %i.nc, %._crit_edge375.us ] ; 2 uses
  %.0226385.us689 = ptrtoaddr ptr %.0226385.us to i64
  %.0224386.us657 = ptrtoaddr ptr %.0224386.us to i64 ; 3 uses
  %.0228384.us658 = ptrtoaddr ptr %.0228384.us to i64 ; 2 uses
  %i.kl = load float, ptr %.1242382.us, align 4, !tbaa !76 ; 4 uses
  %i.km = load float, ptr %.1240383.us, align 4, !tbaa !76 ; 4 uses
  br i1 %5, label %iter.check, label %.lr.ph374.split.us400.preheader

.lr.ph374.split.us400.preheader:                  ; preds = %.lr.ph374.us
  br i1 %min.iters.check693, label %.lr.ph374.split.us400.preheader720, label %vector.memcheck687

vector.memcheck687:                               ; preds = %.lr.ph374.split.us400.preheader
  %i.kn = sub i64 %.0228384.us658, %.0224386.us657
  %diff.check688 = icmp ugt i64 %i.kn, -16
  %i.ko = sub i64 %.0226385.us689, %.0224386.us657
  %diff.check690 = icmp ugt i64 %i.ko, -16
  %conflict.rdx691 = or i1 %diff.check688, %diff.check690
  br i1 %conflict.rdx691, label %.lr.ph374.split.us400.preheader720, label %vector.ph694

vector.ph694:                                     ; preds = %vector.memcheck687
  %i.kp = getelementptr i8, ptr %.0224386.us, i64 %i.ke ; 2 uses
  %i.kq = getelementptr i8, ptr %.0226385.us, i64 %i.ke ; 2 uses
  %i.kr = getelementptr i8, ptr %.0228384.us, i64 %i.ke ; 2 uses
  %broadcast.splatinsert696 = insertelement <8 x float> poison, float %i.km, i64 0
  %broadcast.splat697 = shufflevector <8 x float> %broadcast.splatinsert696, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert698 = insertelement <8 x float> poison, float %i.kl, i64 0
  %broadcast.splat699 = shufflevector <8 x float> %broadcast.splatinsert698, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body700

vector.body700:                                   ; preds = %vector.body700, %vector.ph694
  %index701 = phi i64 [ 0, %vector.ph694 ], [ %index.next707, %vector.body700 ] ; 2 uses
  %i.ks = shl i64 %index701, 1                    ; 3 uses
  %next.gep702 = getelementptr i8, ptr %.0224386.us, i64 %i.ks
  %next.gep703 = getelementptr i8, ptr %.0226385.us, i64 %i.ks
  %next.gep704 = getelementptr i8, ptr %.0228384.us, i64 %i.ks
  %wide.load705 = load <8 x i16>, ptr %next.gep704, align 2, !tbaa !113
  %wide.load706 = load <8 x i16>, ptr %next.gep703, align 2, !tbaa !113
  %i.kt = sitofp nsz <8 x i16> %wide.load706 to <8 x float>
  %i.ku = sitofp nsz <8 x i16> %wide.load705 to <8 x float>
  %i.kv = fmul nsz <8 x float> %broadcast.splat697, %i.kt
  %i.kw = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ku, <8 x float> %broadcast.splat699, <8 x float> %i.kv)
  %i.kx = fptosi <8 x float> %i.kw to <8 x i16>
  store <8 x i16> %i.kx, ptr %next.gep702, align 2, !tbaa !113
  %index.next707 = add nuw i64 %index701, 8       ; 2 uses
  %i.ky = icmp eq i64 %index.next707, %n.vec695
  br i1 %i.ky, label %middle.block708, label %vector.body700, !llvm.loop !154

middle.block708:                                  ; preds = %vector.body700
  br i1 %cmp.n709, label %._crit_edge375.us, label %.lr.ph374.split.us400.preheader720

.lr.ph374.split.us400.preheader720:               ; preds = %vector.memcheck687, %.lr.ph374.split.us400.preheader, %middle.block708
  %.0222372.us392.ph = phi i32 [ 0, %vector.memcheck687 ], [ 0, %.lr.ph374.split.us400.preheader ], [ %i.kd, %middle.block708 ] ; 4 uses
  %.1225371.us393.ph = phi ptr [ %.0224386.us, %vector.memcheck687 ], [ %.0224386.us, %.lr.ph374.split.us400.preheader ], [ %i.kp, %middle.block708 ] ; 3 uses
  %.1227370.us394.ph = phi ptr [ %.0226385.us, %vector.memcheck687 ], [ %.0226385.us, %.lr.ph374.split.us400.preheader ], [ %i.kq, %middle.block708 ] ; 3 uses
  %.1229369.us395.ph = phi ptr [ %.0228384.us, %vector.memcheck687 ], [ %.0228384.us, %.lr.ph374.split.us400.preheader ], [ %i.kr, %middle.block708 ] ; 3 uses
  %i.kz = sub i32 %i.jw, %.0222372.us392.ph
  %.neg774 = add i32 %.0222372.us392.ph, 1
  %xtraiter767 = and i32 %i.kz, 1
  %lcmp.mod768.not = icmp eq i32 %xtraiter767, 0
  br i1 %lcmp.mod768.not, label %.lr.ph374.split.us400.prol.loopexit, label %.lr.ph374.split.us400.prol

.lr.ph374.split.us400.prol:                       ; preds = %.lr.ph374.split.us400.preheader720
  %i.la = load i16, ptr %.1229369.us395.ph, align 2, !tbaa !113
  %i.lb = load i16, ptr %.1227370.us394.ph, align 2, !tbaa !113
  %i.lc = sitofp nsz i16 %i.lb to float
  %i.ld = sitofp nsz i16 %i.la to float
  %i.le = fmul nsz float %i.km, %i.lc
  %i.lf = tail call nsz float @llvm.fmuladd.f32(float %i.ld, float %i.kl, float %i.le)
  %i.lg = fptosi float %i.lf to i16
  store i16 %i.lg, ptr %.1225371.us393.ph, align 2, !tbaa !113
  %i.lh = add nuw nsw i32 %.0222372.us392.ph, 1
  %i.li = getelementptr inbounds nuw i8, ptr %.1229369.us395.ph, i64 2 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.1227370.us394.ph, i64 2 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.1225371.us393.ph, i64 2 ; 2 uses
  br label %.lr.ph374.split.us400.prol.loopexit

.lr.ph374.split.us400.prol.loopexit:              ; preds = %.lr.ph374.split.us400.prol, %.lr.ph374.split.us400.preheader720
  %.lcssa724.unr = phi ptr [ poison, %.lr.ph374.split.us400.preheader720 ], [ %i.li, %.lr.ph374.split.us400.prol ]
  %.lcssa723.unr = phi ptr [ poison, %.lr.ph374.split.us400.preheader720 ], [ %i.lj, %.lr.ph374.split.us400.prol ]
  %.lcssa722.unr = phi ptr [ poison, %.lr.ph374.split.us400.preheader720 ], [ %i.lk, %.lr.ph374.split.us400.prol ]
  %.0222372.us392.unr = phi i32 [ %.0222372.us392.ph, %.lr.ph374.split.us400.preheader720 ], [ %i.lh, %.lr.ph374.split.us400.prol ]
  %.1225371.us393.unr = phi ptr [ %.1225371.us393.ph, %.lr.ph374.split.us400.preheader720 ], [ %i.lk, %.lr.ph374.split.us400.prol ]
  %.1227370.us394.unr = phi ptr [ %.1227370.us394.ph, %.lr.ph374.split.us400.preheader720 ], [ %i.lj, %.lr.ph374.split.us400.prol ]
  %.1229369.us395.unr = phi ptr [ %.1229369.us395.ph, %.lr.ph374.split.us400.preheader720 ], [ %i.li, %.lr.ph374.split.us400.prol ]
  %i.ll = icmp eq i32 %i.jw, %.neg774
  br i1 %i.ll, label %._crit_edge375.us, label %.lr.ph374.split.us400

iter.check:                                       ; preds = %.lr.ph374.us
  %i.lm = sub i64 %.0228384.us658, %.0224386.us657
  %diff.check659 = icmp ugt i64 %i.lm, -32
  %or.cond715 = select i1 %min.iters.check661, i1 true, i1 %diff.check659
  br i1 %or.cond715, label %.lr.ph374.split.us.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check662, label %vec.epilog.ph, label %vector.ph663

vector.ph663:                                     ; preds = %vector.main.loop.iter.check
  %i.ln = getelementptr i8, ptr %.0224386.us, i64 %i.kh ; 2 uses
  %i.lo = getelementptr i8, ptr %.0228384.us, i64 %i.kh ; 2 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph663
  %index666 = phi i64 [ 0, %vector.ph663 ], [ %index.next671, %vector.body665 ] ; 2 uses
  %i.lp = shl i64 %index666, 1                    ; 2 uses
  %next.gep667 = getelementptr i8, ptr %.0224386.us, i64 %i.lp ; 2 uses
  %next.gep668 = getelementptr i8, ptr %.0228384.us, i64 %i.lp ; 2 uses
  %i.lq = getelementptr i8, ptr %next.gep668, i64 16
  %wide.load669 = load <8 x i16>, ptr %next.gep668, align 2, !tbaa !113
  %wide.load670 = load <8 x i16>, ptr %i.lq, align 2, !tbaa !113
  %i.lr = getelementptr i8, ptr %next.gep667, i64 16
  store <8 x i16> %wide.load669, ptr %next.gep667, align 2, !tbaa !113
  store <8 x i16> %wide.load670, ptr %i.lr, align 2, !tbaa !113
  %index.next671 = add nuw i64 %index666, 16      ; 2 uses
  %i.ls = icmp eq i64 %index.next671, %n.vec664
  br i1 %i.ls, label %middle.block672, label %vector.body665, !llvm.loop !155

middle.block672:                                  ; preds = %vector.body665
  br i1 %cmp.n673, label %._crit_edge375.us.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block672
  br i1 %min.epilog.iters.check, label %.lr.ph374.split.us.us.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec664, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.lt = getelementptr i8, ptr %.0224386.us, i64 %i.kj ; 2 uses
  %i.lu = getelementptr i8, ptr %.0228384.us, i64 %i.kj ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index678 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next682, %vec.epilog.vector.body ] ; 2 uses
  %i.lv = shl i64 %index678, 1                    ; 2 uses
  %next.gep679 = getelementptr i8, ptr %.0224386.us, i64 %i.lv
  %next.gep680 = getelementptr i8, ptr %.0228384.us, i64 %i.lv
  %wide.load681 = load <4 x i16>, ptr %next.gep680, align 2, !tbaa !113
  store <4 x i16> %wide.load681, ptr %next.gep679, align 2, !tbaa !113
  %index.next682 = add nuw i64 %index678, 4       ; 2 uses
  %i.lw = icmp eq i64 %index.next682, %n.vec677
  br i1 %i.lw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n683, label %._crit_edge375.us.loopexit, label %.lr.ph374.split.us.us.preheader

.lr.ph374.split.us.us.preheader:                  ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0222372.us.us.ph = phi i32 [ 0, %iter.check ], [ %i.kg, %vec.epilog.iter.check ], [ %i.ki, %vec.epilog.middle.block ] ; 4 uses
  %.1225371.us.us.ph = phi ptr [ %.0224386.us, %iter.check ], [ %i.ln, %vec.epilog.iter.check ], [ %i.lt, %vec.epilog.middle.block ] ; 2 uses
  %.1229369.us.us.ph = phi ptr [ %.0228384.us, %iter.check ], [ %i.lo, %vec.epilog.iter.check ], [ %i.lu, %vec.epilog.middle.block ] ; 2 uses
  %i.lx = sub i32 %i.jw, %.0222372.us.us.ph
  %xtraiter770 = and i32 %i.lx, 7                 ; 2 uses
  %lcmp.mod771.not = icmp eq i32 %xtraiter770, 0
  br i1 %lcmp.mod771.not, label %.lr.ph374.split.us.us.prol.loopexit, label %.lr.ph374.split.us.us.prol

.lr.ph374.split.us.us.prol:                       ; preds = %.lr.ph374.split.us.us.preheader, %.lr.ph374.split.us.us.prol
  %.0222372.us.us.prol = phi i32 [ %i.lz, %.lr.ph374.split.us.us.prol ], [ %.0222372.us.us.ph, %.lr.ph374.split.us.us.preheader ]
  %.1225371.us.us.prol = phi ptr [ %i.mb, %.lr.ph374.split.us.us.prol ], [ %.1225371.us.us.ph, %.lr.ph374.split.us.us.preheader ] ; 2 uses
  %.1229369.us.us.prol = phi ptr [ %i.ma, %.lr.ph374.split.us.us.prol ], [ %.1229369.us.us.ph, %.lr.ph374.split.us.us.preheader ] ; 2 uses
  %prol.iter772 = phi i32 [ %prol.iter772.next, %.lr.ph374.split.us.us.prol ], [ 0, %.lr.ph374.split.us.us.preheader ]
  %i.ly = load i16, ptr %.1229369.us.us.prol, align 2, !tbaa !113
  store i16 %i.ly, ptr %.1225371.us.us.prol, align 2, !tbaa !113
  %i.lz = add nuw nsw i32 %.0222372.us.us.prol, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.1229369.us.us.prol, i64 2 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.1225371.us.us.prol, i64 2 ; 3 uses
  %prol.iter772.next = add i32 %prol.iter772, 1   ; 2 uses
  %prol.iter772.cmp.not = icmp eq i32 %prol.iter772.next, %xtraiter770
  br i1 %prol.iter772.cmp.not, label %.lr.ph374.split.us.us.prol.loopexit, label %.lr.ph374.split.us.us.prol, !llvm.loop !158

.lr.ph374.split.us.us.prol.loopexit:              ; preds = %.lr.ph374.split.us.us.prol, %.lr.ph374.split.us.us.preheader
  %.lcssa726.unr = phi ptr [ poison, %.lr.ph374.split.us.us.preheader ], [ %i.ma, %.lr.ph374.split.us.us.prol ]
  %.lcssa725.unr = phi ptr [ poison, %.lr.ph374.split.us.us.preheader ], [ %i.mb, %.lr.ph374.split.us.us.prol ]
  %.0222372.us.us.unr = phi i32 [ %.0222372.us.us.ph, %.lr.ph374.split.us.us.preheader ], [ %i.lz, %.lr.ph374.split.us.us.prol ]
  %.1225371.us.us.unr = phi ptr [ %.1225371.us.us.ph, %.lr.ph374.split.us.us.preheader ], [ %i.mb, %.lr.ph374.split.us.us.prol ]
  %.1229369.us.us.unr = phi ptr [ %.1229369.us.us.ph, %.lr.ph374.split.us.us.preheader ], [ %i.ma, %.lr.ph374.split.us.us.prol ]
  %i.mc = sub i32 %.0222372.us.us.ph, %i.jw
  %i.md = icmp ugt i32 %i.mc, -8
  br i1 %i.md, label %._crit_edge375.us.loopexit, label %.lr.ph374.split.us.us

.lr.ph374.split.us400:                            ; preds = %.lr.ph374.split.us400.prol.loopexit, %.lr.ph374.split.us400
  %.0222372.us392 = phi i32 [ %i.mv, %.lr.ph374.split.us400 ], [ %.0222372.us392.unr, %.lr.ph374.split.us400.prol.loopexit ]
  %.1225371.us393 = phi ptr [ %i.my, %.lr.ph374.split.us400 ], [ %.1225371.us393.unr, %.lr.ph374.split.us400.prol.loopexit ] ; 3 uses
  %.1227370.us394 = phi ptr [ %i.mx, %.lr.ph374.split.us400 ], [ %.1227370.us394.unr, %.lr.ph374.split.us400.prol.loopexit ] ; 3 uses
  %.1229369.us395 = phi ptr [ %i.mw, %.lr.ph374.split.us400 ], [ %.1229369.us395.unr, %.lr.ph374.split.us400.prol.loopexit ] ; 3 uses
  %i.me = load i16, ptr %.1229369.us395, align 2, !tbaa !113
  %i.mf = load i16, ptr %.1227370.us394, align 2, !tbaa !113
  %i.mg = sitofp nsz i16 %i.mf to float
  %i.mh = sitofp nsz i16 %i.me to float
  %i.mi = fmul nsz float %i.km, %i.mg
  %i.mj = tail call nsz float @llvm.fmuladd.f32(float %i.mh, float %i.kl, float %i.mi)
  %i.mk = fptosi float %i.mj to i16
  store i16 %i.mk, ptr %.1225371.us393, align 2, !tbaa !113
  %i.ml = getelementptr inbounds nuw i8, ptr %.1229369.us395, i64 2
  %i.mm = getelementptr inbounds nuw i8, ptr %.1227370.us394, i64 2
  %i.mn = getelementptr inbounds nuw i8, ptr %.1225371.us393, i64 2
  %i.mo = load i16, ptr %i.ml, align 2, !tbaa !113
  %i.mp = load i16, ptr %i.mm, align 2, !tbaa !113
  %i.mq = sitofp nsz i16 %i.mp to float
  %i.mr = sitofp nsz i16 %i.mo to float
  %i.ms = fmul nsz float %i.km, %i.mq
  %i.mt = tail call nsz float @llvm.fmuladd.f32(float %i.mr, float %i.kl, float %i.ms)
  %i.mu = fptosi float %i.mt to i16
  store i16 %i.mu, ptr %i.mn, align 2, !tbaa !113
  %i.mv = add nuw nsw i32 %.0222372.us392, 2      ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %.1229369.us395, i64 4 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.1227370.us394, i64 4 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.1225371.us393, i64 4 ; 2 uses
  %exitcond477.not.1 = icmp eq i32 %i.mv, %i.jw
  br i1 %exitcond477.not.1, label %._crit_edge375.us, label %.lr.ph374.split.us400, !llvm.loop !159

._crit_edge375.us.loopexit:                       ; preds = %.lr.ph374.split.us.us.prol.loopexit, %.lr.ph374.split.us.us, %vec.epilog.middle.block, %middle.block672
  %.lcssa552 = phi ptr [ %i.lu, %vec.epilog.middle.block ], [ %i.lo, %middle.block672 ], [ %.lcssa726.unr, %.lr.ph374.split.us.us.prol.loopexit ], [ %i.oe, %.lr.ph374.split.us.us ]
  %.lcssa551 = phi ptr [ %i.lt, %vec.epilog.middle.block ], [ %i.ln, %middle.block672 ], [ %.lcssa725.unr, %.lr.ph374.split.us.us.prol.loopexit ], [ %i.of, %.lr.ph374.split.us.us ]
  %i.mz = getelementptr i8, ptr %.0226385.us, i64 %i.kb
  %scevgep478 = getelementptr i8, ptr %i.mz, i64 2
  br label %._crit_edge375.us

._crit_edge375.us:                                ; preds = %.lr.ph374.split.us400.prol.loopexit, %.lr.ph374.split.us400, %middle.block708, %._crit_edge375.us.loopexit
  %.us-phi379.us = phi ptr [ %.lcssa552, %._crit_edge375.us.loopexit ], [ %i.kr, %middle.block708 ], [ %.lcssa724.unr, %.lr.ph374.split.us400.prol.loopexit ], [ %i.mw, %.lr.ph374.split.us400 ]
  %.us-phi380.us = phi ptr [ %scevgep478, %._crit_edge375.us.loopexit ], [ %i.kq, %middle.block708 ], [ %.lcssa723.unr, %.lr.ph374.split.us400.prol.loopexit ], [ %i.mx, %.lr.ph374.split.us400 ]
  %.us-phi381.us = phi ptr [ %.lcssa551, %._crit_edge375.us.loopexit ], [ %i.kp, %middle.block708 ], [ %.lcssa722.unr, %.lr.ph374.split.us400.prol.loopexit ], [ %i.my, %.lr.ph374.split.us400 ] ; 3 uses
  %i.na = add nuw nsw i64 %.0223387.us, 1         ; 2 uses
  %i.nb = add nsw i64 %i.kk, 1                    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.1242382.us, i64 4
  %i.nd = getelementptr inbounds nuw i8, ptr %.1240383.us, i64 4
  %i.ne = icmp slt i64 %i.na, %i.w
  %i.nf = icmp ult ptr %.us-phi381.us, %2
  %i.ng = select i1 %i.ne, i1 %i.nf, i1 false
  br i1 %i.ng, label %.lr.ph374.us, label %.loopexit.sink.split, !llvm.loop !160

.lr.ph374.split.us.us:                            ; preds = %.lr.ph374.split.us.us.prol.loopexit, %.lr.ph374.split.us.us
  %.0222372.us.us = phi i32 [ %i.od, %.lr.ph374.split.us.us ], [ %.0222372.us.us.unr, %.lr.ph374.split.us.us.prol.loopexit ]
  %.1225371.us.us = phi ptr [ %i.of, %.lr.ph374.split.us.us ], [ %.1225371.us.us.unr, %.lr.ph374.split.us.us.prol.loopexit ] ; 9 uses
  %.1229369.us.us = phi ptr [ %i.oe, %.lr.ph374.split.us.us ], [ %.1229369.us.us.unr, %.lr.ph374.split.us.us.prol.loopexit ] ; 9 uses
  %i.nh = load i16, ptr %.1229369.us.us, align 2, !tbaa !113
  store i16 %i.nh, ptr %.1225371.us.us, align 2, !tbaa !113
  %i.ni = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 2
  %i.nj = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 2
  %i.nk = load i16, ptr %i.ni, align 2, !tbaa !113
  store i16 %i.nk, ptr %i.nj, align 2, !tbaa !113
  %i.nl = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 4
  %i.nm = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 4
  %i.nn = load i16, ptr %i.nl, align 2, !tbaa !113
  store i16 %i.nn, ptr %i.nm, align 2, !tbaa !113
  %i.no = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 6
  %i.np = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 6
  %i.nq = load i16, ptr %i.no, align 2, !tbaa !113
  store i16 %i.nq, ptr %i.np, align 2, !tbaa !113
  %i.nr = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 8
  %i.ns = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 8
  %i.nt = load i16, ptr %i.nr, align 2, !tbaa !113
  store i16 %i.nt, ptr %i.ns, align 2, !tbaa !113
  %i.nu = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 10
  %i.nv = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 10
  %i.nw = load i16, ptr %i.nu, align 2, !tbaa !113
  store i16 %i.nw, ptr %i.nv, align 2, !tbaa !113
  %i.nx = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 12
  %i.ny = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 12
  %i.nz = load i16, ptr %i.nx, align 2, !tbaa !113
  store i16 %i.nz, ptr %i.ny, align 2, !tbaa !113
  %i.oa = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 14
  %i.ob = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 14
  %i.oc = load i16, ptr %i.oa, align 2, !tbaa !113
  store i16 %i.oc, ptr %i.ob, align 2, !tbaa !113
  %i.od = add nuw nsw i32 %.0222372.us.us, 8      ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.1229369.us.us, i64 16 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %.1225371.us.us, i64 16 ; 2 uses
  %exitcond479.not.7 = icmp eq i32 %i.od, %i.jw
  br i1 %exitcond479.not.7, label %._crit_edge375.us.loopexit, label %.lr.ph374.split.us.us, !llvm.loop !161

.lr.ph388.split.split.preheader:                  ; preds = %.lr.ph388
  %i.og = add i64 %i.i, %i.v
  %i.oh = sub i64 %i.og, %.
  br label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.c
  %i.oi = icmp sgt i64 %i.w, 0
  %i.oj = icmp ult ptr %.fr430, %2
  %i.ok = and i1 %i.oi, %i.oj
  br i1 %i.ok, label %.lr.ph428, label %.loopexit

.lr.ph428:                                        ; preds = %.preheader
  %i.ol = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %.pre = load i32, ptr %i.ol, align 4, !tbaa !92
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph428, %._crit_edge418
  %i.om = phi i64 [ %i.i, %.lr.ph428 ], [ %i.pj, %._crit_edge418 ]
  %i.on = phi i32 [ %.pre, %.lr.ph428 ], [ %i.ph, %._crit_edge418 ] ; 2 uses
  %.0231427 = phi i64 [ 0, %.lr.ph428 ], [ %i.pi, %._crit_edge418 ]
  %.0232426 = phi ptr [ %.fr430, %.lr.ph428 ], [ %.1233.lcssa, %._crit_edge418 ] ; 2 uses
  %.0234425 = phi ptr [ %i.af, %.lr.ph428 ], [ %.1235.lcssa, %._crit_edge418 ] ; 2 uses
  %.0236424 = phi ptr [ %i.ak, %.lr.ph428 ], [ %.1237.lcssa, %._crit_edge418 ] ; 2 uses
  %.0239423 = phi ptr [ %i.an, %.lr.ph428 ], [ %i.pl, %._crit_edge418 ] ; 2 uses
  %.0241422 = phi ptr [ %i.ao, %.lr.ph428 ], [ %i.pk, %._crit_edge418 ] ; 2 uses
  %i.oo = load float, ptr %.0241422, align 4, !tbaa !76
  %i.op = load float, ptr %.0239423, align 4, !tbaa !76
  %i.oq = icmp sgt i32 %i.on, 0
  br i1 %i.oq, label %.lr.ph417, label %._crit_edge418

.lr.ph417:                                        ; preds = %bb.d, %bb.f
  %.0230415 = phi i32 [ %i.pa, %bb.f ], [ 0, %bb.d ]
  %.1233414 = phi ptr [ %i.pd, %bb.f ], [ %.0232426, %bb.d ] ; 2 uses
  %.1235413 = phi ptr [ %i.pc, %bb.f ], [ %.0234425, %bb.d ] ; 2 uses
  %.1237412 = phi ptr [ %i.pb, %bb.f ], [ %.0236424, %bb.d ] ; 2 uses
  %i.or = load i8, ptr %.1237412, align 1, !tbaa !93 ; 2 uses
  %i.os = load i64, ptr %i.g, align 8, !tbaa !30
  %i.ot = icmp slt i64 %i.os, 0
  br i1 %i.ot, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph417
  %i.ou = load i8, ptr %.1235413, align 1, !tbaa !93
  %i.ov = uitofp nsz i8 %i.ou to float
  %i.ow = uitofp nsz i8 %i.or to float
  %i.ox = fmul nsz float %i.op, %i.ov
  %i.oy = tail call nsz float @llvm.fmuladd.f32(float %i.ow, float %i.oo, float %i.ox)
  %i.oz = fptoui float %i.oy to i8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph417, %bb.e
  %.in256 = phi i8 [ %i.oz, %bb.e ], [ %i.or, %.lr.ph417 ]
  store i8 %.in256, ptr %.1233414, align 1, !tbaa !93
  %i.pa = add nuw nsw i32 %.0230415, 1            ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %.1237412, i64 1 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.1235413, i64 1 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %.1233414, i64 1 ; 2 uses
  %i.pe = load i32, ptr %i.ol, align 4, !tbaa !92 ; 2 uses
  %i.pf = icmp slt i32 %i.pa, %i.pe
  br i1 %i.pf, label %.lr.ph417, label %._crit_edge418.loopexit, !llvm.loop !162

._crit_edge418.loopexit:                          ; preds = %bb.f
  %.pre480 = load i64, ptr %i.h, align 8, !tbaa !30
  br label %._crit_edge418

._crit_edge418:                                   ; preds = %._crit_edge418.loopexit, %bb.d
  %i.pg = phi i64 [ %i.om, %bb.d ], [ %.pre480, %._crit_edge418.loopexit ]
  %i.ph = phi i32 [ %i.on, %bb.d ], [ %i.pe, %._crit_edge418.loopexit ]
  %.1237.lcssa = phi ptr [ %.0236424, %bb.d ], [ %i.pb, %._crit_edge418.loopexit ]
  %.1235.lcssa = phi ptr [ %.0234425, %bb.d ], [ %i.pc, %._crit_edge418.loopexit ]
  %.1233.lcssa = phi ptr [ %.0232426, %bb.d ], [ %i.pd, %._crit_edge418.loopexit ] ; 3 uses
  %i.pi = add nuw nsw i64 %.0231427, 1            ; 2 uses
  %i.pj = add nsw i64 %i.pg, 1                    ; 3 uses
  store i64 %i.pj, ptr %i.h, align 8, !tbaa !30
  %i.pk = getelementptr inbounds nuw i8, ptr %.0241422, i64 4
  %i.pl = getelementptr inbounds nuw i8, ptr %.0239423, i64 4
  %i.pm = icmp slt i64 %i.pi, %i.w
  %i.pn = icmp ult ptr %.1233.lcssa, %2
  %i.po = select i1 %i.pm, i1 %i.pn, i1 false
  br i1 %i.po, label %bb.d, label %.loopexit, !llvm.loop !163

.lr.ph358.split:                                  ; preds = %.lr.ph358, %._crit_edge
  %i.pp = phi i32 [ %i.qq, %._crit_edge ], [ %i.jo, %.lr.ph358 ] ; 2 uses
  %i.pq = phi i64 [ %i.qs, %._crit_edge ], [ %i.i, %.lr.ph358 ]
  %.0215357 = phi i64 [ %i.qr, %._crit_edge ], [ 0, %.lr.ph358 ]
  %.0216356 = phi ptr [ %.1217.lcssa, %._crit_edge ], [ %.fr430, %.lr.ph358 ] ; 3 uses
  %.0218355 = phi ptr [ %.1219.lcssa, %._crit_edge ], [ %i.af, %.lr.ph358 ] ; 3 uses
  %.0220354 = phi ptr [ %.1221.lcssa, %._crit_edge ], [ %i.ak, %.lr.ph358 ] ; 3 uses
  %.2353 = phi ptr [ %i.qu, %._crit_edge ], [ %i.an, %.lr.ph358 ] ; 2 uses
  %.2243352 = phi ptr [ %i.qt, %._crit_edge ], [ %i.ao, %.lr.ph358 ] ; 2 uses
  %i.pr = load float, ptr %.2243352, align 4, !tbaa !76
  %i.ps = load float, ptr %.2353, align 4, !tbaa !76
  %i.pt = icmp sgt i32 %i.pp, 0
  br i1 %i.pt, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph358.split
  %i.pu = load i64, ptr %i.g, align 8, !tbaa !30
  %i.pv = icmp slt i64 %i.pu, 0
  br i1 %i.pv, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.0214346.us = phi i32 [ %i.px, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %.1217345.us = phi ptr [ %i.qa, %.lr.ph.split.us ], [ %.0216356, %.lr.ph ] ; 2 uses
  %.1219344.us = phi ptr [ %i.pz, %.lr.ph.split.us ], [ %.0218355, %.lr.ph ]
  %.1221343.us = phi ptr [ %i.py, %.lr.ph.split.us ], [ %.0220354, %.lr.ph ] ; 2 uses
  %i.pw = load i32, ptr %.1221343.us, align 4, !tbaa !119
  store i32 %i.pw, ptr %.1217345.us, align 4, !tbaa !119
  %i.px = add nuw nsw i32 %.0214346.us, 1         ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.1221343.us, i64 4 ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %.1219344.us, i64 4 ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.1217345.us, i64 4 ; 2 uses
  %i.qb = load i32, ptr %i.jn, align 4, !tbaa !92 ; 2 uses
  %i.qc = icmp slt i32 %i.px, %i.qb
  br i1 %i.qc, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !164

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.0214346 = phi i32 [ %i.qk, %.lr.ph.split ], [ 0, %.lr.ph ]
  %.1217345 = phi ptr [ %i.qn, %.lr.ph.split ], [ %.0216356, %.lr.ph ] ; 2 uses
  %.1219344 = phi ptr [ %i.qm, %.lr.ph.split ], [ %.0218355, %.lr.ph ] ; 2 uses
  %.1221343 = phi ptr [ %i.ql, %.lr.ph.split ], [ %.0220354, %.lr.ph ] ; 2 uses
  %i.qd = load i32, ptr %.1221343, align 4, !tbaa !119
  %i.qe = load i32, ptr %.1219344, align 4, !tbaa !119
  %i.qf = sitofp nsz i32 %i.qe to float
  %i.qg = sitofp nsz i32 %i.qd to float
  %i.qh = fmul nsz float %i.ps, %i.qf
  %i.qi = tail call nsz float @llvm.fmuladd.f32(float %i.qg, float %i.pr, float %i.qh)
  %i.qj = fptosi float %i.qi to i32
  store i32 %i.qj, ptr %.1217345, align 4, !tbaa !119
  %i.qk = add nuw nsw i32 %.0214346, 1            ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.1221343, i64 4 ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %.1219344, i64 4 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.1217345, i64 4 ; 2 uses
  %i.qo = load i32, ptr %i.jn, align 4, !tbaa !92 ; 2 uses
  %i.qp = icmp slt i32 %i.qk, %i.qo
  br i1 %i.qp, label %.lr.ph.split, label %._crit_edge, !llvm.loop !164

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %.lr.ph358.split
  %i.qq = phi i32 [ %i.pp, %.lr.ph358.split ], [ %i.qb, %.lr.ph.split.us ], [ %i.qo, %.lr.ph.split ]
  %.1221.lcssa = phi ptr [ %.0220354, %.lr.ph358.split ], [ %i.py, %.lr.ph.split.us ], [ %i.ql, %.lr.ph.split ]
  %.1219.lcssa = phi ptr [ %.0218355, %.lr.ph358.split ], [ %i.pz, %.lr.ph.split.us ], [ %i.qm, %.lr.ph.split ]
  %.1217.lcssa = phi ptr [ %.0216356, %.lr.ph358.split ], [ %i.qa, %.lr.ph.split.us ], [ %i.qn, %.lr.ph.split ] ; 3 uses
  %i.qr = add nuw nsw i64 %.0215357, 1            ; 2 uses
  %i.qs = add nsw i64 %i.pq, 1                    ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.2243352, i64 4
  %i.qu = getelementptr inbounds nuw i8, ptr %.2353, i64 4
  %i.qv = icmp slt i64 %i.qr, %i.w
  %i.qw = icmp ult ptr %.1217.lcssa, %2
  %i.qx = select i1 %i.qv, i1 %i.qw, i1 false
  br i1 %i.qx, label %.lr.ph358.split, label %.loopexit.sink.split, !llvm.loop !165

.loopexit.sink.split:                             ; preds = %._crit_edge.us, %._crit_edge.us329, %._crit_edge, %._crit_edge375.us, %.lr.ph280.split.split.preheader, %.lr.ph314.split.split.preheader, %.lr.ph358.split.us.split.preheader, %.lr.ph388.split.split.preheader
  %.us-phi291.sink = phi i64 [ %i.qs, %._crit_edge ], [ %i.nb, %._crit_edge375.us ], [ %i.id, %._crit_edge.us329 ], [ %i.oh, %.lr.ph388.split.split.preheader ], [ %i.jr, %.lr.ph358.split.us.split.preheader ], [ %i.jj, %.lr.ph314.split.split.preheader ], [ %i.fh, %.lr.ph280.split.split.preheader ], [ %i.eb, %._crit_edge.us ] ; 2 uses
  %.0238.ph = phi ptr [ %.1217.lcssa, %._crit_edge ], [ %.us-phi381.us, %._crit_edge375.us ], [ %.us-phi307.us, %._crit_edge.us329 ], [ %.fr430, %.lr.ph388.split.split.preheader ], [ %.fr430, %.lr.ph358.split.us.split.preheader ], [ %.fr430, %.lr.ph314.split.split.preheader ], [ %.fr430, %.lr.ph280.split.split.preheader ], [ %.us-phi273.us, %._crit_edge.us ]
  store i64 %.us-phi291.sink, ptr %i.h, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge418, %.loopexit.sink.split, %.preheader264, %.preheader262, %.preheader260, %.preheader258, %.preheader, %bb.c
  %i.qy = phi i64 [ %i.i, %bb.c ], [ %i.i, %.preheader260 ], [ %i.i, %.preheader262 ], [ %i.i, %.preheader264 ], [ %i.i, %.preheader258 ], [ %i.i, %.preheader ], [ %.us-phi291.sink, %.loopexit.sink.split ], [ %i.pj, %._crit_edge418 ]
  %.0238 = phi ptr [ %.fr430, %bb.c ], [ %.fr430, %.preheader260 ], [ %.fr430, %.preheader262 ], [ %.fr430, %.preheader264 ], [ %.fr430, %.preheader258 ], [ %.fr430, %.preheader ], [ %.0238.ph, %.loopexit.sink.split ], [ %.1233.lcssa, %._crit_edge418 ]
  store ptr %.0238, ptr %1, align 8, !tbaa !50
  %i.qz = icmp eq i64 %i.qy, %i.v
  %i.ra = select i1 %i.qz, i32 0, i32 -11
  ret i32 %i.ra
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @yae_release_buffers(ptr noundef initializes((20, 56), (88, 120), (128, 132), (152, 168), (176, 180), (200, 212)) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.a, align 4, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.c, align 4, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.e, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -9223372036854775808, ptr %i.f, align 8, !tbaa !52
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.k, align 8, !tbaa !63
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.m, align 8, !tbaa !63
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.o = load i32, ptr %i.n, align 4, !tbaa !29
  %.neg.i = sdiv i32 %i.o, -2
  %i.p = sext i32 %.neg.i to i64                  ; 2 uses
  store i64 %i.p, ptr %i.i, align 8, !tbaa !30
  store i64 %i.p, ptr %i.j, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @av_frame_free(ptr noundef nonnull %i.q) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i8 0, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @av_freep(ptr noundef nonnull %i.s) #10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @av_freep(ptr noundef nonnull %i.t) #10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @av_freep(ptr noundef nonnull %i.u) #10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @av_freep(ptr noundef nonnull %i.v) #10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @av_freep(ptr noundef nonnull %i.w) #10
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @av_freep(ptr noundef nonnull %i.x) #10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @av_freep(ptr noundef nonnull %i.y) #10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @av_freep(ptr noundef nonnull %i.z) #10
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @av_freep(ptr noundef nonnull %i.aa) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @av_freep(ptr noundef nonnull %i.ab) #10
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @av_tx_uninit(ptr noundef nonnull %i.ac) #10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @av_tx_uninit(ptr noundef nonnull %i.ad) #10
  ret void
}

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.cos.f64(double) #9

declare void @av_freep(ptr noundef) local_unnamed_addr #5

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal i32 @request_frame(ptr noundef %0) #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !167    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !168
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = tail call i32 @ff_request_frame(ptr noundef %i.f) #10 ; 2 uses
  %i.h = icmp eq i32 %i.g, -541478725
  br i1 %i.h, label %bb.b, label %push_samples.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 272 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 200 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 68 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 296 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !54
  br label %bb.c
end_hunk_0
