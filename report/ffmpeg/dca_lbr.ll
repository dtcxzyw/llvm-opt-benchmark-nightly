Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_lbr?download=true
inline.NumInlined: 114
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 44
begin_hunk_0_@parse_scale_factors:bb.a

bb.t:                                             ; preds = %bb.r
  %i.ho = sub nsw i32 %.080145, %.1
  %i.hp = lshr i32 %i.ho, 1
  %i.hq = sub nsw i32 %.080145, %i.hp
  %i.hr = trunc i32 %i.hq to i8
  store i8 %i.hr, ptr %i.hj, align 1, !tbaa !14
  br label %.loopexit

bb.u:                                             ; preds = %bb.q
  %i.hs = icmp sgt i32 %.1, %.080145
  %i.ht = getelementptr i8, ptr %i.bv, i64 1      ; 2 uses
  %i.hu = getelementptr i8, ptr %i.bv, i64 2      ; 2 uses
  %i.hv = getelementptr i8, ptr %i.bv, i64 3      ; 2 uses
  br i1 %i.hs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.hw = sub nsw i32 %.1, %.080145               ; 3 uses
  %i.hx = lshr i32 %i.hw, 2
  %i.hy = add nsw i32 %i.hx, %.080145
  %i.hz = trunc i32 %i.hy to i8
  store i8 %i.hz, ptr %i.ht, align 1, !tbaa !14
  %i.ia = lshr i32 %i.hw, 1
  %i.ib = add nsw i32 %i.ia, %.080145
  %i.ic = trunc i32 %i.ib to i8
  store i8 %i.ic, ptr %i.hu, align 1, !tbaa !14
  %i.id = mul nuw nsw i32 %i.hw, 3
  %i.ie = lshr i32 %i.id, 2
  %i.if = add nsw i32 %i.ie, %.080145
  %i.ig = trunc i32 %i.if to i8
  store i8 %i.ig, ptr %i.hv, align 1, !tbaa !14
  br label %.loopexit

bb.w:                                             ; preds = %bb.u
  %i.ih = sub nsw i32 %.080145, %.1               ; 3 uses
  %i.ii = lshr i32 %i.ih, 2
  %i.ij = sub nsw i32 %.080145, %i.ii
  %i.ik = trunc i32 %i.ij to i8
  store i8 %i.ik, ptr %i.ht, align 1, !tbaa !14
  %i.il = lshr i32 %i.ih, 1
  %i.im = sub nsw i32 %.080145, %i.il
  %i.in = trunc i32 %i.im to i8
  store i8 %i.in, ptr %i.hu, align 1, !tbaa !14
  %i.io = mul nuw nsw i32 %i.ih, 3
  %i.ip = lshr i32 %i.io, 2
  %i.iq = sub nsw i32 %.080145, %i.ip
  %i.ir = trunc i32 %i.iq to i8
  store i8 %i.ir, ptr %i.hv, align 1, !tbaa !14
  br label %.loopexit

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.is = trunc nuw nsw i64 %indvars.iv to i32
  %i.it = mul nsw i32 %i.go, %i.is
  %i.iu = sdiv i32 %i.it, %i.ds
  %i.iv = add nsw i32 %i.iu, %.080145
  %i.iw = trunc i32 %i.iv to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  store i8 %i.iw, ptr %gep, align 1, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !178

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.v, %bb.w, %bb.s, %bb.t
  %i.ix = add nsw i32 %i.ds, %.081143             ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 7
  br i1 %i.iy, label %parse_vlc.exit, label %bb.x, !llvm.loop !179

bb.x:                                             ; preds = %.loopexit
  %i.iz = trunc i32 %.1 to i8
  %i.ja = zext nneg i32 %i.ix to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 %i.ja
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !14
  br label %ensure_bits.exit.thread

ensure_bits.exit.thread:                          ; preds = %bb.j, %parse_vlc.exit, %bb.l, %bb.g, %bb.c, %bb.a, %bb.x, %bb.i
  %.083 = phi i32 [ 0, %bb.x ], [ 0, %bb.g ], [ -1094995529, %bb.i ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %bb.l ], [ 0, %parse_vlc.exit ], [ 0, %bb.j ]
  ret i32 %.083
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @parse_lpc(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 2147483645) %1, i32 noundef %2, i32 noundef range(i32 0, 3) %3, i32 noundef range(i32 2, 4) %4) unnamed_addr #9 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load i32, ptr %i.b, align 16, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = icmp samesign ult i32 %3, %4
  br i1 %i.d, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.a
  %i.e = and i32 %i.c, 1
  %.not43 = icmp sgt i32 %1, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5496
  %i.j = zext nneg i32 %i.e to i64
  %i.k = getelementptr inbounds nuw [1152 x i8], ptr %i.i, i64 %i.j
  br i1 %.not43, label %.loopexit, label %.lr.ph46.split

