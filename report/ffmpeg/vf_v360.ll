Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_v360?download=true
inline.NumInlined: 74
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 107
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 117
begin_hunk_0_@xyz_to_sinusoidal:.preheader
  %i.ar = extractelement <2 x float> %i.ap, i64 1
  store float %i.ar, ptr %7, align 4, !tbaa !29
  %i.as = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.at = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <16 x i32> zeroinitializer
  %i.au = icmp sgt <16 x i32> %i.at, <i32 0, i32 -1, i32 -2, i32 -3, i32 0, i32 -1, i32 -2, i32 -3, i32 0, i32 -1, i32 -2, i32 -3, i32 0, i32 -1, i32 -2, i32 -3>
  %i.av = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <16 x i32> zeroinitializer
  %i.aw = add <16 x i32> %i.av, <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.ax = shufflevector <4 x i32> %i.as, <4 x i32> poison, <16 x i32> zeroinitializer
  %i.ay = tail call <16 x i32> @llvm.smin.v16i32(<16 x i32> %i.aw, <16 x i32> %i.ax)
  %i.az = trunc <16 x i32> %i.ay to <16 x i16>
  %i.ba = add <16 x i16> %i.az, splat (i16 -1)
  %i.bb = select <16 x i1> %i.au, <16 x i16> %i.ba, <16 x i16> zeroinitializer
  store <16 x i16> %i.bb, ptr %4, align 2, !tbaa !18
  %i.bc = shufflevector <2 x i32> %i.aa, <2 x i32> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bd = add <2 x i32> %i.bc, <i32 2, i32 3>
  %i.be = insertelement <2 x i32> poison, i32 %3, i64 0
  %i.bf = shufflevector <2 x i32> %i.be, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.bd, <2 x i32> %i.bf)
  %i.bh = icmp sgt <2 x i32> %i.bc, <i32 -2, i32 -3>
  %i.bi = trunc <2 x i32> %i.bg to <2 x i16>
  %i.bj = add <2 x i16> %i.bi, splat (i16 -1)
  %i.bk = select <2 x i1> %i.bh, <2 x i16> %i.bj, <2 x i16> zeroinitializer
  %i.bl = shufflevector <2 x i16> %i.bk, <2 x i16> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  store <8 x i16> %i.bl, ptr %i.z, align 2, !tbaa !18
  br label %.preheader.rtcont

