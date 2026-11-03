Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qcelpdec?download=true
inline.NumInlined: 16
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@decode_gain_and_index:bb.a
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @qcelp_g12ga, i64 %i.k
  %i.m = load float, ptr %i.l, align 16, !tbaa !31 ; 2 uses
  store float %i.m, ptr %1, align 4, !tbaa !31
  %i.n = load i8, ptr %i.e, align 4, !tbaa !30
  %.not80.us = icmp eq i8 %i.n, 0
  br i1 %.not80.us, label %.split.us.1, label %bb.c

bb.c:                                             ; preds = %.split.us.preheader
  %i.o = fneg nsz float %i.m
  store float %i.o, ptr %1, align 4, !tbaa !31
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
  %i.z = load float, ptr %i.y, align 16, !tbaa !31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store float %i.z, ptr %i.aa, align 4, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !30
  %.not80.us.1 = icmp eq i8 %i.ac, 0
  br i1 %.not80.us.1, label %.split.us.2, label %bb.d

bb.d:                                             ; preds = %.split.us.1
  %i.ad = fneg nsz float %i.z
  store float %i.ad, ptr %i.aa, align 4, !tbaa !31
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
  %i.ap = load float, ptr %i.ao, align 16, !tbaa !31 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store float %i.ap, ptr %i.aq, align 4, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !30
  %.not80.us.2 = icmp eq i8 %i.as, 0
  br i1 %.not80.us.2, label %.split.us.3, label %bb.e

bb.e:                                             ; preds = %.split.us.2
  %i.at = fneg nsz float %i.ap
  store float %i.at, ptr %i.aq, align 4, !tbaa !31
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
  %i.bf = load float, ptr %i.be, align 16, !tbaa !31 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store float %i.bf, ptr %i.bg, align 4, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !30
  %.not80.us.3 = icmp eq i8 %i.bi, 0
  br i1 %.not80.us.3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.split.us.3
  %i.bj = fneg nsz float %i.bf
  store float %i.bj, ptr %i.bg, align 4, !tbaa !31
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
  %i.bv = load float, ptr %i.bu, align 16, !tbaa !31 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store float %i.bv, ptr %i.bw, align 4, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !30
  %.not80.us.4 = icmp eq i8 %i.by, 0
  br i1 %.not80.us.4, label %.split88.us, label %bb.h

bb.h:                                             ; preds = %.split.us.4
  %i.bz = fneg nsz float %i.bv
  store float %i.bz, ptr %i.bw, align 4, !tbaa !31
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
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !29
  %i.cm = getelementptr i8, ptr %i.ci, i64 -8
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %i.co = add nsw i32 %i.cn, %i.cl
  %i.cp = getelementptr i8, ptr %i.ci, i64 -12
  %i.cq = load i32, ptr %i.cp, align 16, !tbaa !29
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
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !31 ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv98 ; 2 uses
  store float %i.cz, ptr %i.da, align 4, !tbaa !31
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv98
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !30
  %.not80 = icmp eq i8 %i.dc, 0
  br i1 %.not80, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dd = fneg nsz float %i.cz
  store float %i.dd, ptr %i.da, align 4, !tbaa !31
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv98 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !30
  %i.dg = add i8 %i.df, 39
  %i.dh = and i8 %i.dg, 127
  store i8 %i.dh, ptr %i.de, align 1, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, 16
  br i1 %exitcond102.not, label %.split88.us, label %.split, !llvm.loop !68

.split88.us:                                      ; preds = %bb.g, %bb.h, %.split.us.4, %bb.l
  %.pre-phi = phi i64 [ 16, %bb.l ], [ %switch.select, %.split.us.4 ], [ %switch.select, %bb.h ], [ %switch.select, %bb.g ]
  %i.di = getelementptr [4 x i8], ptr %i.a, i64 %.pre-phi ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 4012
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !29
  %i.dm = getelementptr i8, ptr %i.di, i64 -4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 4016
  store i32 %i.dn, ptr %i.do, align 8, !tbaa !29
  %i.dp = sext i32 %i.dn to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr @qcelp_g12ga, i64 %i.dp
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 4008
  store float %i.dr, ptr %i.ds, align 8, !tbaa !72
  %i.dt = icmp eq i32 %.fr, 2
  br i1 %i.dt, label %bb.m, label %bb.x

bb.m:                                             ; preds = %.split88.us
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load float, ptr %i.du, align 4, !tbaa !31 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.dv, ptr %i.dw, align 4, !tbaa !31
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.dy = fpext nsz float %i.dv to double
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ed = load float, ptr %i.dx, align 4, !tbaa !31 ; 2 uses
  %i.ee = load <2 x float>, ptr %i.eb, align 4, !tbaa !31
  %i.ef = load <2 x float>, ptr %i.ec, align 4, !tbaa !31 ; 2 uses
  %i.eg = fpext nsz <2 x float> %i.ee to <2 x double>
  store float %i.ed, ptr %i.ea, align 4, !tbaa !31
  %i.eh = fpext nsz <2 x float> %i.ef to <2 x double> ; 2 uses
  %i.ei = fmul nsz <2 x double> %i.eg, <double 8.000000e-01, double 2.000000e-01>
  %i.ej = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> <double 2.000000e-01, double 8.000000e-01>, <2 x double> %i.ei)
  %i.ek = fptrunc nsz <2 x double> %i.ej to <2 x float>
  store <2 x float> %i.ek, ptr %i.dx, align 4, !tbaa !31
  %i.el = extractelement <2 x float> %i.ef, i64 0
  store float %i.el, ptr %i.eb, align 4, !tbaa !31
  %i.em = load float, ptr %1, align 4, !tbaa !31
  %i.en = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.em, i64 1
  %i.ep = fpext nsz <2 x float> %i.eo to <2 x double>
  %i.eq = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.er = insertelement <2 x double> %i.eq, double %i.dy, i64 0
  %i.es = fmul nsz <2 x double> %i.er, <double 6.000000e-01, double 4.000000e-01>
  %i.et = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> <double 4.000000e-01, double 6.000000e-01>, <2 x double> %i.es)
  %i.eu = fptrunc nsz <2 x double> %i.et to <2 x float> ; 2 uses
  %i.ev = extractelement <2 x float> %i.eu, i64 0
  store float %i.ev, ptr %i.dz, align 4, !tbaa !31
  %i.ew = extractelement <2 x float> %i.eu, i64 1
  store float %i.ew, ptr %i.ec, align 4, !tbaa !31
  br label %bb.x

bb.n:                                             ; preds = %bb.a
  switch i32 %.fr, label %bb.p [
    i32 0, label %bb.x
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !30
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 4012
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !29
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !29 ; 2 uses
  %i.ff = add nsw i32 %i.fe, %i.fc                ; 2 uses
  %i.fg = sdiv i32 %i.ff, 2
  %i.fh = icmp slt i32 %i.ff, 10
  %i.fi = tail call i32 @llvm.smin.i32(i32 %i.fg, i32 59)
  %..i = add nsw i32 %i.fi, -5
  %.0.i = select i1 %i.fh, i32 0, i32 %..i
  %i.fj = add nuw nsw i32 %.0.i, %i.fa
  br label %bb.u

bb.p:                                             ; preds = %bb.n
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 4016
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !29 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !40
  switch i8 %i.fn, label %bb.s [
    i8 1, label %bb.t
    i8 2, label %bb.q
    i8 3, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.fo = add nsw i32 %i.fl, -1
  br label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.fp = add nsw i32 %i.fl, -2
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.fq = add nsw i32 %i.fl, -6
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.fr = phi i32 [ %i.fq, %bb.s ], [ %i.fp, %bb.r ], [ %i.fo, %bb.q ], [ %i.fl, %bb.p ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.fr, i32 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.o
  %i.fs = phi i32 [ %i.fe, %bb.o ], [ %i.fl, %bb.t ]
  %storemerge = phi i32 [ %i.fj, %bb.o ], [ %spec.store.select, %bb.t ] ; 2 uses
  %exitcond.not.3 = phi i1 [ false, %bb.o ], [ true, %bb.t ] ; 2 uses
  %.1 = phi i32 [ 8, %bb.o ], [ 4, %bb.t ]        ; 3 uses
  %i.ft = sext i32 %storemerge to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr @qcelp_g12ga, i64 %i.ft
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !31
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 4008 ; 12 uses
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !72
  %i.fy = fsub nsz float %i.fv, %i.fx
  %i.fz = fpext nsz float %i.fy to double
  %i.ga = fmul nsz double %i.fz, 5.000000e-01
  %i.gb = uitofp nneg i32 %.1 to double
  %i.gc = fdiv nsz double %i.ga, %i.gb
  %i.gd = fptrunc nsz double %i.gc to float       ; 9 uses
  %2 = shl nuw nsw i32 %.1, 2
  %3 = zext nneg i32 %2 to i64
  %i.ge = getelementptr i8, ptr %1, i64 %3
  %i.gf = getelementptr i8, ptr %0, i64 4012
  %bound0 = icmp ult ptr %1, %i.gf
  %bound1 = icmp ult ptr %i.fw, %i.ge
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %bb.u
  %4 = load float, ptr %i.fw, align 8, !tbaa !72, !alias.scope !73
  %broadcast.splatinsert106 = insertelement <4 x float> poison, float %4, i64 0
  %broadcast.splat107 = shufflevector <4 x float> %broadcast.splatinsert106, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gd, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00>, <4 x float> %broadcast.splat107)
  store <4 x float> %5, ptr %1, align 4, !tbaa !31, !alias.scope !74, !noalias !73
  br i1 %exitcond.not.3, label %bb.w, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %6 = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat, <4 x float> <float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00>, <4 x float> %broadcast.splat107)
  %7 = getelementptr i8, ptr %1, i64 16
  store <4 x float> %6, ptr %7, align 4, !tbaa !31, !alias.scope !74, !noalias !73
  br label %bb.w

scalar.ph:                                        ; preds = %bb.u
  %8 = load float, ptr %i.fw, align 8, !tbaa !72
  %9 = fadd nsz float %8, %i.gd
  store float %9, ptr %1, align 4, !tbaa !31
  %10 = load float, ptr %i.fw, align 8, !tbaa !72
  %11 = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 2.000000e+00, float %10)
  %12 = getelementptr i8, ptr %1, i64 4
  store float %11, ptr %12, align 4, !tbaa !31
  %13 = load float, ptr %i.fw, align 8, !tbaa !72
  %14 = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 3.000000e+00, float %13)
  %15 = getelementptr i8, ptr %1, i64 8
  store float %14, ptr %15, align 4, !tbaa !31
  %16 = load float, ptr %i.fw, align 8, !tbaa !72
  %17 = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 4.000000e+00, float %16)
  %18 = getelementptr i8, ptr %1, i64 12
  store float %17, ptr %18, align 4, !tbaa !31
  br i1 %exitcond.not.3, label %bb.w, label %bb.v

bb.v:                                             ; preds = %scalar.ph
  %i.gg = load float, ptr %i.fw, align 8, !tbaa !72
  %i.gh = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 5.000000e+00, float %i.gg)
  %i.gi = getelementptr i8, ptr %1, i64 16
  store float %i.gh, ptr %i.gi, align 4, !tbaa !31
  %i.gj = load float, ptr %i.fw, align 8, !tbaa !72
  %i.gk = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 6.000000e+00, float %i.gj)
  %i.gl = getelementptr i8, ptr %1, i64 20
  store float %i.gk, ptr %i.gl, align 4, !tbaa !31
  %i.gm = load float, ptr %i.fw, align 8, !tbaa !72
  %i.gn = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 7.000000e+00, float %i.gm)
  %i.go = getelementptr i8, ptr %1, i64 24
  store float %i.gn, ptr %i.go, align 4, !tbaa !31
  %i.gp = load float, ptr %i.fw, align 8, !tbaa !72
  %i.gq = tail call nsz float @llvm.fmuladd.f32(float %i.gd, float 8.000000e+00, float %i.gp)
  %i.gr = getelementptr i8, ptr %1, i64 28
  store float %i.gq, ptr %i.gr, align 4, !tbaa !31
  br label %bb.w

