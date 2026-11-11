Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/adams?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL13adams_forward5PJ_LPP8PJconsts:bb.a
  %i.n = fcmp olt double %1, 0.000000e+00
  %i.o = select i1 %i.n, double -1.854070e+00, double 1.854070e+00
  %i.p = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.o, i64 0
  br label %.thread227

bb.f:                                             ; preds = %bb.d
  %i.q = tail call double @sin(double noundef %0) #9
  %i.r = tail call double @sin(double noundef %1) #9 ; 2 uses
  %i.s = tail call double @cos(double noundef %1) #9
  %i.t = load ptr, ptr %2, align 8, !tbaa !48
  %i.u = fneg double %i.r
  %i.v = insertelement <2 x double> poison, double %i.s, i64 0
  %i.w = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.x = insertelement <2 x double> poison, double %i.q, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = insertelement <2 x double> poison, double %i.u, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.r, i64 1
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.y, <2 x double> %i.aa)
  %i.ac = fmul <2 x double> %i.ab, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.ad = extractelement <2 x double> %i.ac, i64 0
  %i.ae = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.t, double noundef %i.ad)
  %i.af = load ptr, ptr %2, align 8, !tbaa !48
  %i.ag = extractelement <2 x double> %i.ac, i64 1
  %i.ah = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.af, double noundef %i.ag)
  %i.ai = fcmp olt double %0, 0.000000e+00
  %i.aj = fcmp olt double %1, 0.000000e+00
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !49 ; 2 uses
  %i.am = icmp eq i32 %i.al, 2
  %i.an = fcmp olt double %1, -1.000000e-09
  %or.cond11 = select i1 %i.am, i1 %i.an, i1 false
  br i1 %or.cond11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  %i.ap = load <2 x double>, ptr %4, align 16, !tbaa !53
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread227

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp eq i32 %i.al, 3
  %i.as = fcmp ogt double %1, -1.000000e-09
  %or.cond14 = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond14, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %5)
  %i.au = load <2 x double>, ptr %5, align 16, !tbaa !53
  %i.av = shufflevector <2 x double> %i.au, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.thread227

bb.k:                                             ; preds = %bb.i
  %i.aw = tail call double @sin(double noundef %0) #9 ; 3 uses
  %i.ax = tail call double @cos(double noundef %0) #9 ; 3 uses
  %i.ay = tail call double @cos(double noundef %1) #9 ; 2 uses
  %i.az = load ptr, ptr %2, align 8, !tbaa !48
  %i.ba = fadd double %i.aw, %i.ax
  %i.bb = fmul double %i.ay, %i.ba
  %i.bc = fmul double %i.bb, f0x3FE6A09E667F3BCD
  %i.bd = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.az, double noundef %i.bc)
  %i.be = load ptr, ptr %2, align 8, !tbaa !48
  %i.bf = fsub double %i.aw, %i.ax
  %i.bg = fmul double %i.ay, %i.bf
  %i.bh = fmul double %i.bg, f0x3FE6A09E667F3BCD
  %i.bi = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.be, double noundef %i.bh)
  %i.bj = fcmp olt double %i.aw, 0.000000e+00
  %i.bk = fcmp ogt double %i.ax, 0.000000e+00
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.bl = tail call double @sin(double noundef %1) #9 ; 2 uses
  %i.bm = tail call double @llvm.fabs.f64(double %0)
  %i.bn = fadd double %i.bm, -1.000000e-09
  %i.bo = fcmp ule double %i.bn, f0x3FF921FB54442D18
  br i1 %i.bo, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.bp = tail call double @cos(double noundef %1) #9
  %i.bq = tail call double @sin(double noundef %0) #9
  %i.br = fmul double %i.bp, %i.bq                ; 3 uses
  %i.bs = fadd double %i.bl, %i.br
  %i.bt = fcmp olt double %i.bs, 0.000000e+00
  %i.bu = fcmp olt double %i.bl, %i.br
  %i.bv = load ptr, ptr %2, align 8, !tbaa !48
  %i.bw = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.bv, double noundef %i.br)
  %i.bx = fsub double f0x3FF921FB54442D18, %1
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.by = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %6)
  %i.bz = load <2 x double>, ptr %6, align 16, !tbaa !53
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.thread227