.preheader.rtscalar:                              ; preds = %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = tail call nsz float @llvm.asin.f32(float %i.bn) ; 2 uses
  %i.bp = load float, ptr %1, align 4, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !29
  %i.bs = tail call nsz float @llvm.atan2.f32(float %i.bp, float %i.br)
  %i.bt = tail call nsz float @llvm.cos.f32(float %i.bo)
  %i.bu = fmul nsz float %i.bt, %i.bs
  %i.bv = fpext nsz float %i.bu to double
  %i.bw = fdiv nsz double %i.bv, f0x400921FB54442D18
  %i.bx = fptrunc nsz double %i.bw to float
  %i.by = sitofp nsz i32 %2 to float
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float 5.000000e-01, float 5.000000e-01)
  %i.ca = fadd nnan nsz float %i.by, -1.000000e+00
  %i.cb = fmul nsz float %i.ca, %i.bz             ; 2 uses
  %i.cc = fpext nsz float %i.bo to double
  %i.cd = fdiv nsz double %i.cc, f0x3FF921FB54442D18
  %i.ce = fptrunc nsz double %i.cd to float
  %i.cf = sitofp nsz i32 %3 to float
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.ce, float 5.000000e-01, float 5.000000e-01)
  %i.ch = fadd nnan nsz float %i.cf, -1.000000e+00
  %i.ci = fmul nsz float %i.ch, %i.cg             ; 2 uses
  %i.cj = tail call nsz float @llvm.floor.f32(float %i.cb)
  %i.ck = fptosi float %i.cj to i32               ; 9 uses
  %i.cl = tail call nsz float @llvm.floor.f32(float %i.ci)
  %i.cm = fptosi float %i.cl to i32               ; 9 uses
  %i.cn = sitofp nsz i32 %i.ck to float
  %i.co = fsub nsz float %i.cb, %i.cn
  store float %i.co, ptr %6, align 4, !tbaa !29
  %i.cp = sitofp nsz i32 %i.cm to float
  %i.cq = fsub nsz float %i.ci, %i.cp
  store float %i.cq, ptr %7, align 4, !tbaa !29
  %i.cr = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 %2)
  %.inv.scalar = icmp sgt i32 %i.ck, 0
  %i.cs = trunc i32 %i.cr to i16
  %i.ct = add i16 %i.cs, -1
  %i.cu = select i1 %.inv.scalar, i16 %i.ct, i16 0 ; 4 uses
  %i.cv = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 %3)
  %.inv34.scalar = icmp sgt i32 %i.cm, 0
  %i.cw = trunc i32 %i.cv to i16
  %i.cx = add i16 %i.cw, -1
  %i.cy = select i1 %.inv34.scalar, i16 %i.cx, i16 0 ; 4 uses
  store i16 %i.cu, ptr %4, align 2, !tbaa !18
  store i16 %i.cy, ptr %5, align 2, !tbaa !18
  %i.cz = add i32 %i.ck, 1
  %i.da = tail call i32 @llvm.smin.i32(i32 %i.cz, i32 %2)
  %.inv.1.scalar = icmp sgt i32 %i.ck, -1
  %i.db = trunc i32 %i.da to i16
  %i.dc = add i16 %i.db, -1
  %i.dd = select i1 %.inv.1.scalar, i16 %i.dc, i16 0 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 %i.dd, ptr %i.de, align 2, !tbaa !18
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 %i.cy, ptr %i.df, align 2, !tbaa !18
  %i.dg = add i32 %i.ck, 2
  %i.dh = tail call i32 @llvm.smin.i32(i32 %i.dg, i32 %2)
  %.inv.2.scalar = icmp sgt i32 %i.ck, -2
  %i.di = trunc i32 %i.dh to i16
  %i.dj = add i16 %i.di, -1
  %i.dk = select i1 %.inv.2.scalar, i16 %i.dj, i16 0 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 %i.dk, ptr %i.dl, align 2, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %i.cy, ptr %i.dm, align 2, !tbaa !18
  %i.dn = add i32 %i.ck, 3
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 %2)
  %.inv.3.scalar = icmp sgt i32 %i.ck, -3
  %i.dp = trunc i32 %i.do to i16
  %i.dq = add i16 %i.dp, -1
  %i.dr = select i1 %.inv.3.scalar, i16 %i.dq, i16 0 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 %i.dr, ptr %i.ds, align 2, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 %i.cy, ptr %i.dt, align 2, !tbaa !18
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = add i32 %i.cm, 1
  %i.dw = tail call i32 @llvm.smin.i32(i32 %i.dv, i32 %3)
  %.inv34.1.scalar = icmp sgt i32 %i.cm, -1
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = add i16 %i.dx, -1
  %i.dz = select i1 %.inv34.1.scalar, i16 %i.dy, i16 0 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 %i.cu, ptr %i.du, align 2, !tbaa !18
  store i16 %i.dz, ptr %i.ea, align 2, !tbaa !18
  %i.eb = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 %i.dd, ptr %i.eb, align 2, !tbaa !18
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 %i.dz, ptr %i.ec, align 2, !tbaa !18
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i16 %i.dk, ptr %i.ed, align 2, !tbaa !18
  %i.ee = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 %i.dz, ptr %i.ee, align 2, !tbaa !18
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 %i.dr, ptr %i.ef, align 2, !tbaa !18
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 %i.dz, ptr %i.eg, align 2, !tbaa !18
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ei = add i32 %i.cm, 2
  %i.ej = tail call i32 @llvm.smin.i32(i32 %i.ei, i32 %3)
  %.inv34.2.scalar = icmp sgt i32 %i.cm, -2
  %i.ek = trunc i32 %i.ej to i16
  %i.el = add i16 %i.ek, -1
  %i.em = select i1 %.inv34.2.scalar, i16 %i.el, i16 0 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 %i.cu, ptr %i.eh, align 2, !tbaa !18
  store i16 %i.em, ptr %i.en, align 2, !tbaa !18
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i16 %i.dd, ptr %i.eo, align 2, !tbaa !18
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 %i.em, ptr %i.ep, align 2, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 %i.dk, ptr %i.eq, align 2, !tbaa !18
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 %i.em, ptr %i.er, align 2, !tbaa !18
  %i.es = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 %i.dr, ptr %i.es, align 2, !tbaa !18
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 %i.em, ptr %i.et, align 2, !tbaa !18
  %i.eu = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ev = add i32 %i.cm, 3
  %i.ew = tail call i32 @llvm.smin.i32(i32 %i.ev, i32 %3)
  %.inv34.3.scalar = icmp sgt i32 %i.cm, -3
  %i.ex = trunc i32 %i.ew to i16
  %i.ey = add i16 %i.ex, -1
  %i.ez = select i1 %.inv34.3.scalar, i16 %i.ey, i16 0 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.cu, ptr %i.eu, align 2, !tbaa !18
  store i16 %i.ez, ptr %i.fa, align 2, !tbaa !18
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i16 %i.dd, ptr %i.fb, align 2, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 26
  store i16 %i.ez, ptr %i.fc, align 2, !tbaa !18
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i16 %i.dk, ptr %i.fd, align 2, !tbaa !18
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %i.ez, ptr %i.fe, align 2, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i16 %i.dr, ptr %i.ff, align 2, !tbaa !18
  %i.fg = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %i.ez, ptr %i.fg, align 2, !tbaa !18
  br label %.preheader.rtcont

