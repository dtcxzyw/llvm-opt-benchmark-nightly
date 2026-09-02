Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConeTwistConstraint?download=true
inline.NumInlined: 920
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_:bb.a

bb.al:                                            ; preds = %bb.ae
  store float 0.000000e+00, ptr %i.akk, align 8, !tbaa !53
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #2 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btConeTwistConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(632) initializes((524, 532), (549, 551)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40, !nonnull !36, !align !41 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42, !nonnull !36, !align !41 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 372
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 372
  tail call void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(48) %i.g, ptr noundef nonnull align 4 dereferenceable(48) %i.h)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21btConeTwistConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK11btMatrix3x3S8_(ptr noundef nonnull align 8 dereferenceable(632) initializes((524, 532), (549, 551)) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %5) local_unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN21btConeTwistConstraint14calcAngleInfo2ERK11btTransformS2_RK11btMatrix3x3S5_(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(48) %5)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 3 uses
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !99   ; 6 uses
  %i.e = sext i32 %i.d to i64                     ; 13 uses
  %i.f = getelementptr [4 x i8], ptr %i.b, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 4
  store float 1.000000e+00, ptr %i.g, align 4, !tbaa !28
  %i.h = shl nsw i32 %i.d, 1
  %i.i = sext i32 %i.h to i64                     ; 4 uses
  %i.j = getelementptr [4 x i8], ptr %i.b, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 8
  store float 1.000000e+00, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.m = load float, ptr %2, align 4, !tbaa !28
  %i.n = load float, ptr %i.l, align 4, !tbaa !28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.r = load float, ptr %i.q, align 8, !tbaa !28 ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.x = load float, ptr %i.w, align 4, !tbaa !28 ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t) ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load float, ptr %i.z, align 4, !tbaa !28
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !28
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ag = load float, ptr %i.af, align 4, !tbaa !28
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae) ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load float, ptr %i.ak, align 4, !tbaa !28
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !28
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an) ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !100 ; 17 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.e ; 4 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.i ; 3 uses
  %i.av = fneg float %i.y
  %i.aw = fneg float %i.ah
  %i.ax = fneg float %i.aq
  store float 0.000000e+00, ptr %i.as, align 4, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.aq, ptr %i.ay, align 4, !tbaa !28
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.aw, ptr %i.az, align 4, !tbaa !28
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store float 0.000000e+00, ptr %i.ba, align 4, !tbaa !28
  store float %i.ax, ptr %i.at, align 4, !tbaa !28
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store float 0.000000e+00, ptr %i.bb, align 4, !tbaa !28
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store float %i.y, ptr %i.bc, align 4, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store float 0.000000e+00, ptr %i.bd, align 4, !tbaa !28
  store float %i.ah, ptr %i.au, align 4, !tbaa !28
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store float %i.av, ptr %i.be, align 4, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> zeroinitializer, ptr %i.bf, align 4, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101 ; 3 uses
  store float -1.000000e+00, ptr %i.bh, align 4, !tbaa !28
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %i.e
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  store float -1.000000e+00, ptr %i.bj, align 4, !tbaa !28
  %i.bk = getelementptr [4 x i8], ptr %i.bh, i64 %i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  store float -1.000000e+00, ptr %i.bl, align 4, !tbaa !28
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !28
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !28
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !28
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bz = load float, ptr %i.by, align 4, !tbaa !28
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !102 ; 17 uses
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.e ; 4 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.i ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  %i.ck = load <2 x float>, ptr %3, align 4, !tbaa !28 ; 2 uses
  %i.cl = load float, ptr %i.bn, align 8, !tbaa !28 ; 2 uses
  %i.cm = load float, ptr %i.bm, align 4, !tbaa !28 ; 2 uses
  %i.cn = load float, ptr %i.bq, align 4, !tbaa !28 ; 2 uses
  %i.co = load <2 x float>, ptr %i.br, align 4, !tbaa !28 ; 2 uses
  %i.cp = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x float> %i.ck, <2 x float> %i.co, <2 x i32> <i32 1, i32 3>
  %i.cs = fmul <2 x float> %i.cq, %i.cr
  %i.ct = shufflevector <2 x float> %i.ck, <2 x float> %i.co, <2 x i32> <i32 0, i32 2>
  %i.cu = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cs)
  %i.cx = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.bt, i64 1
  %i.cz = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.da, <2 x float> %i.cw) ; 3 uses
  %i.dc = fmul float %i.cl, %i.bx
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.cm, float %i.dc)
  %i.de = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.cn, float %i.dd) ; 4 uses
  %i.df = fneg float %i.de
  store float 0.000000e+00, ptr %i.cb, align 4, !tbaa !28
  store float %i.df, ptr %i.ce, align 4, !tbaa !28
  %i.dg = extractelement <2 x float> %i.db, i64 1 ; 3 uses
  store float %i.dg, ptr %i.cf, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.cg, align 4, !tbaa !28
  store float %i.de, ptr %i.cc, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.ch, align 4, !tbaa !28
  %i.dh = fneg <2 x float> %i.db                  ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  store float %i.di, ptr %i.ci, align 4, !tbaa !28
  store float 0.000000e+00, ptr %i.cj, align 4, !tbaa !28
  %i.dj = extractelement <2 x float> %i.dh, i64 1
  store float %i.dj, ptr %i.cd, align 4, !tbaa !28
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.dl = extractelement <2 x float> %i.db, i64 0 ; 3 uses
  store float %i.dl, ptr %i.dk, align 4, !tbaa !28
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store <2 x float> zeroinitializer, ptr %i.dm, align 4, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !29 ; 4 uses
  %i.dp = and i32 %i.do, 2
  %.not = icmp eq i32 %i.dp, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not, ptr %i.dr, ptr %i.dq
  %i.ds = load float, ptr %.in, align 4, !tbaa !28
  %i.dt = load float, ptr %1, align 8, !tbaa !103
  %i.du = fmul float %i.ds, %i.dt                 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !104 ; 9 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !105 ; 9 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !106 ; 9 uses
  %6 = and i32 %i.do, 1
  %.not169 = icmp eq i32 %6, 0
  br i1 %.not169, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.ed = load float, ptr %i.dv, align 4, !tbaa !28
  %i.ee = fadd float %i.dl, %i.ed
  %i.ef = fsub float %i.ee, %i.y
  %i.eg = load float, ptr %i.dw, align 4, !tbaa !28
  %i.eh = fsub float %i.ef, %i.eg
  %i.ei = fmul float %i.du, %i.eh
  store float %i.ei, ptr %i.dy, align 4, !tbaa !28
  store float f0xFF7FFFFF, ptr %i.ea, align 4, !tbaa !28
  store float f0x7F7FFFFF, ptr %i.ec, align 4, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !28
  %i.el = fadd float %i.dg, %i.ek
  %i.em = fsub float %i.el, %i.ah
  %i.en = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.eo = load float, ptr %i.en, align 4, !tbaa !28
  %i.ep = fsub float %i.em, %i.eo
  %i.eq = fmul float %i.du, %i.ep
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.e
  store float %i.eq, ptr %i.er, align 4, !tbaa !28
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.e
  store float f0xFF7FFFFF, ptr %i.es, align 4, !tbaa !28
  %i.et = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.e
  store float f0x7F7FFFFF, ptr %i.et, align 4, !tbaa !28
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !28
  %i.ew = fadd float %i.de, %i.ev
  %i.ex = fsub float %i.ew, %i.aq
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !28
  %i.fa = fsub float %i.ex, %i.ez
  %i.fb = fmul float %i.du, %i.fa
  %i.fc = shl nsw i64 %i.e, 1                     ; 3 uses
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.fc
  store float %i.fb, ptr %i.fd, align 4, !tbaa !28
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.fc
  store float f0xFF7FFFFF, ptr %i.fe, align 4, !tbaa !28
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.fc
  store float f0x7F7FFFFF, ptr %i.ff, align 4, !tbaa !28
  br label %.split271.us