bb.n:                                             ; preds = %bb.a
  %i.cb = fmul double %1, 5.000000e-01
  %i.cc = tail call double @tan(double noundef %i.cb) #9 ; 3 uses
  %i.cd = load ptr, ptr %2, align 8, !tbaa !48
  %i.ce = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.cd, double noundef %i.cc)
  %i.cf = tail call double @cos(double noundef %i.ce) #9
  %i.cg = fmul double %0, 5.000000e-01
  %i.ch = tail call double @sin(double noundef %i.cg) #9
  %i.ci = fmul double %i.cf, %i.ch                ; 2 uses
  %i.cj = load ptr, ptr %2, align 8, !tbaa !48
  %i.ck = fsub double %i.ci, %i.cc
  %i.cl = fmul double %i.ck, f0x3FE6A09E667F3BCD
  %i.cm = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.cj, double noundef %i.cl)
  %i.cn = load ptr, ptr %2, align 8, !tbaa !48
  %i.co = fadd double %i.cc, %i.ci
  %i.cp = fmul double %i.co, f0x3FE6A09E667F3BCD
  %i.cq = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.cn, double noundef %i.cp)
  %i.cr = fcmp olt double %0, 0.000000e+00
  %i.cs = fcmp olt double %1, 0.000000e+00
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.ct = fmul double %1, 5.000000e-01
  %i.cu = tail call double @tan(double noundef %i.ct) #9 ; 4 uses
  %i.cv = load ptr, ptr %2, align 8, !tbaa !48
  %i.cw = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.cv, double noundef %i.cu)
  %i.cx = tail call double @cos(double noundef %i.cw) #9
  %i.cy = fmul double %0, 5.000000e-01
  %i.cz = tail call double @sin(double noundef %i.cy) #9
  %i.da = fmul double %i.cx, %i.cz                ; 3 uses
  %i.db = fadd double %i.cu, %i.da
  %i.dc = fcmp olt double %i.db, 0.000000e+00
  %i.dd = fcmp olt double %i.cu, %i.da
  %i.de = load ptr, ptr %2, align 8, !tbaa !48
  %i.df = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.de, double noundef %i.cu)
  %i.dg = load ptr, ptr %2, align 8, !tbaa !48
  %i.dh = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.dg, double noundef %i.da)
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n, %bb.k, %bb.f, %bb.a
  %.1190 = phi i1 [ false, %bb.a ], [ %i.aj, %bb.f ], [ %i.bk, %bb.k ], [ %i.bu, %.thread ], [ %i.cs, %bb.n ], [ %i.dd, %bb.o ]
  %.1188 = phi i1 [ false, %bb.a ], [ %i.ai, %bb.f ], [ %i.bj, %bb.k ], [ %i.bt, %.thread ], [ %i.cr, %bb.n ], [ %i.dc, %bb.o ]
  %.1186 = phi double [ 0.000000e+00, %bb.a ], [ %i.ah, %bb.f ], [ %i.bi, %bb.k ], [ %i.bx, %.thread ], [ %i.cq, %bb.n ], [ %i.df, %bb.o ] ; 2 uses
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.ae, %bb.f ], [ %i.bd, %bb.k ], [ %i.bw, %.thread ], [ %i.cm, %bb.n ], [ %i.dh, %bb.o ] ; 2 uses
  %i.di = load ptr, ptr %2, align 8, !tbaa !48
  %i.dj = fadd double %.1186, %.1
  %i.dk = tail call double @cos(double noundef %i.dj) #9 ; 2 uses
  %i.dl = fcmp olt double %i.dk, 0.000000e+00
  %.sroa.speculated202 = select i1 %i.dl, double %i.dk, double 0.000000e+00
  %i.dm = fadd double %.sroa.speculated202, 1.000000e+00
  %i.dn = tail call double @sqrt(double noundef %i.dm) #9
  %i.do = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.di, double noundef %i.dn)
  %i.dp = insertelement <2 x i1> poison, i1 %.1190, i64 0
  %i.dq = insertelement <2 x i1> %i.dp, i1 %.1188, i64 1
  %i.dr = freeze <2 x i1> %i.dq
  %i.ds = load ptr, ptr %2, align 8, !tbaa !48
  %i.dt = fsub double %.1, %.1186
  %i.du = tail call double @cos(double noundef %i.dt) #9 ; 2 uses
  %i.dv = fcmp ogt double %i.du, 0.000000e+00
  %.sroa.speculated = select i1 %i.dv, double %i.du, double 0.000000e+00
  %i.dw = fsub double 1.000000e+00, %.sroa.speculated
  %i.dx = tail call double @llvm.fabs.f64(double %i.dw)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dx)
  %i.dy = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.ds, double noundef %sqrt)
  %i.dz = insertelement <2 x double> poison, double %i.dy, i64 0
  %i.ea = insertelement <2 x double> %i.dz, double %i.do, i64 1 ; 2 uses
  %i.eb = fneg <2 x double> %i.ea
  %i.ec = select <2 x i1> %i.dr, <2 x double> %i.eb, <2 x double> %i.ea ; 2 uses
  %i.ed = fmul <2 x double> %i.ec, splat (double f0x3FE45F306DC9C883) ; 2 uses
  %i.ee = fmul <2 x double> %i.ed, splat (double 2.000000e+00)
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ee, <2 x double> %i.ed, <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.eg = fmul <2 x double> %i.ef, splat (double 2.000000e+00) ; 7 uses
  %i.eh = fmul <2 x double> %i.eg, zeroinitializer
  %i.ei = fadd <2 x double> %i.eh, splat (double f0xBEACD0197C801E71) ; 2 uses
  %i.ej = fmul <2 x double> %i.eg, %i.ei
  %i.ek = fadd <2 x double> %i.ej, splat (double f0x3E8B3472B443B2B5) ; 2 uses
  %i.el = fneg <2 x double> %i.ei
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ek, <2 x double> %i.el)
  %i.en = fadd <2 x double> %i.em, splat (double f0x3F00687C061BD167) ; 2 uses
  %i.eo = fneg <2 x double> %i.ek
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.en, <2 x double> %i.eo)
  %i.eq = fadd <2 x double> %i.ep, splat (double f0x3F0BCED673156376) ; 2 uses
  %i.er = fneg <2 x double> %i.en
  %i.es = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.eq, <2 x double> %i.er)
  %i.et = fadd <2 x double> %i.es, splat (double f0xBF54FAA840E59820) ; 2 uses
  %i.eu = fneg <2 x double> %i.eq
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.et, <2 x double> %i.eu)
  %i.ew = fadd <2 x double> %i.ev, splat (double f0xBF779356F0180731) ; 2 uses
  %i.ex = fneg <2 x double> %i.et
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eg, <2 x double> %i.ew, <2 x double> %i.ex)
  %i.ez = fadd <2 x double> %i.ey, splat (double f0x3FB767522D0A0ABA)
  %i.fa = fneg <2 x double> %i.ew
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ef, <2 x double> %i.ez, <2 x double> %i.fa)
  %i.fc = fadd <2 x double> %i.fb, splat (double f0x3FF188B1F952BB44)
  %i.fd = fmul <2 x double> %i.ec, %i.fc          ; 7 uses
  %i.fe = load i32, ptr %i.b, align 8, !tbaa !46
  switch i32 %i.fe, label %.thread227 [
    i32 1, label %bb.q
    i32 2, label %bb.ae
    i32 4, label %bb.ae
  ]