bb.w:                                             ; preds = %vector.ph, %vector.body.1, %scalar.ph, %bb.v
  %i.gs = zext nneg i32 %.1 to i64
  %i.gt = getelementptr [4 x i8], ptr %1, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gt, i64 -4
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !31
  store float %i.gv, ptr %i.fw, align 8, !tbaa !72
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 4012
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 4016
  store i32 %i.fs, ptr %i.gw, align 4, !tbaa !29
  store i32 %storemerge, ptr %i.gx, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.n, %bb.w, %.split88.us, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @compute_svector(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37
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
  %.090131 = phi ptr [ %2, %.preheader ], [ %i.ca, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv163
  %i.f = load float, ptr %i.e, align 4, !tbaa !31
  %i.g = fpext nsz float %i.f to double
  %i.h = fmul nsz double %i.g, 1.000000e-02
  %i.i = fptrunc nsz double %i.h to float         ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv163
  %i.k = load i8, ptr %i.j, align 1, !tbaa !30
  %i.l = zext i8 %i.k to i16                      ; 10 uses
  %i.m = sub nsw i16 0, %i.l
  %i.n = sub nsw i16 1, %i.l
  %i.o = and i16 %i.m, 127
  %i.p = zext nneg i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !39
  %i.s = sub nsw i16 2, %i.l
  %i.t = and i16 %i.n, 127
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !39
  %i.x = sub nsw i16 3, %i.l
  %i.y = and i16 %i.s, 127
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !39
  %i.ac = sub nsw i16 4, %i.l
  %i.ad = and i16 %i.x, 127
  %i.ae = zext nneg i16 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %.090131, i64 16
  %i.ai = insertelement <4 x i16> poison, i16 %i.r, i64 0
  %i.aj = insertelement <4 x i16> %i.ai, i16 %i.w, i64 1
  %i.ak = insertelement <4 x i16> %i.aj, i16 %i.ab, i64 2
  %i.al = insertelement <4 x i16> %i.ak, i16 %i.ag, i64 3
  %i.am = sitofp <4 x i16> %i.al to <4 x float>
  %i.an = insertelement <4 x float> poison, float %i.i, i64 0
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ap = fmul nsz <4 x float> %i.ao, %i.am
  store <4 x float> %i.ap, ptr %.090131, align 4, !tbaa !31
  %i.aq = sub nsw i16 5, %i.l
  %i.ar = and i16 %i.ac, 127
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !39
  %i.av = sub nsw i16 6, %i.l
  %i.aw = and i16 %i.aq, 127
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !39
  %i.ba = sub nsw i16 7, %i.l
  %i.bb = and i16 %i.av, 127
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !39
  %i.bf = sub nsw i16 8, %i.l
  %i.bg = and i16 %i.ba, 127
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %.090131, i64 32
  %i.bl = insertelement <4 x i16> poison, i16 %i.au, i64 0
  %i.bm = insertelement <4 x i16> %i.bl, i16 %i.az, i64 1
  %i.bn = insertelement <4 x i16> %i.bm, i16 %i.be, i64 2
  %i.bo = insertelement <4 x i16> %i.bn, i16 %i.bj, i64 3
  %i.bp = sitofp <4 x i16> %i.bo to <4 x float>
  %i.bq = fmul nsz <4 x float> %i.ao, %i.bp
  store <4 x float> %i.bq, ptr %i.ah, align 4, !tbaa !31
  %i.br = sub nsw i16 9, %i.l
  %i.bs = and i16 %i.bf, 127
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !39
  %i.bw = and i16 %i.br, 127
  %i.bx = zext nneg i16 %i.bw to i64
  %i.by = getelementptr inbounds nuw [2 x i8], ptr @qcelp_rate_full_codebook, i64 %i.bx
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !39
  %i.ca = getelementptr inbounds nuw i8, ptr %.090131, i64 40
  %i.cb = insertelement <2 x i16> poison, i16 %i.bv, i64 0
  %i.cc = insertelement <2 x i16> %i.cb, i16 %i.bz, i64 1
  %i.cd = sitofp <2 x i16> %i.cc to <2 x float>
  %i.ce = insertelement <2 x float> poison, float %i.i, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = fmul nsz <2 x float> %i.cf, %i.cd
  store <2 x float> %i.cg, ptr %i.bk, align 4, !tbaa !31
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond166.not = icmp eq i64 %indvars.iv.next164, 16
  br i1 %exitcond166.not, label %.loopexit, label %bb.b, !llvm.loop !75

bb.c:                                             ; preds = %.preheader96, %bb.c
  %indvars.iv158 = phi i64 [ 0, %.preheader96 ], [ %indvars.iv.next159, %bb.c ] ; 3 uses
  %.292126 = phi ptr [ %2, %.preheader96 ], [ %i.ms, %bb.c ] ; 11 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv158
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !31
  %i.cj = fmul nsz float %i.ci, 5.000000e-01
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv158
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !30
  %i.cm = zext i8 %i.cl to i16                    ; 40 uses
  %i.cn = sub nsw i16 0, %i.cm
  %i.co = sub nsw i16 1, %i.cm
  %i.cp = and i16 %i.cn, 127
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !30
  %i.ct = sub nsw i16 2, %i.cm
  %i.cu = and i16 %i.co, 127
  %i.cv = zext nneg i16 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %i.cy = sub nsw i16 3, %i.cm
  %i.cz = and i16 %i.ct, 127
  %i.da = zext nneg i16 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !30
  %i.dd = sub nsw i16 4, %i.cm
  %i.de = and i16 %i.cy, 127
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !30
  %i.di = getelementptr inbounds nuw i8, ptr %.292126, i64 16
  %i.dj = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %i.dk = insertelement <4 x i8> %i.dj, i8 %i.cx, i64 1
  %i.dl = insertelement <4 x i8> %i.dk, i8 %i.dc, i64 2
  %i.dm = insertelement <4 x i8> %i.dl, i8 %i.dh, i64 3
  %i.dn = sitofp <4 x i8> %i.dm to <4 x float>
  %i.do = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.dq = fmul nsz <4 x float> %i.dp, %i.dn
  store <4 x float> %i.dq, ptr %.292126, align 4, !tbaa !31
  %i.dr = sub nsw i16 5, %i.cm
  %i.ds = and i16 %i.dd, 127
  %i.dt = zext nneg i16 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !30
  %i.dw = sub nsw i16 6, %i.cm
  %i.dx = and i16 %i.dr, 127
  %i.dy = zext nneg i16 %i.dx to i64
  %i.dz = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !30
  %i.eb = sub nsw i16 7, %i.cm
  %i.ec = and i16 %i.dw, 127
  %i.ed = zext nneg i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !30
  %i.eg = sub nsw i16 8, %i.cm
  %i.eh = and i16 %i.eb, 127
  %i.ei = zext nneg i16 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !30
  %i.el = getelementptr inbounds nuw i8, ptr %.292126, i64 32
  %i.em = insertelement <4 x i8> poison, i8 %i.dv, i64 0
  %i.en = insertelement <4 x i8> %i.em, i8 %i.ea, i64 1
  %i.eo = insertelement <4 x i8> %i.en, i8 %i.ef, i64 2
  %i.ep = insertelement <4 x i8> %i.eo, i8 %i.ek, i64 3
  %i.eq = sitofp <4 x i8> %i.ep to <4 x float>
  %i.er = fmul nsz <4 x float> %i.dp, %i.eq
  store <4 x float> %i.er, ptr %i.di, align 4, !tbaa !31
  %i.es = sub nsw i16 9, %i.cm
  %i.et = and i16 %i.eg, 127
  %i.eu = zext nneg i16 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !30
  %i.ex = sub nsw i16 10, %i.cm
  %i.ey = and i16 %i.es, 127
  %i.ez = zext nneg i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !30
  %i.fc = sub nsw i16 11, %i.cm
  %i.fd = and i16 %i.ex, 127
  %i.fe = zext nneg i16 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !30
  %i.fh = sub nsw i16 12, %i.cm
  %i.fi = and i16 %i.fc, 127
  %i.fj = zext nneg i16 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !30
  %i.fm = getelementptr inbounds nuw i8, ptr %.292126, i64 48
  %i.fn = insertelement <4 x i8> poison, i8 %i.ew, i64 0
  %i.fo = insertelement <4 x i8> %i.fn, i8 %i.fb, i64 1
  %i.fp = insertelement <4 x i8> %i.fo, i8 %i.fg, i64 2
  %i.fq = insertelement <4 x i8> %i.fp, i8 %i.fl, i64 3
  %i.fr = sitofp <4 x i8> %i.fq to <4 x float>
  %i.fs = fmul nsz <4 x float> %i.dp, %i.fr
  store <4 x float> %i.fs, ptr %i.el, align 4, !tbaa !31
  %i.ft = sub nsw i16 13, %i.cm
  %i.fu = and i16 %i.fh, 127
  %i.fv = zext nneg i16 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !30
  %i.fy = sub nsw i16 14, %i.cm
  %i.fz = and i16 %i.ft, 127
  %i.ga = zext nneg i16 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !30
  %i.gd = sub nsw i16 15, %i.cm
  %i.ge = and i16 %i.fy, 127
  %i.gf = zext nneg i16 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.gf
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !30
  %i.gi = sub nsw i16 16, %i.cm
  %i.gj = and i16 %i.gd, 127
  %i.gk = zext nneg i16 %i.gj to i64
  %i.gl = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !30
  %i.gn = getelementptr inbounds nuw i8, ptr %.292126, i64 64
  %i.go = insertelement <4 x i8> poison, i8 %i.fx, i64 0
  %i.gp = insertelement <4 x i8> %i.go, i8 %i.gc, i64 1
  %i.gq = insertelement <4 x i8> %i.gp, i8 %i.gh, i64 2
  %i.gr = insertelement <4 x i8> %i.gq, i8 %i.gm, i64 3
  %i.gs = sitofp <4 x i8> %i.gr to <4 x float>
  %i.gt = fmul nsz <4 x float> %i.dp, %i.gs
  store <4 x float> %i.gt, ptr %i.fm, align 4, !tbaa !31
  %i.gu = sub nsw i16 17, %i.cm
  %i.gv = and i16 %i.gi, 127
  %i.gw = zext nneg i16 %i.gv to i64
  %i.gx = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !30
  %i.gz = sub nsw i16 18, %i.cm
  %i.ha = and i16 %i.gu, 127
  %i.hb = zext nneg i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !30
  %i.he = sub nsw i16 19, %i.cm
  %i.hf = and i16 %i.gz, 127
  %i.hg = zext nneg i16 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !30
  %i.hj = sub nsw i16 20, %i.cm
  %i.hk = and i16 %i.he, 127
  %i.hl = zext nneg i16 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !30
  %i.ho = getelementptr inbounds nuw i8, ptr %.292126, i64 80
  %i.hp = insertelement <4 x i8> poison, i8 %i.gy, i64 0
  %i.hq = insertelement <4 x i8> %i.hp, i8 %i.hd, i64 1
  %i.hr = insertelement <4 x i8> %i.hq, i8 %i.hi, i64 2
  %i.hs = insertelement <4 x i8> %i.hr, i8 %i.hn, i64 3
  %i.ht = sitofp <4 x i8> %i.hs to <4 x float>
  %i.hu = fmul nsz <4 x float> %i.dp, %i.ht
  store <4 x float> %i.hu, ptr %i.gn, align 4, !tbaa !31
  %i.hv = sub nsw i16 21, %i.cm
  %i.hw = and i16 %i.hj, 127
  %i.hx = zext nneg i16 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.hx
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !30
  %i.ia = sub nsw i16 22, %i.cm
  %i.ib = and i16 %i.hv, 127
  %i.ic = zext nneg i16 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !30
  %i.if = sub nsw i16 23, %i.cm
  %i.ig = and i16 %i.ia, 127
  %i.ih = zext nneg i16 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !30
  %i.ik = sub nsw i16 24, %i.cm
  %i.il = and i16 %i.if, 127
  %i.im = zext nneg i16 %i.il to i64
  %i.in = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.im
  %i.io = load i8, ptr %i.in, align 1, !tbaa !30
  %i.ip = getelementptr inbounds nuw i8, ptr %.292126, i64 96
  %i.iq = insertelement <4 x i8> poison, i8 %i.hz, i64 0
  %i.ir = insertelement <4 x i8> %i.iq, i8 %i.ie, i64 1
  %i.is = insertelement <4 x i8> %i.ir, i8 %i.ij, i64 2
  %i.it = insertelement <4 x i8> %i.is, i8 %i.io, i64 3
  %i.iu = sitofp <4 x i8> %i.it to <4 x float>
  %i.iv = fmul nsz <4 x float> %i.dp, %i.iu
  store <4 x float> %i.iv, ptr %i.ho, align 4, !tbaa !31
  %i.iw = sub nsw i16 25, %i.cm
  %i.ix = and i16 %i.ik, 127
  %i.iy = zext nneg i16 %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !30
  %i.jb = sub nsw i16 26, %i.cm
  %i.jc = and i16 %i.iw, 127
  %i.jd = zext nneg i16 %i.jc to i64
  %i.je = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !30
  %i.jg = sub nsw i16 27, %i.cm
  %i.jh = and i16 %i.jb, 127
  %i.ji = zext nneg i16 %i.jh to i64
  %i.jj = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ji
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !30
  %i.jl = sub nsw i16 28, %i.cm
  %i.jm = and i16 %i.jg, 127
  %i.jn = zext nneg i16 %i.jm to i64
  %i.jo = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !30
  %i.jq = getelementptr inbounds nuw i8, ptr %.292126, i64 112
  %i.jr = insertelement <4 x i8> poison, i8 %i.ja, i64 0
  %i.js = insertelement <4 x i8> %i.jr, i8 %i.jf, i64 1
  %i.jt = insertelement <4 x i8> %i.js, i8 %i.jk, i64 2
  %i.ju = insertelement <4 x i8> %i.jt, i8 %i.jp, i64 3
  %i.jv = sitofp <4 x i8> %i.ju to <4 x float>
  %i.jw = fmul nsz <4 x float> %i.dp, %i.jv
  store <4 x float> %i.jw, ptr %i.ip, align 4, !tbaa !31
  %i.jx = sub nsw i16 29, %i.cm
  %i.jy = and i16 %i.jl, 127
  %i.jz = zext nneg i16 %i.jy to i64
  %i.ka = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.jz
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !30
  %i.kc = sub nsw i16 30, %i.cm
  %i.kd = and i16 %i.jx, 127
  %i.ke = zext nneg i16 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !30
  %i.kh = sub nsw i16 31, %i.cm
  %i.ki = and i16 %i.kc, 127
  %i.kj = zext nneg i16 %i.ki to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !30
  %i.km = sub nsw i16 32, %i.cm
  %i.kn = and i16 %i.kh, 127
  %i.ko = zext nneg i16 %i.kn to i64
  %i.kp = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ko
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !30
  %i.kr = getelementptr inbounds nuw i8, ptr %.292126, i64 128
  %i.ks = insertelement <4 x i8> poison, i8 %i.kb, i64 0
  %i.kt = insertelement <4 x i8> %i.ks, i8 %i.kg, i64 1
  %i.ku = insertelement <4 x i8> %i.kt, i8 %i.kl, i64 2
  %i.kv = insertelement <4 x i8> %i.ku, i8 %i.kq, i64 3
  %i.kw = sitofp <4 x i8> %i.kv to <4 x float>
  %i.kx = fmul nsz <4 x float> %i.dp, %i.kw
  store <4 x float> %i.kx, ptr %i.jq, align 4, !tbaa !31
  %i.ky = sub nsw i16 33, %i.cm
  %i.kz = and i16 %i.km, 127
  %i.la = zext nneg i16 %i.kz to i64
  %i.lb = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !30
  %i.ld = sub nsw i16 34, %i.cm
  %i.le = and i16 %i.ky, 127
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !30
  %i.li = sub nsw i16 35, %i.cm
  %i.lj = and i16 %i.ld, 127
  %i.lk = zext nneg i16 %i.lj to i64
  %i.ll = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.lk
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !30
  %i.ln = sub nsw i16 36, %i.cm
  %i.lo = and i16 %i.li, 127
  %i.lp = zext nneg i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !30
  %i.ls = getelementptr inbounds nuw i8, ptr %.292126, i64 144
  %i.lt = insertelement <4 x i8> poison, i8 %i.lc, i64 0
  %i.lu = insertelement <4 x i8> %i.lt, i8 %i.lh, i64 1
  %i.lv = insertelement <4 x i8> %i.lu, i8 %i.lm, i64 2
  %i.lw = insertelement <4 x i8> %i.lv, i8 %i.lr, i64 3
  %i.lx = sitofp <4 x i8> %i.lw to <4 x float>
  %i.ly = fmul nsz <4 x float> %i.dp, %i.lx
  store <4 x float> %i.ly, ptr %i.kr, align 4, !tbaa !31
  %i.lz = sub nsw i16 37, %i.cm
  %i.ma = and i16 %i.ln, 127
  %i.mb = zext nneg i16 %i.ma to i64
  %i.mc = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !30
  %i.me = sub nsw i16 38, %i.cm
  %i.mf = and i16 %i.lz, 127
  %i.mg = zext nneg i16 %i.mf to i64
  %i.mh = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.mg
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !30
  %i.mj = sub nsw i16 39, %i.cm
  %i.mk = and i16 %i.me, 127
  %i.ml = zext nneg i16 %i.mk to i64
  %i.mm = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !30
  %i.mo = and i16 %i.mj, 127
  %i.mp = zext nneg i16 %i.mo to i64
  %i.mq = getelementptr inbounds nuw i8, ptr @qcelp_rate_half_codebook, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !30
  %i.ms = getelementptr inbounds nuw i8, ptr %.292126, i64 160
  %i.mt = insertelement <4 x i8> poison, i8 %i.md, i64 0
  %i.mu = insertelement <4 x i8> %i.mt, i8 %i.mi, i64 1
  %i.mv = insertelement <4 x i8> %i.mu, i8 %i.mn, i64 2
  %i.mw = insertelement <4 x i8> %i.mv, i8 %i.mr, i64 3
  %i.mx = sitofp <4 x i8> %i.mw to <4 x float>
  %i.my = fmul nsz <4 x float> %i.dp, %i.mx
  store <4 x float> %i.my, ptr %i.ls, align 4, !tbaa !31
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, 4
  br i1 %exitcond161.not, label %.loopexit, label %bb.c, !llvm.loop !76

bb.d:                                             ; preds = %bb.a
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.nb = load i8, ptr %i.na, align 4, !tbaa !30
  %i.nc = zext i8 %i.nb to i16
  %i.nd = shl i16 %i.nc, 14
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !30
  %i.ng = and i8 %i.nf, 63
  %i.nh = zext nneg i8 %i.ng to i16
  %i.ni = shl nuw nsw i16 %i.nh, 8
  %i.nj = or disjoint i16 %i.ni, %i.nd
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.nl = load i8, ptr %i.nk, align 2, !tbaa !30
  %i.nm = shl i8 %i.nl, 1
  %i.nn = and i8 %i.nm, -64
  %i.no = zext i8 %i.nn to i16
  %i.np = or disjoint i16 %i.nj, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !30
  %i.ns = shl i8 %i.nr, 3
  %i.nt = and i8 %i.ns, 56
  %i.nu = zext nneg i8 %i.nt to i16
  %i.nv = or disjoint i16 %i.np, %i.nu
  %i.nw = load i8, ptr %i.mz, align 8, !tbaa !30
  %i.nx = lshr i8 %i.nw, 3
  %i.ny = and i8 %i.nx, 7
  %i.nz = zext nneg i8 %i.ny to i16
  %i.oa = or disjoint i16 %i.nv, %i.nz
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 2688
  br label %.lver.check

.lver.check:                                      ; preds = %bb.d, %.loopexit179
  %indvars.iv154 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next155, %.loopexit179 ] ; 2 uses
  %.074122 = phi ptr [ %i.ob, %bb.d ], [ %.lcssa175, %.loopexit179 ] ; 5 uses
  %.077121 = phi i16 [ %i.oa, %bb.d ], [ %.lcssa176, %.loopexit179 ] ; 2 uses
  %.494119 = phi ptr [ %2, %bb.d ], [ %.lcssa, %.loopexit179 ] ; 4 uses
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv154
  %i.od = load float, ptr %i.oc, align 4, !tbaa !31
  %i.oe = fpext nsz float %i.od to double
  %i.of = fmul nsz double %i.oe, f0x3F05FA991F900205
  %i.og = fptrunc nsz double %i.of to float       ; 2 uses
  %scevgep = getelementptr i8, ptr %.074122, i64 -80
  %scevgep177 = getelementptr i8, ptr %.074122, i64 80
  %scevgep178 = getelementptr i8, ptr %.494119, i64 80
  %bound0 = icmp ult ptr %scevgep, %scevgep178
  %bound1 = icmp ult ptr %.494119, %scevgep177
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.ph.lver.orig, label %.ph

.ph.lver.orig:                                    ; preds = %.lver.check, %.ph.lver.orig
  %.1118.lver.orig = phi ptr [ %i.on, %.ph.lver.orig ], [ %.074122, %.lver.check ] ; 10 uses
  %.178117.lver.orig = phi i16 [ %i.oi, %.ph.lver.orig ], [ %.077121, %.lver.check ]
  %.079116.lver.orig = phi i32 [ %i.rf, %.ph.lver.orig ], [ 0, %.lver.check ]
  %.595115.lver.orig = phi ptr [ %i.re, %.ph.lver.orig ], [ %.494119, %.lver.check ] ; 2 uses
  %i.oh = mul i16 %.178117.lver.orig, 521
  %i.oi = add i16 %i.oh, 259                      ; 3 uses
  %i.oj = sitofp nsz i16 %i.oi to float           ; 2 uses
  store float %i.oj, ptr %.1118.lver.orig, align 4, !tbaa !31
  %i.ok = getelementptr i8, ptr %.1118.lver.orig, i64 -80
  %i.ol = getelementptr inbounds i8, ptr %.1118.lver.orig, i64 -4
  %i.om = load float, ptr %i.ol, align 4, !tbaa !31
  %i.on = getelementptr i8, ptr %.1118.lver.orig, i64 4 ; 2 uses
  %i.oo = getelementptr inbounds i8, ptr %.1118.lver.orig, i64 -12
  %i.op = load <2 x float>, ptr %i.oo, align 4, !tbaa !31
  %i.oq = load <4 x float>, ptr %i.ok, align 4, !tbaa !31
  %i.or = shufflevector <2 x float> %i.op, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.os = insertelement <4 x float> %i.or, float %i.oj, i64 0
  %i.ot = insertelement <4 x float> %i.os, float %i.om, i64 1
  %i.ou = fadd nsz <4 x float> %i.oq, %i.ot
  %i.ov = fpext nsz <4 x float> %i.ou to <4 x double> ; 4 uses
  %i.ow = extractelement <4 x double> %i.ov, i64 0
  %i.ox = fmul nsz double %i.ow, f0xBFC135B848B149BA
  %i.oy = fptrunc nsz double %i.ox to float
  %i.oz = fpext nsz float %i.oy to double
  %i.pa = extractelement <4 x double> %i.ov, i64 1
  %i.pb = tail call nsz double @llvm.fmuladd.f64(double %i.pa, double f0x3F91C5347D0A41CD, double %i.oz)
  %i.pc = fptrunc nsz double %i.pb to float
  %i.pd = fpext nsz float %i.pc to double
  %i.pe = extractelement <4 x double> %i.ov, i64 2
  %i.pf = tail call nsz double @llvm.fmuladd.f64(double %i.pe, double f0xBFB1ADCD5837FA6D, double %i.pd)
  %i.pg = fptrunc nsz double %i.pf to float
  %i.ph = fpext nsz float %i.pg to double
  %i.pi = extractelement <4 x double> %i.ov, i64 3
  %i.pj = tail call nsz double @llvm.fmuladd.f64(double %i.pi, double f0x3F98ED8CB5DB6EA6, double %i.ph)
  %i.pk = fptrunc nsz double %i.pj to float
  %i.pl = getelementptr i8, ptr %.1118.lver.orig, i64 -64
  %i.pm = fpext nsz float %i.pk to double
  %i.pn = getelementptr inbounds i8, ptr %.1118.lver.orig, i64 -28
  %i.po = load <4 x float>, ptr %i.pn, align 4, !tbaa !31
  %i.pp = shufflevector <4 x float> %i.po, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.pq = load <4 x float>, ptr %i.pl, align 4, !tbaa !31
  %i.pr = fadd nsz <4 x float> %i.pp, %i.pq
  %i.ps = fpext nsz <4 x float> %i.pr to <4 x double> ; 4 uses
  %i.pt = extractelement <4 x double> %i.ps, i64 0
  %i.pu = tail call nsz double @llvm.fmuladd.f64(double %i.pt, double f0xBFB504F70AB8EB99, double %i.pm)
  %i.pv = fptrunc nsz double %i.pu to float
  %i.pw = fpext nsz float %i.pv to double
  %i.px = extractelement <4 x double> %i.ps, i64 1
  %i.py = tail call nsz double @llvm.fmuladd.f64(double %i.px, double f0x3F9F24D0EFC722BF, double %i.pw)
  %i.pz = fptrunc nsz double %i.py to float
  %i.qa = fpext nsz float %i.pz to double
  %i.qb = extractelement <4 x double> %i.ps, i64 2
  %i.qc = tail call nsz double @llvm.fmuladd.f64(double %i.qb, double f0xBFB7AEFCAD3A355B, double %i.qa)
  %i.qd = fptrunc nsz double %i.qc to float
  %i.qe = fpext nsz float %i.qd to double
  %i.qf = extractelement <4 x double> %i.ps, i64 3
  %i.qg = tail call nsz double @llvm.fmuladd.f64(double %i.qf, double f0x3FA1EE1E811F7A44, double %i.qe)
  %i.qh = fptrunc nsz double %i.qg to float
  %i.qi = getelementptr i8, ptr %.1118.lver.orig, i64 -48
  %i.qj = fpext nsz float %i.qh to double
  %i.qk = getelementptr inbounds i8, ptr %.1118.lver.orig, i64 -36
  %i.ql = load <2 x float>, ptr %i.qk, align 4, !tbaa !31
  %i.qm = shufflevector <2 x float> %i.ql, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qn = load <2 x float>, ptr %i.qi, align 4, !tbaa !31
  %i.qo = fadd nsz <2 x float> %i.qm, %i.qn
  %i.qp = fpext nsz <2 x float> %i.qo to <2 x double> ; 2 uses
  %i.qq = extractelement <2 x double> %i.qp, i64 0
  %i.qr = tail call nsz double @llvm.fmuladd.f64(double %i.qq, double f0xBFB9645EA4502BE7, double %i.qj)
  %i.qs = fptrunc nsz double %i.qr to float
  %i.qt = fpext nsz float %i.qs to double
  %i.qu = extractelement <2 x double> %i.qp, i64 1
  %i.qv = tail call nsz double @llvm.fmuladd.f64(double %i.qu, double f0x3FA3329177B71BB6, double %i.qt)
  %i.qw = fptrunc nsz double %i.qv to float
  %i.qx = getelementptr inbounds i8, ptr %.1118.lver.orig, i64 -40
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !31
  %i.qz = fpext nsz float %i.qy to double
  %i.ra = fpext nsz float %i.qw to double
  %i.rb = tail call nsz double @llvm.fmuladd.f64(double %i.qz, double f0x3FECC09FCD90412B, double %i.ra)
  %i.rc = fptrunc nsz double %i.rb to float
  %i.rd = fmul nsz float %i.og, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %.595115.lver.orig, i64 4 ; 2 uses
  store float %i.rd, ptr %.595115.lver.orig, align 4, !tbaa !31
  %i.rf = add nuw nsw i32 %.079116.lver.orig, 1   ; 2 uses
  %exitcond153.not.lver.orig = icmp eq i32 %i.rf, 20
  br i1 %exitcond153.not.lver.orig, label %.loopexit179, label %.ph.lver.orig, !llvm.loop !77

.ph:                                              ; preds = %.lver.check
  %scevgep184 = getelementptr i8, ptr %.074122, i64 -4
  %load_initial = load float, ptr %scevgep184, align 4
  br label %bb.e

bb.e:                                             ; preds = %.ph, %bb.e
  %store_forwarded = phi float [ %load_initial, %.ph ], [ %i.ri, %bb.e ]
  %.1118 = phi ptr [ %.074122, %.ph ], [ %i.rk, %bb.e ] ; 9 uses
  %.178117 = phi i16 [ %.077121, %.ph ], [ %i.rh, %bb.e ]
  %.079116 = phi i32 [ 0, %.ph ], [ %i.uc, %bb.e ]
  %.595115 = phi ptr [ %.494119, %.ph ], [ %i.ub, %bb.e ] ; 2 uses
  %i.rg = mul i16 %.178117, 521
  %i.rh = add i16 %i.rg, 259                      ; 3 uses
  %i.ri = sitofp nsz i16 %i.rh to float           ; 3 uses
  store float %i.ri, ptr %.1118, align 4, !tbaa !31
  %i.rj = getelementptr i8, ptr %.1118, i64 -80
  %i.rk = getelementptr i8, ptr %.1118, i64 4     ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %.1118, i64 -12
  %i.rm = load <2 x float>, ptr %i.rl, align 4, !tbaa !31
  %i.rn = load <4 x float>, ptr %i.rj, align 4, !tbaa !31
  %i.ro = shufflevector <2 x float> %i.rm, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 0>
  %i.rp = insertelement <4 x float> %i.ro, float %i.ri, i64 0
  %i.rq = insertelement <4 x float> %i.rp, float %store_forwarded, i64 1
  %i.rr = fadd nsz <4 x float> %i.rn, %i.rq
  %i.rs = fpext nsz <4 x float> %i.rr to <4 x double> ; 4 uses
  %i.rt = extractelement <4 x double> %i.rs, i64 0
  %i.ru = fmul nsz double %i.rt, f0xBFC135B848B149BA
  %i.rv = fptrunc nsz double %i.ru to float
  %i.rw = fpext nsz float %i.rv to double
  %i.rx = extractelement <4 x double> %i.rs, i64 1
  %i.ry = tail call nsz double @llvm.fmuladd.f64(double %i.rx, double f0x3F91C5347D0A41CD, double %i.rw)
  %i.rz = fptrunc nsz double %i.ry to float
  %i.sa = fpext nsz float %i.rz to double
  %i.sb = extractelement <4 x double> %i.rs, i64 2
  %i.sc = tail call nsz double @llvm.fmuladd.f64(double %i.sb, double f0xBFB1ADCD5837FA6D, double %i.sa)
  %i.sd = fptrunc nsz double %i.sc to float
  %i.se = fpext nsz float %i.sd to double
  %i.sf = extractelement <4 x double> %i.rs, i64 3
  %i.sg = tail call nsz double @llvm.fmuladd.f64(double %i.sf, double f0x3F98ED8CB5DB6EA6, double %i.se)
  %i.sh = fptrunc nsz double %i.sg to float
  %i.si = getelementptr i8, ptr %.1118, i64 -64
  %i.sj = fpext nsz float %i.sh to double
  %i.sk = getelementptr inbounds i8, ptr %.1118, i64 -28
  %i.sl = load <4 x float>, ptr %i.sk, align 4, !tbaa !31
  %i.sm = shufflevector <4 x float> %i.sl, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.sn = load <4 x float>, ptr %i.si, align 4, !tbaa !31
  %i.so = fadd nsz <4 x float> %i.sm, %i.sn
  %i.sp = fpext nsz <4 x float> %i.so to <4 x double> ; 4 uses
  %i.sq = extractelement <4 x double> %i.sp, i64 0
  %i.sr = tail call nsz double @llvm.fmuladd.f64(double %i.sq, double f0xBFB504F70AB8EB99, double %i.sj)
  %i.ss = fptrunc nsz double %i.sr to float
  %i.st = fpext nsz float %i.ss to double
  %i.su = extractelement <4 x double> %i.sp, i64 1
  %i.sv = tail call nsz double @llvm.fmuladd.f64(double %i.su, double f0x3F9F24D0EFC722BF, double %i.st)
  %i.sw = fptrunc nsz double %i.sv to float
  %i.sx = fpext nsz float %i.sw to double
  %i.sy = extractelement <4 x double> %i.sp, i64 2
  %i.sz = tail call nsz double @llvm.fmuladd.f64(double %i.sy, double f0xBFB7AEFCAD3A355B, double %i.sx)
  %i.ta = fptrunc nsz double %i.sz to float
  %i.tb = fpext nsz float %i.ta to double
  %i.tc = extractelement <4 x double> %i.sp, i64 3
  %i.td = tail call nsz double @llvm.fmuladd.f64(double %i.tc, double f0x3FA1EE1E811F7A44, double %i.tb)
  %i.te = fptrunc nsz double %i.td to float
  %i.tf = getelementptr i8, ptr %.1118, i64 -48
  %i.tg = fpext nsz float %i.te to double
  %i.th = getelementptr inbounds i8, ptr %.1118, i64 -36
  %i.ti = load <2 x float>, ptr %i.th, align 4, !tbaa !31
  %i.tj = shufflevector <2 x float> %i.ti, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tk = load <2 x float>, ptr %i.tf, align 4, !tbaa !31
  %i.tl = fadd nsz <2 x float> %i.tj, %i.tk
  %i.tm = fpext nsz <2 x float> %i.tl to <2 x double> ; 2 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 0
  %i.to = tail call nsz double @llvm.fmuladd.f64(double %i.tn, double f0xBFB9645EA4502BE7, double %i.tg)
  %i.tp = fptrunc nsz double %i.to to float
  %i.tq = fpext nsz float %i.tp to double
  %i.tr = extractelement <2 x double> %i.tm, i64 1
  %i.ts = tail call nsz double @llvm.fmuladd.f64(double %i.tr, double f0x3FA3329177B71BB6, double %i.tq)
  %i.tt = fptrunc nsz double %i.ts to float
  %i.tu = getelementptr inbounds i8, ptr %.1118, i64 -40
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !31
  %i.tw = fpext nsz float %i.tv to double
  %i.tx = fpext nsz float %i.tt to double
  %i.ty = tail call nsz double @llvm.fmuladd.f64(double %i.tw, double f0x3FECC09FCD90412B, double %i.tx)
  %i.tz = fptrunc nsz double %i.ty to float
  %i.ua = fmul nsz float %i.og, %i.tz
  %i.ub = getelementptr inbounds nuw i8, ptr %.595115, i64 4 ; 2 uses
  store float %i.ua, ptr %.595115, align 4, !tbaa !31
  %i.uc = add nuw nsw i32 %.079116, 1             ; 2 uses
  %exitcond153.not = icmp eq i32 %i.uc, 20
  br i1 %exitcond153.not, label %.loopexit179, label %bb.e, !llvm.loop !77

.loopexit179:                                     ; preds = %bb.e, %.ph.lver.orig
  %.lcssa176 = phi i16 [ %i.oi, %.ph.lver.orig ], [ %i.rh, %bb.e ]
  %.lcssa175 = phi ptr [ %i.on, %.ph.lver.orig ], [ %i.rk, %bb.e ]
  %.lcssa = phi ptr [ %i.re, %.ph.lver.orig ], [ %i.ub, %bb.e ]
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond156.not = icmp eq i64 %indvars.iv.next155, 8
  br i1 %exitcond156.not, label %bb.f, label %.lver.check, !llvm.loop !78

bb.f:                                             ; preds = %.loopexit179
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.ue = getelementptr inbounds nuw i8, ptr %0, i64 3248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ud, ptr noundef nonnull align 8 dereferenceable(80) %i.ue, i64 80, i1 false)
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 4044
  %i.ug = load i16, ptr %i.uf, align 4, !tbaa !38
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv146 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next147, %bb.h ] ; 2 uses
  %.2112 = phi i16 [ %i.ug, %bb.g ], [ %i.xe, %bb.h ]
  %.6110 = phi ptr [ %2, %bb.g ], [ %i.wx, %bb.h ] ; 6 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv146
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !31
  %i.uj = fpext nsz float %i.ui to double
  %i.uk = fmul nsz double %i.uj, f0x3F05FA991F900205
  %i.ul = fptrunc nsz double %i.uk to float
  %i.um = mul i16 %.2112, 521
  %i.un = getelementptr inbounds nuw i8, ptr %.6110, i64 16
  %i.uo = add i16 %i.um, 259                      ; 2 uses
  %i.up = mul i16 %i.uo, 521
  %i.uq = add i16 %i.up, 259                      ; 2 uses
  %i.ur = mul i16 %i.uq, 521
  %i.us = add i16 %i.ur, 259                      ; 2 uses
  %i.ut = mul i16 %i.us, 521
  %i.uu = add i16 %i.ut, 259                      ; 2 uses
  %i.uv = insertelement <4 x i16> poison, i16 %i.uo, i64 0
  %i.uw = insertelement <4 x i16> %i.uv, i16 %i.uq, i64 1
  %i.ux = insertelement <4 x i16> %i.uw, i16 %i.us, i64 2
  %i.uy = insertelement <4 x i16> %i.ux, i16 %i.uu, i64 3
  %i.uz = sitofp <4 x i16> %i.uy to <4 x float>
  %i.va = insertelement <4 x float> poison, float %i.ul, i64 0
  %i.vb = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.vc = fmul nsz <4 x float> %i.vb, %i.uz
  store <4 x float> %i.vc, ptr %.6110, align 4, !tbaa !31
  %i.vd = mul i16 %i.uu, 521
  %i.ve = getelementptr inbounds nuw i8, ptr %.6110, i64 32
  %i.vf = add i16 %i.vd, 259                      ; 2 uses
  %i.vg = mul i16 %i.vf, 521
  %i.vh = add i16 %i.vg, 259                      ; 2 uses
  %i.vi = mul i16 %i.vh, 521
  %i.vj = add i16 %i.vi, 259                      ; 2 uses
  %i.vk = mul i16 %i.vj, 521
  %i.vl = add i16 %i.vk, 259                      ; 2 uses
  %i.vm = insertelement <4 x i16> poison, i16 %i.vf, i64 0
  %i.vn = insertelement <4 x i16> %i.vm, i16 %i.vh, i64 1
  %i.vo = insertelement <4 x i16> %i.vn, i16 %i.vj, i64 2
  %i.vp = insertelement <4 x i16> %i.vo, i16 %i.vl, i64 3
  %i.vq = sitofp <4 x i16> %i.vp to <4 x float>
  %i.vr = fmul nsz <4 x float> %i.vb, %i.vq
  store <4 x float> %i.vr, ptr %i.un, align 4, !tbaa !31
  %i.vs = mul i16 %i.vl, 521
  %i.vt = getelementptr inbounds nuw i8, ptr %.6110, i64 48
  %i.vu = add i16 %i.vs, 259                      ; 2 uses
  %i.vv = mul i16 %i.vu, 521
  %i.vw = add i16 %i.vv, 259                      ; 2 uses
  %i.vx = mul i16 %i.vw, 521
  %i.vy = add i16 %i.vx, 259                      ; 2 uses
  %i.vz = mul i16 %i.vy, 521
  %i.wa = add i16 %i.vz, 259                      ; 2 uses
  %i.wb = insertelement <4 x i16> poison, i16 %i.vu, i64 0
  %i.wc = insertelement <4 x i16> %i.wb, i16 %i.vw, i64 1
  %i.wd = insertelement <4 x i16> %i.wc, i16 %i.vy, i64 2
  %i.we = insertelement <4 x i16> %i.wd, i16 %i.wa, i64 3
  %i.wf = sitofp <4 x i16> %i.we to <4 x float>
  %i.wg = fmul nsz <4 x float> %i.vb, %i.wf
  store <4 x float> %i.wg, ptr %i.ve, align 4, !tbaa !31
  %i.wh = mul i16 %i.wa, 521
  %i.wi = getelementptr inbounds nuw i8, ptr %.6110, i64 64
  %i.wj = add i16 %i.wh, 259                      ; 2 uses
  %i.wk = mul i16 %i.wj, 521
  %i.wl = add i16 %i.wk, 259                      ; 2 uses
  %i.wm = mul i16 %i.wl, 521
  %i.wn = add i16 %i.wm, 259                      ; 2 uses
  %i.wo = mul i16 %i.wn, 521
  %i.wp = add i16 %i.wo, 259                      ; 2 uses
  %i.wq = insertelement <4 x i16> poison, i16 %i.wj, i64 0
  %i.wr = insertelement <4 x i16> %i.wq, i16 %i.wl, i64 1
  %i.ws = insertelement <4 x i16> %i.wr, i16 %i.wn, i64 2
  %i.wt = insertelement <4 x i16> %i.ws, i16 %i.wp, i64 3
  %i.wu = sitofp <4 x i16> %i.wt to <4 x float>
  %i.wv = fmul nsz <4 x float> %i.vb, %i.wu
  store <4 x float> %i.wv, ptr %i.vt, align 4, !tbaa !31
  %i.ww = mul i16 %i.wp, 521
  %i.wx = getelementptr inbounds nuw i8, ptr %.6110, i64 80
  %i.wy = add i16 %i.ww, 259                      ; 2 uses
  %i.wz = mul i16 %i.wy, 521
  %i.xa = add i16 %i.wz, 259                      ; 2 uses
  %i.xb = mul i16 %i.xa, 521
  %i.xc = add i16 %i.xb, 259                      ; 2 uses
  %i.xd = mul i16 %i.xc, 521
  %i.xe = add i16 %i.xd, 259                      ; 2 uses
  %i.xf = insertelement <4 x i16> poison, i16 %i.wy, i64 0
  %i.xg = insertelement <4 x i16> %i.xf, i16 %i.xa, i64 1
  %i.xh = insertelement <4 x i16> %i.xg, i16 %i.xc, i64 2
  %i.xi = insertelement <4 x i16> %i.xh, i16 %i.xe, i64 3
  %i.xj = sitofp <4 x i16> %i.xi to <4 x float>
  %i.xk = fmul nsz <4 x float> %i.vb, %i.xj
  store <4 x float> %i.xk, ptr %i.wi, align 4, !tbaa !31
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond148.not = icmp eq i64 %indvars.iv.next147, 8
  br i1 %exitcond148.not, label %.loopexit, label %bb.h, !llvm.loop !79

