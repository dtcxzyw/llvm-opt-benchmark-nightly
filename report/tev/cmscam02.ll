Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmscam02?download=true
inline.NumInlined: 19
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@cmsCIECAM02Init:bb.a
  %i.be = tail call double @exp(double noundef %i.bd) #6
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.be, double f0xBFD1C71C71C71C72, double 1.000000e+00)
  %i.bg = fmul double %.sink180, %i.bf            ; 2 uses
  store double %i.bg, ptr %i.s, align 8, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bh = phi double [ %i.bg, %bb.d ], [ %i.r, %bb.c ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store double %i.ap, ptr %i.bi, align 8, !tbaa !24
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.9.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.10.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bj = insertelement <2 x double> poison, double %i.h, i64 0
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = fmul <2 x double> %i.bk, <double 4.296000e-01, double 1.697500e+00>
  %i.bm = fmul double %i.h, 1.360000e-02
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.g, double 3.000000e-03, double %i.bm)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.i, double 9.834000e-01, double %i.bn) ; 2 uses
  store double %i.g, ptr %i.a, align 8
  %.sroa.893.0..sroa_idx94 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.996.0..sroa_idx97 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.1099.0..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.bp = fsub double 1.000000e+00, %i.bh         ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.g, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> <double 7.328000e-01, double -7.036000e-01>, <2 x double> %i.bl)
  %i.bt = insertelement <2 x double> poison, double %i.i, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> <double -1.624000e-01, double 6.100000e-03>, <2 x double> %i.bs) ; 3 uses
  %i.bw = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bz = insertelement <2 x double> %i.by, double %i.bo, i64 0 ; 2 uses
  %i.ca = fdiv <2 x double> %i.bx, %i.bz
  %i.cb = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.ca, <2 x double> %i.cc)
  %i.ce = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.cf = fdiv double %i.bh, %i.ce
  store <2 x double> %i.bv, ptr %.sroa.7.0..sroa_idx67, align 8
  store double %i.bo, ptr %.sroa.9.0..sroa_idx71, align 8, !tbaa !43
  %.sroa.8122.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.9125.0..sroa_idx126 = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.10128.0..sroa_idx129 = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.cg = tail call double @llvm.fmuladd.f64(double %i.h, double %i.cf, double %i.bp)
  %i.ch = fmul <2 x double> %i.bz, %i.cd          ; 4 uses
  %i.ci = fmul double %i.ce, %i.cg                ; 4 uses
  %i.cj = fmul double %i.ci, f0x3FCBE83EA743F4F8
  %i.ck = fmul double %i.ci, f0x3FE3F975331550A9
  %i.cl = extractelement <2 x double> %i.ch, i64 1 ; 2 uses
  %i.cm = tail call double @llvm.fmuladd.f64(double %i.cl, double f0x3FE7B619F212AE38, double %i.cj)
  %i.cn = insertelement <2 x double> poison, double %i.cm, i64 0
  %i.co = insertelement <2 x double> %i.cn, double %i.ck, i64 1
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> <double f0x3FA4FEB5CD1DD6DE, double f0x3FD24339FEDAE324>, <2 x double> %i.co) ; 2 uses
  %i.cq = extractelement <2 x double> %i.ch, i64 0 ; 2 uses
  %i.cr = fmul double %i.ci, -5.698000e-03
  %i.cs = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ct = insertelement <2 x double> %i.cs, double %i.cr, i64 1
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> <double f0x3FB7276E6BE9EE25, double f0xBF83B7D84901D191>, <2 x double> %i.ct) ; 2 uses
  %i.cv = extractelement <2 x double> %i.cu, i64 1
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cq, double f0x3FF03EC679CC74B8, double %i.cv) ; 4 uses
  store double %i.cl, ptr %.sroa.10.0..sroa_idx73, align 8
  store double %i.ci, ptr %.sroa.893.0..sroa_idx94, align 8
  store double %i.cq, ptr %.sroa.996.0..sroa_idx97, align 8, !tbaa !43
  %i.cx = extractelement <2 x double> %i.cp, i64 0 ; 5 uses
  store double %i.cx, ptr %.sroa.1099.0..sroa_idx100, align 8
  %.sroa.8151.0..sroa_idx152 = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.sroa.9154.0..sroa_idx155 = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.sroa.10157.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.a, i64 120 ; 2 uses
  %.sroa.10157.sroa.0.0.copyload = load <5 x double>, ptr %.sroa.10157.0..sroa_idx158, align 8
  %.sroa.10159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.sroa.11.0..sroa_idx162 = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.0..sroa_idx162, i64 96, i1 false)
  %i.cy = fcmp olt double %i.cx, 0.000000e+00
  br i1 %i.cy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.cz = fneg double %i.az
  %i.da = fmul double %i.cx, %i.cz
  %i.db = fdiv double %i.da, 1.000000e+02
  %i.dc = tail call double @pow(double noundef %i.db, double noundef 4.200000e-01) #6, !noalias !44 ; 2 uses
  %i.dd = fmul double %i.dc, 4.000000e+02
  %i.de = fadd double %i.dc, 2.713000e+01
  %i.df = fdiv double %i.dd, %i.de
  %i.dg = fsub double 1.000000e-01, %i.df
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.dh = fmul double %i.az, %i.cx
  %i.di = fdiv double %i.dh, 1.000000e+02
  %i.dj = tail call double @pow(double noundef %i.di, double noundef 4.200000e-01) #6, !noalias !44 ; 2 uses
  %i.dk = fmul double %i.dj, 4.000000e+02
  %i.dl = fadd double %i.dj, 2.713000e+01
  %i.dm = fdiv double %i.dk, %i.dl
  %i.dn = fadd double %i.dm, 1.000000e-01
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %storemerge.i = phi double [ %i.dn, %bb.g ], [ %i.dg, %bb.f ] ; 2 uses
  %i.do = extractelement <2 x double> %i.cu, i64 0 ; 4 uses
  %i.dp = fcmp olt double %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dq = fmul double %i.az, %i.do
  %i.dr = fdiv double %i.dq, 1.000000e+02
  %i.ds = tail call double @pow(double noundef %i.dr, double noundef 4.200000e-01) #6, !noalias !44 ; 2 uses
  %i.dt = fmul double %i.ds, 4.000000e+02
  %i.du = fadd double %i.ds, 2.713000e+01
  %i.dv = fdiv double %i.dt, %i.du
  %i.dw = fadd double %i.dv, 1.000000e-01
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dx = fneg double %i.az
  %i.dy = fmul double %i.do, %i.dx
  %i.dz = fdiv double %i.dy, 1.000000e+02
  %i.ea = tail call double @pow(double noundef %i.dz, double noundef 4.200000e-01) #6, !noalias !44 ; 2 uses
  %i.eb = fmul double %i.ea, 4.000000e+02
  %i.ec = fadd double %i.ea, 2.713000e+01
  %i.ed = fdiv double %i.eb, %i.ec
  %i.ee = fsub double 1.000000e-01, %i.ed
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi double [ %i.ee, %bb.j ], [ %i.dw, %bb.i ] ; 2 uses
  %i.ef = fcmp olt double %i.cw, 0.000000e+00
  br i1 %i.ef, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.eg = fmul double %i.az, %i.cw
  %i.eh = fdiv double %i.eg, 1.000000e+02
  %i.ei = tail call double @pow(double noundef %i.eh, double noundef 4.200000e-01) #6, !noalias !44 ; 2 uses
  %i.ej = fmul double %i.ei, 4.000000e+02
  %i.ek = fadd double %i.ei, 2.713000e+01
  %i.el = fdiv double %i.ej, %i.ek
  %i.em = fadd double %i.el, 1.000000e-01
  br label %NonlinearCompression.exit

