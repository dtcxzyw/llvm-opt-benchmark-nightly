Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/adams?download=true
inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL13adams_forward5PJ_LPP8PJconsts:bb.a
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
  %7 = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.hg, i64 0
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %7, <2 x double> <double f0x401DAA4A35759E4B, double 0.000000e+00>, <2 x double> %i.hi) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0      ; 4 uses
  %i.hj = fcmp ult double %9, f0x400DAA4A35759E4B
  br i1 %i.hj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = fadd double %9, f0xC01DAA4A35759E4B
  %i.hl = insertelement <2 x double> %i.hi, double %i.hk, i64 0
  br label %.thread227

bb.ac:                                            ; preds = %bb.aa
  %i.hm = fcmp olt double %9, f0xC00DAA4A35759E4B
  br i1 %i.hm, label %bb.ad, label %.thread227

bb.ad:                                            ; preds = %bb.ac
  %i.hn = fadd double %9, f0x401DAA4A35759E4B
  %i.ho = insertelement <2 x double> %i.hi, double %i.hn, i64 0
  br label %.thread227

bb.ae:                                            ; preds = %bb.p, %bb.p
  %i.hp = extractelement <2 x double> %i.fd, i64 0 ; 2 uses
  %i.hq = extractelement <2 x double> %i.fd, i64 1 ; 2 uses
  %i.hr = fsub double %i.hq, %i.hp
  %i.hs = fadd double %i.hq, %i.hp
  %i.ht = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hu = insertelement <2 x double> %i.ht, double %i.hr, i64 1
  %i.hv = fmul <2 x double> %i.hu, splat (double f0x3FE6A09E667F3BCD)
  br label %.thread227

.thread227:                                       ; preds = %bb.v, %bb.y, %bb.w, %.thread216, %bb.x, %bb.p, %bb.z, %bb.ab, %bb.ad, %bb.ac, %bb.m, %bb.ae, %bb.j, %bb.h, %bb.e, %bb.c
  %i.hw = phi <2 x double> [ %i.ca, %bb.m ], [ %i.i, %bb.c ], [ %i.p, %bb.e ], [ %i.aq, %bb.h ], [ %i.av, %bb.j ], [ %i.hv, %bb.ae ], [ %i.fd, %bb.p ], [ %i.hi, %bb.z ], [ %i.hl, %bb.ab ], [ %8, %bb.ac ], [ %i.ho, %bb.ad ], [ %i.gm, %bb.v ], [ %i.hb, %bb.y ], [ %i.gx, %bb.w ], [ %i.gt, %.thread216 ], [ %i.gz, %bb.x ] ; 2 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 1
  %.fca.0.insert = insertvalue { double, double } poison, double %i.hx, 0
  %i.hy = extractelement <2 x double> %i.hw, i64 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.hy, 1
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
  br i1 %or.cond14, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = fcmp ole double %0, 0.000000e+00
  %or.cond17 = select i1 %i.q, i1 %i.p, i1 false
  br i1 %or.cond17, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.r = fcmp olt double %i.j, %i.f
  %. = select i1 %i.r, double f0x40069E9565708EFC, double f0xC0069E9565708EFC
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j, %bb.g, %bb.d, %bb.i, %bb.f, %bb.b, %bb.c
  %.sroa.020.0 = phi double [ f0xBFE921FB54442D18, %bb.c ], [ f0xBFE921FB54442D18, %bb.b ], [ f0x3FF921FB54442D18, %bb.j ], [ f0xC002D97C7F3321D2, %bb.f ], [ f0x3FE921FB54442D18, %bb.d ], [ 0.000000e+00, %bb.i ], [ f0x4002D97C7F3321D2, %bb.g ], [ %., %bb.l ], [ f0xBFF921FB54442D18, %bb.k ]
  %.sroa.13.0 = phi double [ f0x3FE921FB54442D18, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.j ], [ %i.i, %bb.f ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.k ]
  %i.s = tail call { double, double } @_Z21pj_generic_inverse_2d5PJ_XYP8PJconsts5PJ_LPd(double %0, double %1, ptr noundef %2, double %.sroa.020.0, double %.sroa.13.0, double noundef 1.000000e-10) ; 2 uses
  %i.t = extractvalue { double, double } %i.s, 0
  %i.u = extractvalue { double, double } %i.s, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.m
  %.sroa.040.0 = phi double [ %i.t, %bb.m ], [ 0.000000e+00, %bb.i ]
  %.sroa.3.0 = phi double [ %i.u, %bb.m ], [ f0x3FF921FB54442D18, %bb.i ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.040.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL24peirce_q_diamond_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = fcmp oge double %0, 0.000000e+00         ; 2 uses
  %i.b = fcmp ole double %1, 0.000000e+00
  %or.cond = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = fcmp ogt double %0, 0.000000e+00
  %i.d = fcmp oeq double %1, 0.000000e+00         ; 2 uses
  %or.cond5 = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond5, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = fcmp oeq double %0, 0.000000e+00         ; 2 uses
  %or.cond8 = select i1 %i.e, i1 %i.d, i1 false
  br i1 %or.cond8, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = fcmp olt double %1, 0.000000e+00
  %or.cond11 = select i1 %i.e, i1 %i.f, i1 false
  br i1 %or.cond11, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = fcmp oge double %1, 0.000000e+00         ; 2 uses
  %or.cond14 = select i1 %i.a, i1 %i.g, i1 false
  br i1 %or.cond14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = fcmp ole double %0, 0.000000e+00
  %or.cond17 = select i1 %i.h, i1 %i.g, i1 false
  %. = select i1 %or.cond17, double f0xC002D97C7F3321D2, double f0xBFE921FB54442D18
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.b, %bb.d, %bb.e
  %.sroa.020.0 = phi double [ f0x4002D97C7F3321D2, %bb.f ], [ 0.000000e+00, %bb.e ], [ f0x3FE921FB54442D18, %bb.d ], [ f0x3FF921FB54442D18, %bb.b ], [ %., %bb.g ]
  %.sroa.11.0 = phi double [ 0.000000e+00, %bb.f ], [ f0x3FE921FB54442D18, %bb.e ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.g ]
  %i.i = tail call double @llvm.fabs.f64(double %0)
  %i.j = fcmp ogt double %i.i, f0x3FFDAE62C8EA5AB5
  %i.k = tail call double @llvm.fabs.f64(double %1)
  %i.l = fcmp ogt double %i.k, f0x3FFDAE62C8EA5AB5
  %or.cond37 = select i1 %i.j, i1 true, i1 %i.l
  %.sroa.11.1 = select i1 %or.cond37, double f0xBFE921FB54442D18, double %.sroa.11.0
  %i.m = tail call { double, double } @_Z21pj_generic_inverse_2d5PJ_XYP8PJconsts5PJ_LPd(double %0, double %1, ptr noundef %2, double %.sroa.020.0, double %.sroa.11.1, double noundef 1.000000e-10) ; 2 uses
  %i.n = extractvalue { double, double } %i.m, 0
  %i.o = extractvalue { double, double } %i.m, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h
  %.sroa.034.0 = phi double [ %i.n, %bb.h ], [ 0.000000e+00, %bb.c ]
  %.sroa.3.0 = phi double [ %i.o, %bb.h ], [ f0x3FF921FB54442D18, %bb.c ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.034.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}
end_hunk_0