.preheader99:                                     ; preds = %bb.a
  %i.xl = load float, ptr %1, align 4, !tbaa !31
  %i.xm = fpext nsz float %i.xl to double
  %i.xn = fmul nsz double %i.xm, 1.000000e-02
  %i.xo = fptrunc nsz double %i.xn to float
  %i.xp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.xq = insertelement <4 x float> poison, float %i.xo, i64 0
  %i.xr = shufflevector <4 x float> %i.xq, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.xs = fmul nsz <4 x float> %i.xr, <float 3.300000e+01, float -6.300000e+01, float -1.730000e+02, float -2.000000e+00>
  store <4 x float> %i.xs, ptr %2, align 4, !tbaa !31
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.xu = fmul nsz <4 x float> %i.xr, <float -7.500000e+01, float -5.300000e+01, float -1.460000e+02, float 7.700000e+01>
  store <4 x float> %i.xu, ptr %i.xp, align 4, !tbaa !31
  %i.xv = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.xw = fmul nsz <4 x float> %i.xr, <float 6.600000e+01, float -2.900000e+01, float 9.000000e+00, float -7.500000e+01>
  store <4 x float> %i.xw, ptr %i.xt, align 4, !tbaa !31
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.xy = fmul nsz <4 x float> %i.xr, <float 6.500000e+01, float 1.190000e+02, float -4.300000e+01, float 7.600000e+01>
  store <4 x float> %i.xy, ptr %i.xv, align 4, !tbaa !31
  %i.xz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ya = fmul nsz <4 x float> %i.xr, <float 2.330000e+02, float 9.800000e+01, float 1.250000e+02, float -1.560000e+02>
  store <4 x float> %i.ya, ptr %i.xx, align 4, !tbaa !31
  %i.yb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.yc = fmul nsz <4 x float> %i.xr, <float -2.700000e+01, float 7.800000e+01, float -9.000000e+00, float 1.700000e+02>
  store <4 x float> %i.yc, ptr %i.xz, align 4, !tbaa !31
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ye = fmul nsz <4 x float> %i.xr, <float 1.760000e+02, float 1.430000e+02, float -1.480000e+02, float -7.000000e+00>
  store <4 x float> %i.ye, ptr %i.yb, align 4, !tbaa !31
  %i.yf = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.yg = fmul nsz <4 x float> %i.xr, <float 2.700000e+01, float -1.360000e+02, float 5.000000e+00, float 2.700000e+01>
  store <4 x float> %i.yg, ptr %i.yd, align 4, !tbaa !31
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.yi = fmul nsz <4 x float> %i.xr, <float 1.800000e+01, float 1.390000e+02, float 2.040000e+02, float 7.000000e+00>
  store <4 x float> %i.yi, ptr %i.yf, align 4, !tbaa !31
  %i.yj = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.yk = fmul nsz <4 x float> %i.xr, <float -1.840000e+02, float -1.970000e+02, float 5.200000e+01, float -3.000000e+00>
  store <4 x float> %i.yk, ptr %i.yh, align 4, !tbaa !31
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !31
  %i.yn = fpext nsz float %i.ym to double
  %i.yo = fmul nsz double %i.yn, 1.000000e-02
  %i.yp = fptrunc nsz double %i.yo to float
  %i.yq = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.yr = insertelement <4 x float> poison, float %i.yp, i64 0
  %i.ys = shufflevector <4 x float> %i.yr, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.yt = fmul nsz <4 x float> %i.ys, <float 7.800000e+01, float -1.890000e+02, float 8.000000e+00, float -6.500000e+01>
  store <4 x float> %i.yt, ptr %i.yj, align 4, !tbaa !31
  %i.yu = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.yv = fmul nsz <4 x float> %i.ys, <float 1.000000e+01, float -6.500000e+01, float -5.900000e+01, float 1.200000e+01>
  store <4 x float> %i.yv, ptr %i.yq, align 4, !tbaa !31
  %i.yw = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.yx = fmul nsz <4 x float> %i.ys, <float 1.100000e+02, float 3.400000e+01, float -1.340000e+02, float 1.570000e+02>
  store <4 x float> %i.yx, ptr %i.yu, align 4, !tbaa !31
  %i.yy = getelementptr inbounds nuw i8, ptr %2, i64 224
  %i.yz = fmul nsz <4 x float> %i.ys, <float 1.040000e+02, float -8.400000e+01, float -3.400000e+01, float -1.150000e+02>
  store <4 x float> %i.yz, ptr %i.yw, align 4, !tbaa !31
  %i.za = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.zb = fmul nsz <4 x float> %i.ys, <float 2.300000e+01, float -1.010000e+02, float 3.000000e+00, float 4.500000e+01>
  store <4 x float> %i.zb, ptr %i.yy, align 4, !tbaa !31
  %i.zc = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.zd = fmul nsz <4 x float> %i.ys, <float -1.010000e+02, float -1.600000e+01, float -5.900000e+01, float 2.800000e+01>
  store <4 x float> %i.zd, ptr %i.za, align 4, !tbaa !31
  %i.ze = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.zf = fmul nsz <4 x float> %i.ys, <float -4.500000e+01, float 1.340000e+02, float -6.700000e+01, float 2.200000e+01>
  store <4 x float> %i.zf, ptr %i.zc, align 4, !tbaa !31
  %i.zg = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.zh = fmul nsz <4 x float> %i.ys, <float 6.100000e+01, float -2.900000e+01, float 2.260000e+02, float -2.600000e+01>
  store <4 x float> %i.zh, ptr %i.ze, align 4, !tbaa !31
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.zj = fmul nsz <4 x float> %i.ys, <float -5.500000e+01, float -1.790000e+02, float 1.570000e+02, float -5.100000e+01>
  store <4 x float> %i.zj, ptr %i.zg, align 4, !tbaa !31
  %i.zk = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.zl = fmul nsz <4 x float> %i.ys, <float -2.200000e+02, float -9.300000e+01, float -3.700000e+01, float 6.000000e+01>
  store <4 x float> %i.zl, ptr %i.zi, align 4, !tbaa !31
  %i.zm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.zn = load float, ptr %i.zm, align 4, !tbaa !31
  %i.zo = fpext nsz float %i.zn to double
  %i.zp = fmul nsz double %i.zo, 1.000000e-02
  %i.zq = fptrunc nsz double %i.zp to float
  %i.zr = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.zs = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.zt = shufflevector <4 x float> %i.zs, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.zu = fmul nsz <4 x float> %i.zt, <float 1.180000e+02, float 7.400000e+01, float -4.800000e+01, float -9.500000e+01>
  store <4 x float> %i.zu, ptr %i.zk, align 4, !tbaa !31
  %i.zv = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.zw = fmul nsz <4 x float> %i.zt, <float -1.810000e+02, float 1.110000e+02, float 3.600000e+01, float -5.200000e+01>
  store <4 x float> %i.zw, ptr %i.zr, align 4, !tbaa !31
  %i.zx = getelementptr inbounds nuw i8, ptr %2, i64 368
  %i.zy = fmul nsz <4 x float> %i.zt, <float -2.150000e+02, float 7.800000e+01, float -1.120000e+02, float 3.900000e+01>
  store <4 x float> %i.zy, ptr %i.zv, align 4, !tbaa !31
  %i.zz = getelementptr inbounds nuw i8, ptr %2, i64 384
  %i.aaa = fmul nsz <4 x float> %i.zt, <float -1.700000e+01, float -4.700000e+01, float -2.230000e+02, float 1.900000e+01>
  store <4 x float> %i.aaa, ptr %i.zx, align 4, !tbaa !31
  %i.aab = getelementptr inbounds nuw i8, ptr %2, i64 400
  %i.aac = fmul nsz <4 x float> %i.zt, <float 1.200000e+01, float -9.800000e+01, float -1.420000e+02, float 1.300000e+02>
  store <4 x float> %i.aac, ptr %i.zz, align 4, !tbaa !31
  %i.aad = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.aae = fmul nsz <4 x float> %i.zt, <float 5.400000e+01, float -1.270000e+02, float 2.100000e+01, float -1.200000e+01>
  store <4 x float> %i.aae, ptr %i.aab, align 4, !tbaa !31
  %i.aaf = getelementptr inbounds nuw i8, ptr %2, i64 432
  %i.aag = fmul nsz <4 x float> %i.zt, <float 3.900000e+01, float -4.800000e+01, float 1.200000e+01, float 1.280000e+02>
  store <4 x float> %i.aag, ptr %i.aad, align 4, !tbaa !31
  %i.aah = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.aai = fmul nsz <4 x float> %i.zt, <float 6.000000e+00, float -1.670000e+02, float 8.200000e+01, float -1.020000e+02>
  store <4 x float> %i.aai, ptr %i.aaf, align 4, !tbaa !31
  %i.aaj = getelementptr inbounds nuw i8, ptr %2, i64 464
  %i.aak = fmul nsz <4 x float> %i.zt, <float -7.900000e+01, float 5.500000e+01, float -4.400000e+01, float 4.800000e+01>
  store <4 x float> %i.aak, ptr %i.aah, align 4, !tbaa !31
  %i.aal = getelementptr inbounds nuw i8, ptr %2, i64 480
  %i.aam = fmul nsz <4 x float> %i.zt, <float -2.000000e+01, float -5.300000e+01, float 8.000000e+00, float -6.100000e+01>
  store <4 x float> %i.aam, ptr %i.aaj, align 4, !tbaa !31
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !31
  %i.aap = fpext nsz float %i.aao to double
  %i.aaq = fmul nsz double %i.aap, 1.000000e-02
  %i.aar = fptrunc nsz double %i.aaq to float
  %i.aas = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.aat = insertelement <4 x float> poison, float %i.aar, i64 0
  %i.aau = shufflevector <4 x float> %i.aat, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.aav = fmul nsz <4 x float> %i.aau, <float 1.100000e+01, float -7.000000e+01, float -1.570000e+02, float -1.680000e+02>
  store <4 x float> %i.aav, ptr %i.aal, align 4, !tbaa !31
  %i.aaw = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.aax = fmul nsz <4 x float> %i.aau, <float 2.000000e+01, float -5.600000e+01, float -7.400000e+01, float 7.800000e+01>
  store <4 x float> %i.aax, ptr %i.aas, align 4, !tbaa !31
  %i.aay = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.aaz = fmul nsz <4 x float> %i.aau, <float 3.300000e+01, float -6.300000e+01, float -1.730000e+02, float -2.000000e+00>
  store <4 x float> %i.aaz, ptr %i.aaw, align 4, !tbaa !31
  %i.aba = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.abb = fmul nsz <4 x float> %i.aau, <float -7.500000e+01, float -5.300000e+01, float -1.460000e+02, float 7.700000e+01>
  store <4 x float> %i.abb, ptr %i.aay, align 4, !tbaa !31
  %i.abc = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.abd = fmul nsz <4 x float> %i.aau, <float 6.600000e+01, float -2.900000e+01, float 9.000000e+00, float -7.500000e+01>
  store <4 x float> %i.abd, ptr %i.aba, align 4, !tbaa !31
  %i.abe = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.abf = fmul nsz <4 x float> %i.aau, <float 6.500000e+01, float 1.190000e+02, float -4.300000e+01, float 7.600000e+01>
  store <4 x float> %i.abf, ptr %i.abc, align 4, !tbaa !31
  %i.abg = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.abh = fmul nsz <4 x float> %i.aau, <float 2.330000e+02, float 9.800000e+01, float 1.250000e+02, float -1.560000e+02>
  store <4 x float> %i.abh, ptr %i.abe, align 4, !tbaa !31
  %i.abi = getelementptr inbounds nuw i8, ptr %2, i64 608
  %i.abj = fmul nsz <4 x float> %i.aau, <float -2.700000e+01, float 7.800000e+01, float -9.000000e+00, float 1.700000e+02>
  store <4 x float> %i.abj, ptr %i.abg, align 4, !tbaa !31
  %i.abk = getelementptr inbounds nuw i8, ptr %2, i64 624
  %i.abl = fmul nsz <4 x float> %i.aau, <float 1.760000e+02, float 1.430000e+02, float -1.480000e+02, float -7.000000e+00>
  store <4 x float> %i.abl, ptr %i.abi, align 4, !tbaa !31
  %i.abm = fmul nsz <4 x float> %i.aau, <float 2.700000e+01, float -1.360000e+02, float 5.000000e+00, float 2.700000e+01>
  store <4 x float> %i.abm, ptr %i.abk, align 4, !tbaa !31
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(640) %2, i8 0, i64 640, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.c, %bb.b, %.preheader99, %bb.i, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @decode_lspf(ptr noundef %0, ptr noundef nonnull initializes((0, 40)) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  switch i32 %i.b, label %bb.d [
    i32 1, label %bb.b
    i32 -1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4020
  %i.d = load i32, ptr %i.c, align 4, !tbaa !41
  %i.e = add i32 %i.d, 1
  %switch.and = and i32 %i.e, -3
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %i.f = select i1 %switch.selectcmp, i64 144, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 20 uses
  %i.h = icmp eq i32 %i.b, 1
  br i1 %i.h, label %bb.c, label %.loopexit122.loopexit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !80
  %i.k = add i8 %i.j, 1                           ; 2 uses
  store i8 %i.k, ptr %i.i, align 4, !tbaa !80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.n = load i8, ptr %i.l, align 8, !tbaa !30
  %.not117 = icmp eq i8 %i.n, 0
  %i.o = select nsz i1 %.not117, double -2.000000e-02, double 2.000000e-02
  %i.p = load float, ptr %i.g, align 4, !tbaa !31
  %i.q = fpext nsz float %i.p to double
  %i.r = fmul nsz double %i.q, 2.900000e+01
  %i.s = fmul nsz double %i.r, 3.125000e-02
  %i.t = fadd nsz double %i.o, %i.s
  %i.u = fadd nsz double %i.t, f0x3F81745D1745D174
  %i.v = fptrunc nsz double %i.u to float         ; 2 uses
  store float %i.v, ptr %1, align 4, !tbaa !31
  store float %i.v, ptr %i.m, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.x = load i8, ptr %i.w, align 1, !tbaa !30
  %.not117.1 = icmp eq i8 %i.x, 0
  %i.y = select nsz i1 %.not117.1, double -2.000000e-02, double 2.000000e-02
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !31
  %i.ab = fpext nsz float %i.aa to double
  %i.ac = fmul nsz double %i.ab, 2.900000e+01
  %i.ad = fmul nsz double %i.ac, 3.125000e-02
  %i.ae = fadd nsz double %i.y, %i.ad
  %i.af = fadd nsz double %i.ae, f0x3F91745D1745D174
  %i.ag = fptrunc nsz double %i.af to float       ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ag, ptr %i.ah, align 4, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.ag, ptr %i.ai, align 4, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.ak = load i8, ptr %i.aj, align 2, !tbaa !30
  %.not117.2 = icmp eq i8 %i.ak, 0
  %i.al = select nsz i1 %.not117.2, double -2.000000e-02, double 2.000000e-02
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.an = load float, ptr %i.am, align 4, !tbaa !31
  %i.ao = fpext nsz float %i.an to double
  %i.ap = fmul nsz double %i.ao, 2.900000e+01
  %i.aq = fmul nsz double %i.ap, 3.125000e-02
  %i.ar = fadd nsz double %i.al, %i.aq
  %i.as = fadd nsz double %i.ar, f0x3F9A2E8BA2E8BA2E
  %i.at = fptrunc nsz double %i.as to float       ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.at, ptr %i.au, align 4, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.at, ptr %i.av, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 91
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !30
  %.not117.3 = icmp eq i8 %i.ax, 0
  %i.ay = select nsz i1 %.not117.3, double -2.000000e-02, double 2.000000e-02
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31
  %i.bb = fpext nsz float %i.ba to double
  %i.bc = fmul nsz double %i.bb, 2.900000e+01
  %i.bd = fmul nsz double %i.bc, 3.125000e-02
  %i.be = fadd nsz double %i.ay, %i.bd
  %i.bf = fadd nsz double %i.be, f0x3FA1745D1745D174
  %i.bg = fptrunc nsz double %i.bf to float       ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.bg, ptr %i.bh, align 4, !tbaa !31
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %i.bg, ptr %i.bi, align 4, !tbaa !31
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !30
  %.not117.4 = icmp eq i8 %i.bk, 0
  %i.bl = select nsz i1 %.not117.4, double -2.000000e-02, double 2.000000e-02
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !31
  %i.bo = fpext nsz float %i.bn to double
  %i.bp = fmul nsz double %i.bo, 2.900000e+01
  %i.bq = fmul nsz double %i.bp, 3.125000e-02
  %i.br = fadd nsz double %i.bl, %i.bq
  %i.bs = fadd nsz double %i.br, f0x3FA5D1745D1745D1
  %i.bt = fptrunc nsz double %i.bs to float       ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.bt, ptr %i.bu, align 4, !tbaa !31
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 160
  store float %i.bt, ptr %i.bv, align 8, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !30
  %.not117.5 = icmp eq i8 %i.bx, 0
  %i.by = select nsz i1 %.not117.5, double -2.000000e-02, double 2.000000e-02
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !31
  %i.cb = fpext nsz float %i.ca to double
  %i.cc = fmul nsz double %i.cb, 2.900000e+01
  %i.cd = fmul nsz double %i.cc, 3.125000e-02
  %i.ce = fadd nsz double %i.by, %i.cd
  %i.cf = fadd nsz double %i.ce, f0x3FAA2E8BA2E8BA2E
  %i.cg = fptrunc nsz double %i.cf to float       ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.cg, ptr %i.ch, align 4, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 164
  store float %i.cg, ptr %i.ci, align 4, !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 94
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !30
  %.not117.6 = icmp eq i8 %i.ck, 0
  %i.cl = select nsz i1 %.not117.6, double -2.000000e-02, double 2.000000e-02
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !31
  %i.co = fpext nsz float %i.cn to double
  %i.cp = fmul nsz double %i.co, 2.900000e+01
  %i.cq = fmul nsz double %i.cp, 3.125000e-02
  %i.cr = fadd nsz double %i.cl, %i.cq
  %i.cs = fadd nsz double %i.cr, f0x3FAE8BA2E8BA2E8B
  %i.ct = fptrunc nsz double %i.cs to float       ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.ct, ptr %i.cu, align 4, !tbaa !31
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float %i.ct, ptr %i.cv, align 8, !tbaa !31
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !30
  %.not117.7 = icmp eq i8 %i.cx, 0
  %i.cy = select nsz i1 %.not117.7, double -2.000000e-02, double 2.000000e-02
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.da = load float, ptr %i.cz, align 4, !tbaa !31
  %i.db = fpext nsz float %i.da to double
  %i.dc = fmul nsz double %i.db, 2.900000e+01
  %i.dd = fmul nsz double %i.dc, 3.125000e-02
  %i.de = fadd nsz double %i.cy, %i.dd
  %i.df = fadd nsz double %i.de, f0x3FB1745D1745D174
  %i.dg = fptrunc nsz double %i.df to float       ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.dg, ptr %i.dh, align 4, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %i.dg, ptr %i.di, align 4, !tbaa !31
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !30
  %.not117.8 = icmp eq i8 %i.dk, 0
  %i.dl = select nsz i1 %.not117.8, double -2.000000e-02, double 2.000000e-02
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !31
  %i.do = fpext nsz float %i.dn to double
  %i.dp = fmul nsz double %i.do, 2.900000e+01
  %i.dq = fmul nsz double %i.dp, 3.125000e-02
  %i.dr = fadd nsz double %i.dl, %i.dq
  %i.ds = fadd nsz double %i.dr, f0x3FB3A2E8BA2E8BA2
  %i.dt = fptrunc nsz double %i.ds to float       ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.dt, ptr %i.du, align 4, !tbaa !31
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 176
  store float %i.dt, ptr %i.dv, align 8, !tbaa !31
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !30
  %.not117.9 = icmp eq i8 %i.dx, 0
  %i.dy = select nsz i1 %.not117.9, double -2.000000e-02, double 2.000000e-02
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !31
  %i.eb = fpext nsz float %i.ea to double
  %i.ec = fmul nsz double %i.eb, 2.900000e+01
  %i.ed = fmul nsz double %i.ec, 3.125000e-02
  %i.ee = fadd nsz double %i.dy, %i.ed
  %i.ef = fadd nsz double %i.ee, f0x3FB5D1745D1745D1
  %i.eg = fptrunc nsz double %i.ef to float       ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.eg, ptr %i.eh, align 4, !tbaa !31
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 180
  store float %i.eg, ptr %i.ei, align 4, !tbaa !31
  %i.ej = icmp ult i8 %i.k, 10
  %i.ek = select i1 %i.ej, float 8.750000e-01, float 1.000000e-01
  br label %.loopexit122

.loopexit122.loopexit:                            ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.em = load i8, ptr %i.el, align 1, !tbaa !40  ; 2 uses
  %i.en = icmp ugt i8 %i.em, 1
  %i.eo = icmp ult i8 %i.em, 4
  %i.ep = select i1 %i.eo, float 8.156250e-01, float 6.343750e-01
  %.0 = select nsz i1 %i.en, float %i.ep, float 9.062500e-01 ; 11 uses
  %i.eq = fsub nnan nsz float 1.000000e+00, %.0   ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.es = fdiv nsz float %i.eq, 1.100000e+01
  %i.et = load float, ptr %i.g, align 4, !tbaa !31
  %i.eu = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.et, float %i.es) ; 2 uses
  store float %i.eu, ptr %1, align 4, !tbaa !31
  store float %i.eu, ptr %i.er, align 8, !tbaa !31
  %i.ev = fmul nnan nsz float %i.eq, 2.000000e+00
  %i.ew = fdiv nsz float %i.ev, 1.100000e+01
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !31
  %i.ez = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.ey, float %i.ew) ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.ez, ptr %i.fa, align 4, !tbaa !31
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.ez, ptr %i.fb, align 4, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !31
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fg = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.fp = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_0
begin_hunk_1_@decode_lspf:bb.a
  %i.ge = load float, ptr %i.fg, align 4, !tbaa !31
  %i.gf = extractelement <8 x float> %i.gb, i64 1
  %i.gg = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.ge, float %i.gf) ; 2 uses
  store float %i.gg, ptr %i.fh, align 4, !tbaa !31
  store float %i.gg, ptr %i.fi, align 4, !tbaa !31
  %i.gh = load float, ptr %i.fj, align 4, !tbaa !31
  %i.gi = extractelement <8 x float> %i.gb, i64 2
  %i.gj = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.gh, float %i.gi) ; 2 uses
  store float %i.gj, ptr %i.fk, align 4, !tbaa !31
  store float %i.gj, ptr %i.fl, align 8, !tbaa !31
  %i.gk = load float, ptr %i.fm, align 4, !tbaa !31
  %i.gl = extractelement <8 x float> %i.gb, i64 3
  %i.gm = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.gk, float %i.gl) ; 2 uses
  store float %i.gm, ptr %i.fn, align 4, !tbaa !31
  store float %i.gm, ptr %i.fo, align 4, !tbaa !31
  %i.gn = load float, ptr %i.fp, align 4, !tbaa !31
  %i.go = extractelement <8 x float> %i.gb, i64 4
  %i.gp = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.gn, float %i.go) ; 2 uses
  store float %i.gp, ptr %i.fq, align 4, !tbaa !31
  store float %i.gp, ptr %i.fr, align 8, !tbaa !31
  %i.gq = load float, ptr %i.fs, align 4, !tbaa !31
  %i.gr = extractelement <8 x float> %i.gb, i64 5
  %i.gs = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.gq, float %i.gr) ; 2 uses
  store float %i.gs, ptr %i.ft, align 4, !tbaa !31
  store float %i.gs, ptr %i.fu, align 4, !tbaa !31
  %i.gt = load float, ptr %i.fv, align 4, !tbaa !31
  %i.gu = extractelement <8 x float> %i.gb, i64 6
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.gt, float %i.gu) ; 2 uses
  store float %i.gv, ptr %i.fw, align 4, !tbaa !31
  store float %i.gv, ptr %i.fx, align 8, !tbaa !31
  %i.gw = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !31
  %i.gy = extractelement <8 x float> %i.gb, i64 7
  %i.gz = tail call nsz float @llvm.fmuladd.f32(float %.0, float %i.gx, float %i.gy) ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.gz, ptr %i.ha, align 4, !tbaa !31
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 180
  store float %i.gz, ptr %i.hb, align 4, !tbaa !31
  br label %.loopexit122