bb.m:                                             ; preds = %bb.k
  %i.en = fneg double %i.az
  %i.eo = fmul double %i.cw, %i.en
  %i.ep = fdiv double %i.eo, 1.000000e+02
  %i.eq = tail call double @pow(double noundef %i.ep, double noundef 4.200000e-01) #6, !noalias !44 ; 2 uses
  %i.er = fmul double %i.eq, 4.000000e+02
  %i.es = fadd double %i.eq, 2.713000e+01
  %i.et = fdiv double %i.er, %i.es
  %i.eu = fsub double 1.000000e-01, %i.et
  br label %NonlinearCompression.exit

NonlinearCompression.exit:                        ; preds = %bb.l, %bb.m
  %.sink21.i = phi double [ %i.eu, %bb.m ], [ %i.em, %bb.l ] ; 2 uses
  %i.ev = tail call double @llvm.fmuladd.f64(double %storemerge.i, double 2.000000e+00, double %.sink.i)
  %i.ew = fdiv double %.sink21.i, 2.000000e+01
  %i.ex = fadd double %i.ev, %i.ew
  %i.ey = fadd double %i.ex, -3.050000e-01
  %i.ez = load double, ptr %i.af, align 8, !tbaa !22, !noalias !44
  %i.fa = fmul double %i.ez, %i.ey
  store double %i.cx, ptr %.sroa.1099.0..sroa_idx100, align 8
  store double %i.do, ptr %.sroa.8122.0..sroa_idx123, align 8
  store double %i.cw, ptr %.sroa.9125.0..sroa_idx126, align 8, !tbaa !43
  store double %storemerge.i, ptr %.sroa.10128.0..sroa_idx129, align 8
  store double %.sink.i, ptr %.sroa.8151.0..sroa_idx152, align 8
  store double %.sink21.i, ptr %.sroa.9154.0..sroa_idx155, align 8, !tbaa !43
  store <5 x double> %.sroa.10157.sroa.0.0.copyload, ptr %.sroa.10157.0..sroa_idx158, align 8
  store double %i.fa, ptr %.sroa.10159.0..sroa_idx160, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11.0..sroa_idx162, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.11, i64 96, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %NonlinearCompression.exit
  ret ptr %i.a
}

