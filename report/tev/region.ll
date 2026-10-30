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
    i32 10, label %.preheader321.a
    i32 4, label %.thread285
    i32 5, label %.thread288
    i32 6, label %.thread291
    i32 7, label %.thread294
    i32 8, label %.thread301.thread
    i32 9, label %.thread297
    i32 1, label %.thread301.thread315
    i32 12, label %.preheader325.a
    i32 13, label %bb.c
    i32 14, label %bb.c
    i32 0, label %.thread305
  ]

.preheader325.a:                                  ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.promoted351 = load double, ptr %i.e, align 8, !tbaa !18 ; 3 uses
  %i.f = fcmp ogt double %.promoted351, 1.800000e+02
  br i1 %i.f, label %.lr.ph352, label %.preheader324.a

.preheader321.a:                                  ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.promoted366 = load double, ptr %i.g, align 8, !tbaa !18 ; 3 uses
  %i.h = fcmp ogt double %.promoted366, 1.800000e+02
  br i1 %i.h, label %.lr.ph367, label %.preheader320

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

..preheader320_crit_edge:                         ; preds = %.lr.ph367
  store double %i.u, ptr %i.g, align 8, !tbaa !18
  br label %.preheader320

.preheader320:                                    ; preds = %..preheader320_crit_edge, %.preheader321.a
  %.lcssa330 = phi double [ %i.u, %..preheader320_crit_edge ], [ %.promoted366, %.preheader321.a ] ; 2 uses
  %i.s = fcmp ugt double %.lcssa330, -1.800000e+02
  br i1 %i.s, label %.preheader319, label %.lr.ph371

.lr.ph367:                                        ; preds = %.preheader321.a, %.lr.ph367
  %i.t = phi double [ %i.u, %.lr.ph367 ], [ %.promoted366, %.preheader321.a ]
  %i.u = fadd double %i.t, -3.600000e+02          ; 4 uses
  %i.v = fcmp ogt double %i.u, 1.800000e+02
  br i1 %i.v, label %.lr.ph367, label %..preheader320_crit_edge, !llvm.loop !71

..preheader319_crit_edge:                         ; preds = %.lr.ph371
  store double %i.z, ptr %i.g, align 8, !tbaa !18
  br label %.preheader319

.preheader319:                                    ; preds = %..preheader319_crit_edge, %.preheader320
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.promoted373 = load double, ptr %i.w, align 8, !tbaa !18 ; 3 uses
  %i.x = fcmp ogt double %.promoted373, 1.800000e+02
  br i1 %i.x, label %.lr.ph374, label %.preheader

.lr.ph371:                                        ; preds = %.preheader320, %.lr.ph371
  %i.y = phi double [ %i.z, %.lr.ph371 ], [ %.lcssa330, %.preheader320 ]
  %i.z = fadd double %i.y, 3.600000e+02           ; 3 uses
  %i.aa = fcmp ugt double %i.z, -1.800000e+02
  br i1 %i.aa, label %..preheader319_crit_edge, label %.lr.ph371, !llvm.loop !72

..preheader_crit_edge:                            ; preds = %.lr.ph374
  store double %i.ad, ptr %i.w, align 8, !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader319
  %.lcssa = phi double [ %i.ad, %..preheader_crit_edge ], [ %.promoted373, %.preheader319 ] ; 2 uses
  %i.ab = fcmp ugt double %.lcssa, -1.800000e+02
  br i1 %i.ab, label %.loopexit318.thread, label %.lr.ph378

.lr.ph374:                                        ; preds = %.preheader319, %.lr.ph374
  %i.ac = phi double [ %i.ad, %.lr.ph374 ], [ %.promoted373, %.preheader319 ]
  %i.ad = fadd double %i.ac, -3.600000e+02        ; 4 uses
  %i.ae = fcmp ogt double %i.ad, 1.800000e+02
  br i1 %i.ae, label %.lr.ph374, label %..preheader_crit_edge, !llvm.loop !73

