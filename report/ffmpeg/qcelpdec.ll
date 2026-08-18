inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 27
begin_hunk_0_@decode_gain_and_index:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  br i1 %switch.selectcmp81, label %.split, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.b
  %switch.selectcmp = icmp eq i32 %.fr, 3         ; 2 uses
  %switch.select = select i1 %switch.selectcmp, i64 4, i64 5 ; 3 uses
  %i.h = load i8, ptr %i.f, align 4, !tbaa !30
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 2                  ; 2 uses
  store i32 %i.j, ptr %i.a, align 16, !tbaa !29
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.k
  %i.m = load float, ptr %i.l, align 16, !tbaa !34 ; 2 uses
  store float %i.m, ptr %1, align 4, !tbaa !34
  %i.n = load i8, ptr %i.e, align 4, !tbaa !30
  %.not80.us = icmp eq i8 %i.n, 0
  br i1 %.not80.us, label %.split.us.1, label %bb.c

bb.c:                                             ; preds = %.split.us.preheader
  %i.o = fneg nsz float %i.m
  store float %i.o, ptr %1, align 4, !tbaa !34
  %i.p = load i8, ptr %i.g, align 4, !tbaa !30
  %i.q = add i8 %i.p, 39
  %i.r = and i8 %i.q, 127
  store i8 %i.r, ptr %i.g, align 4, !tbaa !30
  br label %.split.us.1

.split.us.1:                                      ; preds = %.split.us.preheader, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.t = load i8, ptr %i.s, align 1, !tbaa !30
  %i.u = zext i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 2                  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.v, ptr %i.w, align 4, !tbaa !29
  %i.x = zext nneg i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.x
  %i.z = load float, ptr %i.y, align 16, !tbaa !34 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store float %i.z, ptr %i.aa, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %.not80.us.1 = icmp eq i8 %i.ac, 0
  br i1 %.not80.us.1, label %.split.us.2, label %bb.d

bb.d:                                             ; preds = %.split.us.1
  %i.ad = fneg nsz float %i.z
  store float %i.ad, ptr %i.aa, align 4, !tbaa !34
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !30
  %i.ag = add i8 %i.af, 39
  %i.ah = and i8 %i.ag, 127
  store i8 %i.ah, ptr %i.ae, align 1, !tbaa !30
  br label %.split.us.2

.split.us.2:                                      ; preds = %.split.us.1, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !30
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !29
  %i.an = zext nneg i32 %i.al to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.an
  %i.ap = load float, ptr %i.ao, align 16, !tbaa !34 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %i.ap, ptr %i.aq, align 4, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !30
  %.not80.us.2 = icmp eq i8 %i.as, 0
  br i1 %.not80.us.2, label %.split.us.3, label %bb.e

bb.e:                                             ; preds = %.split.us.2
  %i.at = fneg nsz float %i.ap
  store float %i.at, ptr %i.aq, align 4, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 62 ; 2 uses
  %i.av = load i8, ptr %i.au, align 2, !tbaa !30
  %i.aw = add i8 %i.av, 39
  %i.ax = and i8 %i.aw, 127
  store i8 %i.ax, ptr %i.au, align 2, !tbaa !30
  br label %.split.us.3

.split.us.3:                                      ; preds = %.split.us.2, %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !30
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw nsw i32 %i.ba, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !29
  %i.bd = zext nneg i32 %i.bb to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 16, !tbaa !34 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store float %i.bf, ptr %i.bg, align 4, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %.not80.us.3 = icmp eq i8 %i.bi, 0
  br i1 %.not80.us.3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.3
  %i.bj = fneg nsz float %i.bf
  store float %i.bj, ptr %i.bg, align 4, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !30
  %i.bm = add i8 %i.bl, 39
  %i.bn = and i8 %i.bm, 127
  store i8 %i.bn, ptr %i.bk, align 1, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split.us.3
  br i1 %switch.selectcmp, label %.split88.us, label %.split.us.4

.split.us.4:                                      ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !30
  %i.bq = zext i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 2                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.br, ptr %i.bs, align 16, !tbaa !29
  %i.bt = zext nneg i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.bt
  %i.bv = load float, ptr %i.bu, align 16, !tbaa !34 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store float %i.bv, ptr %i.bw, align 4, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !30
  %.not80.us.4 = icmp eq i8 %i.by, 0
  br i1 %.not80.us.4, label %.split88.us, label %bb.h

bb.h:                                             ; preds = %.split.us.4
  %i.bz = fneg nsz float %i.bv
  store float %i.bz, ptr %i.bw, align 4, !tbaa !34
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !30
  %i.cc = add i8 %i.cb, 39
  %i.cd = and i8 %i.cc, 127
  store i8 %i.cd, ptr %i.ca, align 8, !tbaa !30
  br label %.split88.us

