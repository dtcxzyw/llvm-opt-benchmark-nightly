Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/internal?download=true
inline.NumInlined: 494
inline.NumDeleted: 91
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 32
begin_hunk_0_@ChachaAEADDecrypt:bb.a
  %i.lk = xor i8 %i.lj, %i.lh
  %i.ll = zext i8 %i.lk to i32
  %i.lm = or i32 %.010.i, %i.ll                   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %ConstantCompare.exit, label %.lr.ph.i137, !llvm.loop !426

ConstantCompare.exit:                             ; preds = %.lr.ph.i137, %middle.block327
  %.lcssa = phi i32 [ %i.lf, %middle.block327 ], [ %i.lm, %.lr.ph.i137 ]
  %.not60 = icmp eq i32 %.lcssa, 0
  br i1 %.not60, label %ConstantCompare.exit.thread, label %bb.t

bb.t:                                             ; preds = %ConstantCompare.exit
  %i.ln = load i64, ptr %i.i, align 8
  %i.lo = and i64 %i.ln, 131072
  %.not62 = icmp eq i64 %i.lo, 0
  br i1 %.not62, label %bb.u, label %ForceZero.exit

bb.u:                                             ; preds = %bb.t
  %i.lp = call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 20) ; 0 uses
  br label %ForceZero.exit

ConstantCompare.exit.thread:                      ; preds = %bb.s, %ConstantCompare.exit
  %i.lq = load ptr, ptr %i.ei, align 8, !tbaa !85
  %i.lr = call i32 @wc_Chacha_Process(ptr noundef %i.lq, ptr noundef %1, ptr noundef %2, i32 noundef %i.h) #27
  br label %ForceZero.exit

ForceZero.exit:                                   ; preds = %.lr.ph.i64.11, %.lr.ph.i69.11, %ForceZero.exit101, %._crit_edge.i81, %._crit_edge.i67, %ConstantCompare.exit.thread, %bb.t, %bb.u, %bb.a, %bb.r, %bb.p, %bb.n
  %.0 = phi i32 [ %i.ko, %bb.p ], [ %i.kq, %bb.r ], [ -305, %bb.u ], [ %i.ek, %._crit_edge.i67 ], [ %i.fy, %._crit_edge.i81 ], [ %i.kl, %bb.n ], [ -173, %bb.a ], [ %i.lr, %ConstantCompare.exit.thread ], [ -305, %bb.t ], [ %i.fy, %.lr.ph.i69.11 ], [ %i.hm, %ForceZero.exit101 ], [ %i.ek, %.lr.ph.i64.11 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -305, 1) i32 @TimingPadVerify(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 9 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i8, align 1                       ; 12 uses
  %i.f = alloca [64 x i8], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.g = add i32 %4, -1                           ; 4 uses
  %i.h = sext i32 %i.g to i64                     ; 4 uses
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !52    ; 5 uses
  %i.k = zext i8 %i.j to i32
  %i.l = sub i32 %3, %4
  %i.m = add i32 %i.l, %i.k
  %i.n = lshr i32 %i.m, 31
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = add nsw i8 %i.o, -1                      ; 3 uses
  %i.q = icmp sgt i32 %4, 1
  br i1 %i.q, label %.lr.ph.preheader.i, label %MaskPadding.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.r = tail call i32 @llvm.umin.i32(i32 %i.g, i32 255) ; 2 uses
  %i.s = zext i8 %i.j to i64                      ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.t = icmp eq i32 %i.g, 1
  br i1 %i.t, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 254
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.h
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 5 uses
  %.020.i = phi i8 [ %i.p, %.lr.ph.preheader.i.new ], [ %i.ah, %.lr.ph.i ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.u = icmp samesign ule i64 %indvars.iv.i, %i.s
  %i.v = sext i1 %i.u to i8
  store volatile i8 %i.v, ptr %i.e, align 1, !tbaa !52
  %.0..0..0..0..0..0..i = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %i.w = sub nsw i64 %i.h, %indvars.iv.i
  %i.x = getelementptr inbounds i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !52
  %i.z = xor i8 %i.y, %i.j
  %i.aa = and i8 %i.z, %.0..0..0..0..0..0..i
  %i.ab = or i8 %i.aa, %.020.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %indvars.iv.next.i.neg = xor i64 %indvars.iv.i, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ac = icmp samesign ult i64 %indvars.iv.i, %i.s
  %i.ad = sext i1 %i.ac to i8
  store volatile i8 %i.ad, ptr %i.e, align 1, !tbaa !52
  %.0..0..0..0..0..0..i.1 = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next.i.neg
  %i.ae = load i8, ptr %gep, align 1, !tbaa !52
  %i.af = xor i8 %i.ae, %i.j
  %i.ag = and i8 %i.af, %.0..0..0..0..0..0..i.1
  %i.ah = or i8 %i.ag, %i.ab                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %MaskPadding.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !429

MaskPadding.exit.loopexit.unr-lcssa:              ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %MaskPadding.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %MaskPadding.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %MaskPadding.exit.loopexit.unr-lcssa ] ; 2 uses
  %.020.i.epil.init = phi i8 [ %i.p, %.lr.ph.preheader.i ], [ %i.ah, %MaskPadding.exit.loopexit.unr-lcssa ]
  %lcmp.mod61 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod61)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ai = icmp samesign ule i64 %indvars.iv.i.epil.init, %i.s
  %i.aj = sext i1 %i.ai to i8
  store volatile i8 %i.aj, ptr %i.e, align 1, !tbaa !52
  %.0..0..0..0..0..0..i.epil = load volatile i8, ptr %i.e, align 1, !tbaa !52
  %i.ak = sub nsw i64 %i.h, %indvars.iv.i.epil.init
  %i.al = getelementptr inbounds i8, ptr %1, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !52
  %i.an = xor i8 %i.am, %i.j
  %i.ao = and i8 %i.an, %.0..0..0..0..0..0..i.epil
  %i.ap = or i8 %i.ao, %.020.i.epil.init
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %MaskPadding.exit

