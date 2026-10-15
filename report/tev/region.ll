Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/region?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@realloc
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

declare i32 @fits_strncasecmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @fits_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #9

declare i32 @ffxypx(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local void @fits_setup_shape(ptr nofree noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 4 uses
  %i.c = icmp eq i32 %i.b, 11
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  switch i32 %i.b, label %.loopexit [
    i32 2, label %.thread279
    i32 3, label %.thread282
    i32 10, label %.preheader323.a
    i32 4, label %.thread285
    i32 5, label %.thread288
    i32 6, label %.thread291
    i32 7, label %.thread294
    i32 8, label %.thread301.thread
    i32 9, label %.thread297
    i32 1, label %.thread301.thread315
    i32 12, label %.preheader327.a
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 0, label %.thread305
  ]

.preheader327.a:                                  ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.promoted353 = load double, ptr %i.e, align 8, !tbaa !18 ; 3 uses
  %i.f = fcmp ogt double %.promoted353, 1.800000e+02
  br i1 %i.f, label %.lr.ph354, label %.preheader326.a

.preheader323.a:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.promoted368 = load double, ptr %i.g, align 8, !tbaa !18 ; 3 uses
  %i.h = fcmp ogt double %.promoted368, 1.800000e+02
  br i1 %i.h, label %.lr.ph369, label %.preheader322.a

.thread279:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !18 ; 3 uses
  %i.k = fmul double %i.j, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.k, ptr %i.l, align 8, !tbaa !19
  br label %bb.h

.thread282:                                       ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load double, ptr %i.o, align 8, !tbaa !18
  %i.q = load <2 x double>, ptr %i.m, align 8, !tbaa !18 ; 2 uses
  %i.r = fmul <2 x double> %i.q, %i.q
  store <2 x double> %i.r, ptr %i.n, align 8, !tbaa !19
  br label %bb.h

..preheader322_crit_edge.a:                       ; preds = %.lr.ph369
  store double %i.u, ptr %i.g, align 8, !tbaa !18
  br label %.preheader322.a

.preheader322.a:                                  ; preds = %..preheader322_crit_edge.a, %.preheader323.a
  %.lcssa332.a = phi double [ %i.u, %..preheader322_crit_edge.a ], [ %.promoted368, %.preheader323.a ] ; 2 uses
  %i.s = fcmp ugt double %.lcssa332.a, -1.800000e+02
  br i1 %i.s, label %.preheader321, label %.lr.ph373

.lr.ph369:                                        ; preds = %.preheader323.a, %.lr.ph369
  %i.t = phi double [ %i.u, %.lr.ph369 ], [ %.promoted368, %.preheader323.a ]
  %i.u = fadd double %i.t, -3.600000e+02          ; 4 uses
  %i.v = fcmp ogt double %i.u, 1.800000e+02
  br i1 %i.v, label %.lr.ph369, label %..preheader322_crit_edge.a, !llvm.loop !71

..preheader321_crit_edge:                         ; preds = %.lr.ph373
  store double %i.z, ptr %i.g, align 8, !tbaa !18
  br label %.preheader321

.preheader321:                                    ; preds = %..preheader321_crit_edge, %.preheader322.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.promoted375 = load double, ptr %i.w, align 8, !tbaa !18 ; 3 uses
  %i.x = fcmp ogt double %.promoted375, 1.800000e+02
  br i1 %i.x, label %.lr.ph376, label %.preheader

.lr.ph373:                                        ; preds = %.preheader322.a, %.lr.ph373
  %i.y = phi double [ %i.z, %.lr.ph373 ], [ %.lcssa332.a, %.preheader322.a ]
  %i.z = fadd double %i.y, 3.600000e+02           ; 3 uses
  %i.aa = fcmp ugt double %i.z, -1.800000e+02
  br i1 %i.aa, label %..preheader321_crit_edge, label %.lr.ph373, !llvm.loop !72

..preheader_crit_edge:                            ; preds = %.lr.ph376
  store double %i.ad, ptr %i.w, align 8, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader321
  %.lcssa = phi double [ %i.ad, %..preheader_crit_edge ], [ %.promoted375, %.preheader321 ] ; 2 uses
  %i.ab = fcmp ugt double %.lcssa, -1.800000e+02
  br i1 %i.ab, label %.loopexit320.thread, label %.lr.ph380

.lr.ph376:                                        ; preds = %.preheader321, %.lr.ph376
  %i.ac = phi double [ %i.ad, %.lr.ph376 ], [ %.promoted375, %.preheader321 ]
  %i.ad = fadd double %i.ac, -3.600000e+02        ; 4 uses
  %i.ae = fcmp ogt double %i.ad, 1.800000e+02
  br i1 %i.ae, label %.lr.ph376, label %..preheader_crit_edge, !llvm.loop !73

.lr.ph380:                                        ; preds = %.preheader, %.lr.ph380
  %i.af = phi double [ %i.ag, %.lr.ph380 ], [ %.lcssa, %.preheader ]
  %i.ag = fadd double %i.af, 3.600000e+02         ; 3 uses
  %i.ah = fcmp ugt double %i.ag, -1.800000e+02
  br i1 %i.ah, label %..loopexit320_crit_edge, label %.lr.ph380, !llvm.loop !74

.thread285:                                       ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !18
  %i.ak = fdiv double %i.aj, 1.800000e+02
  %i.al = fmul double %i.ak, f0x400921FB54442D18  ; 2 uses
  %i.am = tail call double @sin(double noundef %i.al) #18
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.am, ptr %i.an, align 8, !tbaa !19
  %i.ao = tail call double @cos(double noundef %i.al) #18
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.ao, ptr %i.ap, align 8, !tbaa !19
  %.phi.trans.insert409.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre410.a = load double, ptr %.phi.trans.insert409.a, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert411 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre412 = load double, ptr %.phi.trans.insert411, align 8, !tbaa !18 ; 2 uses
  %i.aq = fcmp ogt double %.pre410.a, %.pre412
  %. = select i1 %i.aq, double %.pre410.a, double %.pre412
  br label %bb.h

.thread288:                                       ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.as = load double, ptr %i.ar, align 8, !tbaa !18
  %i.at = fdiv double %i.as, 1.800000e+02
  %i.au = fmul double %i.at, f0x400921FB54442D18  ; 2 uses
  %i.av = tail call double @sin(double noundef %i.au) #18
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.av, ptr %i.aw, align 8, !tbaa !19
  %i.ax = tail call double @cos(double noundef %i.au) #18
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ax, ptr %i.ay, align 8, !tbaa !19
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ba = load double, ptr %i.az, align 8, !tbaa !18
  %i.bb = fdiv double %i.ba, 1.800000e+02
  %i.bc = fmul double %i.bb, f0x400921FB54442D18  ; 2 uses
  %i.bd = tail call double @sin(double noundef %i.bc) #18
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.bd, ptr %i.be, align 8, !tbaa !19
  %i.bf = tail call double @cos(double noundef %i.bc) #18
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.bf, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %i.bl = fcmp ogt double %i.bi, %i.bk
  %.272 = select i1 %i.bl, double %i.bi, double %i.bk
  br label %bb.h

.thread291:                                       ; preds = %bb.b
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !18
  %i.bo = fdiv double %i.bn, 1.800000e+02
  %i.bp = fmul double %i.bo, f0x400921FB54442D18  ; 2 uses
  %i.bq = tail call double @sin(double noundef %i.bp) #18
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.bq, ptr %i.br, align 8, !tbaa !19
  %i.bs = tail call double @cos(double noundef %i.bp) #18
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.bs, ptr %i.bt, align 8, !tbaa !19
  %.phi.trans.insert405.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre406.a = load double, ptr %.phi.trans.insert405.a, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert407 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre408 = load double, ptr %.phi.trans.insert407, align 8, !tbaa !18 ; 2 uses
  %i.bu = fmul double %.pre408, %.pre408
  %i.bv = tail call double @llvm.fmuladd.f64(double %.pre406.a, double %.pre406.a, double %i.bu)
  %sqrt318 = tail call double @sqrt(double noundef %i.bv) #18
  %i.bw = fmul double %sqrt318, 5.000000e-01
  br label %bb.h

.thread294:                                       ; preds = %bb.b
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.by = load double, ptr %i.bx, align 8, !tbaa !18
  %i.bz = fdiv double %i.by, 1.800000e+02
  %i.ca = fmul double %i.bz, f0x400921FB54442D18  ; 2 uses
  %i.cb = tail call double @sin(double noundef %i.ca) #18
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.cb, ptr %i.cc, align 8, !tbaa !19
  %i.cd = tail call double @cos(double noundef %i.ca) #18
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.cd, ptr %i.ce, align 8, !tbaa !19
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !18
  %i.ch = fdiv double %i.cg, 1.800000e+02
  %i.ci = fmul double %i.ch, f0x400921FB54442D18  ; 2 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #18
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.cj, ptr %i.ck, align 8, !tbaa !19
  %i.cl = tail call double @cos(double noundef %i.ci) #18
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.cl, ptr %i.cm, align 8, !tbaa !19
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.co = load double, ptr %i.cn, align 8, !tbaa !18 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %i.cr = fmul double %i.co, %i.cq
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cq, double %i.cr)
  %i.ct = tail call double @sqrt(double noundef %i.cs) #18
  %i.cu = fmul double %i.ct, 5.000000e-01
  br label %bb.h

.thread301.thread:                                ; preds = %bb.b
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !18
  %i.cx = fdiv double %i.cw, 1.800000e+02
  %i.cy = fmul double %i.cx, f0x400921FB54442D18  ; 2 uses
  %i.cz = tail call double @sin(double noundef %i.cy) #18 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.cz, ptr %i.da, align 8, !tbaa !19
  %i.db = tail call double @cos(double noundef %i.cy) #18 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.db, ptr %i.dc, align 8, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.df = fneg double %i.cz
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dh = load <2 x double>, ptr %i.dd, align 8, !tbaa !18 ; 2 uses
  %i.di = load <2 x double>, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.dj = fsub <2 x double> %i.dh, %i.di
  %i.dk = fmul <2 x double> %i.dj, splat (double 5.000000e-01) ; 2 uses
  %i.dl = insertelement <2 x double> poison, double %i.df, i64 0
  %i.dm = insertelement <2 x double> %i.dl, double %i.cz, i64 1
  %i.dn = fmul <2 x double> %i.dm, %i.dk
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = insertelement <2 x double> poison, double %i.db, i64 0
  %i.dq = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dk, <2 x double> %i.dq, <2 x double> %i.do)
  %i.ds = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dr)
  store <2 x double> %i.ds, ptr %i.de, align 8, !tbaa !19
  %i.dt = fadd <2 x double> %i.dh, %i.di
  %i.du = fmul <2 x double> %i.dt, splat (double 5.000000e-01)
  store <2 x double> %i.du, ptr %i.dg, align 8, !tbaa !19
  br label %bb.i