.preheader.rtcont:                                ; preds = %.preheader.rtscalar, %.preheader.rtvec
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef range(i32 0, 2) i32 @xyz_to_fisheye(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.d = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.e = insertelement <2 x i32> %i.d, i32 %3, i64 1 ; 2 uses
  %i.f = sitofp nsz <2 x i32> %i.e to <2 x float>
  %i.g = load <2 x float>, ptr %1, align 4, !tbaa !29 ; 3 uses
  %i.h = extractelement <2 x float> %i.g, i64 0
  %i.i = extractelement <2 x float> %i.g, i64 1
  %i.j = tail call nsz float @hypotf(float noundef %i.h, float noundef %i.i) #20 ; 3 uses
  %i.k = fcmp nsz ogt float %i.j, 0.000000e+00
  %i.l = select nsz i1 %i.k, float %i.j, float 1.000000e+00
  %i.m = tail call nsz float @llvm.atan2.f32(float %i.j, float %i.b)
  %i.n = fpext nsz float %i.m to double
  %i.o = fdiv nsz double %i.n, f0x400921FB54442D18
  %i.p = fptrunc nsz double %i.o to float
  %i.q = insertelement <2 x float> poison, float %i.l, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fdiv nsz <2 x float> %i.g, %i.r
  %i.t = insertelement <2 x float> poison, float %i.p, i64 0
  %i.u = shufflevector <2 x float> %i.t, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul nsz <2 x float> %i.s, %i.u
  %i.w = load <2 x float>, ptr %i.c, align 4, !tbaa !29
  %i.x = fdiv nsz <2 x float> %i.v, %i.w
  %.fr78 = freeze <2 x float> %i.x                ; 2 uses
  %8 = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr78)
  %9 = fcmp uge <2 x float> %8, splat (float 5.000000e-01)
  %10 = bitcast <2 x i1> %9 to i2
  %11 = icmp eq i2 %10, 0                         ; 3 uses
  %i.y = fmul nsz <2 x float> %.fr78, splat (float 2.000000e+00)
  %i.z = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float 5.000000e-01))
  %i.aa = fadd nnan nsz <2 x float> %i.f, splat (float -1.000000e+00)
  %i.ab = fmul nsz <2 x float> %i.aa, %i.z        ; 2 uses
  %i.ac = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.ab)
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = fptosi <4 x float> %i.ad to <4 x i32>   ; 5 uses
  %i.af = shufflevector <4 x i32> %i.ae, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %i.ag = sitofp nsz <2 x i32> %i.af to <2 x float>
  %i.ah = fsub nsz <2 x float> %i.ab, %i.ag
  %i.ai = insertelement <2 x i1> poison, i1 %11, i64 0
  %i.aj = shufflevector <2 x i1> %i.ai, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x float> %i.ah, <2 x float> zeroinitializer ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  store float %i.al, ptr %6, align 4, !tbaa !29
  %i.am = extractelement <2 x float> %i.ak, i64 1
  store float %i.am, ptr %7, align 4, !tbaa !29
  br i1 %11, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  store i16 0, ptr %4, align 2, !tbaa !18
  store i16 0, ptr %5, align 2, !tbaa !18
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.ao, align 2, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 0, ptr %i.ap, align 2, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.aq, align 2, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 0, ptr %i.ar, align 2, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 0, ptr %i.as, align 2, !tbaa !18
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.at, align 2, !tbaa !18
  store i16 0, ptr %i.au, align 2, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 0, ptr %i.av, align 2, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 0, ptr %i.aw, align 2, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i16 0, ptr %i.ax, align 2, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 0, ptr %i.ay, align 2, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 0, ptr %i.az, align 2, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 0, ptr %i.ba, align 2, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 0, ptr %i.bb, align 2, !tbaa !18
  store i16 0, ptr %i.bc, align 2, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i16 0, ptr %i.bd, align 2, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 0, ptr %i.be, align 2, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 0, ptr %i.bf, align 2, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 0, ptr %i.bg, align 2, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 0, ptr %i.bh, align 2, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 0, ptr %i.bi, align 2, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 0, ptr %i.bj, align 2, !tbaa !18
  store i16 0, ptr %i.bk, align 2, !tbaa !18
  br label %.split61.us