MaskPadding.exit:                                 ; preds = %.lr.ph.i.epil.preheader, %MaskPadding.exit.loopexit.unr-lcssa, %bb.a
  %.0.lcssa.i = phi i8 [ %i.p, %bb.a ], [ %i.ah, %MaskPadding.exit.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.i.epil.preheader ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !150
  %i.as = add i32 %3, %2
  %i.at = xor i32 %i.as, -1
  %i.au = add i32 %4, %i.at
  %i.av = call i32 %i.ar(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %1, i32 noundef %i.au, i32 noundef %2, i32 noundef %5, i32 noundef 1, i32 noundef 1) #27
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 743
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !105 ; 8 uses
  %i.ay = zext i8 %i.ax to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.az = add nsw i32 %4, -256
  %i.ba = sub i32 %i.az, %i.ay                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bb = load i8, ptr %i.i, align 1, !tbaa !52
  %i.bc = zext i8 %i.bb to i32
  %i.bd = sub nsw i32 %i.g, %i.bc
  store volatile i32 %i.bd, ptr %i.b, align 4, !tbaa !56
  %.0..0..0..0..0..0.13.i = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.be = sub nsw i32 %.0..0..0..0..0..0.13.i, %i.ay ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bf = lshr i32 %i.ba, 31
  %i.bg = add nsw i32 %i.bf, -1
  store volatile i32 %i.bg, ptr %i.c, align 4, !tbaa !56
  %i.bh = lshr i32 %i.be, 31
  %i.bi = add nsw i32 %i.bh, -1
  store volatile i32 %i.bi, ptr %i.d, align 4, !tbaa !56
  %.0..0..0..0..0..0.6.i = load volatile i32, ptr %i.c, align 4, !tbaa !56
  %i.bj = and i32 %.0..0..0..0..0..0.6.i, %i.ba   ; 5 uses
  %.0..0..0..0..0..0..i25 = load volatile i32, ptr %i.d, align 4, !tbaa !56
  %i.bk = and i32 %.0..0..0..0..0..0..i25, %i.be  ; 4 uses
  %i.bl = add nsw i32 %i.ay, -1                   ; 4 uses
  %i.bm = call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 range(i32 0, 256) %i.ay)
  %i.bn = icmp samesign ult i32 %i.bm, 2          ; 2 uses
  br i1 %i.bn, label %bb.b, label %bb.c