.lr.ph46.split:                                   ; preds = %.lr.ph46
  %i.l = getelementptr i8, ptr %0, i64 20
  %.val7.i = load i32, ptr %i.l, align 4, !tbaa !59 ; 2 uses
  %i.m = sext i32 %1 to i64
  %i.n = add i32 %2, 1
  %i.o = zext nneg i32 %3 to i64
  %wide.trip.count65 = zext nneg i32 %4 to i64
  %.val.i.pre.pre = load i32, ptr %i.g, align 16, !tbaa !61
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph46.split, %..critedge_crit_edge
  %.val.i.pre = phi i32 [ %.val.i.pre.pre, %.lr.ph46.split ], [ %i.aw, %..critedge_crit_edge ]
  %indvars.iv62 = phi i64 [ %i.o, %.lr.ph46.split ], [ %indvars.iv.next63, %..critedge_crit_edge ] ; 3 uses
  %i.p = icmp samesign ult i64 %indvars.iv62, 2
  %i.q = select i1 %i.p, i32 2, i32 1             ; 3 uses
  %i.r = shl nuw nsw i32 %i.q, 3
  %i.s = shl nuw nsw i32 %i.q, 5
  %invariant.gep = getelementptr [64 x i8], ptr %i.k, i64 %indvars.iv62
  %wide.trip.count = zext nneg i32 %i.r to i64
  %wide.trip.count56 = zext nneg i32 %i.q to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.promoted = phi i32 [ %.val.i.pre, %.lr.ph ], [ %i.aw, %bb.f ] ; 5 uses
  %indvars.iv58 = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next59, %bb.f ] ; 2 uses
  %i.t = sub nsw i32 %.val7.i, %.promoted         ; 3 uses
  %i.u = icmp slt i32 %i.t, 0
  br i1 %i.u, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %i.t, %i.s
  br i1 %i.v, label %bb.d, label %ensure_bits.exit.preheader

ensure_bits.exit.preheader:                       ; preds = %bb.c
  %i.w = load i32, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !58   ; 2 uses
  br label %ensure_bits.exit

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i32 0, %.promoted
  %i.z = load i32, ptr %i.h, align 8, !tbaa !60
  %i.aa = sub nsw i32 %i.z, %.promoted
  %i.ab = icmp slt i32 %.val7.i, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.t, i32 %i.aa)
  %.0.i.i.i = select i1 %i.ab, i32 %i.y, i32 %..i.i.i
  %i.ac = add nsw i32 %.0.i.i.i, %.promoted
  store i32 %i.ac, ptr %i.g, align 16, !tbaa !61
  br label %.loopexit

.preheader:                                       ; preds = %ensure_bits.exit
  %gep = getelementptr [192 x i8], ptr %invariant.gep, i64 %indvars.iv58
  br label %bb.e

ensure_bits.exit:                                 ; preds = %ensure_bits.exit, %ensure_bits.exit.preheader
  %indvars.iv = phi i64 [ 0, %ensure_bits.exit.preheader ], [ %indvars.iv.next.1, %ensure_bits.exit ] ; 3 uses
  %i.ad = phi i32 [ %.promoted, %ensure_bits.exit.preheader ], [ %i.aw, %ensure_bits.exit ] ; 3 uses
  %i.ae = lshr i32 %i.ad, 3
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !14
  %i.ai = and i32 %i.ad, 7
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = and i32 %i.aj, 15
  %i.al = add i32 %i.ad, 4
  %i.am = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.al) ; 4 uses
  store i32 %i.am, ptr %i.g, align 16, !tbaa !61
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ak, ptr %i.an, align 8, !tbaa !27
  %i.ao = lshr i32 %i.am, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 1, !tbaa !14
  %i.as = and i32 %i.am, 7
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = and i32 %i.at, 15
  %i.av = add i32 %i.am, 4
  %i.aw = tail call i32 @llvm.umin.i32(i32 %i.w, i32 %i.av) ; 4 uses
  store i32 %i.aw, ptr %i.g, align 16, !tbaa !61
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %ensure_bits.exit, !llvm.loop !181