.thread297:                                       ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !18
  %i.dx = fdiv double %i.dw, 1.800000e+02
  %i.dy = fmul double %i.dx, f0x400921FB54442D18  ; 2 uses
  %i.dz = tail call double @sin(double noundef %i.dy) #18
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.dz, ptr %i.ea, align 8, !tbaa !19
  %i.eb = tail call double @cos(double noundef %i.dy) #18
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.eb, ptr %i.ec, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert403 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre404 = load double, ptr %.phi.trans.insert403, align 8, !tbaa !18 ; 2 uses
  %i.ed = fcmp ogt double %.pre, %.pre404
  br i1 %i.ed, label %bb.d, label %bb.e

.thread301.thread315:                             ; preds = %bb.b
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eg = load <2 x double>, ptr %i.ee, align 8, !tbaa !18 ; 2 uses
  %i.eh = load <2 x double>, ptr %i.d, align 8, !tbaa !18
  %i.ei = fsub <2 x double> %i.eg, %i.eh          ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ei, %i.ei
  %i.ej = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ek = extractelement <2 x double> %i.ei, i64 0 ; 2 uses
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.ek, double %i.ej)
  %sqrt = tail call double @sqrt(double noundef %i.el) #18 ; 3 uses
  %i.em = fcmp une double %sqrt, 0.000000e+00
  %i.en = insertelement <2 x double> poison, double %sqrt, i64 0
  %i.eo = shufflevector <2 x double> %i.en, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = fdiv <2 x double> %i.ei, %i.eo
  %i.eq = insertelement <2 x i1> poison, i1 %i.em, i64 0
  %i.er = shufflevector <2 x i1> %i.eq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.es = select <2 x i1> %i.er, <2 x double> %i.ep, <2 x double> <double 1.000000e+00, double 0.000000e+00>
  %i.et = shufflevector <2 x double> %i.es, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.et, ptr %i.ef, align 8, !tbaa !19
  %i.eu = fadd double %sqrt, 5.000000e-01
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.eu, ptr %i.ev, align 8, !tbaa !19
  %i.ew = load double, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  %i.ex = extractelement <2 x double> %i.eg, i64 0 ; 3 uses
  %i.ey = fcmp ogt double %i.ew, %i.ex            ; 2 uses
  %.sink402 = select i1 %i.ey, double %i.ex, double %i.ew
  %.sink = select i1 %i.ey, double %i.ew, double %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink402, ptr %i.ez, align 8, !tbaa !36
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sink, ptr %i.fa, align 8, !tbaa !37
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !18 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18 ; 3 uses
  %i.ff = fcmp ogt double %i.fc, %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.ff, label %bb.t, label %bb.u