bb.b:                                             ; preds = %MaskPadding.exit
  %i.bo = sub i32 %i.ay, %i.bj
  %i.bp = add nsw i32 %i.bo, %i.bk
  %i.bq = and i32 %i.bp, %i.bl
  br label %bb.f

bb.c:                                             ; preds = %MaskPadding.exit
  switch i8 %i.ax, label %bb.f [
    i8 20, label %bb.d
    i8 48, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %reass.sub38 = sub i32 %i.bk, %i.bj
  %i.br = add i32 %reass.sub38, 20
  %i.bs = srem i32 %i.br, 20
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %reass.sub = sub i32 %i.bk, %i.bj
  %i.bt = add i32 %reass.sub, 48
  %i.bu = srem i32 %i.bt, 48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.091.i = phi i32 [ %i.bq, %bb.b ], [ %i.bs, %bb.d ], [ %i.bu, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.bv = zext i8 %i.ax to i64                    ; 6 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bv, i1 false)
  %i.bw = icmp slt i32 %i.bj, %4
  br i1 %i.bw, label %.preheader104.lr.ph.i, label %._crit_edge.i

.preheader104.lr.ph.i:                            ; preds = %bb.f
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %MaskMac.exit, label %.preheader104.us.preheader.i

.preheader104.us.preheader.i:                     ; preds = %.preheader104.lr.ph.i
  %i.bx = sext i32 %4 to i64                      ; 2 uses
  %i.by = sext i32 %i.bj to i64                   ; 2 uses
  %i.bz = sub nsw i64 %i.bx, %i.by
  br label %.preheader104.us.i

.preheader104.us.i:                               ; preds = %.critedge.us.i, %.preheader104.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.us.i ], [ %i.bz, %.preheader104.us.preheader.i ] ; 2 uses
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %.critedge.us.i ], [ %i.by, %.preheader104.us.preheader.i ] ; 3 uses
  %i.ca = trunc nsw i64 %indvars.iv122.i to i32
  %invariant.op.i = sub i32 %i.ca, %i.bk
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader104.us.i
  %indvars.iv.i27 = phi i64 [ 0, %.preheader104.us.i ], [ %indvars.iv.next.i28, %bb.h ] ; 5 uses
  %exitcond.not = icmp eq i64 %indvars.iv.i27, %indvars.iv
  br i1 %exitcond.not, label %.critedge.us.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cb = add nsw i64 %indvars.iv.i27, %indvars.iv122.i ; 2 uses
  %indvars121.i = trunc i64 %indvars.iv.i27 to i32
  %.reass.i = add i32 %invariant.op.i, %indvars121.i
  %.0..0..0..0..0..0.14.us.i = load volatile i32, ptr %i.b, align 4, !tbaa !56
  %i.cc = trunc nsw i64 %i.cb to i32
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %.0..0..0..0..0..0.14.us.i, %i.cd
  %i.cf = lshr i32 %i.ce, 31
  %i.cg = trunc nuw nsw i32 %i.cf to i8
  %i.ch = add nsw i8 %i.cg, -1
  %i.ci = icmp sgt i32 %.reass.i, -1
  %i.cj = select i1 %i.ci, i8 %i.ch, i8 0
  %i.ck = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !52
  %i.cm = and i8 %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i27 ; 2 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !52
  %i.cp = or i8 %i.cm, %i.co
  store i8 %i.cp, ptr %i.cn, align 1, !tbaa !52
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 1 ; 2 uses
  %exitcond.not.i29 = icmp eq i64 %indvars.iv.next.i28, %i.bv
  br i1 %exitcond.not.i29, label %.critedge.us.i, label %bb.g, !llvm.loop !430