.lr.ph378:                                        ; preds = %.preheader, %.lr.ph378
  %i.af = phi double [ %i.ag, %.lr.ph378 ], [ %.lcssa, %.preheader ]
  %i.ag = fadd double %i.af, 3.600000e+02         ; 3 uses
  %i.ah = fcmp ugt double %i.ag, -1.800000e+02
  br i1 %i.ah, label %..loopexit318_crit_edge, label %.lr.ph378, !llvm.loop !74

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
  %.phi.trans.insert407.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre408.a = load double, ptr %.phi.trans.insert407.a, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert409 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre410 = load double, ptr %.phi.trans.insert409, align 8, !tbaa !18 ; 2 uses
  %i.aq = fcmp ogt double %.pre408.a, %.pre410
  %. = select i1 %i.aq, double %.pre408.a, double %.pre410
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
  %.phi.trans.insert403.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre404.a = load double, ptr %.phi.trans.insert403.a, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert405 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre406 = load double, ptr %.phi.trans.insert405, align 8, !tbaa !18 ; 2 uses
  %i.bu = fmul double %.pre406, %.pre406
  %i.bv = tail call double @llvm.fmuladd.f64(double %.pre404.a, double %.pre404.a, double %i.bu)
  %i.bw = tail call double @sqrt(double noundef %i.bv) #18
  %i.bx = fmul double %i.bw, 5.000000e-01
  br label %bb.h

.thread294:                                       ; preds = %bb.b
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = load double, ptr %i.by, align 8, !tbaa !18
  %i.ca = fdiv double %i.bz, 1.800000e+02
  %i.cb = fmul double %i.ca, f0x400921FB54442D18  ; 2 uses
  %i.cc = tail call double @sin(double noundef %i.cb) #18
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.cc, ptr %i.cd, align 8, !tbaa !19
  %i.ce = tail call double @cos(double noundef %i.cb) #18
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 160
  store double %i.ce, ptr %i.cf, align 8, !tbaa !19
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !18
  %i.ci = fdiv double %i.ch, 1.800000e+02
  %i.cj = fmul double %i.ci, f0x400921FB54442D18  ; 2 uses
  %i.ck = tail call double @sin(double noundef %i.cj) #18
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.ck, ptr %i.cl, align 8, !tbaa !19
  %i.cm = tail call double @cos(double noundef %i.cj) #18
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.cm, ptr %i.cn, align 8, !tbaa !19
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cp = load double, ptr %i.co, align 8, !tbaa !18 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !18 ; 2 uses
  %i.cs = fmul double %i.cp, %i.cr
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cr, double %i.cs)
  %i.cu = tail call double @sqrt(double noundef %i.ct) #18
  %i.cv = fmul double %i.cu, 5.000000e-01
  br label %bb.h

.thread301.thread:                                ; preds = %bb.b
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !18
  %i.cy = fdiv double %i.cx, 1.800000e+02
  %i.cz = fmul double %i.cy, f0x400921FB54442D18  ; 2 uses
  %i.da = tail call double @sin(double noundef %i.cz) #18 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.da, ptr %i.db, align 8, !tbaa !19
  %i.dc = tail call double @cos(double noundef %i.cz) #18 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.dc, ptr %i.dd, align 8, !tbaa !19
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.dg = fneg double %i.da
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.di = load <2 x double>, ptr %i.de, align 8, !tbaa !18 ; 2 uses
  %i.dj = load <2 x double>, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.dk = fsub <2 x double> %i.di, %i.dj
  %i.dl = fmul <2 x double> %i.dk, splat (double 5.000000e-01) ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.da, i64 1
  %i.do = fmul <2 x double> %i.dn, %i.dl
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.dq = insertelement <2 x double> poison, double %i.dc, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> %i.dr, <2 x double> %i.dp)
  %i.dt = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ds)
  store <2 x double> %i.dt, ptr %i.df, align 8, !tbaa !19
  %i.du = fadd <2 x double> %i.di, %i.dj
  %i.dv = fmul <2 x double> %i.du, splat (double 5.000000e-01)
  store <2 x double> %i.dv, ptr %i.dh, align 8, !tbaa !19
  br label %bb.i