.loopexit122:                                     ; preds = %.loopexit122.loopexit, %bb.c
  %.0101 = phi nsz float [ %i.ek, %bb.c ], [ 1.250000e-01, %.loopexit122.loopexit ] ; 2 uses
  %i.hc = load float, ptr %1, align 4, !tbaa !31  ; 2 uses
  %i.hd = fpext nsz float %i.hc to double
  %i.he = fcmp nsz ogt double %i.hd, 2.000000e-02
  %i.hf = select i1 %i.he, float %i.hc, float 2.000000e-02 ; 2 uses
  store float %i.hf, ptr %1, align 4, !tbaa !31
  %i.hg = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !31 ; 2 uses
  %i.hi = fpext nsz float %i.hh to double
  %i.hj = fpext nsz float %i.hf to double
  %i.hk = fadd nsz double %i.hj, 2.000000e-02     ; 2 uses
  %i.hl = fcmp nsz olt double %i.hk, %i.hi
  %i.hm = fptrunc nsz double %i.hk to float
  %i.hn = select i1 %i.hl, float %i.hh, float %i.hm ; 2 uses
  store float %i.hn, ptr %i.hg, align 4, !tbaa !31
  %i.ho = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !31 ; 2 uses
  %i.hq = fpext nsz float %i.hp to double
  %i.hr = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %i.hs = fpext nsz float %i.hn to double
  %i.ht = fadd nsz double %i.hs, 2.000000e-02     ; 2 uses
  %i.hu = fcmp nsz olt double %i.ht, %i.hq
  %i.hv = fptrunc nsz double %i.ht to float
  %i.hw = select i1 %i.hu, float %i.hp, float %i.hv ; 2 uses
  store float %i.hw, ptr %i.ho, align 4, !tbaa !31
  %i.hx = getelementptr i8, ptr %1, i64 12
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !31 ; 2 uses
  %i.hz = fpext nsz float %i.hy to double
  %i.ia = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ib = fpext nsz float %i.hw to double
  %i.ic = fadd nsz double %i.ib, 2.000000e-02     ; 2 uses
  %i.id = fcmp nsz olt double %i.ic, %i.hz
  %i.ie = fptrunc nsz double %i.ic to float
  %i.if = select i1 %i.id, float %i.hy, float %i.ie ; 2 uses
  %i.ig = getelementptr i8, ptr %1, i64 16
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !31 ; 2 uses
  %i.ii = fpext nsz float %i.ih to double
  %i.ij = getelementptr i8, ptr %1, i64 12
  %i.ik = fpext nsz float %i.if to double         ; 2 uses
  %i.il = fadd nsz double %i.ik, 2.000000e-02     ; 2 uses
  %i.im = fcmp nsz olt double %i.il, %i.ii
  %i.in = fptrunc nsz double %i.il to float
  %i.io = select i1 %i.im, float %i.ih, float %i.in ; 2 uses
  %i.ip = getelementptr i8, ptr %1, i64 20
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !31 ; 2 uses
  %i.ir = fpext nsz float %i.iq to double
  %i.is = getelementptr i8, ptr %1, i64 16
  %i.it = fpext nsz float %i.io to double         ; 2 uses
  %i.iu = fadd nsz double %i.it, 2.000000e-02     ; 2 uses
  %i.iv = fcmp nsz olt double %i.iu, %i.ir
  %i.iw = fptrunc nsz double %i.iu to float
  %i.ix = select i1 %i.iv, float %i.iq, float %i.iw ; 2 uses
  %i.iy = getelementptr i8, ptr %1, i64 24
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !31 ; 2 uses
  %i.ja = fpext nsz float %i.iz to double
  %i.jb = getelementptr i8, ptr %1, i64 20
  %i.jc = fpext nsz float %i.ix to double         ; 2 uses
  %i.jd = fadd nsz double %i.jc, 2.000000e-02     ; 2 uses
  %i.je = fcmp nsz olt double %i.jd, %i.ja
  %i.jf = fptrunc nsz double %i.jd to float
  %i.jg = select i1 %i.je, float %i.iz, float %i.jf ; 2 uses
  %i.jh = getelementptr i8, ptr %1, i64 28
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !31 ; 2 uses
  %i.jj = fpext nsz float %i.ji to double
  %i.jk = getelementptr i8, ptr %1, i64 24
  %i.jl = fpext nsz float %i.jg to double         ; 2 uses
  %i.jm = fadd nsz double %i.jl, 2.000000e-02     ; 2 uses
  %i.jn = fcmp nsz olt double %i.jm, %i.jj
  %i.jo = fptrunc nsz double %i.jm to float
  %i.jp = select i1 %i.jn, float %i.ji, float %i.jo ; 2 uses
  %i.jq = getelementptr i8, ptr %1, i64 32
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !31 ; 2 uses
  %i.js = fpext nsz float %i.jr to double
  %i.jt = getelementptr i8, ptr %1, i64 28
  %i.ju = fpext nsz float %i.jp to double         ; 2 uses
  %i.jv = fadd nsz double %i.ju, 2.000000e-02     ; 2 uses
  %i.jw = fcmp nsz olt double %i.jv, %i.js
  %i.jx = fptrunc nsz double %i.jv to float
  %i.jy = select i1 %i.jw, float %i.jr, float %i.jx ; 2 uses
  %i.jz = getelementptr i8, ptr %1, i64 36        ; 2 uses
  %i.ka = load float, ptr %i.jz, align 4, !tbaa !31 ; 2 uses
  %i.kb = fpext nsz float %i.ka to double
  %i.kc = getelementptr i8, ptr %1, i64 32
  %i.kd = fpext nsz float %i.jy to double         ; 2 uses
  %i.ke = fadd nsz double %i.kd, 2.000000e-02     ; 2 uses
  %i.kf = fcmp nsz olt double %i.ke, %i.kb
  %i.kg = fptrunc nsz double %i.ke to float
  %i.kh = select i1 %i.kf, float %i.ka, float %i.kg ; 2 uses
  %i.ki = fpext nsz float %i.kh to double
  %i.kj = fcmp nsz ogt double %i.ki, f0x3FEF5C28F5C28F5C
  %i.kk = select i1 %i.kj, float 9.800000e-01, float %i.kh ; 2 uses
  store float %i.kk, ptr %i.jz, align 4, !tbaa !31
  %i.kl = fpext nsz float %i.kk to double
  %i.km = fadd nsz double %i.kl, -2.000000e-02    ; 2 uses
  %i.kn = fcmp nsz olt double %i.km, %i.kd
  %i.ko = fptrunc nsz double %i.km to float
  %i.kp = select i1 %i.kn, float %i.ko, float %i.jy ; 2 uses
  store float %i.kp, ptr %i.kc, align 4, !tbaa !31
  %i.kq = fpext nsz float %i.kp to double
  %i.kr = fadd nsz double %i.kq, -2.000000e-02    ; 2 uses
  %i.ks = fcmp nsz olt double %i.kr, %i.ju
  %i.kt = fptrunc nsz double %i.kr to float
  %i.ku = select i1 %i.ks, float %i.kt, float %i.jp ; 2 uses
  store float %i.ku, ptr %i.jt, align 4, !tbaa !31
  %i.kv = fpext nsz float %i.ku to double
  %i.kw = fadd nsz double %i.kv, -2.000000e-02    ; 2 uses
  %i.kx = fcmp nsz olt double %i.kw, %i.jl
  %i.ky = fptrunc nsz double %i.kw to float
  %i.kz = select i1 %i.kx, float %i.ky, float %i.jg ; 2 uses
  store float %i.kz, ptr %i.jk, align 4, !tbaa !31
  %i.la = fpext nsz float %i.kz to double
  %i.lb = fadd nsz double %i.la, -2.000000e-02    ; 2 uses
  %i.lc = fcmp nsz olt double %i.lb, %i.jc
  %i.ld = fptrunc nsz double %i.lb to float
  %i.le = select i1 %i.lc, float %i.ld, float %i.ix ; 2 uses
  store float %i.le, ptr %i.jb, align 4, !tbaa !31
  %i.lf = fpext nsz float %i.le to double
  %i.lg = fadd nsz double %i.lf, -2.000000e-02    ; 2 uses
  %i.lh = fcmp nsz olt double %i.lg, %i.it
  %i.li = fptrunc nsz double %i.lg to float
  %i.lj = select i1 %i.lh, float %i.li, float %i.io ; 2 uses
  store float %i.lj, ptr %i.is, align 4, !tbaa !31
  %i.lk = fpext nsz float %i.lj to double
  %i.ll = fadd nsz double %i.lk, -2.000000e-02    ; 2 uses
  %i.lm = fcmp nsz olt double %i.ll, %i.ik
  %i.ln = fptrunc nsz double %i.ll to float
  %i.lo = select i1 %i.lm, float %i.ln, float %i.if ; 2 uses
  store float %i.lo, ptr %i.ij, align 4, !tbaa !31
  %i.lp = load float, ptr %i.ia, align 4, !tbaa !31 ; 2 uses
  %i.lq = fpext nsz float %i.lp to double
  %i.lr = fpext nsz float %i.lo to double
  %i.ls = fadd nsz double %i.lr, -2.000000e-02    ; 2 uses
  %i.lt = fcmp nsz olt double %i.ls, %i.lq
  %i.lu = fptrunc nsz double %i.ls to float
  %i.lv = select i1 %i.lt, float %i.lu, float %i.lp ; 2 uses
  store float %i.lv, ptr %i.ia, align 4, !tbaa !31
  %i.lw = load float, ptr %i.hr, align 4, !tbaa !31 ; 2 uses
  %i.lx = fpext nsz float %i.lw to double
  %i.ly = fpext nsz float %i.lv to double
  %i.lz = fadd nsz double %i.ly, -2.000000e-02    ; 2 uses
  %i.ma = fcmp nsz olt double %i.lz, %i.lx
  %i.mb = fptrunc nsz double %i.lz to float
  %i.mc = select i1 %i.ma, float %i.mb, float %i.lw ; 2 uses
  store float %i.mc, ptr %i.hr, align 4, !tbaa !31
  %i.md = load float, ptr %1, align 4, !tbaa !31  ; 2 uses
  %i.me = fpext nsz float %i.md to double
  %i.mf = fpext nsz float %i.mc to double
  %i.mg = fadd nsz double %i.mf, -2.000000e-02    ; 2 uses
  %i.mh = fcmp nsz olt double %i.mg, %i.me
  %i.mi = fptrunc nsz double %i.mg to float
  %i.mj = select i1 %i.mh, float %i.mi, float %i.md
  store float %i.mj, ptr %1, align 4, !tbaa !31
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ml = fsub nsz float 1.000000e+00, %.0101
  tail call void @ff_weighted_vector_sumf(ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %i.mk, float noundef %.0101, float noundef %i.ml, i32 noundef 10) #8
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i8 0, ptr %i.mm, align 4, !tbaa !80
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.mo = load i8, ptr %i.mn, align 8, !tbaa !30
  %i.mp = zext i8 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq1, i64 %i.mp
  %i.mr = load i16, ptr %i.mq, align 4, !tbaa !39
  %i.ms = uitofp i16 %i.mr to double
  %i.mt = fmul nnan nsz double %i.ms, 1.000000e-04
  %i.mu = fptrunc nsz double %i.mt to float       ; 2 uses
  store float %i.mu, ptr %1, align 4, !tbaa !31
  %i.mv = load i8, ptr %i.mn, align 8, !tbaa !30
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq1, i64 %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 2
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !39
  %i.na = uitofp i16 %i.mz to double
  %i.nb = fpext nsz float %i.mu to double
  %i.nc = tail call nsz double @llvm.fmuladd.f64(double %i.na, double 1.000000e-04, double %i.nb)
  %i.nd = fptrunc nsz double %i.nc to float       ; 4 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.nd, ptr %i.ne, align 4, !tbaa !31
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 89 ; 2 uses
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !30
  %i.nh = zext i8 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq2, i64 %i.nh
  %i.nj = load i16, ptr %i.ni, align 4, !tbaa !39
  %i.nk = uitofp i16 %i.nj to double
  %i.nl = fpext nsz float %i.nd to double
  %i.nm = tail call nsz double @llvm.fmuladd.f64(double %i.nk, double 1.000000e-04, double %i.nl)
  %i.nn = fptrunc nsz double %i.nm to float       ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.nn, ptr %i.no, align 4, !tbaa !31
  %i.np = load i8, ptr %i.nf, align 1, !tbaa !30
  %i.nq = zext i8 %i.np to i64
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq2, i64 %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nt = load i16, ptr %i.ns, align 2, !tbaa !39
  %i.nu = uitofp i16 %i.nt to double
  %i.nv = fpext nsz float %i.nn to double
  %i.nw = tail call nsz double @llvm.fmuladd.f64(double %i.nu, double 1.000000e-04, double %i.nv)
  %i.nx = fptrunc nsz double %i.nw to float       ; 5 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.nx, ptr %i.ny, align 4, !tbaa !31
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 90 ; 2 uses
  %i.oa = load i8, ptr %i.nz, align 2, !tbaa !30
  %i.ob = zext i8 %i.oa to i64
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq3, i64 %i.ob
  %i.od = load i16, ptr %i.oc, align 4, !tbaa !39
  %i.oe = uitofp i16 %i.od to double
  %i.of = fpext nsz float %i.nx to double
  %i.og = tail call nsz double @llvm.fmuladd.f64(double %i.oe, double 1.000000e-04, double %i.of)
  %i.oh = fptrunc nsz double %i.og to float       ; 6 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.oh, ptr %i.oi, align 4, !tbaa !31
  %i.oj = load i8, ptr %i.nz, align 2, !tbaa !30
  %i.ok = zext i8 %i.oj to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq3, i64 %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 2
  %i.on = load i16, ptr %i.om, align 2, !tbaa !39
  %i.oo = uitofp i16 %i.on to double
  %i.op = fpext nsz float %i.oh to double
  %i.oq = tail call nsz double @llvm.fmuladd.f64(double %i.oo, double 1.000000e-04, double %i.op)
  %i.or = fptrunc nsz double %i.oq to float       ; 6 uses
  %i.os = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float %i.or, ptr %i.os, align 4, !tbaa !31
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 91 ; 2 uses
  %i.ou = load i8, ptr %i.ot, align 1, !tbaa !30
  %i.ov = zext i8 %i.ou to i64
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq4, i64 %i.ov
  %i.ox = load i16, ptr %i.ow, align 4, !tbaa !39
  %i.oy = uitofp i16 %i.ox to double
  %i.oz = fpext nsz float %i.or to double
  %i.pa = tail call nsz double @llvm.fmuladd.f64(double %i.oy, double 1.000000e-04, double %i.oz)
  %i.pb = fptrunc nsz double %i.pa to float       ; 5 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.pb, ptr %i.pc, align 4, !tbaa !31
  %i.pd = load i8, ptr %i.ot, align 1, !tbaa !30
  %i.pe = zext i8 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq4, i64 %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 2
  %i.ph = load i16, ptr %i.pg, align 2, !tbaa !39
  %i.pi = uitofp i16 %i.ph to double
  %i.pj = fpext nsz float %i.pb to double
  %i.pk = tail call nsz double @llvm.fmuladd.f64(double %i.pi, double 1.000000e-04, double %i.pj)
  %i.pl = fptrunc nsz double %i.pk to float       ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 28
  store float %i.pl, ptr %i.pm, align 4, !tbaa !31
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.po = load i8, ptr %i.pn, align 4, !tbaa !30
  %i.pp = zext i8 %i.po to i64
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq5, i64 %i.pp
  %i.pr = load i16, ptr %i.pq, align 4, !tbaa !39
  %i.ps = uitofp i16 %i.pr to double
  %i.pt = fpext nsz float %i.pl to double
  %i.pu = tail call nsz double @llvm.fmuladd.f64(double %i.ps, double 1.000000e-04, double %i.pt)
  %i.pv = fptrunc nsz double %i.pu to float       ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.pv, ptr %i.pw, align 4, !tbaa !31
  %i.px = load i8, ptr %i.pn, align 4, !tbaa !30
  %i.py = zext i8 %i.px to i64
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr @qcelp_lspvq5, i64 %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 2
  %i.qb = load i16, ptr %i.qa, align 2, !tbaa !39
  %i.qc = uitofp i16 %i.qb to double
  %i.qd = fpext nsz float %i.pv to double
  %i.qe = tail call nsz double @llvm.fmuladd.f64(double %i.qc, double 1.000000e-04, double %i.qd)
  %i.qf = fptrunc nsz double %i.qe to float       ; 4 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %1, i64 36
  store float %i.qf, ptr %i.qg, align 4, !tbaa !31
  %i.qh = icmp eq i32 %i.b, 2
  %i.qi = fpext nsz float %i.qf to double         ; 4 uses
  br i1 %i.qh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.qj = fcmp nsz ugt double %i.qi, f0x3FE6666666666666
  %i.qk = fcmp nsz ult double %i.qi, f0x3FEF0A3D70A3D70A
  %or.cond = and i1 %i.qj, %i.qk
  br i1 %or.cond, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.ql = fsub nsz float %i.nx, %i.nd
  %i.qm = tail call nsz float @llvm.fabs.f32(float %i.ql)
  %i.qn = fpext float %i.qm to double
  %i.qo = fcmp nsz olt double %i.qn, 8.000000e-02
  br i1 %i.qo, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.qp = fsub nsz float %i.oh, %i.nn
  %i.qq = tail call nsz float @llvm.fabs.f32(float %i.qp)
  %i.qr = fpext float %i.qq to double
  %i.qs = fcmp nsz olt double %i.qr, 8.000000e-02
  br i1 %i.qs, label %.loopexit, label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1
  %i.qt = fsub nsz float %i.or, %i.nx
  %i.qu = tail call nsz float @llvm.fabs.f32(float %i.qt)
  %i.qv = fpext float %i.qu to double
  %i.qw = fcmp nsz olt double %i.qv, 8.000000e-02
  br i1 %i.qw, label %.loopexit, label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2
  %i.qx = fsub nsz float %i.pb, %i.oh
  %i.qy = tail call nsz float @llvm.fabs.f32(float %i.qx)
  %i.qz = fpext float %i.qy to double
  %i.ra = fcmp nsz olt double %i.qz, 8.000000e-02
  br i1 %i.ra, label %.loopexit, label %.preheader.4