..preheader326_crit_edge.a:                       ; preds = %.lr.ph354
  store double %i.fj, ptr %i.e, align 8, !tbaa !18
  br label %.preheader326.a

.preheader326.a:                                  ; preds = %..preheader326_crit_edge.a, %.preheader327.a
  %.lcssa336.a = phi double [ %i.fj, %..preheader326_crit_edge.a ], [ %.promoted353, %.preheader327.a ] ; 2 uses
  %i.fh = fcmp ugt double %.lcssa336.a, -1.800000e+02
  br i1 %i.fh, label %.preheader325, label %.lr.ph358

.lr.ph354:                                        ; preds = %.preheader327.a, %.lr.ph354
  %i.fi = phi double [ %i.fj, %.lr.ph354 ], [ %.promoted353, %.preheader327.a ]
  %i.fj = fadd double %i.fi, -3.600000e+02        ; 4 uses
  %i.fk = fcmp ogt double %i.fj, 1.800000e+02
  br i1 %i.fk, label %.lr.ph354, label %..preheader326_crit_edge.a, !llvm.loop !75

..preheader325_crit_edge:                         ; preds = %.lr.ph358
  store double %i.fo, ptr %i.e, align 8, !tbaa !18
  br label %.preheader325

.preheader325:                                    ; preds = %..preheader325_crit_edge, %.preheader326.a
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.promoted360 = load double, ptr %i.fl, align 8, !tbaa !18 ; 3 uses
  %i.fm = fcmp ogt double %.promoted360, 1.800000e+02
  br i1 %i.fm, label %.lr.ph361, label %.preheader324

.lr.ph358:                                        ; preds = %.preheader326.a, %.lr.ph358
  %i.fn = phi double [ %i.fo, %.lr.ph358 ], [ %.lcssa336.a, %.preheader326.a ]
  %i.fo = fadd double %i.fn, 3.600000e+02         ; 3 uses
  %i.fp = fcmp ugt double %i.fo, -1.800000e+02
  br i1 %i.fp, label %..preheader325_crit_edge, label %.lr.ph358, !llvm.loop !76

..preheader324_crit_edge:                         ; preds = %.lr.ph361
  store double %i.fs, ptr %i.fl, align 8, !tbaa !18
  br label %.preheader324

.preheader324:                                    ; preds = %..preheader324_crit_edge, %.preheader325
  %.lcssa334 = phi double [ %i.fs, %..preheader324_crit_edge ], [ %.promoted360, %.preheader325 ] ; 2 uses
  %i.fq = fcmp ugt double %.lcssa334, -1.800000e+02
  br i1 %i.fq, label %.loopexit320.thread449, label %.lr.ph365

.lr.ph361:                                        ; preds = %.preheader325, %.lr.ph361
  %i.fr = phi double [ %i.fs, %.lr.ph361 ], [ %.promoted360, %.preheader325 ]
  %i.fs = fadd double %i.fr, -3.600000e+02        ; 4 uses
  %i.ft = fcmp ogt double %i.fs, 1.800000e+02
  br i1 %i.ft, label %.lr.ph361, label %..preheader324_crit_edge, !llvm.loop !77

.lr.ph365:                                        ; preds = %.preheader324, %.lr.ph365
  %i.fu = phi double [ %i.fv, %.lr.ph365 ], [ %.lcssa334, %.preheader324 ]
  %i.fv = fadd double %i.fu, 3.600000e+02         ; 3 uses
  %i.fw = fcmp ugt double %i.fv, -1.800000e+02
  br i1 %i.fw, label %._crit_edge366, label %.lr.ph365, !llvm.loop !78

._crit_edge366:                                   ; preds = %.lr.ph365
  store double %i.fv, ptr %i.fl, align 8, !tbaa !18
  br label %.loopexit320.thread449