.thread297:                                       ; preds = %bb.b
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !18
  %i.dy = fdiv double %i.dx, 1.800000e+02
  %i.dz = fmul double %i.dy, f0x400921FB54442D18  ; 2 uses
  %i.ea = tail call double @sin(double noundef %i.dz) #18
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.ea, ptr %i.eb, align 8, !tbaa !19
  %i.ec = tail call double @cos(double noundef %i.dz) #18
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.ec, ptr %i.ed, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !18 ; 2 uses
  %.phi.trans.insert401 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.pre402 = load double, ptr %.phi.trans.insert401, align 8, !tbaa !18 ; 2 uses
  %i.ee = fcmp ogt double %.pre, %.pre402
  br i1 %i.ee, label %bb.d, label %bb.e

.thread301.thread315:                             ; preds = %bb.b
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.eh = load <2 x double>, ptr %i.ef, align 8, !tbaa !18 ; 2 uses
  %i.ei = load <2 x double>, ptr %i.d, align 8, !tbaa !18
  %i.ej = fsub <2 x double> %i.eh, %i.ei          ; 4 uses
  %foldExtExtBinop = fmul <2 x double> %i.ej, %i.ej
  %i.ek = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.el = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  %i.em = tail call double @llvm.fmuladd.f64(double %i.el, double %i.el, double %i.ek)
  %i.en = tail call double @sqrt(double noundef %i.em) #18 ; 3 uses
  %i.eo = fcmp une double %i.en, 0.000000e+00
  %i.ep = insertelement <2 x double> poison, double %i.en, i64 0
  %i.eq = shufflevector <2 x double> %i.ep, <2 x double> poison, <2 x i32> zeroinitializer
  %i.er = fdiv <2 x double> %i.ej, %i.eq
  %i.es = insertelement <2 x i1> poison, i1 %i.eo, i64 0
  %i.et = shufflevector <2 x i1> %i.es, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.eu = select <2 x i1> %i.et, <2 x double> %i.er, <2 x double> <double 1.000000e+00, double 0.000000e+00>
  %i.ev = shufflevector <2 x double> %i.eu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ev, ptr %i.eg, align 8, !tbaa !19
  %i.ew = fadd double %i.en, 5.000000e-01
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 152
  store double %i.ew, ptr %i.ex, align 8, !tbaa !19
  %i.ey = load double, ptr %i.d, align 8, !tbaa !18 ; 3 uses
  %i.ez = extractelement <2 x double> %i.eh, i64 0 ; 3 uses
  %i.fa = fcmp ogt double %i.ey, %i.ez            ; 2 uses
  %.sink400 = select i1 %i.fa, double %i.ez, double %i.ey
  %.sink = select i1 %i.fa, double %i.ey, double %i.ez
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %.sink400, ptr %i.fb, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sink, ptr %i.fc, align 8, !tbaa !37
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !18 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !18 ; 3 uses
  %i.fh = fcmp ogt double %i.fe, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.fh, label %bb.t, label %bb.u

..preheader324_crit_edge.a:                       ; preds = %.lr.ph352
  store double %i.fl, ptr %i.e, align 8, !tbaa !18
  br label %.preheader324.a

.preheader324.a:                                  ; preds = %..preheader324_crit_edge.a, %.preheader325.a
  %.lcssa334.a = phi double [ %i.fl, %..preheader324_crit_edge.a ], [ %.promoted351, %.preheader325.a ] ; 2 uses
  %i.fj = fcmp ugt double %.lcssa334.a, -1.800000e+02
  br i1 %i.fj, label %.preheader323, label %.lr.ph356