.preheader.us.preheader:                          ; preds = %bb.a
  %i.bl = extractelement <4 x i32> %i.ae, i64 0   ; 2 uses
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %2)
  %.inv.us.us = icmp sgt i32 %i.bl, 0
  %i.bn = trunc i32 %i.bm to i16
  %i.bo = add i16 %i.bn, -1
  %i.bp = select i1 %.inv.us.us, i16 %i.bo, i16 0 ; 4 uses
  %i.bq = extractelement <4 x i32> %i.ae, i64 3   ; 6 uses
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %3)
  %.inv56.us = icmp sgt i32 %i.bq, 0
  %i.bs = trunc i32 %i.br to i16
  %i.bt = add i16 %i.bs, -1
  %i.bu = select i1 %.inv56.us, i16 %i.bt, i16 0  ; 4 uses
  store i16 %i.bp, ptr %4, align 2, !tbaa !18
  store i16 %i.bu, ptr %5, align 2, !tbaa !18
  %i.bv = add <4 x i32> %i.ae, <i32 1, i32 2, i32 3, i32 3>
  %i.bw = icmp sgt <4 x i32> %i.ae, <i32 -1, i32 -2, i32 -3, i32 -3>
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ce = add i32 %i.bq, 1
  %i.cf = tail call i32 @llvm.smin.i32(i32 %i.ce, i32 %3)
  %.inv56.us.1 = icmp sgt i32 %i.bq, -1
  %i.cg = trunc i32 %i.cf to i16
  %i.ch = add i16 %i.cg, -1
  %i.ci = select i1 %.inv56.us.1, i16 %i.ch, i16 0 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cr = add i32 %i.bq, 2
  %i.cs = tail call i32 @llvm.smin.i32(i32 %i.cr, i32 %3)
  %.inv56.us.2 = icmp sgt i32 %i.bq, -2
  %i.ct = trunc i32 %i.cs to i16
  %i.cu = add i16 %i.ct, -1
  %i.cv = select i1 %.inv56.us.2, i16 %i.cu, i16 0 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.de = shufflevector <2 x i32> %i.e, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.df = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bv, <4 x i32> %i.de)
  %i.dg = trunc <4 x i32> %i.df to <4 x i16>
  %i.dh = add <4 x i16> %i.dg, splat (i16 -1)
  %i.di = select <4 x i1> %i.bw, <4 x i16> %i.dh, <4 x i16> zeroinitializer ; 5 uses
  %i.dj = extractelement <4 x i16> %i.di, i64 0   ; 3 uses
  store i16 %i.dj, ptr %i.bx, align 2, !tbaa !18
  store i16 %i.bu, ptr %i.by, align 2, !tbaa !18
  %i.dk = extractelement <4 x i16> %i.di, i64 1   ; 3 uses
  store i16 %i.dk, ptr %i.bz, align 2, !tbaa !18
  store i16 %i.bu, ptr %i.ca, align 2, !tbaa !18
  %i.dl = extractelement <4 x i16> %i.di, i64 2   ; 3 uses
  store i16 %i.dl, ptr %i.cb, align 2, !tbaa !18
  store i16 %i.bu, ptr %i.cc, align 2, !tbaa !18
  store i16 %i.bp, ptr %i.cd, align 2, !tbaa !18
  store i16 %i.ci, ptr %i.cj, align 2, !tbaa !18
  store i16 %i.dj, ptr %i.ck, align 2, !tbaa !18
  store i16 %i.ci, ptr %i.cl, align 2, !tbaa !18
  store i16 %i.dk, ptr %i.cm, align 2, !tbaa !18
  store i16 %i.ci, ptr %i.cn, align 2, !tbaa !18
  store i16 %i.dl, ptr %i.co, align 2, !tbaa !18
  store i16 %i.ci, ptr %i.cp, align 2, !tbaa !18
  store i16 %i.bp, ptr %i.cq, align 2, !tbaa !18
  store i16 %i.cv, ptr %i.cw, align 2, !tbaa !18
  store i16 %i.dj, ptr %i.cx, align 2, !tbaa !18
  store i16 %i.cv, ptr %i.cy, align 2, !tbaa !18
  store i16 %i.dk, ptr %i.cz, align 2, !tbaa !18
  store i16 %i.cv, ptr %i.da, align 2, !tbaa !18
  store i16 %i.dl, ptr %i.db, align 2, !tbaa !18
  store i16 %i.cv, ptr %i.dc, align 2, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.bp, ptr %i.dd, align 2, !tbaa !18
  %i.dn = extractelement <4 x i16> %i.di, i64 3
  store i16 %i.dn, ptr %i.dm, align 2, !tbaa !18
  br label %.split61.us

