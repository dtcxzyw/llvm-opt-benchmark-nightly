inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0_@pj_affine:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL10des_affine, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 0, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z35pj_projection_specific_setup_affineP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(192) ptr @calloc(i64 noundef 1, i64 noundef 192) #6 ; 19 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %_ZL24computeReverseParametersP8PJconsts.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store double 1.000000e+00, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  store double 1.000000e+00, ptr %i.e, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store <2 x double> splat (double 1.000000e+00), ptr %i.f, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store double 1.000000e+00, ptr %i.i, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.j, align 8, !tbaa !46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.a, ptr %i.k, align 8, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZL10forward_4dR8PJ_COORDP8PJconsts, ptr %i.l, align 8, !tbaa !50
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr @_ZL10reverse_4dR8PJ_COORDP8PJconsts, ptr %i.m, align 8, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr @_ZL10forward_3d6PJ_LPZP8PJconsts, ptr %i.n, align 8, !tbaa !52
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  store ptr @_ZL10reverse_3d6PJ_XYZP8PJconsts, ptr %i.o, align 8, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL10forward_2d5PJ_LPP8PJconsts, ptr %i.p, align 8, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store ptr @_ZL10reverse_2d5PJ_XYP8PJconsts, ptr %i.q, align 8, !tbaa !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 0, ptr %i.r, align 4, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 0, ptr %i.s, align 8, !tbaa !41
  %i.t = load ptr, ptr %0, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 18 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.w = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.t, ptr noundef %i.v, ptr noundef nonnull @.str.1)
  store i64 %i.w, ptr %i.a, align 8, !tbaa !58
  %i.x = load ptr, ptr %0, align 8, !tbaa !56
  %i.y = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.z = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.x, ptr noundef %i.y, ptr noundef nonnull @.str.2)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !59
  %i.ab = load ptr, ptr %0, align 8, !tbaa !56
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ad = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef nonnull @.str.3)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !60
  %i.af = load ptr, ptr %0, align 8, !tbaa !56
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ah = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.af, ptr noundef %i.ag, ptr noundef nonnull @.str.4)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !61
  %i.aj = load ptr, ptr %0, align 8, !tbaa !56
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.al = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.aj, ptr noundef %i.ak, ptr noundef nonnull @.str.5)
  %i.am = and i64 %i.al, 4294967295
  %.not = icmp eq i64 %i.am, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = load ptr, ptr %0, align 8, !tbaa !56
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ap = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.an, ptr noundef %i.ao, ptr noundef nonnull @.str.6)
  store i64 %i.ap, ptr %i.d, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = load ptr, ptr %0, align 8, !tbaa !56
  %i.ar = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.as = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef nonnull @.str.7)
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.as, ptr %i.at, align 8, !tbaa !62
  %i.au = load ptr, ptr %0, align 8, !tbaa !56
  %i.av = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.aw = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.au, ptr noundef %i.av, ptr noundef nonnull @.str.8)
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !63
  %i.ay = load ptr, ptr %0, align 8, !tbaa !56
  %i.az = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ba = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ay, ptr noundef %i.az, ptr noundef nonnull @.str.9)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !64
  %i.bc = load ptr, ptr %0, align 8, !tbaa !56
  %i.bd = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.be = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull @.str.10)
  %i.bf = and i64 %i.be, 4294967295
  %.not86 = icmp eq i64 %i.bf, 0
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load ptr, ptr %0, align 8, !tbaa !56
  %i.bh = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bi = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef nonnull @.str.11)
  store i64 %i.bi, ptr %i.e, align 8, !tbaa !45
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bj = load ptr, ptr %0, align 8, !tbaa !56
  %i.bk = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bl = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bj, ptr noundef %i.bk, ptr noundef nonnull @.str.12)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !65
  %i.bn = load ptr, ptr %0, align 8, !tbaa !56
  %i.bo = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bp = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bn, ptr noundef %i.bo, ptr noundef nonnull @.str.13)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !66
  %i.br = load ptr, ptr %0, align 8, !tbaa !56
  %i.bs = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bt = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.br, ptr noundef %i.bs, ptr noundef nonnull @.str.14)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !67
  %i.bv = load ptr, ptr %0, align 8, !tbaa !56
  %i.bw = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.bx = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef nonnull @.str.15)
  %i.by = and i64 %i.bx, 4294967295
  %.not87 = icmp eq i64 %i.by, 0
  br i1 %.not87, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = load ptr, ptr %0, align 8, !tbaa !56
  %i.ca = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.cb = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef nonnull @.str.16)
  store i64 %i.cb, ptr %i.f, align 8, !tbaa !68
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cc = load ptr, ptr %0, align 8, !tbaa !56
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ce = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.cc, ptr noundef %i.cd, ptr noundef nonnull @.str.17)
  %i.cf = and i64 %i.ce, 4294967295
  %.not88 = icmp eq i64 %i.cf, 0
  br i1 %.not88, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = load ptr, ptr %0, align 8, !tbaa !56
  %i.ch = load ptr, ptr %i.u, align 8, !tbaa !57
  %i.ci = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.cg, ptr noundef %i.ch, ptr noundef nonnull @.str.18)
  store i64 %i.ci, ptr %i.g, align 8, !tbaa !69
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !49  ; 14 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !42 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  %i.ct = load <2 x double>, ptr %i.cm, align 8, !tbaa !46 ; 5 uses
  %i.cu = load <2 x double>, ptr %i.cr, align 8, !tbaa !46 ; 2 uses
  %i.cv = fneg <2 x double> %i.cu                 ; 3 uses
  %i.cw = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cx = load <2 x double>, ptr %i.cp, align 8, !tbaa !46 ; 6 uses
  %i.cy = load double, ptr %i.cq, align 8, !tbaa !65 ; 2 uses
  %i.cz = load <2 x double>, ptr %i.cs, align 8, !tbaa !46 ; 4 uses
  %i.da = shufflevector <2 x double> %i.ct, <2 x double> %i.cx, <2 x i32> <i32 3, i32 1>
  %i.db = fmul <2 x double> %i.da, %i.cv
  %i.dc = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = shufflevector <2 x double> %i.ct, <2 x double> %i.cx, <2 x i32> <i32 0, i32 3>
  %i.de = fmul <2 x double> %i.dd, %i.cv
  %i.df = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dg = insertelement <2 x double> %i.df, double %i.cl, i64 0
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.cz, <2 x double> %i.de) ; 3 uses
  %i.di = load <2 x double>, ptr %i.cn, align 8, !tbaa !46 ; 5 uses
  %i.dj = load double, ptr %i.co, align 8, !tbaa !64
  %i.dk = shufflevector <2 x double> %i.di, <2 x double> %i.ct, <2 x i32> <i32 1, i32 2>
  %i.dl = extractelement <2 x double> %i.di, i64 0
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dc, <2 x double> %i.db) ; 2 uses
  %1 = shufflevector <2 x double> %i.dh, <2 x double> %i.dm, <2 x i32> <i32 0, i32 3>
  %2 = fneg <2 x double> %1                       ; 2 uses
  %i.dn = shufflevector <2 x double> %i.cx, <2 x double> %i.di, <2 x i32> <i32 0, i32 2>
  %i.do = shufflevector <2 x double> %i.cu, <2 x double> %i.cx, <2 x i32> <i32 0, i32 2>
  %i.dp = fneg <2 x double> %i.do
  %i.dq = fmul <2 x double> %i.dn, %i.dp
  %i.dr = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ds = insertelement <2 x double> %i.dr, double %i.cy, i64 1
  %i.dt = shufflevector <2 x double> %i.cz, <2 x double> %i.ct, <2 x i32> <i32 0, i32 2>
  %i.du = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ds, <2 x double> %i.dt, <2 x double> %i.dq) ; 3 uses
  %i.dv = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = insertelement <2 x double> poison, double %i.cy, i64 0
  %i.dx = insertelement <2 x double> %i.dw, double %i.cl, i64 1
  %i.dy = insertelement <2 x double> %i.cz, double %i.cl, i64 0
  %i.dz = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ea = insertelement <2 x double> %i.dz, double %i.dj, i64 0
  %i.eb = fneg <2 x double> %i.ea                 ; 3 uses
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.ed = fmul <2 x double> %i.dv, %i.ec
  %i.ee = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dy, <2 x double> %i.ed) ; 2 uses
  %i.ef = fmul <2 x double> %i.cw, %i.eb
  %i.eg = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <2 x double> %i.cx, <2 x double> %i.dh, <2 x i32> <i32 0, i32 3>
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ei, <2 x double> %i.ef) ; 2 uses
  %i.ek = extractelement <2 x double> %i.du, i64 0
  %i.el = extractelement <2 x double> %i.ej, i64 1
  %i.em = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.ek, double %i.el) ; 2 uses
  %i.en = fcmp oeq double %i.em, 0.000000e+00
  br i1 %i.en, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cj, i64 104
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !69 ; 2 uses
  %i.eq = fcmp oeq double %i.ep, 0.000000e+00
  br i1 %i.eq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.er = load ptr, ptr %0, align 8, !tbaa !56
  %i.es = tail call i32 @proj_log_level(ptr noundef %i.er, i32 noundef 4)
  %i.et = icmp sgt i32 %i.es, 1
  br i1 %i.et, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ptr, ...) @_Z14proj_log_debugP8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.23)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr null, ptr %i.m, align 8, !tbaa !51
  store ptr null, ptr %i.o, align 8, !tbaa !53
  store ptr null, ptr %i.q, align 8, !tbaa !55
  br label %_ZL24computeReverseParametersP8PJconsts.exit