.lr.ph352:                                        ; preds = %.preheader325.a, %.lr.ph352
  %i.fk = phi double [ %i.fl, %.lr.ph352 ], [ %.promoted351, %.preheader325.a ]
  %i.fl = fadd double %i.fk, -3.600000e+02        ; 4 uses
  %i.fm = fcmp ogt double %i.fl, 1.800000e+02
  br i1 %i.fm, label %.lr.ph352, label %..preheader324_crit_edge.a, !llvm.loop !75

..preheader323_crit_edge:                         ; preds = %.lr.ph356
  store double %i.fq, ptr %i.e, align 8, !tbaa !18
  br label %.preheader323

.preheader323:                                    ; preds = %..preheader323_crit_edge, %.preheader324.a
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.promoted358 = load double, ptr %i.fn, align 8, !tbaa !18 ; 3 uses
  %i.fo = fcmp ogt double %.promoted358, 1.800000e+02
  br i1 %i.fo, label %.lr.ph359, label %.preheader322

.lr.ph356:                                        ; preds = %.preheader324.a, %.lr.ph356
  %i.fp = phi double [ %i.fq, %.lr.ph356 ], [ %.lcssa334.a, %.preheader324.a ]
  %i.fq = fadd double %i.fp, 3.600000e+02         ; 3 uses
  %i.fr = fcmp ugt double %i.fq, -1.800000e+02
  br i1 %i.fr, label %..preheader323_crit_edge, label %.lr.ph356, !llvm.loop !76

..preheader322_crit_edge:                         ; preds = %.lr.ph359
  store double %i.fu, ptr %i.fn, align 8, !tbaa !18
  br label %.preheader322

.preheader322:                                    ; preds = %..preheader322_crit_edge, %.preheader323
  %.lcssa332 = phi double [ %i.fu, %..preheader322_crit_edge ], [ %.promoted358, %.preheader323 ] ; 2 uses
  %i.fs = fcmp ugt double %.lcssa332, -1.800000e+02
  br i1 %i.fs, label %.loopexit318.thread447, label %.lr.ph363

.lr.ph359:                                        ; preds = %.preheader323, %.lr.ph359
  %i.ft = phi double [ %i.fu, %.lr.ph359 ], [ %.promoted358, %.preheader323 ]
  %i.fu = fadd double %i.ft, -3.600000e+02        ; 4 uses
  %i.fv = fcmp ogt double %i.fu, 1.800000e+02
  br i1 %i.fv, label %.lr.ph359, label %..preheader322_crit_edge, !llvm.loop !77

.lr.ph363:                                        ; preds = %.preheader322, %.lr.ph363
  %i.fw = phi double [ %i.fx, %.lr.ph363 ], [ %.lcssa332, %.preheader322 ]
  %i.fx = fadd double %i.fw, 3.600000e+02         ; 3 uses
  %i.fy = fcmp ugt double %i.fx, -1.800000e+02
  br i1 %i.fy, label %._crit_edge364, label %.lr.ph363, !llvm.loop !78

._crit_edge364:                                   ; preds = %.lr.ph363
  store double %i.fx, ptr %i.fn, align 8, !tbaa !18
  br label %.loopexit318.thread447

.loopexit318.thread447:                           ; preds = %.preheader322, %._crit_edge364
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !19
  %i.gd = load <2 x double>, ptr %i.fz, align 8, !tbaa !19 ; 2 uses
  %i.ge = fmul <2 x double> %i.gd, %i.gd
  store <2 x double> %i.ge, ptr %i.ga, align 8, !tbaa !19
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %.promoted = load double, ptr %i.gf, align 8, !tbaa !18 ; 3 uses
  %i.gg = fcmp ogt double %.promoted, 1.800000e+02
  br i1 %i.gg, label %.lr.ph, label %.preheader328.a

..preheader328_crit_edge.a:                       ; preds = %.lr.ph
  store double %i.gj, ptr %i.gf, align 8, !tbaa !18
  br label %.preheader328.a