.split61.us:                                      ; preds = %.preheader.preheader, %.preheader.us.preheader
  %i.do = phi <4 x i16> [ zeroinitializer, %.preheader.preheader ], [ %i.di, %.preheader.us.preheader ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.dq = extractelement <4 x i16> %i.do, i64 0
  store i16 %i.dq, ptr %i.dp, align 2, !tbaa !18
  %i.dr = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.ds = extractelement <4 x i16> %i.do, i64 3   ; 3 uses
  store i16 %i.ds, ptr %i.dr, align 2, !tbaa !18
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.du = extractelement <4 x i16> %i.do, i64 1
  store i16 %i.du, ptr %i.dt, align 2, !tbaa !18
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 28
  store i16 %i.ds, ptr %i.dv, align 2, !tbaa !18
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 30
  %i.dx = extractelement <4 x i16> %i.do, i64 2
  store i16 %i.dx, ptr %i.dw, align 2, !tbaa !18
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 30
  store i16 %i.ds, ptr %i.dy, align 2, !tbaa !18
  %i.dz = zext i1 %11 to i32
  ret i32 %i.dz
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal range(i32 0, 2) i32 @xyz_to_pannini(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 32)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %7) #0 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  %i.d = tail call nsz float @llvm.atan2.f32(float %i.a, float %i.c)
  %sincos = tail call nsz { float, float } @llvm.sincos.f32(float %i.d) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0
  %cos = extractvalue { float, float } %sincos, 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !29
  %i.g = tail call nsz float @llvm.asin.f32(float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.i = load float, ptr %i.h, align 8, !tbaa !58 ; 2 uses
  %i.j = fadd nsz float %i.i, 1.000000e+00
  %i.k = fadd nsz float %i.i, %cos
  %i.l = fdiv nsz float %i.j, %i.k
  %i.m = tail call nsz float @llvm.tan.f32(float %i.g)
  %i.n = insertelement <2 x i32> poison, i32 %2, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %3, i64 1 ; 2 uses
  %i.p = sitofp nsz <2 x i32> %i.o to <2 x float>
  %i.q = insertelement <2 x float> poison, float %sin, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.m, i64 1
  %i.s = insertelement <2 x float> poison, float %i.l, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer
  %i.u = fmul nsz <2 x float> %i.r, %i.t
  %i.v = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float 5.000000e-01))
  %i.w = fadd nnan nsz <2 x float> %i.p, splat (float -1.000000e+00)
  %i.x = fmul nsz <2 x float> %i.w, %i.v          ; 4 uses
  %i.y = tail call nsz <2 x float> @llvm.floor.v2f32(<2 x float> %i.x)
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.aa = fptosi <4 x float> %i.z to <4 x i32>    ; 4 uses
  %i.ab = extractelement <4 x i32> %i.aa, i64 3   ; 7 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.ad = shufflevector <4 x i32> %i.aa, <4 x i32> poison, <2 x i32> <i32 0, i32 3>
  %i.ae = sitofp nsz <2 x i32> %i.ad to <2 x float>
  %i.af = fsub nsz <2 x float> %i.x, %i.ae        ; 2 uses
  %i.ag = extractelement <2 x float> %i.af, i64 0
  store float %i.ag, ptr %6, align 4, !tbaa !29
  %i.ah = extractelement <2 x float> %i.af, i64 1
  store float %i.ah, ptr %7, align 4, !tbaa !29
  br label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  %i.ai = icmp sgt i32 %3, %i.ab
  %i.aj = extractelement <4 x i32> %i.aa, i64 0   ; 5 uses
  %i.ak = icmp sgt i32 %i.aj, -1
  %i.al = icmp sgt i32 %2, %i.aj
  %i.am = and i1 %i.ak, %i.al
  %or.cond52 = select i1 %i.ai, i1 %i.am, i1 false
  %i.an = fcmp nsz oge float %i.c, 0.000000e+00
  %spec.select = select i1 %or.cond52, i1 %i.an, i1 false
  %i.ao = sitofp nsz i32 %i.aj to float
  %i.ap = extractelement <2 x float> %i.x, i64 0
  %i.aq = fsub nsz float %i.ap, %i.ao
  store float %i.aq, ptr %6, align 4, !tbaa !29
  %i.ar = uitofp nneg i32 %i.ab to float
  %i.as = extractelement <2 x float> %i.x, i64 1
  %i.at = fsub nsz float %i.as, %i.ar
  store float %i.at, ptr %7, align 4, !tbaa !29
  br i1 %spec.select, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread, %bb.b
  store i16 0, ptr %4, align 2, !tbaa !18
  store i16 0, ptr %5, align 2, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 2
  store i16 0, ptr %i.au, align 2, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i16 0, ptr %i.av, align 2, !tbaa !18
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i16 0, ptr %i.aw, align 2, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 0, ptr %i.ax, align 2, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i16 0, ptr %i.ay, align 2, !tbaa !18
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i16 0, ptr %i.az, align 2, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 0, ptr %i.ba, align 2, !tbaa !18
  store i16 0, ptr %i.bb, align 2, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 10
  store i16 0, ptr %i.bc, align 2, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i16 0, ptr %i.bd, align 2, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i16 0, ptr %i.be, align 2, !tbaa !18
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i16 0, ptr %i.bf, align 2, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 14
  store i16 0, ptr %i.bg, align 2, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 14
  store i16 0, ptr %i.bh, align 2, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i16 0, ptr %i.bi, align 2, !tbaa !18
  store i16 0, ptr %i.bj, align 2, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i16 0, ptr %i.bk, align 2, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 18
  store i16 0, ptr %i.bl, align 2, !tbaa !18
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i16 0, ptr %i.bm, align 2, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i16 0, ptr %i.bn, align 2, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 22
  store i16 0, ptr %i.bo, align 2, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 22
  store i16 0, ptr %i.bp, align 2, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 0, ptr %i.bq, align 2, !tbaa !18
  store i16 0, ptr %i.br, align 2, !tbaa !18
  br label %.split60.us