.split:                                           ; preds = %bb.b, %bb.l
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.l ], [ 0, %bb.b ] ; 7 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv98
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !30
  %i.cg = zext i8 %i.cf to i32
  %i.ch = shl nuw nsw i32 %i.cg, 2                ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv98 ; 5 uses
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !29
  %i.cj = and i64 %indvars.iv98, 3
  %.not79 = icmp eq i64 %i.cj, 3
  br i1 %.not79, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split
  %i.ck = getelementptr i8, ptr %i.ci, i64 -4
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cm = getelementptr i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %i.co = add nsw i32 %i.cn, %i.cl
  %i.cp = getelementptr i8, ptr %i.ci, i64 -12
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !29
  %i.cr = add nsw i32 %i.co, %i.cq                ; 2 uses
  %i.cs = sdiv i32 %i.cr, 3
  %i.ct = icmp slt i32 %i.cr, 18
  %i.cu = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 38)
  %..i83 = add nsw i32 %i.cu, -6
  %.0.i84 = select i1 %i.ct, i32 0, i32 %..i83
  %i.cv = add nuw nsw i32 %.0.i84, %i.ch          ; 2 uses
  store i32 %i.cv, ptr %i.ci, align 4, !tbaa !29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.split
  %i.cw = phi i32 [ %i.cv, %bb.i ], [ %i.ch, %.split ]
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @qcelp_g12ga, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !34 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv98 ; 2 uses
  store float %i.cz, ptr %i.da, align 4, !tbaa !34
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv98
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !30
  %.not80 = icmp eq i8 %i.dc, 0
  br i1 %.not80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = fneg nsz float %i.cz
  store float %i.dd, ptr %i.da, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv98 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !30
  %i.dg = add i8 %i.df, 39
  %i.dh = and i8 %i.dg, 127
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, 16
  br i1 %exitcond102.not, label %.split88.us, label %.split, !llvm.loop !69

.split88.us:                                      ; preds = %bb.g, %bb.h, %.split.us.4, %bb.l
  %.pre-phi = phi i64 [ 16, %bb.l ], [ %switch.select, %.split.us.4 ], [ %switch.select, %bb.h ], [ %switch.select, %bb.g ]
  %i.di = getelementptr [4 x i8], ptr %i.a, i64 %.pre-phi ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4012
  %i.dl = getelementptr i8, ptr %i.di, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !29
  %2 = load <2 x i32>, ptr %i.dj, align 4, !tbaa !29
  store <2 x i32> %2, ptr %i.dk, align 4, !tbaa !29
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds [4 x i8], ptr @qcelp_g12ga, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4008
  store float %i.dp, ptr %i.dq, align 8, !tbaa !70
  %i.dr = icmp eq i32 %.fr, 2
  br i1 %i.dr, label %bb.m, label %bb.x