.preheader328.a:                                  ; preds = %..preheader328_crit_edge.a, %bb.c
  %.lcssa338.a = phi double [ %i.gj, %..preheader328_crit_edge.a ], [ %.promoted, %bb.c ] ; 2 uses
  %i.gh = fcmp ugt double %.lcssa338.a, -1.800000e+02
  br i1 %i.gh, label %.preheader327, label %.lr.ph342

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.gi = phi double [ %i.gj, %.lr.ph ], [ %.promoted, %bb.c ]
  %i.gj = fadd double %i.gi, -3.600000e+02        ; 4 uses
  %i.gk = fcmp ogt double %i.gj, 1.800000e+02
  br i1 %i.gk, label %.lr.ph, label %..preheader328_crit_edge.a, !llvm.loop !79

..preheader327_crit_edge:                         ; preds = %.lr.ph342
  store double %i.go, ptr %i.gf, align 8, !tbaa !18
  br label %.preheader327

.preheader327:                                    ; preds = %..preheader327_crit_edge, %.preheader328.a
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.promoted344 = load double, ptr %i.gl, align 8, !tbaa !18 ; 3 uses
  %i.gm = fcmp ogt double %.promoted344, 1.800000e+02
  br i1 %i.gm, label %.lr.ph345, label %.preheader326

.lr.ph342:                                        ; preds = %.preheader328.a, %.lr.ph342
  %i.gn = phi double [ %i.go, %.lr.ph342 ], [ %.lcssa338.a, %.preheader328.a ]
  %i.go = fadd double %i.gn, 3.600000e+02         ; 3 uses
  %i.gp = fcmp ugt double %i.go, -1.800000e+02
  br i1 %i.gp, label %..preheader327_crit_edge, label %.lr.ph342, !llvm.loop !80

..preheader326_crit_edge:                         ; preds = %.lr.ph345
  store double %i.gs, ptr %i.gl, align 8, !tbaa !18
  br label %.preheader326

.preheader326:                                    ; preds = %..preheader326_crit_edge, %.preheader327
  %.lcssa336 = phi double [ %i.gs, %..preheader326_crit_edge ], [ %.promoted344, %.preheader327 ] ; 2 uses
  %i.gq = fcmp ugt double %.lcssa336, -1.800000e+02
  br i1 %i.gq, label %.loopexit318, label %.lr.ph349

.lr.ph345:                                        ; preds = %.preheader327, %.lr.ph345
  %i.gr = phi double [ %i.gs, %.lr.ph345 ], [ %.promoted344, %.preheader327 ]
  %i.gs = fadd double %i.gr, -3.600000e+02        ; 4 uses
  %i.gt = fcmp ogt double %i.gs, 1.800000e+02
  br i1 %i.gt, label %.lr.ph345, label %..preheader326_crit_edge, !llvm.loop !81

.lr.ph349:                                        ; preds = %.preheader326, %.lr.ph349
  %i.gu = phi double [ %i.gv, %.lr.ph349 ], [ %.lcssa336, %.preheader326 ]
  %i.gv = fadd double %i.gu, 3.600000e+02         ; 3 uses
  %i.gw = fcmp ugt double %i.gv, -1.800000e+02
  br i1 %i.gw, label %._crit_edge, label %.lr.ph349, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph349
  store double %i.gv, ptr %i.gl, align 8, !tbaa !18
  br label %.loopexit318

..loopexit318_crit_edge:                          ; preds = %.lr.ph378
  store double %i.ag, ptr %i.w, align 8, !tbaa !18
  br label %.loopexit318.thread

.loopexit318:                                     ; preds = %.preheader326, %._crit_edge
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !18
  %i.gz = fdiv double %i.gy, 1.800000e+02
  %i.ha = fmul double %i.gz, f0x400921FB54442D18  ; 2 uses
  %i.hb = tail call double @sin(double noundef %i.ha) #18
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 136
  store double %i.hb, ptr %i.hc, align 8, !tbaa !19
  %i.hd = tail call double @cos(double noundef %i.ha) #18
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 144
  store double %i.hd, ptr %i.he, align 8, !tbaa !19
  %i.hf = icmp eq i32 %i.b, 14
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !18 ; 4 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !18 ; 4 uses
  br i1 %i.hf, label %bb.g, label %bb.f