declare ptr @_cmsMallocZero(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define void @cmsCIECAM02Done(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  tail call void @_cmsFree(ptr noundef %i.b, ptr noundef nonnull %0) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @_cmsFree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @cmsCIECAM02Forward(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #3 {
bb.a:
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %4 = load double, ptr %i.a, align 8, !tbaa !25
  %5 = load double, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !27  ; 2 uses
  %6 = insertelement <2 x double> poison, double %5, i64 0
  %7 = shufflevector <2 x double> %6, <2 x double> poison, <2 x i32> zeroinitializer
  %i.c = fmul <2 x double> %7, <double 4.296000e-01, double 1.697500e+00>
  %8 = insertelement <2 x double> poison, double %i.b, i64 0
  %i.d = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %i.e = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.d, <2 x double> <double 7.328000e-01, double -7.036000e-01>, <2 x double> %i.c) ; 2 uses
  %9 = fmul double %5, 1.360000e-02
  %10 = insertelement <2 x double> poison, double %4, i64 0 ; 2 uses
  %11 = insertelement <2 x double> %10, double %i.b, i64 1
  %12 = shufflevector <2 x double> %i.e, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.f = insertelement <2 x double> %12, double %9, i64 1
  %i.g = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> <double 6.100000e-03, double 3.000000e-03>, <2 x double> %i.f) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !16, !noalias !51 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = load double, ptr %i.j, align 8, !tbaa !17, !noalias !51 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = fsub double 1.000000e+00, %i.k           ; 2 uses
  %i.n = load <2 x double>, ptr %i.l, align 8, !tbaa !16, !noalias !51
  %i.o = insertelement <2 x double> poison, double %i.k, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = fdiv <2 x double> %i.p, %i.n
  %i.r = insertelement <2 x double> poison, double %i.i, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x double> poison, double %i.m, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.q, <2 x double> %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load double, ptr %i.w, align 8, !tbaa !16, !noalias !51
  %i.y = fdiv double %i.k, %i.x
  %i.z = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x double> %i.g, <2 x double> %i.e, <2 x i32> <i32 1, i32 2>
  %i.ab = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> <double 9.834000e-01, double -1.624000e-01>, <2 x double> %i.aa) ; 2 uses
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> %i.g, <2 x i32> <i32 1, i32 2>
  %i.ad = fmul <2 x double> %i.ac, %i.v           ; 2 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.i, double %i.y, double %i.m)
  %i.af = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x double> %i.af, double %i.ae, i64 0
  %i.ah = fmul <2 x double> %i.ab, %i.ag          ; 3 uses
  %i.ai = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.aj = fmul double %i.ai, f0x3FCBE83EA743F4F8
  %i.ak = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.aj, i64 0
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> <double f0x3FE7B619F212AE38, double f0x3FE3F975331550A9>, <2 x double> %i.ak)
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> <double f0x3FA4FEB5CD1DD6DE, double f0x3FD24339FEDAE324>, <2 x double> %i.al) ; 2 uses
  %i.an = extractelement <2 x double> %i.ah, i64 0
  %i.ao = fmul double %i.ai, -5.698000e-03
  %i.ap = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.aq = insertelement <2 x double> %i.ap, double %i.ao, i64 1
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> <double f0x3FB7276E6BE9EE25, double f0xBF83B7D84901D191>, <2 x double> %i.aq) ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %i.at = tail call double @llvm.fmuladd.f64(double %i.an, double f0x3FF03EC679CC74B8, double %i.as) ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.av = extractelement <2 x double> %i.am, i64 0 ; 3 uses
  %i.aw = fcmp olt double %i.av, 0.000000e+00
  %i.ax = load double, ptr %i.au, align 8, !tbaa !23, !noalias !52 ; 8 uses
  br i1 %i.aw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ay = fneg double %i.ax
  %i.az = fmul double %i.av, %i.ay
  %i.ba = fdiv double %i.az, 1.000000e+02
  %i.bb = tail call double @pow(double noundef %i.ba, double noundef 4.200000e-01) #6, !noalias !52 ; 2 uses
  %i.bc = fmul double %i.bb, 4.000000e+02
  %i.bd = fadd double %i.bb, 2.713000e+01
  %i.be = fdiv double %i.bc, %i.bd
  %i.bf = fsub double 1.000000e-01, %i.be
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bg = fmul double %i.av, %i.ax
  %i.bh = fdiv double %i.bg, 1.000000e+02
  %i.bi = tail call double @pow(double noundef %i.bh, double noundef 4.200000e-01) #6, !noalias !52 ; 2 uses
  %i.bj = fmul double %i.bi, 4.000000e+02
  %i.bk = fadd double %i.bi, 2.713000e+01
  %i.bl = fdiv double %i.bj, %i.bk
  %i.bm = fadd double %i.bl, 1.000000e-01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi double [ %i.bm, %bb.c ], [ %i.bf, %bb.b ] ; 3 uses
  %i.bn = extractelement <2 x double> %i.ar, i64 0 ; 3 uses
  %i.bo = fcmp olt double %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bp = fmul double %i.bn, %i.ax
  %i.bq = fdiv double %i.bp, 1.000000e+02
  %i.br = tail call double @pow(double noundef %i.bq, double noundef 4.200000e-01) #6, !noalias !52 ; 2 uses
  %i.bs = fmul double %i.br, 4.000000e+02
  %i.bt = fadd double %i.br, 2.713000e+01
  %i.bu = fdiv double %i.bs, %i.bt
  %i.bv = fadd double %i.bu, 1.000000e-01
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.bw = fneg double %i.ax
  %i.bx = fmul double %i.bn, %i.bw
  %i.by = fdiv double %i.bx, 1.000000e+02
  %i.bz = tail call double @pow(double noundef %i.by, double noundef 4.200000e-01) #6, !noalias !52 ; 2 uses
  %i.ca = fmul double %i.bz, 4.000000e+02
  %i.cb = fadd double %i.bz, 2.713000e+01
  %i.cc = fdiv double %i.ca, %i.cb
  %i.cd = fsub double 1.000000e-01, %i.cc
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink.i = phi double [ %i.cd, %bb.f ], [ %i.bv, %bb.e ] ; 3 uses
  %i.ce = fcmp olt double %i.at, 0.000000e+00
  br i1 %i.ce, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cf = fmul double %i.at, %i.ax
  %i.cg = fdiv double %i.cf, 1.000000e+02
  %i.ch = tail call double @pow(double noundef %i.cg, double noundef 4.200000e-01) #6, !noalias !52 ; 2 uses
  %i.ci = fmul double %i.ch, 4.000000e+02
  %i.cj = fadd double %i.ch, 2.713000e+01
  %i.ck = fdiv double %i.ci, %i.cj
  %i.cl = fadd double %i.ck, 1.000000e-01
  br label %NonlinearCompression.exit