bb.q:                                             ; preds = %bb.p
  %i.ff = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !49 ; 3 uses
  %i.fh = icmp eq i32 %i.fg, 0                    ; 2 uses
  br i1 %i.fh, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fi = icmp eq i32 %i.fg, 1
  %i.fj = fcmp olt double %1, 0.000000e+00
  %or.cond17 = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond17, label %bb.t, label %bb.v

bb.s:                                             ; preds = %bb.q
  %.old16 = fcmp olt double %1, 0.000000e+00
  br i1 %.old16, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.fk = fcmp olt double %0, f0xC002D97C7F3321D2
  %i.fl = fcmp olt double %0, f0xBFE921FB54442D18
  %i.fm = fcmp oge double %0, f0xC002D97C7F3321D2
  %or.cond = and i1 %i.fl, %i.fm
  %i.fn = insertelement <2 x double> poison, double %0, i64 0
  %i.fo = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fp = fcmp olt <2 x double> %i.fo, <double f0x3FE921FB54442D18, double f0x4002D97C7F3321D2>
  %i.fq = fcmp oge <2 x double> %i.fo, <double f0xBFE921FB54442D18, double f0x3FE921FB54442D18>
  %i.fr = fsub <2 x double> <double f0x400DAA4A35759E4B, double f0xC00DAA4A35759E4B>, %i.fd
  %i.fs = insertelement <2 x i1> poison, i1 %i.fk, i64 0
  %i.ft = insertelement <2 x i1> %i.fs, i1 %or.cond, i64 1
  %i.fu = select <2 x i1> %i.ft, <2 x double> %i.fr, <2 x double> %i.fd ; 2 uses
  %i.fv = and <2 x i1> %i.fp, %i.fq
  %i.fw = fsub <2 x double> <double f0xC00DAA4A35759E4B, double f0x400DAA4A35759E4B>, %i.fu
  %i.fx = select <2 x i1> %i.fv, <2 x double> %i.fw, <2 x double> %i.fu ; 3 uses
  %i.fy = fcmp ult double %0, f0x4002D97C7F3321D2
  br i1 %i.fy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fz = extractelement <2 x double> %i.fx, i64 0
  %i.ga = fsub double f0x400DAA4A35759E4B, %i.fz
  %i.gb = insertelement <2 x double> %i.fx, double %i.ga, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  %i.gc = phi <2 x double> [ %i.gb, %bb.u ], [ %i.fx, %bb.t ], [ %i.fd, %bb.s ], [ %i.fd, %bb.r ] ; 3 uses
  %i.gd = extractelement <2 x double> %i.gc, i64 0 ; 4 uses
  %i.ge = extractelement <2 x double> %i.gc, i64 1 ; 4 uses
  %i.gf = fsub double %i.ge, %i.gd
  %i.gg = fadd double %i.ge, %i.gd
  %i.gh = insertelement <2 x double> poison, double %i.gg, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gf, i64 1
  %i.gj = fmul <2 x double> %i.gi, splat (double f0x3FE6A09E667F3BCD)
  %i.gk = insertelement <2 x i1> poison, i1 %i.fh, i64 0
  %i.gl = shufflevector <2 x i1> %i.gk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gm = select <2 x i1> %i.gl, <2 x double> %i.gj, <2 x double> %i.gc ; 6 uses
  switch i32 %i.fg, label %.thread227 [
    i32 4, label %.thread216
    i32 5, label %bb.z
  ]