.loopexit320.thread449:                           ; preds = %.preheader324, %._crit_edge366
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !19
  %i.gb = load <2 x double>, ptr %i.fx, align 8, !tbaa !19 ; 2 uses
  %i.gc = fmul <2 x double> %i.gb, %i.gb
  store <2 x double> %i.gc, ptr %i.fy, align 8, !tbaa !19
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.promoted = load double, ptr %i.gd, align 8, !tbaa !18 ; 3 uses
  %i.ge = fcmp ogt double %.promoted, 1.800000e+02
  br i1 %i.ge, label %.lr.ph, label %.preheader330

..preheader330_crit_edge:                         ; preds = %.lr.ph
  store double %i.gh, ptr %i.gd, align 8, !tbaa !18
  br label %.preheader330

.preheader330:                                    ; preds = %..preheader330_crit_edge, %bb.c
  %.lcssa340 = phi double [ %i.gh, %..preheader330_crit_edge ], [ %.promoted, %bb.c ] ; 2 uses
  %i.gf = fcmp ugt double %.lcssa340, -1.800000e+02
  br i1 %i.gf, label %.preheader329, label %.lr.ph344

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.gg = phi double [ %i.gh, %.lr.ph ], [ %.promoted, %bb.c ]
  %i.gh = fadd double %i.gg, -3.600000e+02        ; 4 uses
  %i.gi = fcmp ogt double %i.gh, 1.800000e+02
  br i1 %i.gi, label %.lr.ph, label %..preheader330_crit_edge, !llvm.loop !79

..preheader329_crit_edge:                         ; preds = %.lr.ph344
  store double %i.gm, ptr %i.gd, align 8, !tbaa !18
  br label %.preheader329

.preheader329:                                    ; preds = %..preheader329_crit_edge, %.preheader330
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.promoted346 = load double, ptr %i.gj, align 8, !tbaa !18 ; 3 uses
  %i.gk = fcmp ogt double %.promoted346, 1.800000e+02
  br i1 %i.gk, label %.lr.ph347, label %.preheader328

.lr.ph344:                                        ; preds = %.preheader330, %.lr.ph344
  %i.gl = phi double [ %i.gm, %.lr.ph344 ], [ %.lcssa340, %.preheader330 ]
  %i.gm = fadd double %i.gl, 3.600000e+02         ; 3 uses
  %i.gn = fcmp ugt double %i.gm, -1.800000e+02
  br i1 %i.gn, label %..preheader329_crit_edge, label %.lr.ph344, !llvm.loop !80

..preheader328_crit_edge:                         ; preds = %.lr.ph347
  store double %i.gq, ptr %i.gj, align 8, !tbaa !18
  br label %.preheader328

.preheader328:                                    ; preds = %..preheader328_crit_edge, %.preheader329
  %.lcssa338 = phi double [ %i.gq, %..preheader328_crit_edge ], [ %.promoted346, %.preheader329 ] ; 2 uses
  %i.go = fcmp ugt double %.lcssa338, -1.800000e+02
  br i1 %i.go, label %.loopexit320, label %.lr.ph351

.lr.ph347:                                        ; preds = %.preheader329, %.lr.ph347
  %i.gp = phi double [ %i.gq, %.lr.ph347 ], [ %.promoted346, %.preheader329 ]
  %i.gq = fadd double %i.gp, -3.600000e+02        ; 4 uses
  %i.gr = fcmp ogt double %i.gq, 1.800000e+02
  br i1 %i.gr, label %.lr.ph347, label %..preheader328_crit_edge, !llvm.loop !81

.lr.ph351:                                        ; preds = %.preheader328, %.lr.ph351
  %i.gs = phi double [ %i.gt, %.lr.ph351 ], [ %.lcssa338, %.preheader328 ]
  %i.gt = fadd double %i.gs, 3.600000e+02         ; 3 uses
  %i.gu = fcmp ugt double %i.gt, -1.800000e+02
  br i1 %i.gu, label %._crit_edge, label %.lr.ph351, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph351
  store double %i.gt, ptr %i.gj, align 8, !tbaa !18
  br label %.loopexit320

..loopexit320_crit_edge:                          ; preds = %.lr.ph380
  store double %i.ag, ptr %i.w, align 8, !tbaa !18
  br label %.loopexit320.thread

.loopexit320:                                     ; preds = %.preheader328, %._crit_edge
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !18
  %i.gx = fdiv double %i.gw, 1.800000e+02
  %i.gy = fmul double %i.gx, f0x400921FB54442D18  ; 2 uses
  %i.gz = tail call double @sin(double noundef %i.gy) #18
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.gz, ptr %i.ha, align 8, !tbaa !19
  %i.hb = tail call double @cos(double noundef %i.gy) #18
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.hb, ptr %i.hc, align 8, !tbaa !19
  %i.hd = icmp eq i32 %i.b, 14
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hf = load double, ptr %i.he, align 8, !tbaa !18 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !18 ; 4 uses
  br i1 %i.hd, label %bb.g, label %bb.f

bb.d:                                             ; preds = %.thread297
  %i.hi = fmul double %.pre, 5.000000e-01
  br label %bb.h

bb.e:                                             ; preds = %.thread297
  %i.hj = fmul double %.pre404, 5.000000e-01
  br label %bb.h

bb.f:                                             ; preds = %.loopexit320
  %i.hk = fcmp ogt double %i.hf, %i.hh
  %.273 = select i1 %i.hk, double %i.hf, double %i.hh
  br label %bb.h

bb.g:                                             ; preds = %.loopexit320
  %i.hl = fmul double %i.hf, %i.hh
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.hh, double %i.hl)
  %i.hn = tail call double @sqrt(double noundef %i.hm) #18
  %i.ho = fmul double %i.hn, 5.000000e-01
  br label %bb.h