bb.i:                                             ; preds = %bb.g
  %i.cm = fneg double %i.ax
  %i.cn = fmul double %i.at, %i.cm
  %i.co = fdiv double %i.cn, 1.000000e+02
  %i.cp = tail call double @pow(double noundef %i.co, double noundef 4.200000e-01) #6, !noalias !52 ; 2 uses
  %i.cq = fmul double %i.cp, 4.000000e+02
  %i.cr = fadd double %i.cp, 2.713000e+01
  %i.cs = fdiv double %i.cq, %i.cr
  %i.ct = fsub double 1.000000e-01, %i.cs
  br label %NonlinearCompression.exit

NonlinearCompression.exit:                        ; preds = %bb.h, %bb.i
  %.sink21.i = phi double [ %i.ct, %bb.i ], [ %i.cl, %bb.h ] ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !22, !noalias !52
  %i.cw = fmul double %.sink.i, 1.200000e+01
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %.sink21.i, i64 1
  %i.cz = fdiv <2 x double> %i.cy, splat (double 1.100000e+01) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fsub double %storemerge.i, %i.da
  %i.dc = extractelement <2 x double> %i.cz, i64 1
  %i.dd = fadd double %i.db, %i.dc                ; 5 uses
  %i.de = fadd double %storemerge.i, %.sink.i     ; 2 uses
  %i.df = tail call double @llvm.fmuladd.f64(double %.sink21.i, double -2.000000e+00, double %i.de)
  %i.dg = fdiv double %i.df, 9.000000e+00         ; 7 uses
  %i.dh = fcmp oeq double %i.dd, 0.000000e+00
  br i1 %i.dh, label %bb.j, label %bb.m

bb.j:                                             ; preds = %NonlinearCompression.exit
  %i.di = fcmp oeq double %i.dg, 0.000000e+00
  br i1 %i.di, label %ComputeCorrelates.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dj = fcmp ogt double %i.dg, 0.000000e+00
  br i1 %i.dj, label %ComputeCorrelates.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  br label %ComputeCorrelates.exit

bb.m:                                             ; preds = %NonlinearCompression.exit
  %i.dk = fcmp ogt double %i.dd, 0.000000e+00
  %i.dl = fdiv double %i.dg, %i.dd                ; 3 uses
  br i1 %i.dk, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.dm = fcmp ogt double %i.dg, 0.000000e+00
  br i1 %i.dm, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dn = tail call double @atan(double noundef %i.dl) #6, !noalias !53
  %i.do = fmul double %i.dn, f0x404CA5DC1A53B118
  br label %ComputeCorrelates.exit