bb.e:                                             ; preds = %.preheader, %bb.e
  %indvars.iv53 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next54, %bb.e ] ; 3 uses
  %i.az = getelementptr inbounds nuw [32 x i8], ptr %gep, i64 %indvars.iv53 ; 5 uses
  %.idx = shl nuw nsw i64 %indvars.iv53, 5
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 8 uses
  %i.bb = load i32, ptr %i.ba, align 16, !tbaa !27
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bc
  %i.be = load float, ptr %i.bd, align 4, !tbaa !10 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !27
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bh
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !10 ; 3 uses
  %5 = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float %i.be, float %i.be) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !27
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bu = load i32, ptr %i.bt, align 16, !tbaa !27
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !27
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !27
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.ce
  %6 = load float, ptr %i.cf, align 4, !tbaa !10  ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10 ; 5 uses
  %i.cm = load float, ptr %i.bo, align 4, !tbaa !10 ; 4 uses
  %i.cn = load float, ptr %i.bs, align 4, !tbaa !10 ; 5 uses
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %i.bj, float %5) ; 2 uses
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float %5, float %i.bj) ; 2 uses
  %7 = load float, ptr %i.bw, align 4, !tbaa !10  ; 6 uses
  %i.cq = load float, ptr %i.ca, align 4, !tbaa !10 ; 7 uses
  %i.cr = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cm) ; 2 uses
  %8 = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.cp, float %i.cp) ; 2 uses
  %9 = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.cm, float %i.co) ; 2 uses
  %10 = tail call nsz float @llvm.fmuladd.f32(float %7, float %i.cr, float %8) ; 2 uses
  %11 = tail call nsz float @llvm.fmuladd.f32(float %7, float %i.cn, float %9) ; 2 uses
  %12 = tail call nsz float @llvm.fmuladd.f32(float %7, float %8, float %i.cr) ; 2 uses
  %13 = tail call nsz float @llvm.fmuladd.f32(float %7, float %9, float %i.cn) ; 2 uses
  %14 = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %13, float %10) ; 2 uses
  %15 = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %7, float %11) ; 2 uses
  %16 = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %12, float %12)
  %17 = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %10, float %13)
  %18 = tail call nsz float @llvm.fmuladd.f32(float %i.cq, float %11, float %7) ; 2 uses
  %19 = tail call nsz float @llvm.fmuladd.f32(float %6, float %i.cq, float %15) ; 2 uses
  %i.cs = insertelement <4 x float> poison, float %6, i64 0
  %i.ct = shufflevector <4 x float> %i.cs, <4 x float> poison, <4 x i32> zeroinitializer
  %20 = insertelement <4 x float> poison, float %15, i64 0
  %21 = insertelement <4 x float> %20, float %14, i64 1
  %i.cu = insertelement <4 x float> %21, float %16, i64 2
  %22 = insertelement <4 x float> %i.cu, float %17, i64 3 ; 2 uses
  %23 = shufflevector <4 x float> %22, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 2>
  %i.cv = insertelement <4 x float> %23, float %i.cq, i64 0
  %24 = insertelement <4 x float> %i.cv, float %18, i64 1
  %25 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %22, <4 x float> %24) ; 3 uses
  %26 = tail call nsz float @llvm.fmuladd.f32(float %6, float %18, float %14) ; 2 uses
  %27 = tail call nsz float @llvm.fmuladd.f32(float %i.cl, float %6, float %19)
  store float %27, ptr %i.az, align 4, !tbaa !10
  %28 = tail call nsz float @llvm.fmuladd.f32(float %i.cl, float %19, float %6)
  store float %28, ptr %i.cg, align 4, !tbaa !10
  %i.cw = extractelement <4 x float> %25, i64 0
  %29 = tail call nsz float @llvm.fmuladd.f32(float %i.cl, float %26, float %i.cw)
  store float %29, ptr %i.cb, align 4, !tbaa !10
  %i.cx = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %30 = insertelement <4 x float> poison, float %26, i64 0
  %31 = shufflevector <4 x float> %30, <4 x float> %25, <4 x i32> <i32 0, i32 7, i32 6, i32 5>
  %i.cz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cy, <4 x float> %25, <4 x float> %31)
  store <4 x float> %i.cz, ptr %i.bk, align 4, !tbaa !10
  %i.da = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  store float %i.cl, ptr %i.da, align 4, !tbaa !10
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %bb.f, label %bb.e, !llvm.loop !182

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next59 to i32
  %exitcond61.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond61.not, label %..critedge_crit_edge, label %bb.b, !llvm.loop !183

..critedge_crit_edge:                             ; preds = %bb.f
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph, !llvm.loop !184

.loopexit:                                        ; preds = %..critedge_crit_edge, %bb.b, %bb.a, %.lr.ph46, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1094995529, 1) i32 @parse_ts(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 2147483645) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = icmp slt i32 %3, %4
  br i1 %i.a, label %.lr.ph157, label %ensure_bits.exit.thread

.lr.ph157:                                        ; preds = %bb.a
  %.not = icmp eq i32 %5, 0                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 17 uses
  %i.f = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.not37.i99 = icmp sgt i32 %1, %2               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3692 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2348 ; 2 uses
  %i.m = sext i32 %1 to i64                       ; 4 uses
  %i.n = add i32 %2, 1                            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %.not91 = icmp eq i32 %1, %2                    ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.q = sdiv i32 %1, 2
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.w = getelementptr inbounds [32 x i8], ptr %i.v, i64 %i.r
  %i.x = sext i32 %3 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph157, %bb.au
  %indvars.iv187 = phi i64 [ %i.x, %.lr.ph157 ], [ %indvars.iv.next188, %bb.au ] ; 10 uses
  %i.y = icmp slt i64 %indvars.iv187, 6
  %i.z = trunc nsw i64 %indvars.iv187 to i32
  br i1 %i.y, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !67
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv187, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv187
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !61 ; 5 uses
  %.val7.i = load i32, ptr %i.f, align 4, !tbaa !59 ; 2 uses
  %i.ag = sub nsw i32 %.val7.i, %.val.i           ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %ensure_bits.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp samesign ult i32 %i.ag, 28
  br i1 %i.ai, label %ensure_bits.exit.thread.sink.split, label %ensure_bits.exit