bb.h:                                             ; preds = %.thread282, %.thread279, %bb.f, %.thread288, %.thread285, %bb.d, %bb.e, %bb.g, %.loopexit320.thread449, %.thread294, %.thread291
  %.0243 = phi double [ %i.ga, %.loopexit320.thread449 ], [ %i.hj, %bb.e ], [ %i.j, %.thread279 ], [ %., %.thread285 ], [ %i.ho, %bb.g ], [ %.272, %.thread288 ], [ %.273, %bb.f ], [ %i.bw, %.thread291 ], [ %i.cu, %.thread294 ], [ %i.hi, %bb.d ], [ %i.p, %.thread282 ] ; 2 uses
  %i.hp = fcmp ogt double %.0243, 0.000000e+00
  br i1 %i.hp, label %.thread305, label %.thread301

.thread305:                                       ; preds = %bb.b, %bb.h
  %.0243309 = phi double [ %.0243, %bb.h ], [ 1.000000e+00, %bb.b ] ; 4 uses
  %i.hq = load double, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.hr = fsub double %i.hq, %.0243309
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.hr, ptr %i.hs, align 8, !tbaa !36
  %i.ht = fadd double %.0243309, %i.hq
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ht, ptr %i.hu, align 8, !tbaa !37
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !18 ; 2 uses
  %i.hx = fsub double %i.hw, %.0243309
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.hx, ptr %i.hy, align 8, !tbaa !38
  %i.hz = fadd double %.0243309, %i.hw
  br label %.loopexit.sink.split

.thread301:                                       ; preds = %bb.h
  switch i32 %i.b, label %.loopexit [
    i32 8, label %bb.i
    i32 10, label %.loopexit320.thread
  ]

bb.i:                                             ; preds = %.thread301.thread, %.thread301
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !18 ; 3 uses
  %i.ic = load double, ptr %i.d, align 8, !tbaa !18
  %i.id = fsub double %i.ib, %i.ic                ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.if = load double, ptr %i.ie, align 8, !tbaa !18 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !18
  %i.ii = fsub double %i.if, %i.ih                ; 2 uses
  %i.ij = fmul double %i.ii, %i.ii
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.id, double %i.id, double %i.ij)
  %sqrt319 = tail call double @sqrt(double noundef %i.ik) #18 ; 4 uses
  %i.il = fsub double %i.ib, %sqrt319
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.il, ptr %i.im, align 8, !tbaa !36
  %i.in = fadd double %sqrt319, %i.ib
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.in, ptr %i.io, align 8, !tbaa !37
  %i.ip = fsub double %i.if, %sqrt319
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ip, ptr %i.iq, align 8, !tbaa !38
  %i.ir = fadd double %sqrt319, %i.if
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !19 ; 3 uses
  %i.iu = load double, ptr %i.it, align 8, !tbaa !18 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store double %i.iu, ptr %i.iv, align 8, !tbaa !36
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store double %i.iu, ptr %i.iw, align 8, !tbaa !37
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !18 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double %i.iy, ptr %i.iz, align 8, !tbaa !38
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %i.iy, ptr %i.ja, align 8, !tbaa !39
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !19 ; 2 uses
  %i.jd = icmp sgt i32 %i.jc, 2
  br i1 %i.jd, label %.lr.ph384, label %.loopexit