.thread216:                                       ; preds = %bb.v
  %i.gn = fcmp olt double %1, 0.000000e+00
  %i.go = fsub double f0x400DAA4A35759E4B, %i.ge
  %.sroa.0.4 = select i1 %i.gn, double %i.go, double %i.ge
  %i.gp = fadd double %.sroa.0.4, f0xBFFDAA4A35759E4B ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !50 ; 2 uses
  %i.gs = fcmp oeq double %i.gr, 0.000000e+00
  %i.gt = insertelement <2 x double> %i.gm, double %i.gp, i64 1
  br i1 %i.gs, label %.thread227, label %.thread222

.thread222:                                       ; preds = %.thread216
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gr, double f0x401DAA4A35759E4B, double %i.gp) ; 5 uses
  %i.gv = fcmp ult double %i.gu, f0x400DAA4A35759E4B
  br i1 %i.gv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread222
  %i.gw = fadd double %i.gu, f0xC01DAA4A35759E4B
  %i.gx = insertelement <2 x double> %i.gm, double %i.gw, i64 1
  br label %.thread227

bb.x:                                             ; preds = %.thread222
  %i.gy = fcmp olt double %i.gu, f0xC00DAA4A35759E4B
  %i.gz = insertelement <2 x double> %i.gm, double %i.gu, i64 1
  br i1 %i.gy, label %bb.y, label %.thread227