ensure_bits.exit:                                 ; preds = %bb.g
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.ak = add nsw i32 %i.aj, 3
  %i.al = load i32, ptr %i.h, align 8, !tbaa !60
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !58
  %i.an = lshr i32 %.val.i, 3
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !14
  %i.ar = and i32 %.val.i, 7
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = sub i32 29, %i.aj
  %i.au = lshr i32 -1, %i.at
  %i.av = and i32 %i.as, %i.au
  %i.aw = add i32 %i.ak, %.val.i
  %i.ax = tail call i32 @llvm.umin.i32(i32 %i.al, i32 %i.aw)
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !61
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.av, i32 6) ; 2 uses
  %i.ay = trunc i32 %spec.store.select to i8
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv187
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.e, %ensure_bits.exit
  %.0 = phi i32 [ %spec.store.select, %ensure_bits.exit ], [ %i.af, %bb.e ], [ %i.z, %bb.b ] ; 13 uses
  %i.ba = load i32, ptr %i.i, align 16, !tbaa !34
  %.not90 = icmp slt i32 %.0, %i.ba
  br i1 %.not90, label %bb.i, label %ensure_bits.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp eq i64 %indvars.iv187, 12
  br i1 %i.bb, label %.preheader, label %bb.u

.preheader:                                       ; preds = %bb.i
  %i.bc = load i32, ptr %i.o, align 4, !tbaa !189
  %i.bd = icmp slt i32 %i.bc, 5
  %brmerge = or i1 %i.bd, %.not37.i99
  br i1 %brmerge, label %parse_grid_3.exit125, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader, %parse_grid_3.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %parse_grid_3.exit ], [ 0, %.preheader ] ; 4 uses
  %i.be = add nuw nsw i64 %indvars.iv, 4
  %i.bf = trunc nuw nsw i64 %indvars.iv to i32
  %i.bg = shl nuw i32 1, %i.bf                    ; 2 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %bb.j

bb.j:                                             ; preds = %bb.t, %.lr.ph.i
  %indvars.iv47.i = phi i64 [ %i.m, %.lr.ph.i ], [ %indvars.iv.next48.i, %bb.t ] ; 4 uses
  %i.bh = icmp eq i64 %indvars.iv47.i, %i.m
  br i1 %i.bh, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !63
  %i.bj = sext i32 %i.bi to i64
  %i.bk = icmp sge i64 %i.be, %i.bj
  %i.bl = zext i1 %i.bk to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = phi i32 [ 0, %bb.j ], [ %i.bl, %bb.k ]
  %.not24.i = icmp eq i32 %i.bm, %5
  br i1 %.not24.i, label %bb.m, label %bb.t

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv47.i ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !27
  %i.bp = and i32 %i.bo, %i.bg
  %.not25.i = icmp eq i32 %i.bp, 0
  br i1 %.not25.i, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.m
  %gep.i = getelementptr [224 x i8], ptr %invariant.gep.i, i64 %indvars.iv47.i
  br label %bb.n

bb.n:                                             ; preds = %parse_vlc.exit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %parse_vlc.exit.i ] ; 2 uses
  %.val.i.i = load i32, ptr %i.e, align 16, !tbaa !61 ; 8 uses
  %.val7.i.i = load i32, ptr %i.f, align 4, !tbaa !59 ; 2 uses
  %i.bq = sub nsw i32 %.val7.i.i, %.val.i.i       ; 3 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %parse_grid_3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bs = icmp samesign ult i32 %i.bq, 20
  %i.bt = load i32, ptr %i.h, align 8, !tbaa !60  ; 5 uses
  br i1 %i.bs, label %bb.p, label %ensure_bits.exit.i

bb.p:                                             ; preds = %bb.o
  %i.bu = sub nsw i32 0, %.val.i.i
  %i.bv = sub nsw i32 %i.bt, %.val.i.i
  %i.bw = icmp slt i32 %.val7.i.i, 0
  %..i.i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.bq, i32 %i.bv)
  %.0.i.i.i.i = select i1 %i.bw, i32 %i.bu, i32 %..i.i.i.i
  %i.bx = add nsw i32 %.0.i.i.i.i, %.val.i.i
  store i32 %i.bx, ptr %i.e, align 16, !tbaa !61
  br label %parse_grid_3.exit

