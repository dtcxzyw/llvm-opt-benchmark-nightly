Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/ArHosekSkyModel?download=true
inline.NumInlined: 8
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pow
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @ArHosekSkyModel_CookRadianceConfiguration(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fptosi double %1 to i32                  ; 3 uses
  %i.b = sitofp i32 %i.a to double
  %i.c = fsub double %1, %i.b                     ; 3 uses
  %i.d = fdiv double %3, f0x3FF921FB54442D18
  %i.e = tail call double @pow(double noundef %i.d, double noundef f0x3FD5555555555555) #10 ; 21 uses
  %i.f = mul i32 %i.a, 6                          ; 3 uses
  %i.g = add i32 %i.f, -6
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %0, i64 %i.h ; 5 uses
  %i.j = fsub double 1.000000e+00, %2             ; 2 uses
  %i.k = fsub double 1.000000e+00, %i.c           ; 2 uses
  %i.l = fmul double %i.j, %i.k
  %i.m = fsub double 1.000000e+00, %i.e           ; 17 uses
  %i.n = tail call double @pow(double noundef %i.m, double noundef 5.000000e+00) #10
  %i.o = load double, ptr %i.i, align 8, !tbaa !10
  %i.p = tail call double @pow(double noundef %i.m, double noundef 4.000000e+00) #10
  %i.q = fmul double %i.p, 5.000000e+00
  %i.r = fmul double %i.e, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !10
  %i.u = fmul double %i.t, %i.r
  %i.v = tail call double @pow(double noundef %i.m, double noundef 3.000000e+00) #10
  %i.w = fmul double %i.v, 1.000000e+01
  %i.x = tail call double @pow(double noundef %i.e, double noundef 2.000000e+00) #10
  %i.y = fmul double %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aa = tail call double @pow(double noundef %i.m, double noundef 2.000000e+00) #10
  %i.ab = fmul double %i.aa, 1.000000e+01
  %i.ac = tail call double @pow(double noundef %i.e, double noundef 3.000000e+00) #10
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.af = tail call double @pow(double noundef %i.e, double noundef 4.000000e+00) #10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ah = tail call double @pow(double noundef %i.e, double noundef 5.000000e+00) #10
  %i.ai = add i32 %i.f, 54
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %0, i64 %i.aj ; 5 uses
  %i.al = fmul double %2, %i.k
  %i.am = tail call double @pow(double noundef %i.m, double noundef 5.000000e+00) #10
  %i.an = tail call double @pow(double noundef %i.m, double noundef 4.000000e+00) #10
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.n, double %i.o, double %i.u)
  %i.ap = load double, ptr %i.z, align 8, !tbaa !10
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.y, double %i.ap, double %i.ao)
  %i.ar = load double, ptr %i.ae, align 8, !tbaa !10
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ar, double %i.aq)
  %i.at = load <2 x double>, ptr %i.ag, align 8, !tbaa !10 ; 2 uses
  %i.au = insertelement <2 x double> poison, double %i.m, i64 0
  %i.av = insertelement <2 x double> %i.au, double %i.an, i64 1
  %i.aw = fmul <2 x double> %i.av, splat (double 5.000000e+00) ; 2 uses
  %i.ax = insertelement <2 x double> poison, double %i.af, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.e, i64 1
  %i.az = fmul <2 x double> %i.aw, %i.ay
  %i.ba = load <2 x double>, ptr %i.ak, align 8, !tbaa !10 ; 2 uses
  %i.bb = shufflevector <2 x double> %i.at, <2 x double> %i.ba, <2 x i32> <i32 0, i32 3>
  %i.bc = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.as, i64 0
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.az, <2 x double> %i.bc)
  %i.be = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.am, i64 1
  %i.bg = shufflevector <2 x double> %i.at, <2 x double> %i.ba, <2 x i32> <i32 1, i32 2>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %i.bg, <2 x double> %i.bd) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = fmul double %i.l, %i.bi
  %i.bk = tail call double @pow(double noundef %i.m, double noundef 3.000000e+00) #10
  %i.bl = fmul double %i.bk, 1.000000e+01
  %i.bm = tail call double @pow(double noundef %i.e, double noundef 2.000000e+00) #10
  %i.bn = fmul double %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !10
  %i.bq = extractelement <2 x double> %i.bh, i64 1
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bn, double %i.bp, double %i.bq)
  %i.bs = tail call double @pow(double noundef %i.m, double noundef 2.000000e+00) #10
  %i.bt = fmul double %i.bs, 1.000000e+01
  %i.bu = tail call double @pow(double noundef %i.e, double noundef 3.000000e+00) #10
  %i.bv = fmul double %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bv, double %i.bx, double %i.br)
  %i.bz = tail call double @pow(double noundef %i.e, double noundef 4.000000e+00) #10
  %i.ca = extractelement <2 x double> %i.aw, i64 0 ; 3 uses
  %i.cb = fmul double %i.ca, %i.bz
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !10
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cb, double %i.cd, double %i.by)
  %i.cf = tail call double @pow(double noundef %i.e, double noundef 5.000000e+00) #10
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !10
  %i.ci = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.ch, double %i.ce)
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.al, double %i.ci, double %i.bj) ; 2 uses
  %i.ck = icmp eq i32 %i.a, 10
  br i1 %i.ck, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cl = sext i32 %i.f to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %0, i64 %i.cl ; 12 uses
  %i.cn = fmul double %i.j, %i.c
  %i.co = tail call double @pow(double noundef %i.m, double noundef 5.000000e+00) #10
  %i.cp = load double, ptr %i.cm, align 8, !tbaa !10
  %i.cq = tail call double @pow(double noundef %i.m, double noundef 4.000000e+00) #10
  %i.cr = fmul double %i.cq, 5.000000e+00
  %i.cs = fmul double %i.e, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !10
  %i.cv = fmul double %i.cu, %i.cs
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.co, double %i.cp, double %i.cv)
  %i.cx = tail call double @pow(double noundef %i.m, double noundef 3.000000e+00) #10
  %i.cy = fmul double %i.cx, 1.000000e+01
  %i.cz = tail call double @pow(double noundef %i.e, double noundef 2.000000e+00) #10
  %i.da = fmul double %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !10
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dc, double %i.cw)
  %i.de = tail call double @pow(double noundef %i.m, double noundef 2.000000e+00) #10
  %i.df = fmul double %i.de, 1.000000e+01
  %i.dg = tail call double @pow(double noundef %i.e, double noundef 3.000000e+00) #10
  %i.dh = fmul double %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dj, double %i.dd)
  %i.dl = tail call double @pow(double noundef %i.e, double noundef 4.000000e+00) #10
  %i.dm = fmul double %i.ca, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32
  %i.do = load double, ptr %i.dn, align 8, !tbaa !10
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dm, double %i.do, double %i.dk)
  %i.dq = tail call double @pow(double noundef %i.e, double noundef 5.000000e+00) #10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !10
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.ds, double %i.dp)
  %i.du = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.dt, double %i.cj)
  %i.dv = getelementptr i8, ptr %i.cm, i64 480
  %i.dw = fmul double %2, %i.c
  %i.dx = tail call double @pow(double noundef %i.m, double noundef 5.000000e+00) #10
  %i.dy = load double, ptr %i.dv, align 8, !tbaa !10
  %i.dz = tail call double @pow(double noundef %i.m, double noundef 4.000000e+00) #10
  %i.ea = fmul double %i.dz, 5.000000e+00
  %i.eb = fmul double %i.e, %i.ea
  %i.ec = getelementptr i8, ptr %i.cm, i64 488
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !10
  %i.ee = fmul double %i.ed, %i.eb
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.dx, double %i.dy, double %i.ee)
  %i.eg = tail call double @pow(double noundef %i.m, double noundef 3.000000e+00) #10
  %i.eh = fmul double %i.eg, 1.000000e+01
  %i.ei = tail call double @pow(double noundef %i.e, double noundef 2.000000e+00) #10
  %i.ej = fmul double %i.eh, %i.ei
  %i.ek = getelementptr i8, ptr %i.cm, i64 496
  %i.el = load double, ptr %i.ek, align 8, !tbaa !10
  %i.em = tail call double @llvm.fmuladd.f64(double %i.ej, double %i.el, double %i.ef)
  %i.en = tail call double @pow(double noundef %i.m, double noundef 2.000000e+00) #10
  %i.eo = fmul double %i.en, 1.000000e+01
  %i.ep = tail call double @pow(double noundef %i.e, double noundef 3.000000e+00) #10
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = getelementptr i8, ptr %i.cm, i64 504
  %i.es = load double, ptr %i.er, align 8, !tbaa !10
  %i.et = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.es, double %i.em)
  %i.eu = tail call double @pow(double noundef %i.e, double noundef 4.000000e+00) #10
  %i.ev = fmul double %i.ca, %i.eu
  %i.ew = getelementptr i8, ptr %i.cm, i64 512
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !10
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ev, double %i.ex, double %i.et)
  %i.ez = tail call double @pow(double noundef %i.e, double noundef 5.000000e+00) #10
  %i.fa = getelementptr i8, ptr %i.cm, i64 520
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !10
  %i.fc = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.fb, double %i.ey)
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.fc, double %i.du)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi double [ %i.fd, %bb.b ], [ %i.cj, %bb.a ]
  ret double %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @ArHosekSkyModel_GetRadianceInternal(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = fmul double %2, %i.b
  %i.d = tail call double @exp(double noundef %i.c) #10
  %i.e = tail call double @cos(double noundef %2) #10 ; 4 uses
  %i.f = fmul double %i.e, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load double, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.i = fmul double %i.h, -2.000000e+00
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = insertelement <2 x double> poison, double %i.e, i64 0
  %i.l = insertelement <2 x double> %i.k, double %i.h, i64 1 ; 2 uses
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.l, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.n = extractelement <2 x double> %i.m, i64 1
  %i.o = tail call double @llvm.fmuladd.f64(double %i.i, double %i.e, double %i.n)
  %i.p = tail call double @pow(double noundef %i.o, double noundef 1.500000e+00) #10
  %i.q = tail call double @cos(double noundef %1) #10
  %i.r = tail call double @sqrt(double noundef %i.q) #10
  %i.s = load double, ptr %0, align 8, !tbaa !10
  %3 = load double, ptr %i.j, align 8, !tbaa !10
  %i.t = tail call double @cos(double noundef %1) #10
  %i.u = fadd double %i.t, 1.000000e-02
  %i.v = insertelement <2 x double> %i.m, double %3, i64 1
  %i.w = insertelement <2 x double> poison, double %i.p, i64 0
  %i.x = insertelement <2 x double> %i.w, double %i.u, i64 1
  %i.y = fdiv <2 x double> %i.v, %i.x             ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 1
  %i.aa = tail call double @exp(double noundef %i.z) #10
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.s, double %i.aa, double 1.000000e+00)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.af, double %i.d, double %i.ad)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !10
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.f, double %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = extractelement <2 x double> %i.y, i64 0
  %i.an = tail call double @llvm.fmuladd.f64(double %i.al, double %i.am, double %i.aj)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !10
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.r, double %i.an)
  %i.ar = fmul double %i.ab, %i.aq
  ret double %i.ar
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @arhosekskymodelstate_alloc_init(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1088) ptr @malloc(i64 noundef 1088) #11 ; 49 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  store double f0x3F723AC80BF81B3F, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store double %1, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store double %2, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store double %0, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 984
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 896
  %i.i = load ptr, ptr @datasets, align 16, !tbaa !19
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.i, ptr noundef %i.a, double noundef %1, double noundef %2, double noundef %0)
  %i.j = load ptr, ptr @datasetsRad, align 16, !tbaa !19
  %i.k = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.j, double noundef %1, double noundef %2, double noundef %0)
  store double %i.k, ptr %i.f, align 8, !tbaa !10
  store double 1.000000e+00, ptr %i.g, align 8, !tbaa !10
  store double 1.000000e+00, ptr %i.h, align 8, !tbaa !10
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 8), align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.l, ptr noundef nonnull %i.m, double noundef %1, double noundef %2, double noundef %0)
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 8), align 8, !tbaa !19
  %i.o = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.n, double noundef %1, double noundef %2, double noundef %0)
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store double %i.o, ptr %i.p, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  store double 1.000000e+00, ptr %i.q, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 904
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !10
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 16), align 16, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.s, ptr noundef nonnull %i.t, double noundef %1, double noundef %2, double noundef %0)
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 16), align 16, !tbaa !19
  %i.v = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.u, double noundef %1, double noundef %2, double noundef %0)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store double %i.v, ptr %i.w, align 8, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  store double 1.000000e+00, ptr %i.x, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 912
  store double 1.000000e+00, ptr %i.y, align 8, !tbaa !10
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 24), align 8, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.z, ptr noundef nonnull %i.aa, double noundef %1, double noundef %2, double noundef %0)
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 24), align 8, !tbaa !19
  %i.ac = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.ab, double noundef %1, double noundef %2, double noundef %0)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 816
  store double %i.ac, ptr %i.ad, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  store double 1.000000e+00, ptr %i.ae, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  store double 1.000000e+00, ptr %i.af, align 8, !tbaa !10
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 32), align 16, !tbaa !19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.ag, ptr noundef nonnull %i.ah, double noundef %1, double noundef %2, double noundef %0)
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 32), align 16, !tbaa !19
  %i.aj = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.ai, double noundef %1, double noundef %2, double noundef %0)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 824
  store double %i.aj, ptr %i.ak, align 8, !tbaa !10
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 1016
  store double 1.000000e+00, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 928
  store double 1.000000e+00, ptr %i.am, align 8, !tbaa !10
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 40), align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.an, ptr noundef nonnull %i.ao, double noundef %1, double noundef %2, double noundef %0)
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 40), align 8, !tbaa !19
  %i.aq = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.ap, double noundef %1, double noundef %2, double noundef %0)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 832
  store double %i.aq, ptr %i.ar, align 8, !tbaa !10
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  store double 1.000000e+00, ptr %i.as, align 8, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 936
  store double 1.000000e+00, ptr %i.at, align 8, !tbaa !10
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 48), align 16, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.au, ptr noundef nonnull %i.av, double noundef %1, double noundef %2, double noundef %0)
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 48), align 16, !tbaa !19
  %i.ax = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.aw, double noundef %1, double noundef %2, double noundef %0)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 840
  store double %i.ax, ptr %i.ay, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1032
  store double 1.000000e+00, ptr %i.az, align 8, !tbaa !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 944
  store double 1.000000e+00, ptr %i.ba, align 8, !tbaa !10
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 56), align 8, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.bb, ptr noundef nonnull %i.bc, double noundef %1, double noundef %2, double noundef %0)
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 56), align 8, !tbaa !19
  %i.be = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.bd, double noundef %1, double noundef %2, double noundef %0)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 848
  store double %i.be, ptr %i.bf, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  store double 1.000000e+00, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  store double 1.000000e+00, ptr %i.bh, align 8, !tbaa !10
  %i.bi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 64), align 16, !tbaa !19
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.bi, ptr noundef nonnull %i.bj, double noundef %1, double noundef %2, double noundef %0)
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 64), align 16, !tbaa !19
  %i.bl = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.bk, double noundef %1, double noundef %2, double noundef %0)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 856
  store double %i.bl, ptr %i.bm, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 1048
  store double 1.000000e+00, ptr %i.bn, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 960
  store double 1.000000e+00, ptr %i.bo, align 8, !tbaa !10
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 72), align 8, !tbaa !19
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.bp, ptr noundef nonnull %i.bq, double noundef %1, double noundef %2, double noundef %0)
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 72), align 8, !tbaa !19
  %i.bs = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.br, double noundef %1, double noundef %2, double noundef %0)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 864
  store double %i.bs, ptr %i.bt, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  store double 1.000000e+00, ptr %i.bu, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  store double 1.000000e+00, ptr %i.bv, align 8, !tbaa !10
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasets, i64 80), align 16, !tbaa !19
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.bw, ptr noundef nonnull %i.bx, double noundef %1, double noundef %2, double noundef %0)
  %i.by = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRad, i64 80), align 16, !tbaa !19
  %i.bz = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.by, double noundef %1, double noundef %2, double noundef %0)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 872
  store double %i.bz, ptr %i.ca, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  store double 1.000000e+00, ptr %i.cb, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 976
  store double 1.000000e+00, ptr %i.cc, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable
define dso_local double @art_blackbody_dd_value(double noundef %0, double noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call double @pow(double noundef %1, double noundef 5.000000e+00) #10
  %i.b = fmul double %0, %1
  %i.c = fdiv double 1.438780e-02, %i.b
  %i.d = tail call double @exp(double noundef %i.c) #10
  %i.e = fadd double %i.d, -1.000000e+00
  %i.f = insertelement <2 x double> poison, double %i.a, i64 0
  %i.g = insertelement <2 x double> %i.f, double %i.e, i64 1
  %i.h = fdiv <2 x double> <double 3.741770e-16, double 1.000000e+00>, %i.g ; 2 uses
  %shift = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.h, %shift
  %i.i = extractelement <2 x double> %foldExtExtBinop, i64 0
  ret double %i.i
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @arhosekskymodelstate_alienworld_alloc_init(double noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1088) ptr @malloc(i64 noundef 1088) #11 ; 19 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store double %3, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store double %4, ptr %i.c, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store double %0, ptr %i.d, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 984 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1000
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1008
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1040
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1056
  %i.l = tail call double @sqrt(double noundef %1) #10
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  %i.n = insertelement <2 x double> poison, double %i.l, i64 0
  %i.o = insertelement <2 x double> %i.n, double %1, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 992
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 904
  %i.r = load double, ptr %i.g, align 8, !tbaa !10 ; 2 uses
  %i.s = fadd double %i.r, 0.000000e+00
  %i.t = insertelement <2 x double> poison, double %1, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 920
  %i.w = load <2 x double>, ptr %i.h, align 8, !tbaa !10 ; 3 uses
  %i.x = extractelement <2 x double> %i.w, i64 0
  %i.y = fadd double %i.s, %i.x
  %i.z = extractelement <2 x double> %i.w, i64 1
  %i.aa = fadd double %i.y, %i.z
  %i.ab = fmul <2 x double> %i.u, %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 936
  %i.ad = load <2 x double>, ptr %i.i, align 8, !tbaa !10 ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 0
  %i.af = fadd double %i.aa, %i.ae
  %i.ag = extractelement <2 x double> %i.ad, i64 1
  %i.ah = fadd double %i.af, %i.ag
  %i.ai = fmul <2 x double> %i.u, %i.ad
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 952
  %i.ak = load <2 x double>, ptr %i.j, align 8, !tbaa !10 ; 3 uses
  %i.al = extractelement <2 x double> %i.ak, i64 0
  %i.am = fadd double %i.ah, %i.al
  %i.an = extractelement <2 x double> %i.ak, i64 1
  %i.ao = fadd double %i.am, %i.an
  %i.ap = fmul <2 x double> %i.u, %i.ak
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 968
  %i.ar = load <2 x double>, ptr %i.k, align 8, !tbaa !10 ; 3 uses
  %i.as = extractelement <2 x double> %i.ar, i64 0
  %i.at = fadd double %i.ao, %i.as
  %i.au = extractelement <2 x double> %i.ar, i64 1
  %i.av = fadd double %i.at, %i.au
  %i.aw = fdiv double %i.av, 9.000000e+00         ; 3 uses
  %i.ax = tail call double @sqrt(double noundef %i.aw) #10
  %i.ay = load double, ptr %i.f, align 8, !tbaa !10
  %i.az = insertelement <2 x double> <double f0x3F723AC80BF81B3F, double poison>, double %i.ay, i64 1
  %i.ba = fmul <2 x double> %i.o, %i.az
  %i.bb = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bc = insertelement <2 x double> %i.bb, double %i.aw, i64 1
  %i.bd = fdiv <2 x double> %i.ba, %i.bc
  store <2 x double> %i.bd, ptr %i.m, align 8, !tbaa !10
  %i.be = load double, ptr %i.p, align 8, !tbaa !10
  %i.bf = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.r, i64 1
  %i.bh = fmul <2 x double> %i.u, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bk = fdiv <2 x double> %i.bh, %i.bj
  store <2 x double> %i.bk, ptr %i.q, align 8, !tbaa !10
  %i.bl = fdiv <2 x double> %i.ab, %i.bj
  store <2 x double> %i.bl, ptr %i.v, align 8, !tbaa !10
  %i.bm = fdiv <2 x double> %i.ai, %i.bj
  store <2 x double> %i.bm, ptr %i.ac, align 8, !tbaa !10
  %i.bn = fdiv <2 x double> %i.ap, %i.bj
  store <2 x double> %i.bn, ptr %i.aj, align 8, !tbaa !10
  %i.bo = fmul <2 x double> %i.u, %i.ar
  %i.bp = fdiv <2 x double> %i.bo, %i.bj
  store <2 x double> %i.bp, ptr %i.aq, align 8, !tbaa !10
  ret ptr %i.a

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 8 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr @datasets, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !19
  %i.bs = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %indvars.iv
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.br, ptr noundef %i.bs, double noundef %3, double noundef %4, double noundef %0)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @datasetsRad, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.bv = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.bu, double noundef %3, double noundef %4, double noundef %0)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store double %i.bv, ptr %i.bw, align 8, !tbaa !10
  %i.bx = trunc nuw nsw i64 %indvars.iv to i32
  %i.by = uitofp nneg i32 %i.bx to double
  %i.bz = tail call nnan double @llvm.fmuladd.f64(double %i.by, double 4.000000e+01, double 3.200000e+02)
  %i.ca = fmul nnan double %i.bz, 1.000000e-09    ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr @originalSolarRadianceTable, i64 %indvars.iv
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !10
  %i.cd = tail call double @pow(double noundef %i.ca, double noundef 5.000000e+00) #10
  %i.ce = fmul double %2, %i.ca
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ce, i64 1
  %i.ch = fdiv <2 x double> <double 3.741770e-16, double 1.438780e-02>, %i.cg ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 1
  %i.cj = tail call double @exp(double noundef %i.ci) #10
  %i.ck = fadd double %i.cj, -1.000000e+00
  %i.cl = fdiv double 1.000000e+00, %i.ck
  %i.cm = extractelement <2 x double> %i.ch, i64 0
  %i.cn = fmul double %i.cm, %i.cl
  %i.co = fmul double %i.cn, 3.199920e-10
  %i.cp = fdiv double %i.co, %i.cc
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store double %i.cp, ptr %i.cq, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %.preheader, label %bb.b, !llvm.loop !23
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @arhosekskymodelstate_free(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @free(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @arhosekskymodel_radiance(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = fadd double %3, -3.200000e+02
  %i.b = fdiv double %i.a, 4.000000e+01           ; 2 uses
  %i.c = fptosi double %i.b to i32                ; 4 uses
  %or.cond = icmp ugt i32 %i.c, 10
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @fmod(double noundef %i.b, double noundef 1.000000e+00) #10 ; 3 uses
  %i.e = zext nneg i32 %i.c to i64                ; 3 uses
  %i.f = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.e ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load double, ptr %i.g, align 8, !tbaa !10
  %i.i = fmul double %2, %i.h
  %i.j = tail call double @exp(double noundef %i.i) #10
  %i.k = tail call double @cos(double noundef %2) #10 ; 4 uses
  %i.l = fmul double %i.k, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.n = load double, ptr %i.m, align 8, !tbaa !10 ; 2 uses
  %i.o = fmul double %i.n, -2.000000e+00
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = insertelement <2 x double> poison, double %i.k, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.n, i64 1 ; 2 uses
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.r, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1
  %i.u = tail call double @llvm.fmuladd.f64(double %i.o, double %i.k, double %i.t)
  %i.v = tail call double @pow(double noundef %i.u, double noundef 1.500000e+00) #10
  %i.w = tail call double @cos(double noundef %1) #10
  %i.x = tail call double @sqrt(double noundef %i.w) #10
  %4 = load double, ptr %i.f, align 8, !tbaa !10
  %i.y = load double, ptr %i.p, align 8, !tbaa !10
  %i.z = tail call double @cos(double noundef %1) #10
  %i.aa = fadd double %i.z, 1.000000e-02
  %i.ab = insertelement <2 x double> %i.s, double %i.y, i64 1
  %i.ac = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ad = insertelement <2 x double> %i.ac, double %i.aa, i64 1
  %i.ae = fdiv <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = extractelement <2 x double> %i.ae, i64 1
  %i.ag = tail call double @exp(double noundef %i.af) #10
  %i.ah = tail call double @llvm.fmuladd.f64(double %4, double %i.ag, double 1.000000e+00)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !10
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %i.j, double %i.aj)
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.ao = load double, ptr %i.an, align 8, !tbaa !10
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.l, double %i.am)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10
  %i.as = extractelement <2 x double> %i.ae, i64 0
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.as, double %i.ap)
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.av = load double, ptr %i.au, align 8, !tbaa !10
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double %i.x, double %i.at)
  %i.ax = fmul double %i.ah, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.e
  %i.ba = load double, ptr %i.az, align 8, !tbaa !10
  %i.bb = fmul double %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.e
  %i.be = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bf = fmul double %i.be, %i.bb                ; 2 uses
  %i.bg = fcmp olt double %i.d, f0x3EB0C6F7A0B5ED8D
  br i1 %i.bg, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = fsub double 1.000000e+00, %i.d
  %i.bi = fmul double %i.bh, %i.bf                ; 2 uses
  %.not = icmp eq i32 %i.c, 10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bj = add nuw nsw i32 %i.c, 1
  %i.bk = zext nneg i32 %i.bj to i64              ; 3 uses
  %i.bl = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %i.bk ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !10
  %i.bo = fmul double %2, %i.bn
  %i.bp = tail call double @exp(double noundef %i.bo) #10
  %i.bq = tail call double @cos(double noundef %2) #10 ; 4 uses
  %i.br = fmul double %i.bq, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !10 ; 2 uses
  %i.bu = fmul double %i.bt, -2.000000e+00
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bt, i64 1 ; 2 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bx, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 1
  %i.ca = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bq, double %i.bz)
  %i.cb = tail call double @pow(double noundef %i.ca, double noundef 1.500000e+00) #10
  %i.cc = tail call double @cos(double noundef %1) #10
  %i.cd = tail call double @sqrt(double noundef %i.cc) #10
  %5 = load double, ptr %i.bl, align 8, !tbaa !10
  %i.ce = load double, ptr %i.bv, align 8, !tbaa !10
  %i.cf = tail call double @cos(double noundef %1) #10
  %i.cg = fadd double %i.cf, 1.000000e-02
  %i.ch = insertelement <2 x double> %i.by, double %i.ce, i64 1
  %i.ci = insertelement <2 x double> poison, double %i.cb, i64 0
  %i.cj = insertelement <2 x double> %i.ci, double %i.cg, i64 1
  %i.ck = fdiv <2 x double> %i.ch, %i.cj          ; 2 uses
  %i.cl = extractelement <2 x double> %i.ck, i64 1
  %i.cm = tail call double @exp(double noundef %i.cl) #10
  %i.cn = tail call double @llvm.fmuladd.f64(double %5, double %i.cm, double 1.000000e+00)
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cp = load double, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !10
  %i.cs = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.bp, double %i.cp)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !10
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.br, double %i.cs)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !10
  %i.cy = extractelement <2 x double> %i.ck, i64 0
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cx, double %i.cy, double %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.db = load double, ptr %i.da, align 8, !tbaa !10
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.db, double %i.cd, double %i.cz)
  %i.dd = fmul double %i.cn, %i.dc
  %i.de = fmul double %i.d, %i.dd
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bk
  %i.dg = load double, ptr %i.df, align 8, !tbaa !10
  %i.dh = fmul double %i.dg, %i.de
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bk
  %i.dj = load double, ptr %i.di, align 8, !tbaa !10
  %i.dk = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dj, double %i.bi)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.bf, %bb.b ], [ %i.dk, %bb.d ], [ %i.bi, %bb.c ]
  ret double %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @arhosek_xyz_skymodelstate_alloc_init(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1088) ptr @malloc(i64 noundef 1088) #11 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  store double f0x3F723AC80BF81B3F, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store double %0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store double %1, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store double %2, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  %i.g = load ptr, ptr @datasetsXYZ, align 16, !tbaa !19
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.g, ptr noundef %i.a, double noundef %0, double noundef %1, double noundef %2)
  %i.h = load ptr, ptr @datasetsXYZRad, align 16, !tbaa !19
  %i.i = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.h, double noundef %0, double noundef %1, double noundef %2)
  store double %i.i, ptr %i.f, align 8, !tbaa !10
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsXYZ, i64 8), align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.j, ptr noundef nonnull %i.k, double noundef %0, double noundef %1, double noundef %2)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsXYZRad, i64 8), align 8, !tbaa !19
  %i.m = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.l, double noundef %0, double noundef %1, double noundef %2)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store double %i.m, ptr %i.n, align 8, !tbaa !10
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsXYZ, i64 16), align 16, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.o, ptr noundef nonnull %i.p, double noundef %0, double noundef %1, double noundef %2)
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsXYZRad, i64 16), align 16, !tbaa !19
  %i.r = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.q, double noundef %0, double noundef %1, double noundef %2)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store double %i.r, ptr %i.s, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noalias noundef ptr @arhosek_rgb_skymodelstate_alloc_init(double noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(1088) ptr @malloc(i64 noundef 1088) #11 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 888
  store double f0x3F723AC80BF81B3F, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 880
  store double %0, ptr %i.c, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1072
  store double %1, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1080
  store double %2, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 792
  %i.g = load ptr, ptr @datasetsRGB, align 16, !tbaa !19
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.g, ptr noundef %i.a, double noundef %0, double noundef %1, double noundef %2)
  %i.h = load ptr, ptr @datasetsRGBRad, align 16, !tbaa !19
  %i.i = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.h, double noundef %0, double noundef %1, double noundef %2)
  store double %i.i, ptr %i.f, align 8, !tbaa !10
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRGB, i64 8), align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.j, ptr noundef nonnull %i.k, double noundef %0, double noundef %1, double noundef %2)
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRGBRad, i64 8), align 8, !tbaa !19
  %i.m = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.l, double noundef %0, double noundef %1, double noundef %2)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 800
  store double %i.m, ptr %i.n, align 8, !tbaa !10
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRGB, i64 16), align 16, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  tail call void @ArHosekSkyModel_CookConfiguration(ptr noundef %i.o, ptr noundef nonnull %i.p, double noundef %0, double noundef %1, double noundef %2)
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @datasetsRGBRad, i64 16), align 16, !tbaa !19
  %i.r = tail call double @ArHosekSkyModel_CookRadianceConfiguration(ptr noundef %i.q, double noundef %0, double noundef %1, double noundef %2)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 808
  store double %i.r, ptr %i.s, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local double @arhosek_tristim_skymodel_radiance(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 2 uses
  %i.b = getelementptr inbounds [72 x i8], ptr %0, i64 %i.a ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load double, ptr %i.c, align 8, !tbaa !10
  %i.e = fmul double %2, %i.d
  %i.f = tail call double @exp(double noundef %i.e) #10
  %i.g = tail call double @cos(double noundef %2) #10 ; 4 uses
  %i.h = fmul double %i.g, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.j = load double, ptr %i.i, align 8, !tbaa !10 ; 2 uses
  %i.k = fmul double %i.j, -2.000000e+00
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = insertelement <2 x double> poison, double %i.g, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.j, i64 1 ; 2 uses
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.n, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.p = extractelement <2 x double> %i.o, i64 1
  %i.q = tail call double @llvm.fmuladd.f64(double %i.k, double %i.g, double %i.p)
  %i.r = tail call double @pow(double noundef %i.q, double noundef 1.500000e+00) #10
  %i.s = tail call double @cos(double noundef %1) #10
  %i.t = tail call double @sqrt(double noundef %i.s) #10
  %4 = load double, ptr %i.b, align 8, !tbaa !10
  %i.u = load double, ptr %i.l, align 8, !tbaa !10
  %i.v = tail call double @cos(double noundef %1) #10
  %i.w = fadd double %i.v, 1.000000e-02
  %i.x = insertelement <2 x double> %i.o, double %i.u, i64 1
  %i.y = insertelement <2 x double> poison, double %i.r, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.w, i64 1
  %i.aa = fdiv <2 x double> %i.x, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1
  %i.ac = tail call double @exp(double noundef %i.ab) #10
  %i.ad = tail call double @llvm.fmuladd.f64(double %4, double %i.ac, double 1.000000e+00)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !10
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.f, double %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !10
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ak, double %i.h, double %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.an = load double, ptr %i.am, align 8, !tbaa !10
  %i.ao = extractelement <2 x double> %i.aa, i64 0
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.al)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10
  %i.as = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.t, double %i.ap)
  %i.at = fmul double %i.ad, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.a
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10
  %i.ax = fmul double %i.aw, %i.at
  ret double %i.ax
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @arhosekskymodel_sr_internal(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, double noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = fmul double %3, 2.000000e+00
  %i.b = fdiv double %i.a, f0x400921FB54442D18
  %i.c = tail call double @pow(double noundef %i.b, double noundef f0x3FD5555555555555) #10
  %i.d = fmul double %i.c, 4.500000e+01
  %i.e = fptosi double %i.d to i32
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.e, i32 44) ; 2 uses
  %i.f = sitofp i32 %spec.store.select to double
  %i.g = fdiv double %i.f, 4.500000e+01
  %i.h = tail call double @pow(double noundef %i.g, double noundef 3.000000e+00) #10
  %i.i = fmul double %i.h, f0x3FF921FB54442D18
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr @solarDatasets, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = mul nsw i32 %1, 180
  %i.n = shl i32 %spec.store.select, 2
  %i.o = add i32 %i.m, 4
  %i.p = add i32 %i.o, %i.n
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr [8 x i8], ptr %i.l, i64 %i.q ; 4 uses
  %i.s = fsub double %3, %i.i                     ; 4 uses
  %.019 = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load double, ptr %.019, align 8, !tbaa !10
  %i.u = fadd double %i.t, 0.000000e+00
  %.019.1 = getelementptr i8, ptr %i.r, i64 -16
  %i.v = load double, ptr %.019.1, align 8, !tbaa !10
  %i.w = tail call double @llvm.fmuladd.f64(double %i.s, double %i.v, double %i.u)
  %i.x = fmul double %i.s, %i.s                   ; 2 uses
  %.019.2 = getelementptr i8, ptr %i.r, i64 -24
  %i.y = load double, ptr %.019.2, align 8, !tbaa !10
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %i.y, double %i.w)
  %i.aa = fmul double %i.s, %i.x
  %.019.3 = getelementptr i8, ptr %i.r, i64 -32
  %i.ab = load double, ptr %.019.3, align 8, !tbaa !10
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.ab, double %i.z)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.j
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = fmul double %i.ac, %i.af
  ret double %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define dso_local double @arhosekskymodel_solar_radiance_internal2(ptr nofree noundef readonly captures(none) %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.b = load double, ptr %i.a, align 8, !tbaa !13
  %i.c = tail call double @sin(double noundef %i.b) #10 ; 2 uses
  %i.d = fmul double %i.c, %i.c
  %i.e = fdiv double 1.000000e+00, %i.d
  %i.f = tail call double @sin(double noundef %3) #10 ; 2 uses
  %i.g = fneg double %i.f
  %i.h = fmul double %i.e, %i.g
  %i.i = tail call double @llvm.fmuladd.f64(double %i.h, double %i.f, double 1.000000e+00) ; 2 uses
  %i.j = fcmp olt double %i.i, 0.000000e+00
  %spec.store.select = select i1 %i.j, double 0.000000e+00, double %i.i
  %i.k = tail call double @sqrt(double noundef %spec.store.select) #10 ; 6 uses
  %i.l = fcmp oeq double %i.k, 0.000000e+00
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.n = load double, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %i.o = fptosi double %i.n to i32                ; 2 uses
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  %i.q = icmp eq i32 %i.p, 9                      ; 2 uses
  %i.r = fadd double %1, -3.200000e+02
  %i.s = tail call double @fmod(double noundef %1, double noundef 4.000000e+01) #10
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.s, i64 1
  %i.v = fdiv <2 x double> %i.u, splat (double 4.000000e+01) ; 2 uses
  %i.w = extractelement <2 x double> %i.v, i64 0
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = icmp eq i32 %i.x, 10                     ; 2 uses
  %.058 = select i1 %i.y, i32 9, i32 %i.x         ; 2 uses
  %i.z = extractelement <2 x double> %i.v, i64 1
  %.057 = select i1 %i.y, double 1.000000e+00, double %i.z ; 3 uses
  %i.aa = fmul double %2, 2.000000e+00
  %i.ab = fdiv double %i.aa, f0x400921FB54442D18  ; 4 uses
  %i.ac = tail call double @pow(double noundef %i.ab, double noundef f0x3FD5555555555555) #10
  %i.ad = fmul double %i.ac, 4.500000e+01
  %i.ae = fptosi double %i.ad to i32
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 44) ; 2 uses
  %i.af = sitofp i32 %spec.store.select.i to double
  %i.ag = fdiv double %i.af, 4.500000e+01
  %i.ah = tail call double @pow(double noundef %i.ag, double noundef 3.000000e+00) #10
  %i.ai = sext i32 %.058 to i64                   ; 3 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr @solarDatasets, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !19 ; 2 uses
  %i.al = mul i32 %i.p, 180
  %i.am = select i1 %i.q, i32 1440, i32 %i.al     ; 2 uses
  %i.an = shl i32 %spec.store.select.i, 2
  %i.ao = add i32 %i.am, 4                        ; 2 uses
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %i.ak, i64 %i.aq ; 4 uses
  %.019.i = getelementptr i8, ptr %i.ar, i64 -8
  %.019.1.i = getelementptr i8, ptr %i.ar, i64 -16
  %.019.2.i = getelementptr i8, ptr %i.ar, i64 -24
  %i.as = load double, ptr %.019.2.i, align 8, !tbaa !10
  %.019.3.i = getelementptr i8, ptr %i.ar, i64 -32
  %i.at = load double, ptr %.019.3.i, align 8, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ai
  %i.aw = load double, ptr %i.av, align 8, !tbaa !10 ; 2 uses
  %i.ax = add nsw i32 %.058, 1
  %i.ay = tail call double @pow(double noundef %i.ab, double noundef f0x3FD5555555555555) #10
  %i.az = fmul double %i.ay, 4.500000e+01
  %i.ba = fptosi double %i.az to i32
  %spec.store.select.i64 = tail call i32 @llvm.smin.i32(i32 %i.ba, i32 44) ; 2 uses
  %i.bb = sitofp i32 %spec.store.select.i64 to double
  %i.bc = fdiv double %i.bb, 4.500000e+01
  %i.bd = tail call double @pow(double noundef %i.bc, double noundef 3.000000e+00) #10
  %i.be = sext i32 %i.ax to i64                   ; 3 uses
  %i.bf = getelementptr inbounds [8 x i8], ptr @solarDatasets, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !19 ; 2 uses
  %i.bh = shl i32 %spec.store.select.i64, 2
  %i.bi = add i32 %i.bh, %i.ao
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr [8 x i8], ptr %i.bg, i64 %i.bj ; 4 uses
  %.019.i65 = getelementptr i8, ptr %i.bk, i64 -8
  %i.bl = load double, ptr %.019.i65, align 8, !tbaa !10
  %.019.1.i66 = getelementptr i8, ptr %i.bk, i64 -16
  %i.bm = load double, ptr %.019.1.i66, align 8, !tbaa !10
  %.019.2.i67 = getelementptr i8, ptr %i.bk, i64 -24
  %i.bn = load double, ptr %.019.2.i67, align 8, !tbaa !10
  %.019.3.i68 = getelementptr i8, ptr %i.bk, i64 -32
  %i.bo = load double, ptr %.019.3.i68, align 8, !tbaa !10
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.be
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !10 ; 2 uses
  %i.br = tail call double @pow(double noundef %i.ab, double noundef f0x3FD5555555555555) #10
  %i.bs = fmul double %i.br, 4.500000e+01
  %i.bt = fptosi double %i.bs to i32
  %spec.store.select.i69 = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 44) ; 2 uses
  %i.bu = sitofp i32 %spec.store.select.i69 to double
  %i.bv = fdiv double %i.bu, 4.500000e+01
  %i.bw = tail call double @pow(double noundef %i.bv, double noundef 3.000000e+00) #10
  %i.bx = shl i32 %spec.store.select.i69, 2
  %i.by = add i32 %i.am, 184                      ; 2 uses
  %i.bz = add i32 %i.bx, %i.by
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr [8 x i8], ptr %i.ak, i64 %i.ca ; 4 uses
  %.019.i70 = getelementptr i8, ptr %i.cb, i64 -8
  %i.cc = load double, ptr %.019.i70, align 8, !tbaa !10
  %.019.1.i71 = getelementptr i8, ptr %i.cb, i64 -16
  %i.cd = load double, ptr %.019.1.i71, align 8, !tbaa !10
  %.019.2.i72 = getelementptr i8, ptr %i.cb, i64 -24
  %i.ce = load double, ptr %.019.2.i72, align 8, !tbaa !10
  %.019.3.i73 = getelementptr i8, ptr %i.cb, i64 -32
  %i.cf = load double, ptr %.019.3.i73, align 8, !tbaa !10
  %i.cg = tail call double @pow(double noundef %i.ab, double noundef f0x3FD5555555555555) #10
  %i.ch = fmul double %i.cg, 4.500000e+01
  %i.ci = fptosi double %i.ch to i32
  %spec.store.select.i74 = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 44) ; 2 uses
  %i.cj = sitofp i32 %spec.store.select.i74 to double
  %i.ck = fdiv double %i.cj, 4.500000e+01
  %i.cl = tail call double @pow(double noundef %i.ck, double noundef 3.000000e+00) #10
  %i.cm = shl i32 %spec.store.select.i74, 2
  %i.cn = add i32 %i.cm, %i.by
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %i.bg, i64 %i.co ; 4 uses
  %.019.i75 = getelementptr i8, ptr %i.cp, i64 -8
  %i.cq = load double, ptr %.019.i75, align 8, !tbaa !10
  %.019.1.i76 = getelementptr i8, ptr %i.cp, i64 -16
  %i.cr = load double, ptr %.019.1.i76, align 8, !tbaa !10
  %.019.2.i77 = getelementptr i8, ptr %i.cp, i64 -24
  %i.cs = load double, ptr %.019.2.i77, align 8, !tbaa !10
  %.019.3.i78 = getelementptr i8, ptr %i.cp, i64 -32
  %i.ct = load double, ptr %.019.3.i78, align 8, !tbaa !10
  %i.cu = getelementptr inbounds [8 x i8], ptr @limbDarkeningDatasets, i64 %i.ai
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !19 ; 4 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr @limbDarkeningDatasets, i64 %i.be
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !19 ; 4 uses
  %i.cy = load <2 x double>, ptr %i.cv, align 8, !tbaa !10
  %i.cz = load <2 x double>, ptr %i.cx, align 8, !tbaa !10
end_hunk_0