bb.y:                                             ; preds = %bb.x
  %i.ha = fadd double %i.gu, f0x401DAA4A35759E4B
  %i.hb = insertelement <2 x double> %i.gm, double %i.ha, i64 1
  br label %.thread227

bb.z:                                             ; preds = %bb.v
  %i.hc = fcmp olt double %1, 0.000000e+00
  %i.hd = fsub double f0x400DAA4A35759E4B, %i.gd
  %.sroa.28.4 = select i1 %i.hc, double %i.hd, double %i.gd
  %i.he = fadd double %.sroa.28.4, f0xBFFDAA4A35759E4B
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !51 ; 2 uses
  %i.hh = fcmp une double %i.hg, 0.000000e+00
  %i.hi = insertelement <2 x double> %i.gm, double %i.he, i64 0 ; 4 uses
  br i1 %i.hh, label %bb.aa, label %.thread227

bb.aa:                                            ; preds = %bb.z
  %i.hj = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.hg, i64 0
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hj, <2 x double> <double f0x401DAA4A35759E4B, double 0.000000e+00>, <2 x double> %i.hi) ; 2 uses
  %i.hl = extractelement <2 x double> %i.hk, i64 0 ; 4 uses
  %i.hm = fcmp ult double %i.hl, f0x400DAA4A35759E4B
  br i1 %i.hm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hn = fadd double %i.hl, f0xC01DAA4A35759E4B
  %i.ho = insertelement <2 x double> %i.hi, double %i.hn, i64 0
  br label %.thread227

bb.ac:                                            ; preds = %bb.aa
  %i.hp = fcmp olt double %i.hl, f0xC00DAA4A35759E4B
  br i1 %i.hp, label %bb.ad, label %.thread227

bb.ad:                                            ; preds = %bb.ac
  %i.hq = fadd double %i.hl, f0x401DAA4A35759E4B
  %i.hr = insertelement <2 x double> %i.hi, double %i.hq, i64 0
  br label %.thread227

bb.ae:                                            ; preds = %bb.p, %bb.p
  %i.hs = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.ht = extractelement <2 x double> %i.fd, i64 1 ; 2 uses
  %i.hu = fsub double %i.ht, %i.hs
  %i.hv = fadd double %i.ht, %i.hs
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.hu, i64 1
  %i.hy = fmul <2 x double> %i.hx, splat (double f0x3FE6A09E667F3BCD)
  br label %.thread227