bb.d:                                             ; preds = %.thread297
  %i.hk = fmul double %.pre, 5.000000e-01
  br label %bb.h

bb.e:                                             ; preds = %.thread297
  %i.hl = fmul double %.pre402, 5.000000e-01
  br label %bb.h

bb.f:                                             ; preds = %.loopexit318
  %i.hm = fcmp ogt double %i.hh, %i.hj
  %.273 = select i1 %i.hm, double %i.hh, double %i.hj
  br label %bb.h

bb.g:                                             ; preds = %.loopexit318
  %i.hn = fmul double %i.hh, %i.hj
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.hj, double %i.hn)
  %i.hp = tail call double @sqrt(double noundef %i.ho) #18
  %i.hq = fmul double %i.hp, 5.000000e-01
  br label %bb.h

bb.h:                                             ; preds = %.thread282, %.thread279, %bb.f, %.thread288, %.thread285, %bb.d, %bb.e, %bb.g, %.loopexit318.thread447, %.thread294, %.thread291
  %.0243 = phi double [ %i.gc, %.loopexit318.thread447 ], [ %i.hl, %bb.e ], [ %i.j, %.thread279 ], [ %., %.thread285 ], [ %i.hq, %bb.g ], [ %.272, %.thread288 ], [ %.273, %bb.f ], [ %i.bx, %.thread291 ], [ %i.cv, %.thread294 ], [ %i.hk, %bb.d ], [ %i.p, %.thread282 ] ; 2 uses
  %i.hr = fcmp ogt double %.0243, 0.000000e+00
  br i1 %i.hr, label %.thread305, label %.thread301

.thread305:                                       ; preds = %bb.b, %bb.h
  %.0243309 = phi double [ %.0243, %bb.h ], [ 1.000000e+00, %bb.b ] ; 4 uses
  %i.hs = load double, ptr %i.d, align 8, !tbaa !18 ; 2 uses
  %i.ht = fsub double %i.hs, %.0243309
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ht, ptr %i.hu, align 8, !tbaa !36
  %i.hv = fadd double %.0243309, %i.hs
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.hv, ptr %i.hw, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !18 ; 2 uses
  %i.hz = fsub double %i.hy, %.0243309
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.hz, ptr %i.ia, align 8, !tbaa !38
  %i.ib = fadd double %.0243309, %i.hy
  br label %.loopexit.sink.split

.thread301:                                       ; preds = %bb.h
  switch i32 %i.b, label %.loopexit [
    i32 8, label %bb.i
    i32 10, label %.loopexit318.thread
  ]

bb.i:                                             ; preds = %.thread301.thread, %.thread301
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.id = load double, ptr %i.ic, align 8, !tbaa !18 ; 3 uses
  %i.ie = load double, ptr %i.d, align 8, !tbaa !18
  %i.if = fsub double %i.id, %i.ie                ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !18 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !18
  %i.ik = fsub double %i.ih, %i.ij                ; 2 uses
  %i.il = fmul double %i.ik, %i.ik
  %i.im = tail call double @llvm.fmuladd.f64(double %i.if, double %i.if, double %i.il)
  %i.in = tail call double @sqrt(double noundef %i.im) #18 ; 4 uses
  %i.io = fsub double %i.id, %i.in
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.io, ptr %i.ip, align 8, !tbaa !36
  %i.iq = fadd double %i.in, %i.id
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.iq, ptr %i.ir, align 8, !tbaa !37
  %i.is = fsub double %i.ih, %i.in
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.is, ptr %i.it, align 8, !tbaa !38
  %i.iu = fadd double %i.in, %i.ih
  br label %.loopexit.sink.split