ensure_bits.exit.i:                               ; preds = %bb.o
  %ff_dca_vlc_grid_3.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ff_dca_vlc_grid_3, i64 8), align 8, !tbaa !66 ; 2 uses
  %i.by = load ptr, ptr %i.d, align 8, !tbaa !58  ; 4 uses
  %i.bz = lshr i32 %.val.i.i, 3
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 1, !tbaa !14
  %i.cd = and i32 %.val.i.i, 7
  %i.ce = lshr i32 %i.cc, %i.cd
  %i.cf = and i32 %i.ce, 511
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %ff_dca_vlc_grid_3.val.i, i64 %i.cg ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !14
  %i.cj = sext i16 %i.ci to i32                   ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
end_hunk_0
begin_hunk_1_@synth_tones:bb.a
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !10
  %i.bm = fneg nsz float %i.am
  %i.bn = load float, ptr %2, align 4, !tbaa !10
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bl, float %i.bm, float %i.bn)
  store float %i.bo, ptr %2, align 4, !tbaa !10
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.bp = load float, ptr %i.av, align 4, !tbaa !10
  %i.bq = fneg nsz float %i.ar                    ; 2 uses
  %i.br = load float, ptr %i.s, align 4, !tbaa !10
  %i.bs = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float %i.bq, float %i.br)
  store float %i.bs, ptr %i.s, align 4, !tbaa !10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !10
  %i.bv = load float, ptr %i.r, align 4, !tbaa !10
  %i.bw = tail call nsz float @llvm.fmuladd.f32(float %i.bu, float %i.am, float %i.bv)
  store float %i.bw, ptr %i.r, align 4, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !10
  %i.bz = load float, ptr %2, align 4, !tbaa !10
  %i.ca = tail call nsz float @llvm.fmuladd.f32(float %i.by, float %i.ar, float %i.bz)
  store float %i.ca, ptr %2, align 4, !tbaa !10
  br label %bb.l

bb.g:                                             ; preds = %bb.d
  %i.cb = load float, ptr %i.av, align 4, !tbaa !10
  %i.cc = fneg nsz float %i.ar                    ; 2 uses
  %i.cd = load float, ptr %i.r, align 4, !tbaa !10
  %i.ce = tail call nsz float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float %i.cd)
  store float %i.ce, ptr %i.r, align 4, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !10
  %i.ch = load float, ptr %2, align 4, !tbaa !10
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.cg, float %i.am, float %i.ch)
  store float %i.ci, ptr %2, align 4, !tbaa !10
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.cj = load float, ptr %i.av, align 4, !tbaa !10
  %i.ck = fneg nsz float %i.ar                    ; 2 uses
  %i.cl = load float, ptr %2, align 4, !tbaa !10
  %i.cm = tail call nsz float @llvm.fmuladd.f32(float %i.cj, float %i.ck, float %i.cl)
  store float %i.cm, ptr %2, align 4, !tbaa !10
  br label %bb.j