.thread227:                                       ; preds = %bb.v, %bb.y, %bb.w, %.thread216, %bb.x, %bb.p, %bb.z, %bb.ab, %bb.ad, %bb.ac, %bb.m, %bb.ae, %bb.j, %bb.h, %bb.e, %bb.c
  %i.hz = phi <2 x double> [ %i.ca, %bb.m ], [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ %i.aq, %bb.h ], [ %i.av, %bb.j ], [ %i.hy, %bb.ae ], [ %i.fd, %bb.p ], [ %i.hi, %bb.z ], [ %i.ho, %bb.ab ], [ %i.hk, %bb.ac ], [ %i.hr, %bb.ad ], [ %i.gm, %bb.v ], [ %i.hb, %bb.y ], [ %i.gx, %bb.w ], [ %i.gt, %.thread216 ], [ %i.gz, %bb.x ] ; 2 uses
  %i.ia = extractelement <2 x double> %i.hz, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.ia, 0
  %i.ib = extractelement <2 x double> %i.hz, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ib, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL13adams_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = fdiv double %1, f0x4004F979572EE5F2      ; 2 uses
  %i.b = fcmp ogt double %i.a, 1.000000e+00
  %.sroa.speculated19 = select i1 %i.b, double 1.000000e+00, double %i.a ; 2 uses
  %i.c = fcmp olt double %.sroa.speculated19, -1.000000e+00
  %.sroa.speculated15 = select i1 %i.c, double -1.000000e+00, double %.sroa.speculated19
  %i.d = fmul double %.sroa.speculated15, f0x3FF921FB54442D18 ; 3 uses
  %i.e = tail call double @llvm.fabs.f64(double %i.d)
  %i.f = fcmp ult double %i.e, f0x3FF921FB54442D18
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fdiv double %0, f0x4004F9F955C1D375
  %i.h = tail call double @cos(double noundef %i.d) #9
  %i.i = fdiv double %i.g, %i.h                   ; 2 uses
  %i.j = fcmp ogt double %i.i, 1.000000e+00
  %.sroa.speculated11 = select i1 %i.j, double 1.000000e+00, double %i.i ; 2 uses
  %i.k = fcmp olt double %.sroa.speculated11, -1.000000e+00
  %.sroa.speculated = select i1 %i.k, double -1.000000e+00, double %.sroa.speculated11
  %i.l = fmul double %.sroa.speculated, f0x400921FB54442D18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.m = phi double [ %i.l, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.n = tail call { double, double } @_Z21pj_generic_inverse_2d5PJ_XYP8PJconsts5PJ_LPd(double %0, double %1, ptr noundef %2, double %i.m, double %i.d, double noundef 1.000000e-10)
  ret { double, double } %i.n
}

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL23peirce_q_square_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00         ; 2 uses
  %i.b = fcmp olt double %1, 0.000000e+00
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp olt double %i.c, f0x4004F9F953203CD9
  br i1 %i.d, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.e = fcmp ogt double %0, 0.000000e+00
  %i.f = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.g = fcmp olt double %i.f, f0x3E7AD7F29ABCAF48 ; 2 uses
  %or.cond43 = select i1 %i.e, i1 %i.g, i1 false
  br i1 %or.cond43, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = fcmp olt double %0, 0.000000e+00
  %or.cond45 = select i1 %i.h, i1 %i.g, i1 false
  br i1 %or.cond45, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call double @llvm.fmuladd.f64(double %0, double f0x3FE32B9515D17E9A, double f0x3FF921FB54442D18)
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.j = tail call double @llvm.fabs.f64(double %0) ; 2 uses
  %i.k = fcmp olt double %i.j, f0x3E7AD7F29ABCAF48
  %i.l = fcmp ogt double %1, 0.000000e+00
  %or.cond5 = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond5, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = fcmp oge double %0, 0.000000e+00         ; 2 uses
  %i.n = fcmp ole double %1, 0.000000e+00
  %or.cond8 = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = fcmp oeq double %1, 0.000000e+00
  %or.cond11 = select i1 %i.a, i1 %i.o, i1 false
  br i1 %or.cond11, label %bb.n, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.p = fcmp oge double %1, 0.000000e+00         ; 2 uses
  %or.cond14 = select i1 %i.m, i1 %i.p, i1 false
end_hunk_0