.preheader.4:                                     ; preds = %.preheader.3
  %i.rb = fsub nsz float %i.pl, %i.or
  %i.rc = tail call nsz float @llvm.fabs.f32(float %i.rb)
  %i.rd = fpext float %i.rc to double
  %i.re = fcmp nsz olt double %i.rd, 8.000000e-02
  br i1 %i.re, label %.loopexit, label %.preheader.5

.preheader.5:                                     ; preds = %.preheader.4
  %i.rf = fsub nsz float %i.pv, %i.pb
  %i.rg = tail call nsz float @llvm.fabs.f32(float %i.rf)
  %i.rh = fpext float %i.rg to double
  %i.ri = fcmp nsz olt double %i.rh, 8.000000e-02
  br i1 %i.ri, label %.loopexit, label %.preheader.6

.preheader.6:                                     ; preds = %.preheader.5
  %i.rj = fsub nsz float %i.qf, %i.pl
  %i.rk = tail call nsz float @llvm.fabs.f32(float %i.rj)
  %i.rl = fpext float %i.rk to double
  %i.rm = fcmp nsz olt double %i.rl, 8.000000e-02
  %spec.select = sext i1 %i.rm to i32
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.rn = fcmp nsz ugt double %i.qi, 6.600000e-01
  %i.ro = fcmp nsz ult double %i.qi, f0x3FEF851EB851EB85
  %or.cond118 = and i1 %i.rn, %i.ro
  br i1 %or.cond118, label %.preheader119.preheader, label %.loopexit