.critedge.us.i:                                   ; preds = %bb.h, %bb.g
  %indvars.iv.next123.i = add nsw i64 %indvars.iv122.i, %i.bv ; 2 uses
  %i.cq = icmp slt i64 %indvars.iv.next123.i, %i.bx
  %indvars.iv.next = sub i64 %indvars.iv, %i.bv
  br i1 %i.cq, label %.preheader104.us.i, label %._crit_edge.i, !llvm.loop !431

._crit_edge.i:                                    ; preds = %.critedge.us.i, %bb.f
  br i1 %i.bn, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %.not115.i = icmp eq i8 %i.ax, 0
  br i1 %.not115.i, label %MaskMac.exit, label %.lr.ph.i26.preheader

.lr.ph.i26.preheader:                             ; preds = %.preheader.i
  %xtraiter62 = and i64 %i.bv, 1
  %i.cr = icmp eq i8 %i.ax, 1
  br i1 %i.cr, label %.lr.ph.i26.epil.preheader, label %.lr.ph.i26.preheader.new

.lr.ph.i26.preheader.new:                         ; preds = %.lr.ph.i26.preheader
  %unroll_iter66 = and i64 %i.bv, 254
  br label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.lr.ph.i26, %.lr.ph.i26.preheader.new
  %indvars.iv131.i = phi i64 [ 0, %.lr.ph.i26.preheader.new ], [ %indvars.iv.next132.i.1, %.lr.ph.i26 ] ; 4 uses
  %.087112.i = phi i8 [ 0, %.lr.ph.i26.preheader.new ], [ %i.dl, %.lr.ph.i26 ]
  %niter67 = phi i64 [ 0, %.lr.ph.i26.preheader.new ], [ %niter67.next.1, %.lr.ph.i26 ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv131.i
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !52
  %i.cu = trunc i64 %indvars.iv131.i to i32
  %i.cv = add i32 %.091.i, %i.cu
  %i.cw = and i32 %i.cv, %i.bl
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %i.a, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !52
  %i.da = xor i8 %i.cz, %i.ct
  %i.db = or i8 %i.da, %.087112.i
  %indvars.iv.next132.i = or disjoint i64 %indvars.iv131.i, 1 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv.next132.i
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !52
  %i.de = trunc i64 %indvars.iv.next132.i to i32
  %i.df = add i32 %.091.i, %i.de
  %i.dg = and i32 %i.df, %i.bl
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.a, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !52
  %i.dk = xor i8 %i.dj, %i.dd
  %i.dl = or i8 %i.dk, %i.db                      ; 3 uses
  %indvars.iv.next132.i.1 = add nuw nsw i64 %indvars.iv131.i, 2 ; 2 uses
  %niter67.next.1 = add i64 %niter67, 2           ; 2 uses
  %niter67.ncmp.1 = icmp eq i64 %niter67.next.1, %unroll_iter66
  br i1 %niter67.ncmp.1, label %MaskMac.exit.loopexit.unr-lcssa, label %.lr.ph.i26, !llvm.loop !432

bb.i:                                             ; preds = %._crit_edge.i
  switch i8 %i.ax, label %MaskMac.exit [
    i8 20, label %.preheader100.i
    i8 48, label %.preheader102.i
  ]

.preheader100.i:                                  ; preds = %bb.i, %.preheader100.i
  %indvars.iv128.i = phi i64 [ %indvars.iv.next129.i, %.preheader100.i ], [ 0, %bb.i ] ; 3 uses
  %.188110.i = phi i8 [ %i.dv, %.preheader100.i ], [ 0, %bb.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv128.i
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !52
  %i.do = trunc i64 %indvars.iv128.i to i32
  %i.dp = add i32 %.091.i, %i.do
  %i.dq = srem i32 %i.dp, 20
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds i8, ptr %i.a, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !52
  %i.du = xor i8 %i.dt, %i.dn
  %i.dv = or i8 %i.du, %.188110.i                 ; 2 uses
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond130.not.i = icmp eq i64 %indvars.iv.next129.i, 20
  br i1 %exitcond130.not.i, label %MaskMac.exit, label %.preheader100.i, !llvm.loop !433

.preheader102.i:                                  ; preds = %bb.i, %.preheader102.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %.preheader102.i ], [ 0, %bb.i ] ; 3 uses
  %.289108.i = phi i8 [ %i.ef, %.preheader102.i ], [ 0, %bb.i ]
  %i.dw = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv125.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !52
  %i.dy = trunc i64 %indvars.iv125.i to i32
  %i.dz = add i32 %.091.i, %i.dy
  %i.ea = srem i32 %i.dz, 48
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds i8, ptr %i.a, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !52
  %i.ee = xor i8 %i.ed, %i.dx
  %i.ef = or i8 %i.ee, %.289108.i                 ; 2 uses
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next126.i, 48
  br i1 %exitcond127.not.i, label %MaskMac.exit, label %.preheader102.i, !llvm.loop !434

MaskMac.exit.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i26
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %MaskMac.exit, label %.lr.ph.i26.epil.preheader

.lr.ph.i26.epil.preheader:                        ; preds = %MaskMac.exit.loopexit.unr-lcssa, %.lr.ph.i26.preheader
  %indvars.iv131.i.epil.init = phi i64 [ 0, %.lr.ph.i26.preheader ], [ %indvars.iv.next132.i.1, %MaskMac.exit.loopexit.unr-lcssa ] ; 2 uses
  %.087112.i.epil.init = phi i8 [ 0, %.lr.ph.i26.preheader ], [ %i.dl, %MaskMac.exit.loopexit.unr-lcssa ]
  %lcmp.mod65 = trunc i8 %i.ax to i1
  call void @llvm.assume(i1 %lcmp.mod65)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv131.i.epil.init
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !52
  %i.ei = trunc i64 %indvars.iv131.i.epil.init to i32
  %i.ej = add i32 %.091.i, %i.ei
  %i.ek = and i32 %i.ej, %i.bl
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !52
  %i.eo = xor i8 %i.en, %i.eh
  %i.ep = or i8 %i.eo, %.087112.i.epil.init
  br label %MaskMac.exit

MaskMac.exit:                                     ; preds = %.preheader102.i, %.preheader100.i, %.lr.ph.i26.epil.preheader, %MaskMac.exit.loopexit.unr-lcssa, %.preheader104.lr.ph.i, %.preheader.i, %bb.i
  %.390.i = phi i8 [ 0, %bb.i ], [ %i.ep, %.lr.ph.i26.epil.preheader ], [ %i.dv, %.preheader100.i ], [ 0, %.preheader.i ], [ 0, %.preheader104.lr.ph.i ], [ %i.dl, %MaskMac.exit.loopexit.unr-lcssa ], [ %i.ef, %.preheader102.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.eq = or i8 %.390.i, %.0.lcssa.i
  %i.er = xor i8 %i.eq, -1                        ; 2 uses
  %i.es = lshr i8 %i.er, 4
  %i.et = and i8 %i.es, %i.er                     ; 2 uses
  %i.eu = lshr i8 %i.et, 2
  %i.ev = and i8 %i.eu, %i.et                     ; 2 uses
  %i.ew = lshr i8 %i.ev, 1
  %i.ex = and i8 %i.ew, %i.ev
  %narrow = xor i8 %i.ex, 1
  %i.ey = zext nneg i8 %narrow to i32
  %.not = icmp eq i32 %i.av, %i.ey
  %spec.store.select = select i1 %.not, i32 0, i32 -305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  ret i32 %spec.store.select
}

; Function Attrs: nounwind uwtable
define range(i32 -518, 1) i32 @DoApplicationData(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i32 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 708
  %i.b = load i16, ptr %i.a, align 4, !tbaa !194  ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = load i32, ptr %2, align 4, !tbaa !56     ; 3 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.h = load i8, ptr %i.g, align 8, !tbaa !190
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %3, 0
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @SendAlert(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 10) ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.l = icmp eq i16 %i.b, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1071 ; 3 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.m, align 1, !tbaa !257
  %i.o = add i8 %i.n, 1                           ; 2 uses
  store i8 %i.o, ptr %i.m, align 1, !tbaa !257
  %i.p = icmp ugt i8 %i.o, 31
  br i1 %i.p, label %bb.g, label %.thread

bb.f:                                             ; preds = %bb.d
  store i8 0, ptr %i.m, align 1, !tbaa !257
  %i.q = add i32 %i.d, %i.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr %i.f, ptr %i.r, align 16, !tbaa !258
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 456
  store i32 %i.c, ptr %i.s, align 8, !tbaa !182
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %.024 = phi i32 [ %i.q, %bb.f ], [ %i.d, %bb.e ]
  store i32 %.024, ptr %2, align 4, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.b, %bb.c, %.thread
  %.0 = phi i32 [ -373, %bb.b ], [ 0, %.thread ], [ -373, %bb.c ], [ -518, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef ptr @AlertTypeToString(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 122
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.AlertTypeToString, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i32 @ProcessReply(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i32 @ProcessReplyEx(ptr noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @ProcessReplyEx(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [64 x i8], align 16               ; 10 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !228  ; 3 uses
  switch i32 %i.g, label %bb.b [
    i32 0, label %bb.c
    i32 -323, label %bb.c
    i32 -327, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.not292.i = icmp eq i32 %1, 1
  %.not293.i = icmp eq i32 %i.g, -308
  %or.cond.i = and i1 %.not292.i, %.not293.i
  br i1 %or.cond.i, label %bb.c, label %DoProcessReplyEx.exit

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 676 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !195  ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.preheader.i, label %RetrySendAlert.exit.i

RetrySendAlert.exit.i:                            ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.l = load i32, ptr %i.k, align 16, !tbaa !196
  store i32 0, ptr %i.k, align 16, !tbaa !196
  store i32 0, ptr %i.h, align 4, !tbaa !195
  %i.m = tail call fastcc i32 @SendAlert_ex(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.l) ; 2 uses
  %.not294.i = icmp eq i32 %i.m, 0
  br i1 %.not294.i, label %.preheader.i, label %DoProcessReplyEx.exit

.preheader.i:                                     ; preds = %RetrySendAlert.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1040 ; 24 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 717 ; 12 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 708 ; 26 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 718 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 372 ; 34 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 719 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.v = getelementptr i8, ptr %0, i64 721
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 726 ; 11 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 727 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1066 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1067
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1029 ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 9 uses
  %.in.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 337 ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 736 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 743 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1020 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 739 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 738 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 734 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1070 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1031
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1071 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1063
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 722 ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1053
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1054
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 381 ; 2 uses
  br label %ShrinkInputBuffer.exit.i

ShrinkInputBuffer.exit.i:                         ; preds = %ShrinkInputBuffer.exit.i.backedge, %.preheader.i
  %.0240.i = phi i32 [ 0, %.preheader.i ], [ %.16.i, %ShrinkInputBuffer.exit.i.backedge ] ; 6 uses
  %i.bf = load i8, ptr %i.n, align 4, !tbaa !146
  switch i8 %i.bf, label %DoProcessReplyEx.exit [
    i8 0, label %bb.d
    i8 2, label %bb.f
    i8 3, label %._crit_edge.i
    i8 4, label %._crit_edge620.i
    i8 5, label %bb.ap
    i8 6, label %bb.bm
    i8 7, label %bb.ch
    i8 8, label %bb.ci
  ]

._crit_edge620.i:                                 ; preds = %ShrinkInputBuffer.exit.i
  %.pre621.i = load i8, ptr %i.ab, align 4, !tbaa !51
  br label %bb.aj
end_hunk_0