bb.p:                                             ; preds = %bb.l
  %3 = shufflevector <2 x double> %i.dh, <2 x double> %2, <2 x i32> <i32 1, i32 3>
  %i.eu = insertelement <2 x double> poison, double %i.em, i64 0 ; 2 uses
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ew = fdiv <2 x double> %3, %i.ev
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cj, i64 112
  store <2 x double> %i.ew, ptr %i.ex, align 8, !tbaa !46
  %i.ey = shufflevector <2 x double> %i.du, <2 x double> %i.eb, <2 x i32> <i32 1, i32 3>
  %i.ez = fdiv <2 x double> %i.ey, %i.ev
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cj, i64 128
  store <2 x double> %i.ez, ptr %i.fa, align 8, !tbaa !46
  %4 = fneg <2 x double> %i.ee
  %5 = shufflevector <2 x double> %i.ee, <2 x double> %4, <2 x i32> <i32 1, i32 2>
  %i.fb = fdiv <2 x double> %5, %i.ev
  %i.fc = getelementptr inbounds nuw i8, ptr %i.cj, i64 144
  store <2 x double> %i.fb, ptr %i.fc, align 8, !tbaa !46
  %i.fd = shufflevector <2 x double> %i.du, <2 x double> %2, <2 x i32> <i32 0, i32 2>
  %i.fe = fdiv <2 x double> %i.fd, %i.ev
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cj, i64 160
  store <2 x double> %i.fe, ptr %i.ff, align 8, !tbaa !46
  %i.fg = insertelement <2 x double> %i.ej, double 1.000000e+00, i64 1
  %i.fh = insertelement <2 x double> %i.eu, double %i.ep, i64 1
  %i.fi = fdiv <2 x double> %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  store <2 x double> %i.fi, ptr %i.fj, align 8, !tbaa !46
  br label %_ZL24computeReverseParametersP8PJconsts.exit

