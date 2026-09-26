Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/rouss?download=true
begin_hunk_0_@_Z34pj_projection_specific_setup_roussP8PJconsts:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.an = fmul double %i.l, %i.p                  ; 2 uses
  %i.ao = fsub double 1.000000e+00, %i.an         ; 3 uses
  %i.ap = tail call double @sqrt(double noundef %i.ao) #7
  %i.aq = fmul double %i.ao, %i.ao
  %i.ar = load double, ptr %i.q, align 8, !tbaa !59
  %i.as = load double, ptr %i.j, align 8, !tbaa !58
  %i.at = tail call double @tan(double noundef %i.as) #7 ; 5 uses
  %i.au = insertelement <2 x double> poison, double %i.an, i64 0
  %i.av = fdiv double %i.aq, %i.ar                ; 5 uses
  %i.aw = fmul double %i.av, 2.500000e-01         ; 2 uses
  store double %i.aw, ptr %i.r, align 8, !tbaa !42
  store double %i.aw, ptr %i.s, align 8, !tbaa !43
  %i.ax = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ay = fdiv double %i.av, 1.200000e+01         ; 2 uses
  store double %i.ay, ptr %i.x, align 8, !tbaa !60
  %i.az = insertelement <2 x double> poison, double %i.at, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.av, i64 1 ; 2 uses
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x double> %i.ba, %i.bb          ; 8 uses
  %i.bd = shufflevector <2 x double> %i.ax, <2 x double> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bf = extractelement <2 x double> %i.bc, i64 1 ; 5 uses
  %i.bg = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 poison> ; 3 uses
  %i.bh = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bi = fmul double %i.bf, 6.250000e-02
  store double %i.bi, ptr %i.ae, align 8, !tbaa !44
  %i.bj = shufflevector <2 x double> %i.bc, <2 x double> <double poison, double 1.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.bk = insertelement <2 x double> <double 1.200000e+02, double poison>, double %i.ap, i64 1
  %i.bl = fdiv <2 x double> %i.bj, %i.bk          ; 4 uses
  %i.bm = extractelement <2 x double> %i.bl, i64 1
  %i.bn = extractelement <2 x double> %i.bl, i64 0
  store double %i.bn, ptr %i.ab, align 8, !tbaa !45
  %i.bo = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bp = fmul <2 x double> %i.bo, <double 1.200000e+01, double 2.000000e+00> ; 2 uses
  %i.bq = shufflevector <2 x double> <double 1.200000e+01, double poison>, <2 x double> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.br = insertelement <2 x double> %i.bp, double 2.400000e+02, i64 0
  %i.bs = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bt = fmul <2 x double> %i.bs, <double 2.400000e+01, double 8.000000e+00> ; 2 uses
  %i.bu = fmul <2 x double> %i.bs, <double 4.800000e+01, double 3.600000e+01>
  store double %i.ay, ptr %i.ah, align 8, !tbaa !46
  %i.bv = fmul <2 x double> %i.bo, <double 3.000000e+00, double 4.000000e+00> ; 2 uses
  %i.bw = insertelement <2 x double> %i.bv, double 2.400000e+02, i64 1
  %i.bx = shufflevector <2 x double> %i.bt, <2 x double> %i.bv, <2 x i32> <i32 1, i32 3>
  %i.by = fmul double %i.at, %i.at                ; 8 uses
  %i.bz = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.by, i64 0 ; 4 uses
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> <double 2.000000e+00, double 0.000000e+00>, <2 x double> <double -1.000000e+00, double 1.000000e+00>)
  %i.cb = insertelement <2 x double> %i.au, double %i.by, i64 1 ; 2 uses
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %i.ca) ; 2 uses
  %i.cd = insertelement <2 x double> poison, double %i.by, i64 0 ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer ; 7 uses
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double 1.200000e+01, double -2.000000e+00>, <2 x double> splat (double 1.100000e+01)) ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.by, double %i.cg, double -1.000000e+00)
  %i.ci = fmul double %i.bf, %i.ch
  %i.cj = insertelement <2 x double> %i.bg, double %i.ci, i64 1
  %i.ck = fdiv <2 x double> %i.cj, splat (double 2.400000e+01)
  store <2 x double> %i.ck, ptr %i.v, align 8, !tbaa !47
  %i.cl = shufflevector <2 x double> %i.cf, <2 x double> <double poison, double 2.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cl, <2 x double> <double -2.000000e+00, double 1.000000e+00>) ; 3 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  %i.co = fmul double %i.bf, %i.cn
  %i.cp = insertelement <2 x double> poison, double %i.co, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.at, i64 1
  %i.cr = shufflevector <2 x double> %i.cm, <2 x double> <double poison, double 5.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> <double -2.000000e+00, double 4.000000e+00>, <2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  %i.cu = fmul double %i.av, %i.ct
  %i.cv = fmul double %i.cu, 2.500000e-01         ; 2 uses
  store double %i.cv, ptr %i.y, align 8, !tbaa !48
  %i.cw = fsub double 2.000000e+00, %i.by
  %i.cx = fmul <2 x double> %i.bd, %i.cc
  %i.cy = insertelement <2 x double> %i.cs, double %i.cw, i64 0
  %i.cz = fmul <2 x double> %i.be, %i.cy
  %i.da = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double 6.000000e+00, double 1.200000e+01>, <2 x double> <double -5.000000e+00, double 1.900000e+01>)
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.da, <2 x double> <double -2.000000e+00, double 5.000000e+00>)
  %i.dc = fmul <2 x double> %i.bh, %i.db
  %i.dd = fdiv <2 x double> %i.dc, <double 4.800000e+01, double 2.400000e+01>
  store <2 x double> %i.dd, ptr %i.aa, align 8, !tbaa !47
  %i.de = fadd double %i.by, 1.000000e+00
  %i.df = insertelement <2 x double> poison, double %i.de, i64 0
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> <double 2.200000e+01, double 1.200000e+01>, <2 x double> <double 3.400000e+01, double 1.300000e+01>)
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.dg, <2 x double> <double -3.000000e+00, double 4.000000e+00>) ; 2 uses
  %i.di = shufflevector <2 x double> %i.df, <2 x double> %i.dh, <2 x i32> <i32 0, i32 2>
  %i.dj = fmul <2 x double> %i.bc, %i.di          ; 2 uses
  %i.dk = fdiv <2 x double> %i.cx, %i.bq          ; 2 uses
  %i.dl = extractelement <2 x double> %i.dk, i64 0
  store double %i.dl, ptr %i.u, align 8, !tbaa !61
  store <2 x double> %i.dk, ptr %i.t, align 8, !tbaa !47
  %i.dm = fdiv <2 x double> %i.cq, %i.br          ; 2 uses
  store <2 x double> %i.dm, ptr %i.w, align 8, !tbaa !47
  %i.dn = fdiv <2 x double> %i.cz, %i.bt
  store <2 x double> %i.dn, ptr %i.z, align 8, !tbaa !47
  %i.do = fdiv <2 x double> %i.dj, %i.bw
  store <2 x double> %i.do, ptr %i.ac, align 8, !tbaa !47
  %i.dp = fmul double %i.at, %i.bf                ; 2 uses
  %i.dq = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = extractelement <2 x double> %i.dm, i64 1
  store double %i.ds, ptr %i.ag, align 8, !tbaa !49
  store double %i.cv, ptr %i.ai, align 8, !tbaa !50
  %i.dt = shufflevector <2 x double> %i.cm, <2 x double> %i.dh, <2 x i32> <i32 1, i32 3>
  %i.du = fmul <2 x double> %i.bc, %i.dt          ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 1
  %i.dw = fdiv double %i.dv, 2.400000e+01
  store double %i.dw, ptr %i.ad, align 8, !tbaa !51
  %i.dx = shufflevector <2 x double> %i.dj, <2 x double> %i.du, <2 x i32> <i32 0, i32 2>
  %i.dy = fdiv <2 x double> %i.dx, %i.bx
  store <2 x double> %i.dy, ptr %i.aj, align 8, !tbaa !47
  %i.dz = fmul double %i.by, %i.bf
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> <double 6.000000e+00, double 0.000000e+00>, <2 x double> <double 6.000000e+00, double 4.000000e+00>)
  %i.eb = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.ea, <2 x double> <double 1.000000e+00, double 3.000000e+00>)
  %i.ed = insertelement <2 x double> %i.bg, double %i.dz, i64 1
  %i.ee = fmul <2 x double> %i.ed, %i.ec
  %i.ef = fmul <2 x double> %i.ee, <double 6.250000e-02, double 1.250000e-01>
  store <2 x double> %i.ef, ptr %i.ak, align 8, !tbaa !47
  %i.eg = fneg double %i.by
  %i.eh = insertelement <2 x double> %i.cd, double %i.eg, i64 1
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> <double 1.600000e+01, double 2.600000e+01>, <2 x double> <double 3.300000e+01, double 1.780000e+02>)
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.ei, <2 x double> <double 1.100000e+01, double -2.100000e+01>) ; 2 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> %i.cc, <2 x i32> <i32 0, i32 3>
  %i.el = fmul <2 x double> %i.dr, %i.ek
  %i.em = fdiv <2 x double> %i.el, %i.bu
  store <2 x double> %i.em, ptr %i.af, align 8, !tbaa !47
  %i.en = extractelement <2 x double> %i.ej, i64 1
  %i.eo = fmul double %i.dp, %i.en
  %i.ep = insertelement <2 x double> %i.bg, double %i.eo, i64 1
  %i.eq = fdiv <2 x double> %i.ep, <double 8.000000e+01, double 7.200000e+02>
  store <2 x double> %i.eq, ptr %i.al, align 8, !tbaa !47
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> <double 4.800000e+01, double 0.000000e+00>, <2 x double> <double 8.600000e+01, double 4.400000e+01>)
  %i.es = fmul double %i.bm, 9.600000e+01
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.er, <2 x double> <double 2.900000e+01, double 3.700000e+01>)
  %i.eu = fmul <2 x double> %i.dr, %i.et
  %i.ev = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fdiv <2 x double> %i.eu, %i.ew
  store <2 x double> %i.ex, ptr %i.am, align 8, !tbaa !47
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL15rouss_e_forward5PJ_LPP8PJconsts, ptr %i.ey, align 8, !tbaa !62
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL15rouss_e_inverse5PJ_XYP8PJconsts, ptr %i.ez, align 8, !tbaa !63
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr @_ZL19pj_rouss_destructorP8PJconstsi, ptr %i.fa, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %0, %bb.e ], [ %i.i, %bb.d ]
  ret ptr %.0
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z14proj_mdist_inid(double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

declare noundef double @_Z10proj_mdistdddPKv(double noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tan(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15rouss_e_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 8 uses
  %i.c = tail call double @cos(double noundef %1) #7 ; 2 uses
  %i.d = tail call double @sin(double noundef %1) #7 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call noundef double @_Z10proj_mdistdddPKv(double noundef %1, double noundef %i.d, double noundef %i.c, ptr noundef %i.f)
  %i.h = fmul double %0, %i.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.j = load double, ptr %i.i, align 8, !tbaa !38
  %i.k = fneg double %i.d
  %i.l = fmul double %i.j, %i.k
  %i.m = tail call double @llvm.fmuladd.f64(double %i.l, double %i.d, double 1.000000e+00)
  %i.n = tail call double @sqrt(double noundef %i.m) #7
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.p = load double, ptr %i.o, align 8, !tbaa !52 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.u = load double, ptr %i.t, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.x = load <8 x double>, ptr %i.b, align 8, !tbaa !47 ; 6 uses
  %i.y = load double, ptr %i.q, align 8, !tbaa !42
  %3 = extractelement <8 x double> %i.x, i64 0
  %i.z = extractelement <8 x double> %i.x, i64 4
  %4 = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 3, i32 poison>
  %5 = insertelement <2 x double> %4, double 0.000000e+00, i64 1
  %6 = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 2, i32 7>
  %7 = shufflevector <8 x double> %i.x, <8 x double> poison, <2 x i32> <i32 5, i32 poison>
  %8 = insertelement <2 x double> %7, double 0.000000e+00, i64 1
  %9 = load <6 x double>, ptr %i.s, align 8, !tbaa !47 ; 3 uses
  %10 = load double, ptr %i.w, align 8, !tbaa !65
  %11 = load double, ptr %i.v, align 8, !tbaa !66
  %12 = load double, ptr %i.r, align 8, !tbaa !48
  %13 = shufflevector <6 x double> %9, <6 x double> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <8 x double> %i.x, <8 x double> %13, <2 x i32> <i32 6, i32 10>
  %15 = extractelement <6 x double> %9, i64 4
  %16 = fdiv double %i.h, %i.n                    ; 2 uses
  %17 = fmul double %i.p, %16
  %18 = fsub double %i.g, %3                      ; 5 uses
  %i.aa = insertelement <2 x double> poison, double %16, i64 0
  %19 = insertelement <2 x double> %i.aa, double %18, i64 1 ; 2 uses
  %20 = fmul <2 x double> %19, %19                ; 5 uses
  %21 = extractelement <2 x double> %20, i64 1    ; 3 uses
  %22 = tail call double @llvm.fmuladd.f64(double %21, double %i.z, double %i.y)
  %23 = tail call double @llvm.fmuladd.f64(double %21, double %22, double 1.000000e+00)
  %24 = extractelement <2 x double> %20, i64 0    ; 2 uses
  %25 = fneg double %24                           ; 2 uses
  %i.ab = insertelement <2 x double> <double poison, double -0.000000e+00>, double %18, i64 0
  %26 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %5, <2 x double> %6)
  %27 = shufflevector <2 x double> <double poison, double -0.000000e+00>, <2 x double> %20, <2 x i32> <i32 3, i32 1>
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %27, <2 x double> %8, <2 x double> %26)
  %i.ac = shufflevector <2 x double> %20, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %14, <2 x double> %28)
  %30 = tail call double @llvm.fmuladd.f64(double %25, double %15, double %12)
  %31 = insertelement <2 x double> poison, double %30, i64 0
  %32 = insertelement <2 x double> %31, double %i.u, i64 1
  %33 = shufflevector <6 x double> %9, <6 x double> poison, <2 x i32> <i32 poison, i32 0>
  %34 = insertelement <2 x double> %33, double 1.000000e+00, i64 0
  %35 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> %32, <2 x double> %34) ; 2 uses
  %i.ad = extractelement <2 x double> %35, i64 0
  %36 = extractelement <2 x double> %35, i64 1
  %i.ae = tail call double @llvm.fmuladd.f64(double %21, double %36, double %i.ad)
  %i.af = fmul double %18, %24
  %i.ag = tail call double @llvm.fmuladd.f64(double %18, double %10, double %11)
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.af, double %i.ag, double %i.ae)
  %i.ai = fmul double %18, %i.ah
  %i.aj = insertelement <2 x double> %i.ac, double %25, i64 0
  %i.ak = insertelement <2 x double> poison, double %23, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> %29, <2 x double> %i.al)
  %i.an = insertelement <2 x double> poison, double %17, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.p, i64 1
  %i.ap = fmul <2 x double> %i.ao, %i.am          ; 2 uses
  %i.aq = extractelement <2 x double> %i.ap, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.aq, 0
  %i.ar = extractelement <2 x double> %i.ap, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ar, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL15rouss_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 488
  %i.d = load double, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %i.e = fdiv double %0, %i.d                     ; 3 uses
  %i.f = fdiv double %1, %i.d                     ; 12 uses
  %i.g = fmul double %i.e, %i.e                   ; 6 uses
  %i.h = fmul double %i.f, %i.f                   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.j = load double, ptr %i.i, align 8, !tbaa !43
  %i.k = fneg double %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = load <2 x double>, ptr %i.l, align 8, !tbaa !47 ; 2 uses
  %i.n = insertelement <2 x double> %i.m, double %i.k, i64 0
  %i.o = insertelement <2 x double> poison, double %i.h, i64 0
  %i.p = insertelement <2 x double> %i.o, double %i.f, i64 1
  %i.q = shufflevector <2 x double> %i.m, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.n, <2 x double> %i.p, <2 x double> %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.t = load double, ptr %i.s, align 8, !tbaa !67
  %i.u = fneg double %i.t
  %i.v = extractelement <2 x double> %i.r, i64 1
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %i.g, double %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.y = load double, ptr %i.x, align 8, !tbaa !51
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.h, double %i.w)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !68
  %i.ac = fneg double %i.g                        ; 2 uses
  %i.ad = fmul double %i.ab, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.f, double %i.z)
  %i.af = extractelement <2 x double> %i.r, i64 0
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.g, double %i.ae, double %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !69
  %i.al = fmul double %i.g, %i.ak
  %i.am = fneg double %i.f
  %i.an = fmul double %i.al, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.h, double %i.an)
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ao, double %i.ag)
  %i.aq = fmul double %i.e, %i.ap
  %i.ar = load double, ptr %i.b, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.at = load double, ptr %i.as, align 8, !tbaa !46
  %i.au = fneg double %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.aw = load double, ptr %i.av, align 8, !tbaa !70
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.h, double %i.au)
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.h, double %i.ax, double 1.000000e+00)
  %i.az = tail call double @llvm.fmuladd.f64(double %i.f, double %i.ay, double %i.ar)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !49
  %i.bc = fneg double %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.be = load double, ptr %i.bd, align 8, !tbaa !50
  %i.bf = fneg double %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !71
  %i.bi = fneg double %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !72
  %i.bl = fneg double %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !73
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bn, double %i.bl)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bo, double %i.bi)
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bp, double %i.bf)
  %i.br = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bq, double %i.bc)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !76
  %i.by = tail call double @llvm.fmuladd.f64(double %i.f, double %i.bx, double %i.bv)
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.f, double %i.by, double %i.bt)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !77
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.ac, double %i.cb, double %i.bz)
  %i.cd = tail call double @llvm.fmuladd.f64(double %i.g, double %i.cc, double %i.br)
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.g, double %i.cd, double %i.az)
  %i.cf = load ptr, ptr %2, align 8, !tbaa !78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40
  %i.ci = tail call noundef double @_Z14proj_inv_mdistP6pj_ctxdPKv(ptr noundef %i.cf, double noundef %i.ce, ptr noundef %i.ch) ; 3 uses
  %i.cj = tail call double @sin(double noundef %i.ci) #7 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !38
  %i.cm = fneg double %i.cj
  %i.cn = fmul double %i.cl, %i.cm
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cj, double 1.000000e+00)
  %i.cp = tail call double @sqrt(double noundef %i.co) #7
  %i.cq = fmul double %i.aq, %i.cp
  %i.cr = tail call double @cos(double noundef %i.ci) #7
  %i.cs = fdiv double %i.cq, %i.cr
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cs, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ci, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL19pj_rouss_destructorP8PJconstsi(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.d, %bb.b
  %.sink = phi i32 [ %1, %bb.b ], [ 4096, %bb.d ], [ 4096, %bb.c ]
  %i.g = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef %.sink)
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.g, %.sink.split ]
  ret ptr %.0
}

declare noundef double @_Z14proj_inv_mdistP6pj_ctxdPKv(ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0,1) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
end_hunk_0