.preheader119.preheader:                          ; preds = %bb.f
  %i.rp = load float, ptr %1, align 4, !tbaa !31
  %i.rq = fsub nsz float %i.oh, %i.rp
  %i.rr = tail call nsz float @llvm.fabs.f32(float %i.rq)
  %i.rs = fpext float %i.rr to double
  %i.rt = fcmp nsz olt double %i.rs, 9.310000e-02
  br i1 %i.rt, label %.loopexit, label %.preheader119.1

.preheader119.1:                                  ; preds = %.preheader119.preheader
  %i.ru = fsub nsz float %i.or, %i.nd
  %i.rv = tail call nsz float @llvm.fabs.f32(float %i.ru)
  %i.rw = fpext float %i.rv to double
  %i.rx = fcmp nsz olt double %i.rw, 9.310000e-02
  br i1 %i.rx, label %.loopexit, label %.preheader119.2

.preheader119.2:                                  ; preds = %.preheader119.1
  %i.ry = fsub nsz float %i.pb, %i.nn
  %i.rz = tail call nsz float @llvm.fabs.f32(float %i.ry)
  %i.sa = fpext float %i.rz to double
  %i.sb = fcmp nsz olt double %i.sa, 9.310000e-02
  br i1 %i.sb, label %.loopexit, label %.preheader119.3