.preheader.us.preheader:                          ; preds = %bb.b
  %.inv.us.us.not = icmp eq i32 %i.aj, 0
  %i.bs = trunc i32 %i.aj to i16
  %i.bt = add i16 %i.bs, -1
  %i.bu = select i1 %.inv.us.us.not, i16 0, i16 %i.bt ; 4 uses
  %i.bv = tail call i32 @llvm.umin.i32(i32 %i.ab, i32 %3)
  %.inv55.us.not = icmp eq i32 %i.ab, 0
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = add i16 %i.bw, -1
  %i.by = select i1 %.inv55.us.not, i16 0, i16 %i.bx ; 4 uses
  store i16 %i.bu, ptr %4, align 2, !tbaa !18
  store i16 %i.by, ptr %5, align 2, !tbaa !18
  %i.bz = add nuw <4 x i32> %i.aa, <i32 1, i32 2, i32 3, i32 3>
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 6
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = add nuw nsw i32 %i.ab, 1
  %i.ci = tail call i32 @llvm.umin.i32(i32 %i.ch, i32 %3)
  %i.cj = trunc i32 %i.ci to i16
  %i.ck = add i16 %i.cj, -1                       ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 10
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 14
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ct = add nuw i32 %i.ab, 2
  %i.cu = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 %3)
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = add i16 %i.cv, -1                       ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 18
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 18
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 22
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 22
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.df = shufflevector <2 x i32> %i.o, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dg = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bz, <4 x i32> %i.df)
  %i.dh = trunc <4 x i32> %i.dg to <4 x i16>
  %i.di = add <4 x i16> %i.dh, splat (i16 -1)     ; 5 uses
  %i.dj = extractelement <4 x i16> %i.di, i64 0   ; 3 uses
  store i16 %i.dj, ptr %i.ca, align 2, !tbaa !18
  store i16 %i.by, ptr %i.cb, align 2, !tbaa !18
  %i.dk = extractelement <4 x i16> %i.di, i64 1   ; 3 uses
  store i16 %i.dk, ptr %i.cc, align 2, !tbaa !18
  store i16 %i.by, ptr %i.cd, align 2, !tbaa !18
  %i.dl = extractelement <4 x i16> %i.di, i64 2   ; 3 uses
  store i16 %i.dl, ptr %i.ce, align 2, !tbaa !18
  store i16 %i.by, ptr %i.cf, align 2, !tbaa !18
  store i16 %i.bu, ptr %i.cg, align 2, !tbaa !18
  store i16 %i.ck, ptr %i.cl, align 2, !tbaa !18
  store i16 %i.dj, ptr %i.cm, align 2, !tbaa !18
  store i16 %i.ck, ptr %i.cn, align 2, !tbaa !18
  store i16 %i.dk, ptr %i.co, align 2, !tbaa !18
  store i16 %i.ck, ptr %i.cp, align 2, !tbaa !18
  store i16 %i.dl, ptr %i.cq, align 2, !tbaa !18
  store i16 %i.ck, ptr %i.cr, align 2, !tbaa !18
  store i16 %i.bu, ptr %i.cs, align 2, !tbaa !18
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !18
  store i16 %i.dj, ptr %i.cy, align 2, !tbaa !18
  store i16 %i.cw, ptr %i.cz, align 2, !tbaa !18
  store i16 %i.dk, ptr %i.da, align 2, !tbaa !18
  store i16 %i.cw, ptr %i.db, align 2, !tbaa !18
  store i16 %i.dl, ptr %i.dc, align 2, !tbaa !18
  store i16 %i.cw, ptr %i.dd, align 2, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i16 %i.bu, ptr %i.de, align 2, !tbaa !18
  %i.dn = extractelement <4 x i16> %i.di, i64 3
  store i16 %i.dn, ptr %i.dm, align 2, !tbaa !18
  br label %.split60.us
end_hunk_0