bb.p:                                             ; preds = %bb.n
  %i.dp = fcmp oeq double %i.dg, 0.000000e+00
  br i1 %i.dp, label %ComputeCorrelates.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dq = tail call double @atan(double noundef %i.dl) #6, !noalias !53
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double f0x404CA5DC1A53B118, double 3.600000e+02)
  br label %ComputeCorrelates.exit

bb.r:                                             ; preds = %bb.m
  %i.ds = tail call double @atan(double noundef %i.dl) #6, !noalias !53
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ds, double f0x404CA5DC1A53B118, double 1.800000e+02)
  br label %ComputeCorrelates.exit

ComputeCorrelates.exit:                           ; preds = %bb.p, %bb.k, %bb.j, %bb.r, %bb.q, %bb.o, %bb.l
  %.sroa.37.0 = phi double [ %i.dt, %bb.r ], [ 0.000000e+00, %bb.j ], [ 2.700000e+02, %bb.l ], [ %i.do, %bb.o ], [ 9.000000e+01, %bb.k ], [ %i.dr, %bb.q ], [ 0.000000e+00, %bb.p ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dv = load double, ptr %i.du, align 8, !tbaa !19, !noalias !53
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !24, !noalias !53
  %i.dy = insertelement <2 x double> poison, double %.sroa.37.0, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %storemerge.i, i64 1
  %i.ea = insertelement <2 x double> <double 2.000000e+00, double poison>, double %.sink.i, i64 1
  %i.eb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dz, <2 x double> <double f0x3F91DF46A25CA311, double 2.000000e+00>, <2 x double> %i.ea) ; 2 uses
  %i.ec = extractelement <2 x double> %i.eb, i64 0
  %i.ed = tail call double @cos(double noundef %i.ec) #6, !noalias !53
  %i.ee = fdiv double %.sink21.i, 2.000000e+01
  %i.ef = extractelement <2 x double> %i.eb, i64 1
  %i.eg = fadd double %i.ef, %i.ee
  %i.eh = fadd double %i.eg, -3.050000e-01
  %i.ei = fmul double %i.cv, %i.eh
  %i.ej = fmul double %i.dv, f0x408E0C4EC4EC4EC5
  %i.ek = fmul double %i.ej, %i.dx
  %i.el = fadd double %i.ed, 3.800000e+00
  %i.em = fmul double %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.eo = load double, ptr %i.en, align 8, !tbaa !28, !noalias !53 ; 2 uses
  %i.ep = fdiv double %i.ei, %i.eo
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.er = load double, ptr %i.eq, align 8, !tbaa !18, !noalias !53 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.et = load double, ptr %i.es, align 8, !tbaa !21, !noalias !53
  %i.eu = fmul double %i.er, %i.et
  %i.ev = tail call double @pow(double noundef %i.ep, double noundef %i.eu) #6, !noalias !53
  %i.ew = fmul double %i.ev, 1.000000e+02         ; 2 uses
  %i.ex = fdiv double 4.000000e+00, %i.er
  %i.ey = fdiv double %i.ew, 1.000000e+02         ; 2 uses
  %i.ez = tail call double @pow(double noundef %i.ey, double noundef 5.000000e-01) #6, !noalias !53
  %i.fa = fmul double %i.ex, %i.ez
  %i.fb = fadd double %i.eo, 4.000000e+00
  %i.fc = fmul double %i.fb, %i.fa
  %i.fd = tail call double @pow(double noundef %i.ax, double noundef 2.500000e-01) #6, !noalias !53
  %i.fe = fmul double %i.fd, %i.fc
  %i.ff = fmul double %i.dg, %i.dg
  %i.fg = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.ff)
  %i.fh = tail call double @pow(double noundef %i.fg, double noundef 5.000000e-01) #6, !noalias !53
  %i.fi = fmul double %i.em, %i.fh
  %i.fj = tail call double @llvm.fmuladd.f64(double %.sink21.i, double 1.050000e+00, double %i.de)
  %i.fk = fdiv double %i.fi, %i.fj
  %i.fl = tail call double @pow(double noundef %i.fk, double noundef 9.000000e-01) #6, !noalias !53
  %i.fm = tail call double @pow(double noundef %i.ey, double noundef 5.000000e-01) #6, !noalias !53
  %i.fn = fmul double %i.fl, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !20, !noalias !53
  %i.fq = tail call double @pow(double noundef 2.900000e-01, double noundef %i.fp) #6, !noalias !53
  %i.fr = fsub double 1.640000e+00, %i.fq
  %i.fs = tail call double @pow(double noundef %i.fr, double noundef 7.300000e-01) #6, !noalias !53
  %i.ft = fmul double %i.fn, %i.fs                ; 2 uses
  %i.fu = tail call double @pow(double noundef %i.ax, double noundef 2.500000e-01) #6, !noalias !53
  %i.fv = fmul double %i.ft, %i.fu
  %i.fw = fdiv double %i.fv, %i.fe
  %i.fx = tail call double @pow(double noundef %i.fw, double noundef 5.000000e-01) #6, !noalias !53 ; 0 uses
  store double %i.ew, ptr %2, align 8, !tbaa !27
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.ft, ptr %i.fy, align 8, !tbaa !26
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %.sroa.37.0, ptr %i.fz, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define void @cmsCIECAM02Reverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load double, ptr %i.d, align 8, !tbaa !25 ; 2 uses
  %i.f = fdiv double %i.a, 1.000000e+02           ; 2 uses
  %i.g = tail call double @pow(double noundef %i.f, double noundef 5.000000e-01) #6, !noalias !60
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load double, ptr %i.h, align 8, !tbaa !20, !noalias !60
  %i.j = tail call double @pow(double noundef 2.900000e-01, double noundef %i.i) #6, !noalias !60
  %i.k = fsub double 1.640000e+00, %i.j
  %i.l = tail call double @pow(double noundef %i.k, double noundef 7.300000e-01) #6, !noalias !60
  %i.m = fmul double %i.g, %i.l
  %i.n = fdiv double %i.c, %i.m
  %i.o = tail call double @pow(double noundef %i.n, double noundef f0x3FF1C71C71C71C72) #6, !noalias !60
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.q = tail call double @llvm.fmuladd.f64(double %i.e, double f0x3F91DF46A25CA311, double 2.000000e+00)
  %i.r = tail call double @cos(double noundef %i.q) #6, !noalias !60
  %i.s = fadd double %i.r, 3.800000e+00
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.u = load double, ptr %i.t, align 8, !tbaa !28, !noalias !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !16, !noalias !60
  %i.x = fmul <2 x double> %i.w, <double 1.000000e+00, double f0x408E0C4EC4EC4EC5>
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.z = load <2 x double>, ptr %i.p, align 8, !tbaa !16, !noalias !60
  %i.aa = fmul <2 x double> %i.y, %i.z            ; 2 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 0
  %i.ac = fmul double %i.ab, %i.s
  %i.ad = extractelement <2 x double> %i.aa, i64 1
  %i.ae = fdiv double 1.000000e+00, %i.ad
  %i.af = tail call double @pow(double noundef %i.f, double noundef %i.ae) #6, !noalias !60
  %i.ag = fmul double %i.u, %i.af
  %i.ah = fdiv double %i.ac, %i.o                 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !22, !noalias !60
  %i.ak = fdiv double %i.ag, %i.aj
  %i.al = fadd double %i.ak, 3.050000e-01         ; 4 uses
  %i.am = fmul double %i.e, f0x3F91DF46A25CA311   ; 11 uses
  %i.an = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.ao = tail call double @llvm.fabs.f64(double %i.an)
  %i.ap = tail call double @cos(double noundef %i.am) #6, !noalias !60 ; 2 uses
  %i.aq = tail call double @llvm.fabs.f64(double %i.ap)
  %i.ar = fcmp ult double %i.ao, %i.aq
  br i1 %i.ar, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.at = fdiv double %i.ah, %i.as
  %i.au = fmul double %i.al, 3.050000e+00
  %i.av = fmul double %i.au, f0x3FD4FBCDA3AC10C9
  %i.aw = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.ax = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.ay = fdiv double %i.aw, %i.ax
  %i.az = tail call double @llvm.fmuladd.f64(double %i.ay, double f0x3FDE9BD37A6F4DE9, double %i.at)
  %i.ba = fadd double %i.az, f0xBF93B4D2EE4D002F
  %i.bb = fadd double %i.ba, f0x4012DC0DDE0FB12D
  %i.bc = fdiv double %i.av, %i.bb                ; 2 uses
  %i.bd = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.be = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.bf = fdiv double %i.bd, %i.be
  %i.bg = fmul double %i.bf, %i.bc
  br label %InverseCorrelates.exit