.preheader119.3:                                  ; preds = %.preheader119.2
  %i.sc = fsub nsz float %i.pl, %i.nx
  %i.sd = tail call nsz float @llvm.fabs.f32(float %i.sc)
  %i.se = fpext float %i.sd to double
end_hunk_1
begin_hunk_2_@apply_pitch_filters:bb.a
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !30
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 78
  %i.ah = load i8, ptr %i.ag, align 2, !tbaa !30  ; 2 uses
  %.not.2 = icmp eq i8 %i.ah, 0
  br i1 %.not.2, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 86
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !30
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nuw nsw i32 %i.ak, 1
  %i.am = uitofp nneg i32 %i.al to float
  %i.an = fmul nnan nsz float %i.am, 2.500000e-01
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ao = phi float [ %i.an, %bb.i ], [ 0.000000e+00, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4032
  store float %i.ao, ptr %i.ap, align 8, !tbaa !31
  %i.aq = add i8 %i.ah, 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4042
  store i8 %i.aq, ptr %i.ar, align 2, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 79
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30  ; 2 uses
  %.not.3 = icmp eq i8 %i.at, 0
  br i1 %.not.3, label %.loopexit.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 87
  %i.av = load i8, ptr %i.au, align 1, !tbaa !30
  %i.aw = zext i8 %i.av to i32
  %i.ax = add nuw nsw i32 %i.aw, 1
  %i.ay = uitofp nneg i32 %i.ax to float
  %i.az = fmul nnan nsz float %i.ay, 2.500000e-01
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.k, %bb.j
  %i.ba = phi float [ %i.az, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4036
  store float %i.ba, ptr %i.bb, align 4, !tbaa !31
  %i.bc = add i8 %i.at, 16
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4043
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !30
  br label %.loopexit

bb.l:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !40  ; 2 uses
  %i.bg = icmp ult i8 %i.bf, 3
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bh = zext nneg i8 %i.bf to i32
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = sitofp nsz i32 %i.bi to double
  %i.bk = tail call nsz double @llvm.fmuladd.f64(double %i.bj, double -3.000000e-01, double 9.000000e-01)
  %i.bl = fptrunc nsz double %i.bk to float
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %bb.l, %bb.m
  %.0 = phi nsz float [ %i.bl, %bb.m ], [ 0.000000e+00, %bb.l ], [ 1.000000e+00, %bb.d ]
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4024 ; 2 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 8, !tbaa !31 ; 2 uses
  %i.bo = insertelement <4 x float> poison, float %.0, i64 0
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bq = fcmp nsz ogt <4 x float> %i.bn, %i.bp
  %i.br = select <4 x i1> %i.bq, <4 x float> %i.bp, <4 x float> %i.bn
  store <4 x float> %i.br, ptr %i.bm, align 8, !tbaa !31
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 0, ptr %i.bs, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 4024 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4040 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bx = tail call fastcc ptr @do_pitchfilter(ptr noundef nonnull %i.bt, ptr noundef %1, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw) ; 6 uses
  %i.by = load <4 x float>, ptr %i.bu, align 8, !tbaa !31 ; 2 uses
  %i.bz = fcmp nsz ogt <4 x float> %i.by, splat (float 1.000000e+00)
  %i.ca = fmul nsz <4 x float> %i.by, splat (float 5.000000e-01)
  %i.cb = select <4 x i1> %i.bz, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ca
  store <4 x float> %i.cb, ptr %i.bu, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1396
  %i.cd = tail call fastcc ptr @do_pitchfilter(ptr noundef nonnull %i.cc, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw) ; 4 uses
  %i.ce = tail call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bx, i32 noundef 40) #8
  tail call void @ff_scale_vector_to_given_sum_of_squares(ptr noundef %1, ptr noundef nonnull %i.cd, float noundef %i.ce, i32 noundef 40) #8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 160 ; 2 uses
  %i.cg = tail call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.cf, ptr noundef nonnull %i.cf, i32 noundef 40) #8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 160
  tail call void @ff_scale_vector_to_given_sum_of_squares(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, float noundef %i.cg, i32 noundef 40) #8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 320 ; 2 uses
  %i.ck = tail call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.cj, i32 noundef 40) #8
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 320
  tail call void @ff_scale_vector_to_given_sum_of_squares(ptr noundef nonnull %i.cl, ptr noundef nonnull %i.cm, float noundef %i.ck, i32 noundef 40) #8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 480 ; 2 uses
  %i.co = tail call nsz float @ff_scalarproduct_float_c(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.cn, i32 noundef 40) #8
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cd, i64 480
  tail call void @ff_scale_vector_to_given_sum_of_squares(ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cq, float noundef %i.co, i32 noundef 40) #8
  br label %bb.p

bb.o:                                             ; preds = %bb.c, %bb.b
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(572) %i.cr, ptr noundef nonnull align 4 dereferenceable(572) %i.cs, i64 572, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1396
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(572) %i.ct, ptr noundef nonnull align 4 dereferenceable(572) %i.cs, i64 572, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 4024
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cu, i8 0, i64 20, i1 false)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit
  ret void
}

declare void @ff_celp_lp_synthesis_filterf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @ff_weighted_vector_sumf(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc nonnull ptr @do_pitchfilter(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 4 uses
  %i.b = load float, ptr %2, align 4, !tbaa !31
  %i.c = fcmp nsz une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %3, align 1, !tbaa !30
  %i.e = zext i8 %i.d to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.loopexit
  %.149 = phi ptr [ %i.a, %bb.b ], [ %i.ak, %.loopexit ] ; 7 uses
  %.03948 = phi ptr [ %i.g, %bb.b ], [ %i.aj, %.loopexit ] ; 9 uses
  %.143.idx47 = phi i64 [ 0, %bb.b ], [ %.143.add, %.loopexit ] ; 3 uses
  %.143.ptr50 = getelementptr inbounds nuw i8, ptr %1, i64 %.143.idx47
  %i.h = load i8, ptr %4, align 1, !tbaa !30
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.d, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.c
  store float 0.000000e+00, ptr %.149, align 4, !tbaa !31
  %i.i = getelementptr i8, ptr %.03948, i64 -16
  %i.j = load float, ptr %i.i, align 4, !tbaa !31
  %i.k = getelementptr i8, ptr %.03948, i64 12
  %i.l = load float, ptr %i.k, align 4, !tbaa !31
  %i.m = fadd nsz float %i.j, %i.l
  %i.n = fmul nsz float %i.m, -6.822000e-03       ; 2 uses
  store float %i.n, ptr %.149, align 4, !tbaa !31
  %i.o = getelementptr i8, ptr %.03948, i64 4
  %i.p = getelementptr i8, ptr %.03948, i64 -12
  %i.q = load float, ptr %i.p, align 4, !tbaa !31
  %i.r = getelementptr i8, ptr %.03948, i64 8
  %i.s = load float, ptr %i.r, align 4, !tbaa !31
  %i.t = fadd nsz float %i.q, %i.s
  %i.u = tail call nsz float @llvm.fmuladd.f32(float %i.t, float 4.124900e-02, float %i.n) ; 2 uses
  store float %i.u, ptr %.149, align 4, !tbaa !31
  %i.v = getelementptr i8, ptr %.03948, i64 -8
  %i.w = load float, ptr %i.v, align 4, !tbaa !31
  %i.x = load float, ptr %i.o, align 4, !tbaa !31
  %i.y = fadd nsz float %i.w, %i.x
  %i.z = tail call nsz float @llvm.fmuladd.f32(float %i.y, float -1.434590e-01, float %i.u) ; 2 uses
  store float %i.z, ptr %.149, align 4, !tbaa !31
  %i.aa = getelementptr i8, ptr %.03948, i64 -4
  %i.ab = load <2 x float>, ptr %i.aa, align 4, !tbaa !31
  %i.ac = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ab)
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.ac, float 5.888630e-01, float %i.z)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ae = load float, ptr %.03948, align 4, !tbaa !31
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d
  %i.af = phi float [ %i.ad, %.loopexit.loopexit ], [ %i.ae, %bb.d ] ; 2 uses
  store float %i.af, ptr %.149, align 4, !tbaa !31
  %i.ag = load float, ptr %.143.ptr50, align 4, !tbaa !31
  %i.ah = load float, ptr %2, align 4, !tbaa !31
  %i.ai = tail call nsz float @llvm.fmuladd.f32(float %i.ah, float %i.af, float %i.ag)
  store float %i.ai, ptr %.149, align 4, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %.03948, i64 4
  %i.ak = getelementptr inbounds nuw i8, ptr %.149, i64 4 ; 2 uses
  %.143.add = add nuw nsw i64 %.143.idx47, 4
  %i.al = icmp samesign ult i64 %.143.idx47, 156
  br i1 %i.al, label %bb.c, label %.loopexit45, !llvm.loop !81

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.a, ptr noundef nonnull align 4 dereferenceable(160) %1, i64 160, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 732
  br label %.loopexit45

.loopexit45:                                      ; preds = %.loopexit, %bb.e
  %.2 = phi ptr [ %i.am, %bb.e ], [ %i.ak, %.loopexit ] ; 3 uses
  %.244 = getelementptr i8, ptr %1, i64 160       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !31
  %i.ap = fcmp nsz une float %i.ao, 0.000000e+00
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.2, ptr noundef nonnull align 4 dereferenceable(160) %.244, i64 160, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.2, i64 160
  br label %.loopexit45.1

bb.g:                                             ; preds = %.loopexit45
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 732
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !30
  %i.au = zext i8 %i.at to i64
  %i.av = sub nsw i64 0, %i.au
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 1
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.1, %bb.g
  %.149.1 = phi ptr [ %.2, %bb.g ], [ %i.ca, %.loopexit.1 ] ; 7 uses
  %.03948.1 = phi ptr [ %i.aw, %bb.g ], [ %i.bz, %.loopexit.1 ] ; 9 uses
  %.143.idx47.1 = phi i64 [ 0, %bb.g ], [ %.143.add.1, %.loopexit.1 ] ; 3 uses
  %.143.ptr50.1 = getelementptr inbounds nuw i8, ptr %.244, i64 %.143.idx47.1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !30
  %.not.1 = icmp eq i8 %i.ay, 0
  br i1 %.not.1, label %bb.i, label %.loopexit.loopexit.1

.loopexit.loopexit.1:                             ; preds = %bb.h
  store float 0.000000e+00, ptr %.149.1, align 4, !tbaa !31
  %i.az = getelementptr i8, ptr %.03948.1, i64 -16
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31
  %i.bb = getelementptr i8, ptr %.03948.1, i64 12
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !31
  %i.bd = fadd nsz float %i.ba, %i.bc
  %i.be = fmul nsz float %i.bd, -6.822000e-03     ; 2 uses
  store float %i.be, ptr %.149.1, align 4, !tbaa !31
  %i.bf = getelementptr i8, ptr %.03948.1, i64 4
  %i.bg = getelementptr i8, ptr %.03948.1, i64 -12
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !31
  %i.bi = getelementptr i8, ptr %.03948.1, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !31
  %i.bk = fadd nsz float %i.bh, %i.bj
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float 4.124900e-02, float %i.be) ; 2 uses
  store float %i.bl, ptr %.149.1, align 4, !tbaa !31
  %i.bm = getelementptr i8, ptr %.03948.1, i64 -8
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !31
  %i.bo = load float, ptr %i.bf, align 4, !tbaa !31
  %i.bp = fadd nsz float %i.bn, %i.bo
  %i.bq = tail call nsz float @llvm.fmuladd.f32(float %i.bp, float -1.434590e-01, float %i.bl) ; 2 uses
  store float %i.bq, ptr %.149.1, align 4, !tbaa !31
  %i.br = getelementptr i8, ptr %.03948.1, i64 -4
  %i.bs = load <2 x float>, ptr %i.br, align 4, !tbaa !31
  %i.bt = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.bs)
  %i.bu = tail call nsz float @llvm.fmuladd.f32(float %i.bt, float 5.888630e-01, float %i.bq)
  br label %.loopexit.1

bb.i:                                             ; preds = %bb.h
  %i.bv = load float, ptr %.03948.1, align 4, !tbaa !31
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %bb.i, %.loopexit.loopexit.1
  %storemerge = phi float [ %i.bu, %.loopexit.loopexit.1 ], [ %i.bv, %bb.i ] ; 2 uses
  store float %storemerge, ptr %.149.1, align 4, !tbaa !31
  %i.bw = load float, ptr %.143.ptr50.1, align 4, !tbaa !31
  %i.bx = load float, ptr %i.an, align 4, !tbaa !31
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %i.bx, float %storemerge, float %i.bw)
  store float %i.by, ptr %.149.1, align 4, !tbaa !31
  %i.bz = getelementptr inbounds nuw i8, ptr %.03948.1, i64 4
  %i.ca = getelementptr inbounds nuw i8, ptr %.149.1, i64 4 ; 2 uses
  %.143.add.1 = add nuw nsw i64 %.143.idx47.1, 4
  %i.cb = icmp samesign ult i64 %.143.idx47.1, 156
  br i1 %i.cb, label %bb.h, label %.loopexit45.1, !llvm.loop !81

