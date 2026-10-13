Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dca_lbr?download=true
inline.NumInlined: 114
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 44
begin_hunk_0_@parse_scale_factors:bb.a
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
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !180

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader, %bb.v, %bb.w, %bb.s, %bb.t
  %i.ix = add nsw i32 %i.ds, %.081143             ; 3 uses
  %i.iy = icmp slt i32 %i.ix, 7
  br i1 %i.iy, label %parse_vlc.exit, label %bb.x, !llvm.loop !181

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
  %i.c = load i32, ptr %i.b, align 16, !tbaa !58
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
  %.val7.i = load i32, ptr %i.l, align 4, !tbaa !62 ; 2 uses
  %i.m = sext i32 %1 to i64
  %i.n = add i32 %2, 1
  %i.o = zext nneg i32 %3 to i64
  %wide.trip.count65 = zext nneg i32 %4 to i64
  %.val.i.pre.pre = load i32, ptr %i.g, align 16, !tbaa !64
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
  %i.w = load i32, ptr %i.h, align 8, !tbaa !63   ; 2 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !61   ; 2 uses
  br label %ensure_bits.exit

bb.d:                                             ; preds = %bb.c
  %i.y = sub nsw i32 0, %.promoted
  %i.z = load i32, ptr %i.h, align 8, !tbaa !63
  %i.aa = sub nsw i32 %i.z, %.promoted
  %i.ab = icmp slt i32 %.val7.i, 0
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 range(i32 0, 64) %i.t, i32 %i.aa)
  %.0.i.i.i = select i1 %i.ab, i32 %i.y, i32 %..i.i.i
  %i.ac = add nsw i32 %.0.i.i.i, %.promoted
  store i32 %i.ac, ptr %i.g, align 16, !tbaa !64
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
  store i32 %i.am, ptr %i.g, align 16, !tbaa !64
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
  store i32 %i.aw, ptr %i.g, align 16, !tbaa !64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !27
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.preheader, label %ensure_bits.exit, !llvm.loop !183

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
  %5 = load float, ptr %i.ca, align 4, !tbaa !10  ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !27
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr @lpc_tab, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10 ; 3 uses
  %6 = tail call nsz float @llvm.fmuladd.f32(float %i.bj, float %i.be, float %i.be) ; 2 uses
  %i.cm = load float, ptr %i.cf, align 4, !tbaa !10 ; 4 uses
  %i.cn = load float, ptr %i.bo, align 4, !tbaa !10 ; 4 uses
  %7 = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %i.bj, float %6) ; 2 uses
  %8 = tail call nsz float @llvm.fmuladd.f32(float %i.cn, float %6, float %i.bj) ; 2 uses
  %i.co = load float, ptr %i.bs, align 4, !tbaa !10 ; 2 uses
  %9 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.co, i64 0 ; 2 uses
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cp = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cn, i64 0
  %11 = insertelement <4 x float> %i.cp, float %7, i64 1
  %12 = insertelement <4 x float> %11, float %8, i64 2
  %13 = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %7, i64 0
  %14 = insertelement <4 x float> %13, float %i.cn, i64 1
  %15 = insertelement <4 x float> %14, float %8, i64 2
  %16 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %12, <4 x float> %15) ; 3 uses
  %17 = extractelement <4 x float> %16, i64 0
  %18 = shufflevector <4 x float> %9, <4 x float> %16, <4 x i32> <i32 0, i32 6, i32 5, i32 poison>
  %19 = insertelement <4 x float> %18, float %i.cm, i64 3
  %20 = insertelement <4 x float> poison, float %5, i64 0
  %21 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %22 = load float, ptr %i.bw, align 4, !tbaa !10 ; 4 uses
  %23 = tail call nsz float @llvm.fmuladd.f32(float %22, float %i.co, float %17) ; 2 uses
  %24 = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %22, i64 0
  %25 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %26 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %25, <4 x float> %16, <4 x float> %19) ; 2 uses
  %i.cq = insertelement <2 x float> poison, float %5, i64 0
  %27 = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = insertelement <2 x float> poison, float %22, i64 0
  %29 = insertelement <2 x float> %28, float %23, i64 1
  %30 = insertelement <2 x float> poison, float %23, i64 0
  %31 = insertelement <2 x float> %30, float %22, i64 1
  %32 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %29, <2 x float> %31)
  %i.cr = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 poison>
  %i.cs = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %26, <4 x float> %21, <4 x float> %i.ct) ; 4 uses
  %i.cv = insertelement <4 x float> poison, float %i.cm, i64 0 ; 2 uses
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.cy = shufflevector <4 x float> %i.cs, <4 x float> %i.cx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cz = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %i.da = insertelement <4 x float> %i.cz, float %5, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dc = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> %i.cy, <4 x float> %i.db) ; 4 uses
  %i.dd = insertelement <4 x float> %i.cv, float %i.cl, i64 1
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.df = shufflevector <4 x float> %i.cu, <4 x float> %i.dc, <4 x i32> <i32 2, i32 poison, i32 3, i32 5>
  %i.dg = insertelement <4 x float> %i.df, float %i.cm, i64 1
  %i.dh = shufflevector <4 x float> %i.cu, <4 x float> %i.dc, <4 x i32> <i32 1, i32 3, i32 poison, i32 4>
  %i.di = insertelement <4 x float> %i.dh, float %i.cm, i64 2
  %i.dj = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.dg, <4 x float> %i.di) ; 5 uses
  %i.dk = extractelement <4 x float> %i.dj, i64 1
  store float %i.dk, ptr %i.az, align 4, !tbaa !10
  %i.dl = extractelement <4 x float> %i.dj, i64 2
  store float %i.dl, ptr %i.cg, align 4, !tbaa !10
  %i.dm = extractelement <4 x float> %i.dj, i64 3
  store float %i.dm, ptr %i.cb, align 4, !tbaa !10
  %i.dn = insertelement <4 x float> poison, float %i.cl, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = shufflevector <4 x float> %i.dc, <4 x float> %i.dj, <4 x i32> <i32 0, i32 2, i32 4, i32 3>
  %i.dq = shufflevector <4 x float> %i.dc, <4 x float> %i.dj, <4 x i32> <i32 1, i32 3, i32 4, i32 2>
  %i.dr = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.do, <4 x float> %i.dp, <4 x float> %i.dq)
  store <4 x float> %i.dr, ptr %i.bk, align 4, !tbaa !10
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 28
  store float %i.cl, ptr %i.ds, align 4, !tbaa !10
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %bb.f, label %bb.e, !llvm.loop !184

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next59 to i32
  %exitcond61.not = icmp eq i32 %i.n, %lftr.wideiv
  br i1 %exitcond61.not, label %..critedge_crit_edge, label %bb.b, !llvm.loop !185