.lr.ph384:                                        ; preds = %bb.j
  %i.je = zext nneg i32 %i.jc to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph384, %bb.s
  %indvars.iv = phi i64 [ 2, %.lr.ph384 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.jf = phi double [ %i.iy, %.lr.ph384 ], [ %i.jw, %bb.s ] ; 2 uses
  %i.jg = phi double [ %i.iy, %.lr.ph384 ], [ %i.ju, %bb.s ] ; 2 uses
  %i.jh = phi double [ %i.iu, %.lr.ph384 ], [ %i.jp, %bb.s ] ; 2 uses
  %i.ji = phi double [ %i.iu, %.lr.ph384 ], [ %i.jn, %bb.s ] ; 2 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv ; 3 uses
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !18 ; 4 uses
  %i.jl = fcmp ogt double %i.ji, %i.jk
  br i1 %i.jl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.jk, ptr %i.iv, align 8, !tbaa !36
  %.pre415 = load double, ptr %i.jj, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.jm = phi double [ %.pre415, %bb.l ], [ %i.jk, %bb.k ] ; 3 uses
  %i.jn = phi double [ %i.jk, %bb.l ], [ %i.ji, %bb.k ]
  %i.jo = fcmp olt double %i.jh, %i.jm
  br i1 %i.jo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.jm, ptr %i.iw, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.jp = phi double [ %i.jm, %bb.n ], [ %i.jh, %bb.m ]
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jj, i64 8 ; 2 uses
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !18 ; 4 uses
  %i.js = fcmp ogt double %i.jg, %i.jr
  br i1 %i.js, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.jr, ptr %i.iz, align 8, !tbaa !38
  %.pre416 = load double, ptr %i.jq, align 8, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jt = phi double [ %.pre416, %bb.p ], [ %i.jr, %bb.o ] ; 3 uses
  %i.ju = phi double [ %i.jr, %bb.p ], [ %i.jg, %bb.o ]
  %i.jv = fcmp olt double %i.jf, %i.jt
  br i1 %i.jv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.jt, ptr %i.ja, align 8, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jw = phi double [ %i.jt, %bb.r ], [ %i.jf, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.jx = icmp samesign ult i64 %indvars.iv.next, %i.je
  br i1 %i.jx, label %bb.k, label %.loopexit, !llvm.loop !83

bb.t:                                             ; preds = %.thread301.thread315
  store double %i.fe, ptr %i.fg, align 8, !tbaa !38
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %.thread301.thread315
  store double %i.fc, ptr %i.fg, align 8, !tbaa !38
  br label %.loopexit.sink.split

.loopexit320.thread:                              ; preds = %..loopexit320_crit_edge, %.preheader, %.thread301
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.jy, align 8, !tbaa !18
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double 1.000000e+00, ptr %i.jz, align 8, !tbaa !38
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.thread305, %bb.t, %bb.u, %.loopexit320.thread, %bb.i
  %.sink462 = phi double [ %i.ir, %bb.i ], [ -1.000000e+00, %.loopexit320.thread ], [ %i.fe, %bb.u ], [ %i.fc, %bb.t ], [ %i.hz, %.thread305 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink462, ptr %i.ka, align 8, !tbaa !39
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.sink.split, %bb.j, %bb.b, %.thread301
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @fits_set_region_components(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph57, label %._crit_edge62

.lr.ph57:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %bb.b

.preheader:                                       ; preds = %.loopexit
  %i.d = icmp sgt i32 %i.as, 0
  br i1 %i.d, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.as to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.g = icmp eq i32 %i.as, 1
  br i1 %i.g, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.f

bb.b:                                             ; preds = %.lr.ph57, %.loopexit
  %i.h = phi i32 [ %i.a, %.lr.ph57 ], [ %i.as, %.loopexit ] ; 2 uses
  %.04355 = phi i32 [ 0, %.lr.ph57 ], [ %i.at, %.loopexit ] ; 6 uses
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.j = sext i32 %.04355 to i64
  %i.k = getelementptr inbounds [168 x i8], ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 8, !tbaa !24
  %.not46 = icmp eq i8 %i.l, 0
  %i.m = icmp sgt i32 %.04355, 1
  %or.cond = and i1 %.not46, %i.m
  br i1 %or.cond, label %.lr.ph89, label %.loopexit

.lr.ph89:                                         ; preds = %bb.b
  %i.n = zext nneg i32 %.04355 to i64
  br label %bb.c

.preheader49:                                     ; preds = %bb.c
  %i.o = trunc nuw i64 %i.q to i32
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %.loopexit, !llvm.loop !84

bb.c:                                             ; preds = %.lr.ph89, %.preheader49
  %indvars.iv88 = phi i64 [ %i.n, %.lr.ph89 ], [ %i.q, %.preheader49 ] ; 2 uses
  %i.q = add nsw i64 %indvars.iv88, -1            ; 3 uses
  %i.r = getelementptr inbounds nuw [168 x i8], ptr %i.i, i64 %i.q
  %i.s = load i8, ptr %i.r, align 8, !tbaa !24
  %.not47 = icmp eq i8 %i.s, 0
  br i1 %.not47, label %.preheader49, label %.lr.ph54.preheader, !llvm.loop !84

.lr.ph54.preheader:                               ; preds = %bb.c
  %i.t = add nuw nsw i64 %indvars.iv88, 4294967294
  %i.u = and i64 %i.t, 4294967295
  br label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.preheader, %bb.e
  %indvars.iv68 = phi i64 [ %i.u, %.lr.ph54.preheader ], [ %indvars.iv.next69, %bb.e ] ; 4 uses
  %.14452 = phi i32 [ %.04355, %.lr.ph54.preheader ], [ %.2, %bb.e ] ; 2 uses
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.w = getelementptr inbounds nuw [168 x i8], ptr %i.v, i64 %indvars.iv68
  %i.x = load i8, ptr %i.w, align 8, !tbaa !24
  %.not48 = icmp eq i8 %i.x, 0
  br i1 %.not48, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph54
  %i.y = load i32, ptr %0, align 8, !tbaa !15
  %i.z = add nsw i32 %i.y, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = mul nsw i64 %i.aa, 168
  %i.ac = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %i.ab) #21 ; 2 uses
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !16
  %i.ad = load i32, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %0, align 8, !tbaa !15
  %i.af = add nuw nsw i64 %indvars.iv68, 1        ; 3 uses
  %i.ag = sext i32 %i.ad to i64                   ; 2 uses
  %i.ah = icmp slt i64 %i.af, %i.ag
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %.lr.ph ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.aj = getelementptr [168 x i8], ptr %i.ai, i64 %indvars.iv65 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 -168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.aj, ptr noundef nonnull align 8 dereferenceable(168) %i.ak, i64 168, i1 false), !tbaa.struct !89
  %indvars.iv.next66 = add nsw i64 %indvars.iv65, -1 ; 2 uses
  %i.al = icmp samesign ugt i64 %indvars.iv.next66, %i.af
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !85

._crit_edge.loopexit:                             ; preds = %.lr.ph
end_hunk_0
begin_hunk_1_@fits_in_region:bb.a
  %i.nr = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.ns = insertelement <2 x double> %i.nr, double %i.ng, i64 1
  %i.nt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> %i.nm, <2 x double> %i.nq) ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.0401532, i64 104
  %i.nv = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.nw = load <2 x double>, ptr %i.nu, align 8, !tbaa !19
  %i.nx = fdiv <2 x double> %i.nv, %i.nw          ; 3 uses
  %foldExtExtBinop573 = fmul <2 x double> %i.nx, %i.nx
  %i.ny = extractelement <2 x double> %foldExtExtBinop573, i64 1
  %i.nz = extractelement <2 x double> %i.nx, i64 0 ; 2 uses
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.nz, double %i.ny)
  %i.ob = fcmp ogt double %i.oa, 1.000000e+00
  br i1 %i.ob, label %Pt_in_Poly.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.oc = getelementptr inbounds nuw i8, ptr %.0401532, i64 88
  %i.od = load <2 x double>, ptr %i.oc, align 8, !tbaa !19
  %i.oe = fdiv <2 x double> %i.nv, %i.od          ; 3 uses
  %foldExtExtBinop575 = fmul <2 x double> %i.oe, %i.oe
  %i.of = extractelement <2 x double> %foldExtExtBinop575, i64 1
  %i.og = extractelement <2 x double> %i.oe, i64 0 ; 2 uses
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.og, double %i.og, double %i.of)
  %i.oi = fcmp olt double %i.oh, 1.000000e+00
  br i1 %i.oi, label %Pt_in_Poly.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.oj = fcmp une <2 x double> %i.nt, zeroinitializer
  %i.ok = bitcast <2 x i1> %i.oj to i2
  %.not580 = icmp eq i2 %i.ok, 0
  br i1 %.not580, label %Pt_in_Poly.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ol = extractelement <2 x double> %i.nt, i64 0
  %i.om = extractelement <2 x double> %i.nt, i64 1
  %i.on = tail call double @atan2(double noundef %i.ol, double noundef %i.om) #18
  %i.oo = fmul double %i.on, 1.800000e+02
  %i.op = fdiv double %i.oo, f0x400921FB54442D18  ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.or = load double, ptr %i.oq, align 8, !tbaa !19 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.0401532, i64 72
  %i.ot = load double, ptr %i.os, align 8, !tbaa !19 ; 2 uses
  %i.ou = fcmp ugt double %i.or, %i.ot
  %i.ov = fcmp uge double %i.op, %i.or            ; 2 uses
  %i.ow = fcmp ule double %i.op, %i.ot            ; 2 uses
  br i1 %i.ou, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %or.cond471.not = and i1 %i.ov, %i.ow
  %spec.select491 = zext i1 %or.cond471.not to i32
  br label %Pt_in_Poly.exit