bb.i:                                             ; preds = %bb.d
  %i.cn = load float, ptr %i.av, align 4, !tbaa !10
  %i.co = fneg nsz float %i.ar                    ; 2 uses
  %i.cp = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.cq = getelementptr i8, ptr %i.cp, i64 -20    ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !10
  %i.cs = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cr)
  store float %i.cs, ptr %i.cq, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre110.pre-phi = phi float [ %i.co, %bb.i ], [ %i.ck, %bb.h ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !10
  %i.cv = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16    ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !10
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %i.cu, float %i.am, float %i.cx)
  store float %i.cy, ptr %i.cw, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.pre108.pre-phi = phi float [ %.pre110.pre-phi, %bb.j ], [ %i.cc, %bb.g ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.da = load float, ptr %i.cz, align 4, !tbaa !10
  %i.db = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.dc = getelementptr i8, ptr %i.db, i64 -12    ; 2 uses
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !10
  %i.de = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.ar, float %i.dd)
  store float %i.de, ptr %i.dc, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pre.pre-phi = phi float [ %.pre108.pre-phi, %bb.k ], [ %i.bq, %bb.f ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.dg = load float, ptr %i.df, align 4, !tbaa !10
  %i.dh = fneg nsz float %i.am
  %i.di = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.dj = getelementptr i8, ptr %i.di, i64 -8     ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !10
  %i.dl = tail call nsz float @llvm.fmuladd.f32(float %i.dg, float %i.dh, float %i.dk)
  store float %i.dl, ptr %i.dj, align 4, !tbaa !10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.e
  %.pre-phi = phi float [ %.pre.pre-phi, %bb.l ], [ %i.az, %bb.e ] ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10
  %i.do = getelementptr [4 x i8], ptr %2, i64 %i.ax
  %i.dp = getelementptr i8, ptr %i.do, i64 -4     ; 2 uses
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !10
  %i.dr = tail call nsz float @llvm.fmuladd.f32(float %i.dn, float %.pre-phi, float %i.dq)
  store float %i.dr, ptr %i.dp, align 4, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.m
  %.pre-phi109 = phi float [ %.pre, %._crit_edge ], [ %.pre-phi, %bb.m ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 7 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !10
  %i.dw = tail call nsz float @llvm.fmuladd.f32(float %i.dt, float %i.am, float %i.dv)
  store float %i.dw, ptr %i.du, align 4, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !10
  %i.eb = tail call nsz float @llvm.fmuladd.f32(float %i.dy, float %i.ar, float %i.ea)
  store float %i.eb, ptr %i.dz, align 4, !tbaa !10
  %i.ec = getelementptr inbounds nuw i8, ptr %i.av, i64 28
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !10
  %i.ee = fneg nsz float %i.am
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !10
  %i.eh = tail call nsz float @llvm.fmuladd.f32(float %i.ed, float %i.ee, float %i.eg)
  store float %i.eh, ptr %i.ef, align 4, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 12 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !10
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.ej, float %.pre-phi109, float %i.el)
  store float %i.em, ptr %i.ek, align 4, !tbaa !10
  %i.en = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.eo = load float, ptr %i.en, align 4, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !10
  %i.er = tail call nsz float @llvm.fmuladd.f32(float %i.eo, float %i.am, float %i.eq)
  store float %i.er, ptr %i.ep, align 4, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.et = load float, ptr %i.es, align 4, !tbaa !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 20 ; 2 uses
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !10
  %i.ew = tail call nsz float @llvm.fmuladd.f32(float %i.et, float %i.ar, float %i.ev)
  store float %i.ew, ptr %i.eu, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.c
  %i.ex = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !75
  %i.ez = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.fa = getelementptr inbounds i8, ptr %i.ez, i64 %i.o ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = add i8 %i.fb, %i.ey
  store i8 %i.fc, ptr %i.fa, align 1, !tbaa !14
  %i.fd = add nuw nsw i32 %.0106, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fd, %i.m
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !201

.loopexit:                                        ; preds = %bb.o, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #8

attributes #0 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!5, !5, i64 0}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS14AVCodecContext", !15, i64 0}
!17 = !{!"p1 omnipotent char", !15, i64 0}
!18 = !{!"GetBitContext", !17, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!19 = !{!"p1 float", !15, i64 0}
!20 = !{!"p1 _ZTS11AVTXContext", !15, i64 0}
!21 = !{!"p1 _ZTS17AVFloatDSPContext", !15, i64 0}
!22 = !{!"p1 _ZTS13DCADSPContext", !15, i64 0}
!23 = !{!"DCALbrDecoder", !16, i64 0, !18, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !5, i64 108, !5, i64 204, !5, i64 236, !5, i64 332, !5, i64 428, !5, i64 452, !5, i64 1028, !5, i64 2180, !5, i64 2348, !5, i64 3692, !5, i64 3716, !5, i64 5252, !5, i64 5492, !5, i64 5496, !5, i64 7800, !5, i64 7928, !19, i64 9464, !6, i64 9472, !5, i64 9488, !5, i64 12560, !5, i64 13072, !5, i64 13328, !9, i64 13368, !5, i64 13372, !5, i64 13378, !5, i64 14018, !6, i64 22212, !20, i64 22216, !15, i64 22224, !21, i64 22232, !22, i64 22240}
!24 = !{!23, !16, i64 0}
!25 = !{!23, !6, i64 32}
!26 = !{!23, !6, i64 52}
!27 = !{!6, !6, i64 0}
!28 = !{!23, !6, i64 36}
!29 = !{!23, !6, i64 40}
!30 = !{!23, !6, i64 48}
!31 = !{!23, !6, i64 56}
!32 = !{!23, !6, i64 60}
!33 = !{!23, !6, i64 72}
!34 = !{!23, !6, i64 80}
!35 = !{!"short", !5, i64 0}
!36 = !{!35, !35, i64 0}
!37 = !{!"p1 _ZTS7AVClass", !15, i64 0}
!38 = !{!"p1 _ZTS7AVCodec", !15, i64 0}
!39 = !{!"p1 _ZTS15AVCodecInternal", !15, i64 0}
!40 = !{!"long", !5, i64 0}
!41 = !{!"AVRational", !6, i64 0, !6, i64 4}
!42 = !{!"p1 short", !15, i64 0}
!43 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !15, i64 16}
!44 = !{!"p1 _ZTS10RcOverride", !15, i64 0}
!45 = !{!"p1 _ZTS9AVHWAccel", !15, i64 0}
!46 = !{!"p1 _ZTS11AVBufferRef", !15, i64 0}
!47 = !{!"p1 _ZTS17AVCodecDescriptor", !15, i64 0}
!48 = !{!"p1 _ZTS16AVPacketSideData", !15, i64 0}
!49 = !{!"p1 int", !15, i64 0}
!50 = !{!"any p2 pointer", !15, i64 0}
!51 = !{!"p2 _ZTS15AVFrameSideData", !50, i64 0}
!52 = !{!"AVCodecContext", !37, i64 0, !6, i64 8, !6, i64 12, !38, i64 16, !6, i64 24, !6, i64 28, !15, i64 32, !39, i64 40, !15, i64 48, !40, i64 56, !6, i64 64, !6, i64 68, !17, i64 72, !6, i64 80, !41, i64 84, !41, i64 92, !41, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !41, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !15, i64 184, !15, i64 192, !6, i64 200, !9, i64 204, !9, i64 208, !9, i64 212, !9, i64 216, !9, i64 220, !9, i64 224, !9, i64 228, !9, i64 232, !9, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !42, i64 288, !42, i64 296, !42, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !43, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !15, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !9, i64 428, !9, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !44, i64 456, !40, i64 464, !40, i64 472, !9, i64 480, !9, i64 484, !6, i64 488, !6, i64 492, !17, i64 496, !17, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !45, i64 536, !15, i64 544, !46, i64 552, !46, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !15, i64 672, !15, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !47, i64 728, !17, i64 736, !6, i64 744, !6, i64 748, !17, i64 752, !17, i64 760, !17, i64 768, !48, i64 776, !6, i64 784, !6, i64 788, !40, i64 792, !6, i64 800, !6, i64 804, !40, i64 808, !15, i64 816, !40, i64 824, !49, i64 832, !6, i64 840, !51, i64 848, !6, i64 856, !6, i64 860}
!53 = !{!"DCADSPContext", !15, i64 0, !15, i64 8, !5, i64 16, !15, i64 32, !5, i64 40, !15, i64 56, !15, i64 64, !5, i64 72, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152}
!54 = !{!23, !5, i64 5492}
!55 = !{!23, !6, i64 96}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!23, !6, i64 22212}
!58 = !{!18, !17, i64 0}
!59 = !{!18, !6, i64 12}
!60 = !{!18, !6, i64 16}
!61 = !{!18, !6, i64 8}
!62 = !{!23, !9, i64 13368}
!63 = !{!23, !6, i64 88}
!64 = !{!"p1 _ZTS7VLCElem", !15, i64 0}
!65 = !{!"VLC", !6, i64 0, !64, i64 8, !6, i64 16, !6, i64 20}
!66 = !{!65, !64, i64 8}
!67 = !{!23, !6, i64 92}
!68 = !{!19, !19, i64 0}
!69 = !{!23, !6, i64 100}
!70 = !{!23, !22, i64 22240}
!71 = !{!23, !21, i64 22232}
!72 = !{!"DCALbrTone", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 10}
!73 = !{!72, !5, i64 0}
!74 = !{!72, !5, i64 1}
!75 = !{!72, !5, i64 2}
!76 = distinct !{!76, !11, !12, !13}
!77 = distinct !{!77, !11, !12, !13}
!78 = distinct !{!78, !11, !13, !12}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !56}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11, !12, !13}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11, !13, !12}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = !{!"DCAExssAsset", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116}
!97 = !{!96, !6, i64 88}
!98 = !{!96, !6, i64 92}
!99 = !{!23, !6, i64 64}
!100 = !{!23, !6, i64 104}
!101 = !{!23, !6, i64 44}
!102 = !{!23, !6, i64 76}
!103 = !{!23, !6, i64 68}
!104 = !{!52, !15, i64 32}
!105 = !{!"DCADCTContext", !5, i64 0}
!106 = !{!"SynthFilterContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!107 = !{!"p1 _ZTS17AVFixedDSPContext", !15, i64 0}
!108 = !{!"DCACoreDecoder", !16, i64 0, !18, i64 8, !18, i64 32, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !5, i64 144, !5, i64 151, !5, i64 158, !5, i64 165, !5, i64 172, !5, i64 179, !5, i64 186, !5, i64 256, !5, i64 536, !5, i64 552, !5, i64 1000, !5, i64 1896, !5, i64 2344, !5, i64 5928, !5, i64 7720, !5, i64 7728, !6, i64 9520, !6, i64 9524, !5, i64 9528, !6, i64 9624, !6, i64 9628, !6, i64 9632, !6, i64 9636, !6, i64 9640, !6, i64 9644, !6, i64 9648, !6, i64 9652, !5, i64 9656, !5, i64 9664, !6, i64 9712, !6, i64 9716, !6, i64 9720, !6, i64 9724, !6, i64 9728, !6, i64 9732, !6, i64 9736, !6, i64 9740, !6, i64 9744, !49, i64 9752, !5, i64 9760, !6, i64 13344, !49, i64 13352, !5, i64 13360, !49, i64 15152, !5, i64 15168, !22, i64 45744, !105, i64 45752, !5, i64 45768, !5, i64 45784, !106, i64 45800, !21, i64 45832, !107, i64 45840, !6, i64 45848, !15, i64 45856, !5, i64 45864, !6, i64 46120, !9, i64 46124, !5, i64 46128, !6, i64 46256, !6, i64 46260, !6, i64 46264, !6, i64 46268}
!109 = !{!"DCAExssParser", !16, i64 0, !18, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !5, i64 64, !5, i64 80}
!110 = !{!"DCAXllDecoder", !16, i64 0, !18, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !5, i64 80, !49, i64 8672, !6, i64 8680, !6, i64 8684, !6, i64 8688, !6, i64 8692, !6, i64 8696, !6, i64 8700, !17, i64 8704, !6, i64 8712, !6, i64 8716, !22, i64 8720, !6, i64 8728, !6, i64 8732, !6, i64 8736, !5, i64 8744}
!111 = !{!"DCAContext", !37, i64 0, !16, i64 8, !108, i64 16, !109, i64 46288, !110, i64 46496, !23, i64 55504, !53, i64 77760, !49, i64 77920, !17, i64 77928, !6, i64 77936, !6, i64 77940, !6, i64 77944, !6, i64 77948, !6, i64 77952, !43, i64 77960}
!112 = !{!111, !6, i64 77944}
!113 = !{!52, !6, i64 528}
!114 = !{!"LBRChunk", !6, i64 0, !6, i64 4, !17, i64 8}
!115 = !{!"", !114, i64 0, !114, i64 16, !5, i64 32, !5, i64 112, !5, i64 160, !5, i64 208, !5, i64 256}
!116 = !{!115, !6, i64 4}
!117 = !{!115, !17, i64 8}
!118 = !{!115, !6, i64 16}
!119 = !{!115, !6, i64 20}
!120 = !{!115, !17, i64 24}
!121 = !{!114, !6, i64 0}
!122 = !{!114, !6, i64 4}
!123 = !{!114, !17, i64 8}
!124 = distinct !{!124, !11}
!125 = distinct !{!125, !11, !149}
!126 = distinct !{!126, !11}
!127 = distinct !{!127, !11}
!128 = distinct !{!128, !11}
!129 = distinct !{!129, !11, !149}
!130 = distinct !{!130, !11}
!131 = distinct !{!131, !11}
!132 = distinct !{!132, !11}
!133 = distinct !{!133, !11}
!134 = distinct !{!134, !11}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{!137, !11}
!138 = distinct !{!138, !11}
!139 = !{!52, !6, i64 344}
!140 = !{!52, !6, i64 348}
!141 = !{!52, !6, i64 652}
!142 = !{!52, !6, i64 688}
!143 = !{!52, !40, i64 56}
!144 = !{!"p2 omnipotent char", !50, i64 0}
!145 = !{!"p2 _ZTS11AVBufferRef", !50, i64 0}
!146 = !{!"p1 _ZTS12AVDictionary", !15, i64 0}
!147 = !{!"AVFrame", !5, i64 0, !5, i64 64, !144, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !41, i64 124, !40, i64 136, !40, i64 144, !41, i64 152, !6, i64 160, !15, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !145, i64 248, !6, i64 256, !51, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !40, i64 304, !146, i64 312, !6, i64 320, !46, i64 328, !46, i64 336, !40, i64 344, !40, i64 352, !40, i64 360, !40, i64 368, !15, i64 376, !43, i64 384, !40, i64 408, !6, i64 416}
!148 = !{!147, !6, i64 112}
!149 = !{!"llvm.loop.unswitch.partial.disable"}
!150 = !{!147, !144, i64 96}
!151 = !{!17, !17, i64 0}
!152 = !{!53, !15, i64 152}
!153 = distinct !{!153, !11}
!154 = distinct !{!154, !11}
!155 = distinct !{!155, !56}
!156 = !{!53, !15, i64 144}
!157 = !{!23, !15, i64 22224}
!158 = !{!23, !20, i64 22216}
!159 = !{!"AVFloatDSPContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88}
!160 = !{!159, !15, i64 48}
!161 = !{!159, !15, i64 56}
!162 = distinct !{!162, !11}
!163 = distinct !{!163, !11}
!164 = !{!23, !6, i64 9472}
!165 = distinct !{!165, !11}
!166 = distinct !{!166, !11, !168, !12, !13}
!167 = distinct !{!167, !11, !168, !13, !12}
!168 = !{!"llvm.loop.peeled.count", i32 5}
!169 = distinct !{!169, !11, !12, !13}
!170 = distinct !{!170, !11, !13, !12}
!171 = distinct !{!171, !11}
!172 = !{!23, !19, i64 9464}
!173 = distinct !{!173, !11}
!174 = distinct !{!174, !11}
!175 = distinct !{!175, !11}
!176 = distinct !{!176, !11, !12, !13}
!177 = distinct !{!177, !11, !12, !13}
!178 = distinct !{!178, !11, !13, !12}
!179 = distinct !{!179, !11}
!180 = !{!"branch_weights", i32 4, i32 12}
end_hunk_1