bb.m:                                             ; preds = %.split88.us
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !34 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.dt, ptr %i.du, align 4, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dw = fpext nsz float %i.dt to double
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.eb = load float, ptr %i.dv, align 4, !tbaa !34 ; 2 uses
  %i.ec = load <2 x float>, ptr %i.dz, align 4, !tbaa !34
  %i.ed = load <2 x float>, ptr %i.ea, align 4, !tbaa !34 ; 2 uses
  %i.ee = fpext <2 x float> %i.ec to <2 x double>
  store float %i.eb, ptr %i.dy, align 4, !tbaa !34
  %i.ef = fpext <2 x float> %i.ed to <2 x double> ; 2 uses
  %i.eg = fmul nsz <2 x double> %i.ee, <double 8.000000e-01, double 2.000000e-01>
  %i.eh = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> <double 2.000000e-01, double 8.000000e-01>, <2 x double> %i.eg)
  %i.ei = fptrunc <2 x double> %i.eh to <2 x float>
  store <2 x float> %i.ei, ptr %i.dv, align 4, !tbaa !34
  %i.ej = extractelement <2 x float> %i.ed, i64 0
  store float %i.ej, ptr %i.dz, align 4, !tbaa !34
  %i.ek = load float, ptr %1, align 4, !tbaa !34
  %i.el = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.em = insertelement <2 x float> %i.el, float %i.ek, i64 1
  %i.en = fpext <2 x float> %i.em to <2 x double>
  %i.eo = shufflevector <2 x double> %i.ef, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ep = insertelement <2 x double> %i.eo, double %i.dw, i64 0
  %i.eq = fmul nsz <2 x double> %i.ep, <double 6.000000e-01, double 4.000000e-01>
  %i.er = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> <double 4.000000e-01, double 6.000000e-01>, <2 x double> %i.eq)
  %i.es = fptrunc <2 x double> %i.er to <2 x float> ; 2 uses
  %i.et = extractelement <2 x float> %i.es, i64 0
  store float %i.et, ptr %i.dx, align 4, !tbaa !34
  %i.eu = extractelement <2 x float> %i.es, i64 1
  store float %i.eu, ptr %i.ea, align 4, !tbaa !34
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  switch i32 %.fr, label %bb.p [
    i32 0, label %bb.x
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ew = load i8, ptr %i.ev, align 4, !tbaa !30
  %i.ex = zext i8 %i.ew to i32
  %i.ey = shl nuw nsw i32 %i.ex, 1
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4012
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !29
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !29 ; 2 uses
  %i.fd = add nsw i32 %i.fc, %i.fa                ; 2 uses
  %i.fe = sdiv i32 %i.fd, 2
  %i.ff = icmp slt i32 %i.fd, 10
  %i.fg = tail call i32 @llvm.smin.i32(i32 %i.fe, i32 59)
  %..i = add nsw i32 %i.fg, -5
  %.0.i = select i1 %i.ff, i32 0, i32 %..i
  %i.fh = add nuw nsw i32 %.0.i, %i.ey
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !29 ; 5 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !67
  switch i8 %i.fl, label %bb.s [
    i8 1, label %bb.t
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.fm = add nsw i32 %i.fj, -1
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.fn = add nsw i32 %i.fj, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.fo = add nsw i32 %i.fj, -6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.fp = phi i32 [ %i.fo, %bb.s ], [ %i.fn, %bb.r ], [ %i.fm, %bb.q ], [ %i.fj, %bb.p ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.fp, i32 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.fq = phi i32 [ %i.fc, %bb.o ], [ %i.fj, %bb.t ]
  %storemerge = phi i32 [ %i.fh, %bb.o ], [ %spec.store.select, %bb.t ] ; 2 uses
  %exitcond.not.3 = phi i1 [ false, %bb.o ], [ true, %bb.t ]
  %.175 = phi i32 [ 8, %bb.o ], [ 4, %bb.t ]      ; 2 uses
  %i.fr = sext i32 %storemerge to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr @qcelp_g12ga, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 4008 ; 10 uses
  %i.fv = load float, ptr %i.fu, align 8, !tbaa !70
  %i.fw = fsub nsz float %i.ft, %i.fv
  %i.fx = fpext nsz float %i.fw to double
  %i.fy = fmul nsz double %i.fx, 5.000000e-01
  %i.fz = uitofp nneg i32 %.175 to double
  %i.ga = fdiv nsz double %i.fy, %i.fz
  %i.gb = fptrunc nsz double %i.ga to float       ; 8 uses
  %i.gc = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gd = fadd nsz float %i.gc, %i.gb
  store float %i.gd, ptr %1, align 4, !tbaa !34
  %i.ge = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gf = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 2.000000e+00, float %i.ge)
  %i.gg = getelementptr i8, ptr %1, i64 4
  store float %i.gf, ptr %i.gg, align 4, !tbaa !34
  %i.gh = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gi = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 3.000000e+00, float %i.gh)
  %i.gj = getelementptr i8, ptr %1, i64 8
  store float %i.gi, ptr %i.gj, align 4, !tbaa !34
  %i.gk = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gl = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 4.000000e+00, float %i.gk)
  %i.gm = getelementptr i8, ptr %1, i64 12
  store float %i.gl, ptr %i.gm, align 4, !tbaa !34
  br i1 %exitcond.not.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gn = load float, ptr %i.fu, align 8, !tbaa !70
  %i.go = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 5.000000e+00, float %i.gn)
  %i.gp = getelementptr i8, ptr %1, i64 16
  store float %i.go, ptr %i.gp, align 4, !tbaa !34
  %i.gq = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gr = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 6.000000e+00, float %i.gq)
  %i.gs = getelementptr i8, ptr %1, i64 20
  store float %i.gr, ptr %i.gs, align 4, !tbaa !34
  %i.gt = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gu = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 7.000000e+00, float %i.gt)
  %i.gv = getelementptr i8, ptr %1, i64 24
  store float %i.gu, ptr %i.gv, align 4, !tbaa !34
  %i.gw = load float, ptr %i.fu, align 8, !tbaa !70
  %i.gx = tail call nsz float @llvm.fmuladd.f32(float %i.gb, float 8.000000e+00, float %i.gw)
  %i.gy = getelementptr i8, ptr %1, i64 28
  store float %i.gx, ptr %i.gy, align 4, !tbaa !34
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.gz = zext nneg i32 %.175 to i64
  %i.ha = getelementptr [4 x i8], ptr %1, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.ha, i64 -4
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !34
  store float %i.hc, ptr %i.fu, align 8, !tbaa !70
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 4012
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 4016
  store i32 %i.fq, ptr %i.hd, align 4, !tbaa !29
  store i32 %storemerge, ptr %i.he, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.w, %.split88.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @compute_svector(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !51
  switch i32 %i.b, label %.loopexit [
    i32 4, label %.preheader
    i32 3, label %.preheader96
    i32 2, label %bb.d
    i32 1, label %bb.g
    i32 -1, label %.preheader99
    i32 0, label %bb.i
  ]

.preheader96:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.b
  %indvars.iv163 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next164, %bb.b ] ; 3 uses
  %.090131 = phi ptr [ %2, %.preheader ], [ %i.cf, %bb.b ] ; 5 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv163
  %i.f = load float, ptr %i.e, align 4, !tbaa !34
  %i.g = fpext nsz float %i.f to double
  %i.h = fmul nsz double %i.g, 1.000000e-02
  %i.i = fptrunc nsz double %i.h to float         ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv163
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = zext i8 %i.k to i16                      ; 10 uses
end_hunk_0