bb.ay:                                            ; preds = %bb.aw
  %or.cond472.not = or i1 %i.ov, %i.ow
  %spec.select492 = zext i1 %or.cond472.not to i32
  br label %Pt_in_Poly.exit

bb.az:                                            ; preds = %bb.d
  %i.ox = getelementptr inbounds nuw i8, ptr %.0401532, i64 48
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !19
  %i.oz = fsub double %0, %i.oy                   ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %.0401532, i64 56
  %i.pb = load double, ptr %i.pa, align 8, !tbaa !19
  %i.pc = fsub double %1, %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %.0401532, i64 136
  %i.pe = fneg double %i.oz
  %i.pf = load <2 x double>, ptr %i.pd, align 8, !tbaa !19 ; 2 uses
  %i.pg = insertelement <2 x double> poison, double %i.pc, i64 0
  %i.ph = shufflevector <2 x double> %i.pg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pi = shufflevector <2 x double> %i.pf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pj = fmul <2 x double> %i.ph, %i.pi
  %i.pk = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.pl = insertelement <2 x double> %i.pk, double %i.oz, i64 1
  %i.pm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pl, <2 x double> %i.pf, <2 x double> %i.pj) ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0401532, i64 104
  %i.po = load <2 x double>, ptr %i.pn, align 8, !tbaa !19
  %i.pp = fmul <2 x double> %i.po, splat (double 5.000000e-01)
  %i.pq = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pr = fneg <2 x double> %i.pq
  %i.ps = shufflevector <2 x double> %i.pm, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 4 uses
  %i.pt = shufflevector <2 x double> %i.pq, <2 x double> %i.pr, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.pu = fcmp ogt <4 x double> %i.ps, %i.pt
  %i.pv = fcmp olt <4 x double> %i.ps, %i.pt
  %i.pw = shufflevector <4 x i1> %i.pu, <4 x i1> %i.pv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.px = freeze <4 x i1> %i.pw
  %i.py = bitcast <4 x i1> %i.px to i4
  %.not577 = icmp eq i4 %i.py, 0
  br i1 %.not577, label %bb.ba, label %Pt_in_Poly.exit

bb.ba:                                            ; preds = %bb.az
  %i.pz = getelementptr inbounds nuw i8, ptr %.0401532, i64 88
  %i.qa = load <2 x double>, ptr %i.pz, align 8, !tbaa !19
  %i.qb = fmul <2 x double> %i.qa, splat (double 5.000000e-01)
  %i.qc = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qd = fneg <2 x double> %i.qc
  %i.qe = shufflevector <2 x double> %i.qc, <2 x double> %i.qd, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.qf = fcmp ugt <4 x double> %i.ps, %i.qe
  %i.qg = fcmp ult <4 x double> %i.ps, %i.qe
  %i.qh = shufflevector <4 x i1> %i.qf, <4 x i1> %i.qg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.qi = freeze <4 x i1> %i.qh
  %i.qj = bitcast <4 x i1> %i.qi to i4
  %.not578 = icmp eq i4 %i.qj, 0
  br i1 %.not578, label %Pt_in_Poly.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qk = fcmp une <2 x double> %i.pm, zeroinitializer
  %i.ql = bitcast <2 x i1> %i.qk to i2
  %.not579 = icmp eq i2 %i.ql, 0
  br i1 %.not579, label %Pt_in_Poly.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.qm = extractelement <2 x double> %i.pm, i64 0
  %i.qn = extractelement <2 x double> %i.pm, i64 1
  %i.qo = tail call double @atan2(double noundef %i.qm, double noundef %i.qn) #18
  %i.qp = fmul double %i.qo, 1.800000e+02
  %i.qq = fdiv double %i.qp, f0x400921FB54442D18  ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %.0401532, i64 64
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !19 ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0401532, i64 72
  %i.qu = load double, ptr %i.qt, align 8, !tbaa !19 ; 2 uses
  %i.qv = fcmp ugt double %i.qs, %i.qu
  %i.qw = fcmp uge double %i.qq, %i.qs            ; 2 uses
  %i.qx = fcmp ule double %i.qq, %i.qu            ; 2 uses
  br i1 %i.qv, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %or.cond481.not = and i1 %i.qw, %i.qx
  %spec.select493 = zext i1 %or.cond481.not to i32
  br label %Pt_in_Poly.exit