..critedge_crit_edge:                             ; preds = %bb.f
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %.loopexit, label %.lr.ph, !llvm.loop !186

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
  %i.aa = load i32, ptr %i.b, align 4, !tbaa !39
  %i.ab = sext i32 %i.aa to i64
  %i.ac = icmp slt i64 %indvars.iv187, %i.ab
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv187
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.af = zext i8 %i.ae to i32
  br label %bb.h

bb.f:                                             ; preds = %bb.d, %bb.c
  %.val.i = load i32, ptr %i.e, align 8, !tbaa !64 ; 5 uses
  %.val7.i = load i32, ptr %i.f, align 4, !tbaa !62 ; 2 uses
  %i.ag = sub nsw i32 %.val7.i, %.val.i           ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %ensure_bits.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp samesign ult i32 %i.ag, 28
  br i1 %i.ai, label %ensure_bits.exit.thread.sink.split, label %ensure_bits.exit

ensure_bits.exit:                                 ; preds = %bb.g
  %i.aj = load i32, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.ak = add nsw i32 %i.aj, 3
  %i.al = load i32, ptr %i.h, align 8, !tbaa !63
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !61
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
  store i32 %i.ax, ptr %i.e, align 8, !tbaa !64
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
  %i.bc = load i32, ptr %i.o, align 4, !tbaa !37
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
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !38
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
  %.val.i.i = load i32, ptr %i.e, align 16, !tbaa !64 ; 8 uses
  %.val7.i.i = load i32, ptr %i.f, align 4, !tbaa !62 ; 2 uses
  %i.bq = sub nsw i32 %.val7.i.i, %.val.i.i       ; 3 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %parse_grid_3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