.split:                                           ; preds = %bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !107 ; 3 uses
  %i.fj = load float, ptr %i.dv, align 4, !tbaa !28
  %i.fk = fadd float %i.dl, %i.fj
  %i.fl = fsub float %i.fk, %i.y
  %i.fm = load float, ptr %i.dw, align 4, !tbaa !28
  %i.fn = fsub float %i.fl, %i.fm
  %i.fo = fmul float %i.du, %i.fn
  store float %i.fo, ptr %i.dy, align 4, !tbaa !28
  store float f0xFF7FFFFF, ptr %i.ea, align 4, !tbaa !28
  store float f0x7F7FFFFF, ptr %i.ec, align 4, !tbaa !28
  %i.fp = load float, ptr %i.fg, align 4, !tbaa !54
  store float %i.fp, ptr %i.fi, align 4, !tbaa !28
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !28
  %i.fs = fadd float %i.dg, %i.fr
  %i.ft = fsub float %i.fs, %i.ah
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !28
  %i.fw = fsub float %i.ft, %i.fv
  %i.fx = fmul float %i.du, %i.fw
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.e
  store float %i.fx, ptr %i.fy, align 4, !tbaa !28
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.e
  store float f0xFF7FFFFF, ptr %i.fz, align 4, !tbaa !28
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.e
  store float f0x7F7FFFFF, ptr %i.ga, align 4, !tbaa !28
  %i.gb = load float, ptr %i.fg, align 4, !tbaa !54
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.e
  store float %i.gb, ptr %i.gc, align 4, !tbaa !28
  %i.gd = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !28
  %i.gf = fadd float %i.de, %i.ge
  %i.gg = fsub float %i.gf, %i.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !28
  %i.gj = fsub float %i.gg, %i.gi
  %i.gk = fmul float %i.du, %i.gj
  %i.gl = shl nsw i64 %i.e, 1                     ; 4 uses
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gl
  store float %i.gk, ptr %i.gm, align 4, !tbaa !28
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.gl
  store float f0xFF7FFFFF, ptr %i.gn, align 4, !tbaa !28
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %i.gl
  store float f0x7F7FFFFF, ptr %i.go, align 4, !tbaa !28
  %i.gp = load float, ptr %i.fg, align 4, !tbaa !54
  %i.gq = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %i.gl
  store float %i.gp, ptr %i.gq, align 4, !tbaa !28
  br label %.split271.us