bb.be:                                            ; preds = %bb.bc
  %or.cond482.not = or i1 %i.qw, %i.qx
  %spec.select494 = zext i1 %or.cond482.not to i32
  br label %Pt_in_Poly.exit

Pt_in_Poly.exit:                                  ; preds = %bb.am, %bb.ai, %bb.ag, %bb.ab, %bb.be, %bb.bd, %bb.ay, %bb.ax, %bb.as, %bb.ar, %bb.p, %bb.o, %bb.h, %bb.g, %bb.e, %bb.w, %bb.s, %bb.q, %bb.j, %bb.i, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.an, %bb.ao, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.r, %bb.f, %bb.bb, %bb.av, %bb.ap, %bb.u, %bb.v, %bb.m, %bb.l, %bb.d
  %.2 = phi i32 [ 1, %bb.d ], [ 0, %bb.z ], [ 0, %bb.an ], [ 1, %bb.bb ], [ %spec.select484, %bb.e ], [ 0, %bb.ba ], [ %spec.select494, %bb.be ], [ 0, %bb.f ], [ 1, %bb.ap ], [ %spec.select485, %bb.g ], [ 0, %bb.au ], [ %spec.select490, %bb.as ], [ %spec.select486, %bb.h ], [ %spec.select, %bb.i ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 1, %bb.l ], [ %spec.select492, %bb.ay ], [ 0, %bb.ao ], [ %spec.select487, %bb.o ], [ %spec.select463, %bb.j ], [ %spec.select491, %bb.ax ], [ 1, %bb.m ], [ %spec.select493, %bb.bd ], [ %spec.select488, %bb.p ], [ %spec.select466, %bb.q ], [ 0, %bb.r ], [ 0, %bb.az ], [ 0, %bb.v ], [ 1, %bb.u ], [ %spec.select467, %bb.s ], [ 0, %bb.y ], [ %spec.select468, %bb.w ], [ %spec.select489, %bb.ar ], [ 0, %bb.x ], [ 1, %bb.av ], [ 0, %bb.at ], [ %.1.i, %bb.am ], [ 1, %bb.ag ], [ 1, %bb.ai ]
  %i.qy = zext i1 %.not442 to i32
  %spec.select483 = xor i32 %.2, %i.qy
  br label %bb.bf

bb.bf:                                            ; preds = %bb.c, %Pt_in_Poly.exit, %.critedge
  %.3 = phi i32 [ 1, %.critedge ], [ %spec.select483, %Pt_in_Poly.exit ], [ 0, %bb.c ] ; 2 uses
  %i.qz = add nuw nsw i32 %.0400533, 1            ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0401532, i64 168
  %exitcond.not = icmp eq i32 %i.qz, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !96

._crit_edge.loopexit:                             ; preds = %bb.bf
  %i.rb = icmp ne i32 %.1397, 0
  %i.rc = icmp ne i32 %.3, 0
  %i.rd = select i1 %i.rb, i1 true, i1 %i.rc
  %i.re = zext i1 %i.rd to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0396.lcssa = phi i32 [ 0, %bb.a ], [ %i.re, %._crit_edge.loopexit ]
  ret i32 %.0396.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #14

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #10

declare i32 @ffgcno(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffmnhd(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgky(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgtcs(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @ffgtdm(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcvs(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

declare i32 @ffgcvd(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffwldp(double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffgcv(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ffclos(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(1) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!"", !6, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !5, i64 64}
!14 = !{!"", !6, i64 0, !10, i64 8, !13, i64 16}
!15 = !{!14, !6, i64 0}
!16 = !{!14, !10, i64 8}
!17 = !{!13, !6, i64 0}
!18 = !{!12, !12, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{i64 0, i64 4, !9, i64 8, i64 8, !18, i64 16, i64 8, !18, i64 24, i64 8, !18, i64 32, i64 8, !18, i64 40, i64 8, !18, i64 48, i64 8, !18, i64 56, i64 8, !18, i64 64, i64 6, !19}
!21 = !{!14, !6, i64 16}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"", !5, i64 0, !6, i64 4, !6, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !5, i64 48}
!24 = !{!23, !5, i64 0}
!25 = !{!23, !6, i64 4}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!13, !12, i64 8}
!29 = !{!13, !12, i64 16}
!30 = !{!13, !12, i64 24}
!31 = !{!13, !12, i64 32}
!32 = !{!13, !12, i64 40}
!33 = !{!13, !12, i64 48}
!34 = !{!13, !12, i64 56}
!35 = !{!23, !6, i64 8}
!36 = !{!23, !12, i64 16}
!37 = !{!23, !12, i64 24}
!38 = !{!23, !12, i64 32}
!39 = !{!23, !12, i64 40}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = distinct !{!42, !22}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22}
!45 = distinct !{!45, !22}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{null}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = distinct !{!55, !22}
!56 = distinct !{!56, !22}
!57 = !{!"p1 short", !10, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"short", !5, i64 0}
!60 = !{!59, !59, i64 0}
!61 = distinct !{!61, !22, !69}
!62 = distinct !{!62, !22}
!63 = distinct !{!63, !22}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !70}
!66 = distinct !{!66, !22}
!67 = !{!"long", !5, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"llvm.loop.peeled.count", i32 1}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, !22}
!74 = distinct !{!74, !22}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = !{i64 0, i64 1, !19, i64 4, i64 4, !9, i64 8, i64 4, !9, i64 16, i64 8, !18, i64 24, i64 8, !18, i64 32, i64 8, !18, i64 40, i64 8, !18, i64 48, i64 120, !19}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = !{!"p1 double", !10, i64 0}
!93 = !{!92, !92, i64 0}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, !22}
end_hunk_1