bb.j:                                             ; preds = %bb.a
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !19 ; 3 uses
  %i.ix = load double, ptr %i.iw, align 8, !tbaa !18 ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store double %i.ix, ptr %i.iy, align 8, !tbaa !36
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store double %i.ix, ptr %i.iz, align 8, !tbaa !37
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iw, i64 8
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !18 ; 4 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store double %i.jb, ptr %i.jc, align 8, !tbaa !38
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store double %i.jb, ptr %i.jd, align 8, !tbaa !39
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !19 ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, 2
  br i1 %i.jg, label %.lr.ph382, label %.loopexit

.lr.ph382:                                        ; preds = %bb.j
  %i.jh = zext nneg i32 %i.jf to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph382, %bb.s
  %indvars.iv = phi i64 [ 2, %.lr.ph382 ], [ %indvars.iv.next, %bb.s ] ; 2 uses
  %i.ji = phi double [ %i.jb, %.lr.ph382 ], [ %i.jz, %bb.s ] ; 2 uses
  %i.jj = phi double [ %i.jb, %.lr.ph382 ], [ %i.jx, %bb.s ] ; 2 uses
  %i.jk = phi double [ %i.ix, %.lr.ph382 ], [ %i.js, %bb.s ] ; 2 uses
  %i.jl = phi double [ %i.ix, %.lr.ph382 ], [ %i.jq, %bb.s ] ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %indvars.iv ; 3 uses
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !18 ; 4 uses
  %i.jo = fcmp ogt double %i.jl, %i.jn
  br i1 %i.jo, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.jn, ptr %i.iy, align 8, !tbaa !36
  %.pre413 = load double, ptr %i.jm, align 8, !tbaa !18
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.jp = phi double [ %.pre413, %bb.l ], [ %i.jn, %bb.k ] ; 3 uses
  %i.jq = phi double [ %i.jn, %bb.l ], [ %i.jl, %bb.k ]
  %i.jr = fcmp olt double %i.jk, %i.jp
  br i1 %i.jr, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.jp, ptr %i.iz, align 8, !tbaa !37
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.js = phi double [ %i.jp, %bb.n ], [ %i.jk, %bb.m ]
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !18 ; 4 uses
  %i.jv = fcmp ogt double %i.jj, %i.ju
  br i1 %i.jv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.ju, ptr %i.jc, align 8, !tbaa !38
  %.pre414 = load double, ptr %i.jt, align 8, !tbaa !18
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.jw = phi double [ %.pre414, %bb.p ], [ %i.ju, %bb.o ] ; 3 uses
  %i.jx = phi double [ %i.ju, %bb.p ], [ %i.jj, %bb.o ]
  %i.jy = fcmp olt double %i.ji, %i.jw
  br i1 %i.jy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.jw, ptr %i.jd, align 8, !tbaa !39
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.jz = phi double [ %i.jw, %bb.r ], [ %i.ji, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ka = icmp samesign ult i64 %indvars.iv.next, %i.jh
  br i1 %i.ka, label %bb.k, label %.loopexit, !llvm.loop !83

bb.t:                                             ; preds = %.thread301.thread315
  store double %i.fg, ptr %i.fi, align 8, !tbaa !38
  br label %.loopexit.sink.split

bb.u:                                             ; preds = %.thread301.thread315
  store double %i.fe, ptr %i.fi, align 8, !tbaa !38
  br label %.loopexit.sink.split

.loopexit318.thread:                              ; preds = %..loopexit318_crit_edge, %.preheader, %.thread301
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %i.kb, align 8, !tbaa !18
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double 1.000000e+00, ptr %i.kc, align 8, !tbaa !38
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %.thread305, %bb.t, %bb.u, %.loopexit318.thread, %bb.i
  %.sink460 = phi double [ %i.iu, %bb.i ], [ -1.000000e+00, %.loopexit318.thread ], [ %i.fg, %bb.u ], [ %i.fe, %bb.t ], [ %i.ib, %.thread305 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sink460, ptr %i.kd, align 8, !tbaa !39
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