.split271.us:                                     ; preds = %.split, %.split.us.preheader
  %i.gr = mul nsw i32 %i.d, 3                     ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 550
  %i.gt = load i8, ptr %i.gs, align 2, !tbaa !33, !range !35, !noundef !36
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.b, label %bb.k

bb.b:                                             ; preds = %.split271.us
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 468
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !43
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.gy = load float, ptr %i.gx, align 8, !tbaa !44 ; 2 uses
  %i.gz = fcmp olt float %i.gw, %i.gy
  br i1 %i.gz, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.hb = load float, ptr %i.ha, align 8, !tbaa !45
  %i.hc = fcmp olt float %i.hb, %i.gy
  br i1 %i.hc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.hd = load float, ptr %i.u, align 4, !tbaa !28, !noalias !108 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.hh = load float, ptr %i.af, align 4, !tbaa !28, !noalias !108 ; 2 uses
  %i.hi = load float, ptr %i.ao, align 4, !tbaa !28, !noalias !108
  %i.hj = shl nsw i32 %i.d, 2                     ; 2 uses
  %i.hk = sext i32 %i.gr to i64                   ; 5 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hk
  %i.hm = add nsw i32 %i.gr, 1
  %i.hn = sext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hn
  %i.hp = add nsw i32 %i.gr, 2
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hq
  %i.hs = sext i32 %i.hj to i64                   ; 5 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.hs
  %i.hu = load <2 x float>, ptr %2, align 4, !tbaa !28, !noalias !108 ; 3 uses
  %i.hv = load float, ptr %i.o, align 4, !tbaa !28, !noalias !108
  %i.hw = load <2 x float>, ptr %i.z, align 4, !tbaa !28, !noalias !108 ; 3 uses
  %i.hx = load float, ptr %i.ab, align 4, !tbaa !28, !noalias !108
  %i.hy = load <2 x float>, ptr %i.he, align 8, !tbaa !28, !noalias !108 ; 2 uses
  %i.hz = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ia = load <2 x float>, ptr %i.hf, align 8, !tbaa !28, !noalias !108 ; 2 uses
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.ic = load <2 x float>, ptr %i.ai, align 4, !tbaa !28, !noalias !108 ; 2 uses
  %i.id = shufflevector <2 x float> %i.ic, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float %i.hv, i64 1
  %i.if = insertelement <4 x float> %i.ie, float %i.hx, i64 2
  %i.ig = shufflevector <4 x float> %i.if, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.ih = fmul <4 x float> %i.ib, %i.ig
  %i.ii = shufflevector <2 x float> %i.hu, <2 x float> %i.hw, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.ij = shufflevector <2 x float> %i.ic, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.ik = shufflevector <4 x float> %i.ij, <4 x float> %i.ii, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.il = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hz, <4 x float> %i.ik, <4 x float> %i.ih)
  %i.im = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.in = shufflevector <2 x float> %i.hu, <2 x float> %i.hw, <2 x i32> <i32 1, i32 3>
  %i.io = fmul <2 x float> %i.im, %i.in
  %i.ip = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = shufflevector <2 x float> %i.hu, <2 x float> %i.hw, <2 x i32> <i32 0, i32 2>
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ip, <2 x float> %i.iq, <2 x float> %i.io)
  %i.is = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.hh, i64 1
  %i.iu = or disjoint i32 %i.hj, 2
  %i.iv = sext i32 %i.iu to i64                   ; 2 uses
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.iv
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.hk
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.hn
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.hq
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.hs
  %i.jb = load <2 x float>, ptr %i.hg, align 8, !tbaa !28, !noalias !108 ; 2 uses
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.jd = insertelement <4 x float> poison, float %i.hd, i64 0
  %i.je = insertelement <4 x float> %i.jd, float %i.hh, i64 1
  %i.jf = insertelement <4 x float> %i.je, float %i.hi, i64 2
  %i.jg = shufflevector <4 x float> %i.jf, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 0, i32 1>
  %i.jh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jc, <4 x float> %i.jg, <4 x float> %i.il) ; 5 uses
  %i.ji = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.it, <2 x float> %i.ir) ; 4 uses
  %i.jk = extractelement <4 x float> %i.jh, i64 2 ; 2 uses
  store float %i.jk, ptr %i.hl, align 4, !tbaa !28
  %i.jl = extractelement <4 x float> %i.jh, i64 3 ; 2 uses
  store float %i.jl, ptr %i.ho, align 4, !tbaa !28
  %i.jm = extractelement <4 x float> %i.jh, i64 0 ; 2 uses
  store float %i.jm, ptr %i.hr, align 4, !tbaa !28
  store <2 x float> %i.jj, ptr %i.ht, align 4, !tbaa !28
  %i.jn = extractelement <4 x float> %i.jh, i64 1 ; 2 uses
  store float %i.jn, ptr %i.iw, align 4, !tbaa !28
  %i.jo = fneg <4 x float> %i.jh                  ; 4 uses
  %i.jp = extractelement <4 x float> %i.jo, i64 2
  store float %i.jp, ptr %i.ix, align 4, !tbaa !28
  %i.jq = extractelement <4 x float> %i.jo, i64 3
  store float %i.jq, ptr %i.iy, align 4, !tbaa !28
  %i.jr = extractelement <4 x float> %i.jo, i64 0
  store float %i.jr, ptr %i.iz, align 4, !tbaa !28
  %i.js = extractelement <2 x float> %i.jj, i64 0
  %i.jt = extractelement <2 x float> %i.jj, i64 1
  %i.ju = fneg <2 x float> %i.jj
  store <2 x float> %i.ju, ptr %i.ja, align 4, !tbaa !28
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.iv
  %i.jw = extractelement <4 x float> %i.jo, i64 1
  store float %i.jw, ptr %i.jv, align 4, !tbaa !28
  %i.jx = load float, ptr %1, align 8, !tbaa !103
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !55
  %i.ka = fmul float %i.jx, %i.jz                 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 484 ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !28
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !28
  %i.kf = fmul float %i.jl, %i.ke
  %i.kg = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.jk, float %i.kf)
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !28
  %i.kj = tail call noundef float @llvm.fmuladd.f32(float %i.ki, float %i.jm, float %i.kg)
  %i.kk = fmul float %i.ka, %i.kj
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.hk
  store float %i.kk, ptr %i.kl, align 4, !tbaa !28
  %i.km = load float, ptr %i.kb, align 4, !tbaa !28
  %i.kn = load float, ptr %i.kd, align 8, !tbaa !28
  %i.ko = fmul float %i.jt, %i.kn
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.km, float %i.js, float %i.ko)
  %i.kq = load float, ptr %i.kh, align 4, !tbaa !28
  %i.kr = tail call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.jn, float %i.kp)
  %i.ks = fmul float %i.ka, %i.kr
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.hs
  store float %i.ks, ptr %i.kt, align 4, !tbaa !28
  %i.ku = load ptr, ptr %i.dz, align 8, !tbaa !105 ; 3 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.hk
  store float f0xFF7FFFFF, ptr %i.kv, align 4, !tbaa !28
  %i.kw = load ptr, ptr %i.eb, align 8, !tbaa !106 ; 3 uses
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.hk
  store float f0x7F7FFFFF, ptr %i.kx, align 4, !tbaa !28
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %i.hs
  store float f0xFF7FFFFF, ptr %i.ky, align 4, !tbaa !28
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.kw, i64 %i.hs
  store float f0x7F7FFFFF, ptr %i.kz, align 4, !tbaa !28
  %i.la = mul nsw i32 %i.d, 5
  br label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.ld = load float, ptr %i.lb, align 4, !tbaa !28
  %i.le = load float, ptr %i.lc, align 4, !tbaa !28 ; 6 uses
  %i.lf = fmul float %i.ld, %i.le
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.lh = load float, ptr %i.lg, align 8, !tbaa !28
  %i.li = fmul float %i.le, %i.lh
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 492
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !28
  %i.ll = fmul float %i.le, %i.lk
  %i.lm = fmul float %i.le, %i.lf                 ; 2 uses
  %i.ln = fmul float %i.le, %i.li                 ; 2 uses
  %i.lo = fmul float %i.le, %i.ll                 ; 2 uses
  %i.lp = sext i32 %i.gr to i64                   ; 6 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.lp
  store float %i.lm, ptr %i.lq, align 4, !tbaa !28
  %i.lr = add nsw i32 %i.gr, 1
  %i.ls = sext i32 %i.lr to i64                   ; 2 uses
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ls
  store float %i.ln, ptr %i.lt, align 4, !tbaa !28
  %i.lu = add nsw i32 %i.gr, 2
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.lv
  store float %i.lo, ptr %i.lw, align 4, !tbaa !28
  %i.lx = fneg float %i.lm
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.lp
  store float %i.lx, ptr %i.ly, align 4, !tbaa !28
  %i.lz = fneg float %i.ln
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.ls
  store float %i.lz, ptr %i.ma, align 4, !tbaa !28
  %i.mb = fneg float %i.lo
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.lv
  store float %i.mb, ptr %i.mc, align 4, !tbaa !28
  %i.md = load float, ptr %1, align 8, !tbaa !103
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.mf = load float, ptr %i.me, align 8, !tbaa !56
  %i.mg = fmul float %i.md, %i.mf
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.mi = load float, ptr %i.mh, align 8, !tbaa !46
  %i.mj = fmul float %i.mg, %i.mi
  %i.mk = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.lp
  store float %i.mj, ptr %i.mk, align 4, !tbaa !28
  %i.ml = and i32 %i.do, 4
  %.not167 = icmp eq i32 %i.ml, 0
  br i1 %.not167, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 628
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !30
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !107
  %i.mq = getelementptr inbounds [4 x i8], ptr %i.mp, i64 %i.lp
  store float %i.mn, ptr %i.mq, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.mr = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.lp
end_hunk_0