_ZL24computeReverseParametersP8PJconsts.exit:     ; preds = %bb.p, %bb.o, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.o ], [ %0, %bb.p ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10forward_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %0, align 8, !tbaa !70  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !70 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !70 ; 3 uses
  %i.i = load double, ptr %i.b, align 8, !tbaa !58
  %i.j = load double, ptr %i.c, align 8, !tbaa !71
  %i.k = tail call double @llvm.fmuladd.f64(double %i.j, double %i.d, double %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.m = load double, ptr %i.l, align 8, !tbaa !72
  %i.n = tail call double @llvm.fmuladd.f64(double %i.m, double %i.f, double %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.p = load double, ptr %i.o, align 8, !tbaa !73
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.h, double %i.n)
  store double %i.q, ptr %0, align 8, !tbaa !70
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load double, ptr %i.r, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.u = load double, ptr %i.t, align 8, !tbaa !74
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.d, double %i.s)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.x = load double, ptr %i.w, align 8, !tbaa !75
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double %i.f, double %i.v)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load double, ptr %i.z, align 8, !tbaa !76
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.h, double %i.y)
  store double %i.ab, ptr %i.e, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.af = load double, ptr %i.ae, align 8, !tbaa !77
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.d, double %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !78
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.f, double %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.al = load double, ptr %i.ak, align 8, !tbaa !79
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.h, double %i.aj)
  store double %i.am, ptr %i.g, align 8, !tbaa !70
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ao = load double, ptr %i.an, align 8, !tbaa !61
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.as = load double, ptr %i.ar, align 8, !tbaa !70
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.as, double %i.ao)
  store double %i.at, ptr %i.ar, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10reverse_4dR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load double, ptr %0, align 8, !tbaa !70
  %i.e = load double, ptr %i.b, align 8, !tbaa !58
  %i.f = fsub double %i.d, %i.e                   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load double, ptr %i.i, align 8, !tbaa !59
  %i.k = fsub double %i.h, %i.j                   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !70
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !60
  %i.p = fsub double %i.m, %i.o                   ; 3 uses
  %i.q = load double, ptr %i.c, align 8, !tbaa !71
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.s = load double, ptr %i.r, align 8, !tbaa !72
  %i.t = fmul double %i.k, %i.s
  %i.u = tail call double @llvm.fmuladd.f64(double %i.q, double %i.f, double %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.w = load double, ptr %i.v, align 8, !tbaa !73
  %i.x = tail call double @llvm.fmuladd.f64(double %i.w, double %i.p, double %i.u)
  store double %i.x, ptr %0, align 8, !tbaa !70
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.z = load double, ptr %i.y, align 8, !tbaa !74
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !75
  %i.ac = fmul double %i.k, %i.ab
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.z, double %i.f, double %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.af = load double, ptr %i.ae, align 8, !tbaa !76
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.p, double %i.ad)
  store double %i.ag, ptr %i.g, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !77
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !78
  %i.al = fmul double %i.k, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.f, double %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ao = load double, ptr %i.an, align 8, !tbaa !79
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.p, double %i.am)
  store double %i.ap, ptr %i.l, align 8, !tbaa !70
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = load double, ptr %i.as, align 8, !tbaa !70
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load double, ptr %i.au, align 8, !tbaa !61
  %i.aw = fsub double %i.at, %i.av
  %i.ax = fmul double %i.ar, %i.aw
  store double %i.ax, ptr %i.as, align 8, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10forward_3d6PJ_LPZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_XYZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_LPZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %.sroa.0.0.copyload = load double, ptr %1, align 8, !tbaa !46 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !46 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.h = load double, ptr %i.g, align 8, !tbaa !77
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %.sroa.0.0.copyload, double %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.k = load double, ptr %i.j, align 8, !tbaa !78
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %.sroa.7.0.copyload, double %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.n = load double, ptr %i.m, align 8, !tbaa !79
  %i.o = tail call double @llvm.fmuladd.f64(double %i.n, double %.sroa.9.0.copyload, double %i.l)
  %i.p = load <2 x double>, ptr %i.b, align 8, !tbaa !46
  %i.q = load <4 x double>, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  %i.r = shufflevector <4 x double> %i.q, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.s = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.t = shufflevector <2 x double> %i.s, <2 x double> poison, <2 x i32> zeroinitializer
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.t, <2 x double> %i.p)
  %i.v = load <2 x double>, ptr %i.d, align 8, !tbaa !46
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.x = shufflevector <4 x double> %i.q, <4 x double> %i.w, <2 x i32> <i32 1, i32 4>
  %i.y = insertelement <2 x double> poison, double %.sroa.7.0.copyload, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.z, <2 x double> %i.u)
  %i.ab = shufflevector <4 x double> %i.q, <4 x double> %i.w, <2 x i32> <i32 2, i32 5>
  %i.ac = insertelement <2 x double> poison, double %.sroa.9.0.copyload, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ad, <2 x double> %i.aa)
  store <2 x double> %i.ae, ptr %0, align 8, !tbaa !46
  %.sroa.9.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.o, ptr %.sroa.9.0..sroa_idx4, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL10reverse_3d6PJ_XYZP8PJconsts(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.PJ_LPZ) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef readonly byval(%struct.PJ_XYZ) align 8 captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %.sroa.0.0.copyload = load double, ptr %1, align 8, !tbaa !46
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !46
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !46
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.d = load double, ptr %i.b, align 8, !tbaa !58
  %i.e = fsub double %.sroa.0.0.copyload, %i.d    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load double, ptr %i.f, align 8, !tbaa !59
  %i.h = fsub double %.sroa.7.0.copyload, %i.g    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load double, ptr %i.i, align 8, !tbaa !60
  %i.k = fsub double %.sroa.9.0.copyload, %i.j    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 144
end_hunk_0