bb.c:                                             ; preds = %bb.a
  %i.bh = fdiv double %i.ah, %i.ap
  %i.bi = fmul double %i.al, 3.050000e+00
  %i.bj = fmul double %i.bi, f0x3FD4FBCDA3AC10C9
  %i.bk = fadd double %i.bh, f0x3FDE9BD37A6F4DE9
  %i.bl = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.bm = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.bn = fdiv double %i.bl, %i.bm
  %i.bo = tail call double @sin(double noundef %i.am) #6, !noalias !60
  %i.bp = tail call double @cos(double noundef %i.am) #6, !noalias !60
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bn, double f0x4012C8590B21642D, double %i.bk)
  %i.br = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bo, i64 1
  %i.bt = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.bp, i64 1
  %i.bv = fdiv <2 x double> %i.bs, %i.bu          ; 3 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 0
  %shift = shufflevector <2 x double> %i.bv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.bv, %shift
  %i.bx = extractelement <2 x double> %foldExtExtBinop, i64 0
  br label %InverseCorrelates.exit

InverseCorrelates.exit:                           ; preds = %bb.b, %bb.c
  %.sink38.i = phi double [ %i.bw, %bb.c ], [ %i.bg, %bb.b ] ; 2 uses
  %.sink.i = phi double [ %i.bx, %bb.c ], [ %i.bc, %bb.b ] ; 2 uses
  %i.by = fmul double %.sink38.i, f0x3FD492B3E95FCB73
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.al, double f0x3FD4FBCDA3AC10C9, double %i.by)
  %i.ca = tail call double @llvm.fmuladd.f64(double %.sink.i, double f0x3FCA466E93115594, double %i.bz)
  %i.cb = insertelement <2 x double> poison, double %.sink38.i, i64 0
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cd = fmul <2 x double> %i.cc, <double f0xBFC4123F221F04ED, double f0xBFE4527985BF6830>
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !23, !noalias !61
  %i.cg = fdiv double 1.000000e+02, %i.cf         ; 4 uses
  %i.ch = fneg double %i.cg                       ; 3 uses
  %i.ci = fadd double %i.ca, -1.000000e-01        ; 2 uses
  %i.cj = fcmp olt double %i.ci, 0.000000e+00
  %i.ck = insertelement <2 x double> poison, double %i.al, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> splat (double f0x3FD4FBCDA3AC10C9), <2 x double> %i.cd)
  %i.cn = insertelement <2 x double> poison, double %.sink.i, i64 0
  %i.co = shufflevector <2 x double> %i.cn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> <double f0xC011F6259688D980, double f0xBFC7CFD43547B58E>, <2 x double> %i.cm)
  %i.cq = fadd <2 x double> %i.cp, splat (double -1.000000e-01) ; 3 uses
  %i.cr = fcmp olt <2 x double> %i.cq, zeroinitializer ; 2 uses
  %i.cs = extractelement <2 x i1> %i.cr, i64 1
  %i.ct = insertelement <2 x double> %i.cq, double %i.ci, i64 0
  %i.cu = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ct) ; 2 uses
  %i.cv = fmul <2 x double> %i.cu, splat (double 2.713000e+01)
  %i.cw = fsub <2 x double> splat (double 4.000000e+02), %i.cu
  %i.cx = fdiv <2 x double> %i.cv, %i.cw          ; 2 uses
  %i.cy = extractelement <2 x double> %i.cx, i64 0
  %i.cz = tail call double @pow(double noundef %i.cy, double noundef f0x40030C30C30C30C3) #6, !noalias !61
  %i.da = extractelement <2 x double> %i.cx, i64 1
  %i.db = tail call double @pow(double noundef %i.da, double noundef f0x40030C30C30C30C3) #6, !noalias !61
  %i.dc = extractelement <2 x i1> %i.cr, i64 0
  %i.dd = extractelement <2 x double> %i.cq, i64 0
  %i.de = tail call double @llvm.fabs.f64(double %i.dd) ; 2 uses
  %i.df = fmul double %i.de, 2.713000e+01
  %i.dg = fsub double 4.000000e+02, %i.de
  %i.dh = fdiv double %i.df, %i.dg
  %i.di = tail call double @pow(double noundef %i.dh, double noundef f0x40030C30C30C30C3) #6, !noalias !61
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !16, !noalias !62
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !17, !noalias !62 ; 3 uses
  %i.dn = fmul double %i.dk, %i.dm                ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !16, !noalias !62
  %i.dr = load <2 x double>, ptr %i.do, align 8, !tbaa !16, !noalias !62
  %i.ds = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = fdiv <2 x double> %i.dt, %i.dr          ; 2 uses
  %i.dv = fdiv double %i.dn, %i.dq
  %i.dw = extractelement <2 x double> %i.du, i64 1
  %i.dx = fadd double %i.dw, 1.000000e+00
  %i.dy = fsub double %i.dx, %i.dm
  %i.dz = select i1 %i.cs, double %i.ch, double %i.cg
  %i.ea = select i1 %i.cj, double %i.ch, double %i.cg
  %i.eb = select i1 %i.dc, double %i.ch, double %i.cg
  %i.ec = fmul double %i.db, %i.dz                ; 2 uses
  %i.ed = fmul double %i.cz, %i.ea                ; 2 uses
  %i.ee = fmul double %i.eb, %i.di                ; 2 uses
  %i.ef = fmul double %i.ec, f0x3FFD9ADE4046FFDE
  %i.eg = insertelement <2 x double> poison, double %i.ec, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = fmul <2 x double> %i.eh, <double f0xBFE16E5EA75C2336, double f0x3F756044DD566727>
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.ed, double f0xBFE6DBC443794205, double %i.ef)
  %i.ek = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.el = shufflevector <2 x double> %i.ek, <2 x double> poison, <2 x i32> zeroinitializer
  %i.em = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> <double f0x3FF8F249DF5F3018, double f0x3F8611789ABDD357>, <2 x double> %i.ei)
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ee, double f0xBFC166C5EFA969C8, double %i.ej)
  %i.eo = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.ep = shufflevector <2 x double> %i.eo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> <double f0xBF8D91DEAABEDCA0, double f0x3FEF7CF9CCDE6036>, <2 x double> %i.em)
  %i.er = insertelement <2 x double> %i.du, double %i.dv, i64 1
  %i.es = fadd <2 x double> %i.er, splat (double 1.000000e+00)
  %i.et = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ev = fsub <2 x double> %i.es, %i.eu
  %i.ew = fdiv double %i.en, %i.dy                ; 2 uses
  %i.ex = fdiv <2 x double> %i.eq, %i.ev          ; 4 uses
  %i.ey = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.ez = shufflevector <2 x double> %i.ey, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x double> %i.ez, <double -2.788690e-01, double 4.735330e-01>
  %i.fb = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> <double f0x3FF189B951C5C572, double 4.543690e-01>, <2 x double> %i.fa)
  %i.fd = shufflevector <2 x double> %i.ex, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fd, <2 x double> <double 1.827450e-01, double 7.209800e-02>, <2 x double> %i.fc)
  %i.ff = fmul double %i.ew, -5.698000e-03
  %i.fg = extractelement <2 x double> %i.ex, i64 0
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fg, double f0xBF83B7D84901D191, double %i.ff)
  %i.fi = extractelement <2 x double> %i.ex, i64 1
  %i.fj = tail call double @llvm.fmuladd.f64(double %i.fi, double f0x3FF03EC679CC74B8, double %i.fh)
  store <2 x double> %i.fe, ptr %2, align 8, !tbaa !16
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.fj, ptr %i.fk, align 8, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #5

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!"", !5, i64 0, !5, i64 24, !5, i64 48, !5, i64 72, !5, i64 96, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !5, i64 216, !5, i64 232, !5, i64 248}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS18_cmsContext_struct", !11, i64 0}
!13 = !{!"", !10, i64 0, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !6, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !12, i64 360}
!14 = !{!13, !12, i64 360}
!15 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16}
!16 = !{!9, !9, i64 0}
!17 = !{!13, !9, i64 352}
!18 = !{!13, !9, i64 288}
!19 = !{!13, !9, i64 296}
!20 = !{!13, !9, i64 312}
!21 = !{!13, !9, i64 336}
!22 = !{!13, !9, i64 320}
!23 = !{!13, !9, i64 344}
!24 = !{!13, !9, i64 328}
!25 = !{!15, !9, i64 16}
!26 = !{!15, !9, i64 8}
!27 = !{!15, !9, i64 0}
!28 = !{!13, !9, i64 160}
!29 = distinct !{!29, !"NonlinearCompression"}
!30 = distinct !{!30, !29, !"NonlinearCompression: argument 0"}
!31 = !{!"", !15, i64 0, !9, i64 24, !9, i64 32, !6, i64 40, !9, i64 48}
!32 = !{!31, !9, i64 0}
!33 = !{!31, !9, i64 8}
!34 = !{!31, !9, i64 16}
!35 = !{!31, !9, i64 32}
!36 = !{!13, !9, i64 264}
!37 = !{!31, !9, i64 24}
!38 = !{!13, !9, i64 272}
!39 = !{!31, !9, i64 48}
!40 = !{!31, !6, i64 40}
!41 = !{!13, !6, i64 304}
!42 = !{!13, !9, i64 280}
!43 = !{!5, !5, i64 0}
!44 = !{!30}
!45 = distinct !{!45, !"ChromaticAdaptation"}
!46 = distinct !{!46, !45, !"ChromaticAdaptation: argument 0"}
!47 = distinct !{!47, !"NonlinearCompression"}
!48 = distinct !{!48, !47, !"NonlinearCompression: argument 0"}
!49 = distinct !{!49, !"ComputeCorrelates"}
!50 = distinct !{!50, !49, !"ComputeCorrelates: argument 0"}
!51 = !{!46}
!52 = !{!48}
!53 = !{!50}
!54 = distinct !{!54, !"InverseCorrelates"}
!55 = distinct !{!55, !54, !"InverseCorrelates: argument 0"}
!56 = distinct !{!56, !"InverseNonlinearity"}
!57 = distinct !{!57, !56, !"InverseNonlinearity: argument 0"}
!58 = distinct !{!58, !"InverseChromaticAdaptation"}
!59 = distinct !{!59, !58, !"InverseChromaticAdaptation: argument 0"}
!60 = !{!55}
!61 = !{!57}
!62 = !{!59}
end_hunk_0