.loopexit45.1:                                    ; preds = %.loopexit.1, %bb.f
  %.2.1 = phi ptr [ %i.aq, %bb.f ], [ %i.ca, %.loopexit.1 ] ; 3 uses
  %.244.1 = getelementptr i8, ptr %1, i64 320     ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !31
  %i.ce = fcmp nsz une float %i.cd, 0.000000e+00
  br i1 %i.ce, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit45.1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.2.1, ptr noundef nonnull align 4 dereferenceable(160) %.244.1, i64 160, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.1, i64 160
  br label %.loopexit45.2

bb.k:                                             ; preds = %.loopexit45.1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !30
  %i.cj = zext i8 %i.ci to i64
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 2
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.2, %bb.k
  %.149.2 = phi ptr [ %.2.1, %bb.k ], [ %i.dp, %.loopexit.2 ] ; 7 uses
  %.03948.2 = phi ptr [ %i.cl, %bb.k ], [ %i.do, %.loopexit.2 ] ; 9 uses
  %.143.idx47.2 = phi i64 [ 0, %bb.k ], [ %.143.add.2, %.loopexit.2 ] ; 3 uses
  %.143.ptr50.2 = getelementptr inbounds nuw i8, ptr %.244.1, i64 %.143.idx47.2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !30
  %.not.2 = icmp eq i8 %i.cn, 0
  br i1 %.not.2, label %bb.m, label %.loopexit.loopexit.2

.loopexit.loopexit.2:                             ; preds = %bb.l
  store float 0.000000e+00, ptr %.149.2, align 4, !tbaa !31
  %i.co = getelementptr i8, ptr %.03948.2, i64 -16
  %i.cp = load float, ptr %i.co, align 4, !tbaa !31
  %i.cq = getelementptr i8, ptr %.03948.2, i64 12
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !31
  %i.cs = fadd nsz float %i.cp, %i.cr
  %i.ct = fmul nsz float %i.cs, -6.822000e-03     ; 2 uses
  store float %i.ct, ptr %.149.2, align 4, !tbaa !31
  %i.cu = getelementptr i8, ptr %.03948.2, i64 4
  %i.cv = getelementptr i8, ptr %.03948.2, i64 -12
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !31
  %i.cx = getelementptr i8, ptr %.03948.2, i64 8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !31
  %i.cz = fadd nsz float %i.cw, %i.cy
  %i.da = tail call nsz float @llvm.fmuladd.f32(float %i.cz, float 4.124900e-02, float %i.ct) ; 2 uses
  store float %i.da, ptr %.149.2, align 4, !tbaa !31
  %i.db = getelementptr i8, ptr %.03948.2, i64 -8
  %i.dc = load float, ptr %i.db, align 4, !tbaa !31
  %i.dd = load float, ptr %i.cu, align 4, !tbaa !31
  %i.de = fadd nsz float %i.dc, %i.dd
  %i.df = tail call nsz float @llvm.fmuladd.f32(float %i.de, float -1.434590e-01, float %i.da) ; 2 uses
  store float %i.df, ptr %.149.2, align 4, !tbaa !31
  %i.dg = getelementptr i8, ptr %.03948.2, i64 -4
  %i.dh = load <2 x float>, ptr %i.dg, align 4, !tbaa !31
  %i.di = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.dh)
  %i.dj = tail call nsz float @llvm.fmuladd.f32(float %i.di, float 5.888630e-01, float %i.df)
  br label %.loopexit.2

bb.m:                                             ; preds = %bb.l
  %i.dk = load float, ptr %.03948.2, align 4, !tbaa !31
  br label %.loopexit.2

.loopexit.2:                                      ; preds = %bb.m, %.loopexit.loopexit.2
  %storemerge56 = phi float [ %i.dj, %.loopexit.loopexit.2 ], [ %i.dk, %bb.m ] ; 2 uses
  store float %storemerge56, ptr %.149.2, align 4, !tbaa !31
  %i.dl = load float, ptr %.143.ptr50.2, align 4, !tbaa !31
  %i.dm = load float, ptr %i.cc, align 4, !tbaa !31
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %i.dm, float %storemerge56, float %i.dl)
  store float %i.dn, ptr %.149.2, align 4, !tbaa !31
  %i.do = getelementptr inbounds nuw i8, ptr %.03948.2, i64 4
  %i.dp = getelementptr inbounds nuw i8, ptr %.149.2, i64 4 ; 2 uses
  %.143.add.2 = add nuw nsw i64 %.143.idx47.2, 4
  %i.dq = icmp samesign ult i64 %.143.idx47.2, 156
  br i1 %i.dq, label %bb.l, label %.loopexit45.2, !llvm.loop !81

.loopexit45.2:                                    ; preds = %.loopexit.2, %bb.j
  %.2.2 = phi ptr [ %i.cf, %bb.j ], [ %i.dp, %.loopexit.2 ] ; 2 uses
  %.244.2 = getelementptr i8, ptr %1, i64 480     ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !31
  %i.dt = fcmp nsz une float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit45.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.2.2, ptr noundef nonnull align 4 dereferenceable(160) %.244.2, i64 160, i1 false)
  br label %.loopexit45.3

bb.o:                                             ; preds = %.loopexit45.2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 3
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !30
  %i.dx = zext i8 %i.dw to i64
  %i.dy = sub nsw i64 0, %i.dx
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 3
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.3, %bb.o
  %.149.3 = phi ptr [ %.2.2, %bb.o ], [ %i.fd, %.loopexit.3 ] ; 7 uses
  %.03948.3 = phi ptr [ %i.dz, %bb.o ], [ %i.fc, %.loopexit.3 ] ; 9 uses
  %.143.idx47.3 = phi i64 [ 0, %bb.o ], [ %.143.add.3, %.loopexit.3 ] ; 3 uses
  %.143.ptr50.3 = getelementptr inbounds nuw i8, ptr %.244.2, i64 %.143.idx47.3
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !30
  %.not.3 = icmp eq i8 %i.eb, 0
  br i1 %.not.3, label %bb.q, label %.loopexit.loopexit.3

.loopexit.loopexit.3:                             ; preds = %bb.p
  store float 0.000000e+00, ptr %.149.3, align 4, !tbaa !31
  %i.ec = getelementptr i8, ptr %.03948.3, i64 -16
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !31
  %i.ee = getelementptr i8, ptr %.03948.3, i64 12
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !31
  %i.eg = fadd nsz float %i.ed, %i.ef
  %i.eh = fmul nsz float %i.eg, -6.822000e-03     ; 2 uses
  store float %i.eh, ptr %.149.3, align 4, !tbaa !31
  %i.ei = getelementptr i8, ptr %.03948.3, i64 4
  %i.ej = getelementptr i8, ptr %.03948.3, i64 -12
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !31
  %i.el = getelementptr i8, ptr %.03948.3, i64 8
  %i.em = load float, ptr %i.el, align 4, !tbaa !31
  %i.en = fadd nsz float %i.ek, %i.em
  %i.eo = tail call nsz float @llvm.fmuladd.f32(float %i.en, float 4.124900e-02, float %i.eh) ; 2 uses
  store float %i.eo, ptr %.149.3, align 4, !tbaa !31
  %i.ep = getelementptr i8, ptr %.03948.3, i64 -8
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !31
  %i.er = load float, ptr %i.ei, align 4, !tbaa !31
  %i.es = fadd nsz float %i.eq, %i.er
  %i.et = tail call nsz float @llvm.fmuladd.f32(float %i.es, float -1.434590e-01, float %i.eo) ; 2 uses
  store float %i.et, ptr %.149.3, align 4, !tbaa !31
  %i.eu = getelementptr i8, ptr %.03948.3, i64 -4
  %i.ev = load <2 x float>, ptr %i.eu, align 4, !tbaa !31
  %i.ew = tail call reassoc nsz float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.ev)
  %i.ex = tail call nsz float @llvm.fmuladd.f32(float %i.ew, float 5.888630e-01, float %i.et)
  br label %.loopexit.3

bb.q:                                             ; preds = %bb.p
  %i.ey = load float, ptr %.03948.3, align 4, !tbaa !31
  br label %.loopexit.3

.loopexit.3:                                      ; preds = %bb.q, %.loopexit.loopexit.3
  %storemerge57 = phi float [ %i.ex, %.loopexit.loopexit.3 ], [ %i.ey, %bb.q ] ; 2 uses
  store float %storemerge57, ptr %.149.3, align 4, !tbaa !31
  %i.ez = load float, ptr %.143.ptr50.3, align 4, !tbaa !31
  %i.fa = load float, ptr %i.dr, align 4, !tbaa !31
  %i.fb = tail call nsz float @llvm.fmuladd.f32(float %i.fa, float %storemerge57, float %i.ez)
  store float %i.fb, ptr %.149.3, align 4, !tbaa !31
  %i.fc = getelementptr inbounds nuw i8, ptr %.03948.3, i64 4
  %i.fd = getelementptr inbounds nuw i8, ptr %.149.3, i64 4
  %.143.add.3 = add nuw nsw i64 %.143.idx47.3, 4
  %i.fe = icmp samesign ult i64 %.143.idx47.3, 156
  br i1 %i.fe, label %bb.p, label %.loopexit45.3, !llvm.loop !81

.loopexit45.3:                                    ; preds = %.loopexit.3, %bb.n
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 640
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(572) %0, ptr noundef nonnull align 4 dereferenceable(572) %i.ff, i64 572, i1 false)
  ret ptr %i.a
}

declare float @ff_scalarproduct_float_c(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_scale_vector_to_given_sum_of_squares(ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @lspf2lpc(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [10 x double], align 16           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = load <2 x float>, ptr %0, align 4, !tbaa !31
  %i.c = fpext nsz <2 x float> %i.b to <2 x double>
  %i.d = fmul nsz <2 x double> %i.c, splat (double f0x400921FB54442D18)
  %i.e = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.d)
  store <2 x double> %i.e, ptr %i.a, align 16, !tbaa !83
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !31
  %i.i = fpext nsz <2 x float> %i.h to <2 x double>
  %i.j = fmul nsz <2 x double> %i.i, splat (double f0x400921FB54442D18)
  %i.k = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.j)
  store <2 x double> %i.k, ptr %i.g, align 16, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.n = load <2 x float>, ptr %i.l, align 4, !tbaa !31
  %i.o = fpext nsz <2 x float> %i.n to <2 x double>
  %i.p = fmul nsz <2 x double> %i.o, splat (double f0x400921FB54442D18)
  %i.q = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.p)
  store <2 x double> %i.q, ptr %i.m, align 16, !tbaa !83
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.t = load <2 x float>, ptr %i.r, align 4, !tbaa !31
  %i.u = fpext nsz <2 x float> %i.t to <2 x double>
  %i.v = fmul nsz <2 x double> %i.u, splat (double f0x400921FB54442D18)
  %i.w = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.v)
  store <2 x double> %i.w, ptr %i.s, align 16, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.z = load <2 x float>, ptr %i.x, align 4, !tbaa !31
  %i.aa = fpext nsz <2 x float> %i.z to <2 x double>
  %i.ab = fmul nsz <2 x double> %i.aa, splat (double f0x400921FB54442D18)
  %i.ac = tail call nsz <2 x double> @llvm.cos.v2f64(<2 x double> %i.ab)
  store <2 x double> %i.ac, ptr %i.y, align 16, !tbaa !83
  call void @ff_acelp_lspd2lpc(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i32 noundef 5) #8
  %i.ad = load <4 x float>, ptr %1, align 4, !tbaa !31
  %i.ae = fpext nsz <4 x float> %i.ad to <4 x double>
  %i.af = fmul nsz <4 x double> %i.ae, <double f0x3FEFA027525460AA, double f0x3FEF416DB8EB1892, double f0x3FEEE3CFD7E823FB, double f0x3FEE874A5D7EF29C>
  %i.ag = fptrunc nsz <4 x double> %i.af to <4 x float>
  store <4 x float> %i.ag, ptr %1, align 4, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ai = load <4 x float>, ptr %i.ah, align 4, !tbaa !31
  %i.aj = fpext nsz <4 x float> %i.ai to <4 x double>
  %i.ak = fmul nsz <4 x double> %i.aj, <double f0x3FEE2BDA01D445A2, double f0x3FEDD17B86E067F1, double f0x3FED782BB851BF9B, double f0x3FED1FE76B6FB780>
  %i.al = fptrunc nsz <4 x double> %i.ak to <4 x float>
  store <4 x float> %i.al, ptr %i.ah, align 4, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.an = load <2 x float>, ptr %i.am, align 4, !tbaa !31
  %i.ao = fpext nsz <2 x float> %i.an to <2 x double>
  %i.ap = fmul nsz <2 x double> %i.ao, <double f0x3FECC8AB7EFE0007, double f0x3FEC7274DB2025F7>
  %i.aq = fptrunc nsz <2 x double> %i.ap to <2 x float>
  store <2 x float> %i.aq, ptr %i.am, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @ff_acelp_lspd2lpc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_celp_lp_zero_synthesis_filterf(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_tilt_compensation(ptr noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ff_adaptive_gain_control(ptr noundef, ptr noundef, float noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.cos.v2f64(<2 x double>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!6, !6, i64 0}
!30 = !{!5, !5, i64 0}
!31 = !{!16, !16, i64 0}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!"GetBitContext", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!34 = !{!"QCELPFrame", !5, i64 0, !5, i64 16, !5, i64 32, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 70}
!35 = !{!"short", !5, i64 0}
!36 = !{!"QCELPContext", !33, i64 0, !6, i64 24, !34, i64 28, !5, i64 99, !5, i64 100, !5, i64 104, !5, i64 144, !5, i64 184, !5, i64 1396, !5, i64 2608, !5, i64 3328, !16, i64 4008, !5, i64 4012, !6, i64 4020, !5, i64 4024, !5, i64 4040, !35, i64 4044, !5, i64 4046, !5, i64 4048, !16, i64 4088, !16, i64 4092}
!37 = !{!36, !6, i64 24}
!38 = !{!36, !35, i64 4044}
!39 = !{!35, !35, i64 0}
!40 = !{!36, !5, i64 99}
!41 = !{!36, !6, i64 4020}
!42 = distinct !{!42, !32}
!43 = !{!9, !9, i64 0}
!44 = !{!27, !6, i64 344}
!45 = distinct !{!45, !32}
!46 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!47 = !{!46, !14, i64 24}
!48 = !{!46, !6, i64 32}
!49 = !{!"p2 omnipotent char", !25, i64 0}
!50 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!51 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!52 = !{!"AVFrame", !5, i64 0, !5, i64 64, !49, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !50, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !51, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!53 = !{!52, !6, i64 112}
!54 = !{!14, !14, i64 0}
!55 = !{!36, !5, i64 4046}
!56 = !{!27, !13, i64 824}
!57 = !{!"p1 _ZTS11QCELPBitmap", !9, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!33, !14, i64 0}
!60 = !{!33, !6, i64 12}
!61 = !{!33, !6, i64 16}
!62 = !{!33, !6, i64 8}
!63 = !{!"QCELPBitmap", !5, i64 0, !5, i64 1, !5, i64 2}
!64 = !{!63, !5, i64 2}
!65 = !{!63, !5, i64 1}
!66 = !{!63, !5, i64 0}
!67 = !{!36, !5, i64 98}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, i1 false, !"LVerDomain"}
!70 = distinct !{!70, !69}
!71 = distinct !{!71, !69}
!72 = !{!36, !16, i64 4008}
!73 = !{!70}
!74 = !{!71}
!75 = distinct !{!75, !32}
!76 = distinct !{!76, !32}
!77 = distinct !{!77, !32}
!78 = distinct !{!78, !32}
!79 = distinct !{!79, !32}
!80 = !{!36, !5, i64 100}
!81 = distinct !{!81, !32}
!82 = !{!"double", !5, i64 0}
!83 = !{!82, !82, i64 0}
end_hunk_2
