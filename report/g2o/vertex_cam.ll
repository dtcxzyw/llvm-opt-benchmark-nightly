Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/vertex_cam?download=true
inline.NumInlined: 6028
inline.NumDeleted: 3464
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN3g2o10BaseVertexILi6ENS_6SBACamEE3popEv:bb.a
  %i.p = getelementptr inbounds i8, ptr %i.b, i64 -504
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !44
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.s = getelementptr inbounds i8, ptr %i.b, i64 -488
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !44
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = getelementptr inbounds i8, ptr %i.b, i64 -472
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !44
  store <2 x double> %i.w, ptr %i.u, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.y = getelementptr inbounds i8, ptr %i.b, i64 -456
  %i.z = load <2 x double>, ptr %i.y, align 8, !tbaa !44
  store <2 x double> %i.z, ptr %i.x, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ab = getelementptr inbounds i8, ptr %i.b, i64 -440
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !45
  store double %i.ac, ptr %i.aa, align 8, !tbaa !45
  %i.ad = getelementptr inbounds i8, ptr %i.b, i64 -432
  %i.ae = load double, ptr %i.ad, align 16, !tbaa !47
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ae, ptr %i.af, align 16, !tbaa !47
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ah = getelementptr inbounds i8, ptr %i.b, i64 -416
  %i.ai = load <2 x double>, ptr %i.ah, align 16, !tbaa !44
  store <2 x double> %i.ai, ptr %i.ag, align 16, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 -400
  %i.al = load <2 x double>, ptr %i.ak, align 16, !tbaa !44
  store <2 x double> %i.al, ptr %i.aj, align 16, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.an = getelementptr inbounds i8, ptr %i.b, i64 -384
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !44
  store <2 x double> %i.ao, ptr %i.am, align 16, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aq = getelementptr inbounds i8, ptr %i.b, i64 -368
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !44
  store <2 x double> %i.ar, ptr %i.ap, align 16, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.at = getelementptr inbounds i8, ptr %i.b, i64 -352
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !44
  store <2 x double> %i.au, ptr %i.as, align 16, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.aw = getelementptr inbounds i8, ptr %i.b, i64 -336
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !44
  store <2 x double> %i.ax, ptr %i.av, align 16, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.az = getelementptr inbounds i8, ptr %i.b, i64 -320
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !44
  store <2 x double> %i.ba, ptr %i.ay, align 16, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = getelementptr inbounds i8, ptr %i.b, i64 -304
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !44
  store <2 x double> %i.bd, ptr %i.bb, align 16, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 -288
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !44
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.bi = getelementptr inbounds i8, ptr %i.b, i64 -272
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !44
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.bl = getelementptr inbounds i8, ptr %i.b, i64 -256
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !44
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bo = getelementptr inbounds i8, ptr %i.b, i64 -240
  %i.bp = load <2 x double>, ptr %i.bo, align 16, !tbaa !44
  store <2 x double> %i.bp, ptr %i.bn, align 16, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.br = getelementptr inbounds i8, ptr %i.b, i64 -224
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !44
  store <2 x double> %i.bs, ptr %i.bq, align 16, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bu = getelementptr inbounds i8, ptr %i.b, i64 -208
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !44
  store <2 x double> %i.bv, ptr %i.bt, align 16, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bx = getelementptr inbounds i8, ptr %i.b, i64 -192
  %i.by = load <2 x double>, ptr %i.bx, align 16, !tbaa !44
  store <2 x double> %i.by, ptr %i.bw, align 16, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ca = getelementptr inbounds i8, ptr %i.b, i64 -176
  %i.cb = load <2 x double>, ptr %i.ca, align 16, !tbaa !44
  store <2 x double> %i.cb, ptr %i.bz, align 16, !tbaa !44
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.cd = getelementptr inbounds i8, ptr %i.b, i64 -160
  %i.ce = load double, ptr %i.cd, align 16, !tbaa !45
  store double %i.ce, ptr %i.cc, align 16, !tbaa !45
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cg = getelementptr inbounds i8, ptr %i.b, i64 -152
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !44
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cj = getelementptr inbounds i8, ptr %i.b, i64 -136
  %i.ck = load <2 x double>, ptr %i.cj, align 8, !tbaa !44
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cm = getelementptr inbounds i8, ptr %i.b, i64 -120
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !44
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cp = getelementptr inbounds i8, ptr %i.b, i64 -104
  %i.cq = load <2 x double>, ptr %i.cp, align 8, !tbaa !44
  store <2 x double> %i.cq, ptr %i.co, align 8, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cs = getelementptr inbounds i8, ptr %i.b, i64 -88
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !45
  store double %i.ct, ptr %i.cr, align 8, !tbaa !45
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cv = getelementptr inbounds i8, ptr %i.b, i64 -80
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !44
  store <2 x double> %i.cw, ptr %i.cu, align 16, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cy = getelementptr inbounds i8, ptr %i.b, i64 -64
  %i.cz = load <2 x double>, ptr %i.cy, align 16, !tbaa !44
  store <2 x double> %i.cz, ptr %i.cx, align 16, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.db = getelementptr inbounds i8, ptr %i.b, i64 -48
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !44
  store <2 x double> %i.dc, ptr %i.da, align 16, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.de = getelementptr inbounds i8, ptr %i.b, i64 -32
  %i.df = load <2 x double>, ptr %i.de, align 16, !tbaa !44
  store <2 x double> %i.df, ptr %i.dd, align 16, !tbaa !44
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.dh = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.di = load double, ptr %i.dh, align 16, !tbaa !45
  store double %i.di, ptr %i.dg, align 16, !tbaa !45
  store ptr %i.c, ptr %i.a, align 8, !tbaa !136
  %i.dj = load ptr, ptr %0, align 16, !tbaa !8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 216
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6ENS_6SBACamEE10discardTopEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 760 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !136
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -560
  store ptr %i.c, ptr %i.a, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZNK3g2o10BaseVertexILi6ENS_6SBACamEE9stackSizeEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !136
  %i.d = load ptr, ptr %i.a, align 16, !tbaa !67
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 560
  %i.i = trunc i64 %i.h to i32
  ret i32 %i.i
}

declare void @_ZN3g2o16OptimizableGraph6Vertex11updateCacheEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexCam9oplusImplEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.11.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %2 = alloca %"class.Eigen::Matrix", align 16    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !44
  store <2 x double> %i.b, ptr %2, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !44
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 1, !tbaa !44
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !44
  call void @_ZN3g2o6SBACam6updateERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE(ptr noundef nonnull align 16 dereferenceable(552) %i.a, ptr noundef nonnull align 16 dereferenceable(48) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN3g2o6SBACam12transformW2FERN5Eigen6MatrixIdLi3ELi4ELi0ELi3ELi4EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEERKNS1_10QuaternionIdLi0EEE(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 432
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  %i.m = load <2 x double>, ptr %i.k, align 8, !tbaa !44 ; 4 uses
  %i.n = load <2 x double>, ptr %i.i, align 16    ; 2 uses
  %i.o = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x double> %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.r = load <2 x double>, ptr %i.q, align 16, !tbaa !44 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 344
  %3 = load <1 x double>, ptr %i.s, align 8       ; 2 uses
  %i.t = shufflevector <1 x double> %3, <1 x double> poison, <2 x i32> zeroinitializer
  %i.u = fmul <2 x double> %i.r, %i.t
  %i.v = fadd <2 x double> %i.p, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.x = load <2 x double>, ptr %i.w, align 8, !tbaa !44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load <2 x double>, ptr %i.y, align 16    ; 4 uses
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = fmul <2 x double> %i.x, %i.aa
  %i.ac = fadd <2 x double> %i.v, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 264
  %4 = load double, ptr %i.ad, align 8, !tbaa !45
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  %5 = load double, ptr %i.ae, align 16, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %6 = load double, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %7 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul <2 x double> %i.m, %7
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 368
  %8 = load <8 x double>, ptr %i.ah, align 16, !tbaa !45 ; 12 uses
  %9 = shufflevector <2 x double> %i.n, <2 x double> %i.z, <2 x i32> <i32 0, i32 3>
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <8 x double> %10, <8 x double> %8, <4 x i32> <i32 0, i32 1, i32 10, i32 poison>
  %12 = insertelement <4 x double> %11, double %4, i64 3 ; 2 uses
  %13 = shufflevector <4 x double> %12, <4 x double> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %14 = shufflevector <8 x double> %13, <8 x double> %8, <4 x i32> <i32 3, i32 3, i32 3, i32 13>
  %15 = fmul <4 x double> %12, %14
  %16 = shufflevector <1 x double> %3, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %17 = insertelement <4 x double> %16, double %5, i64 1 ; 2 uses
  %18 = insertelement <4 x double> %17, double %6, i64 2 ; 2 uses
  %19 = shufflevector <4 x double> %18, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %20 = shufflevector <4 x double> %17, <4 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %21 = shufflevector <8 x double> %20, <8 x double> %8, <4 x i32> <i32 1, i32 8, i32 12, i32 14>
  %22 = fmul <4 x double> %19, %21
  %23 = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %24 = shufflevector <4 x double> %23, <4 x double> %18, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %25 = insertelement <4 x double> %24, double %6, i64 1 ; 2 uses
  %26 = shufflevector <4 x double> %25, <4 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %27 = shufflevector <8 x double> %26, <8 x double> %8, <4 x i32> <i32 1, i32 9, i32 11, i32 15>
  %28 = fmul <4 x double> %25, %27
  %29 = fadd <4 x double> %22, %28
  %30 = fadd <4 x double> %15, %29                ; 4 uses
  %31 = extractelement <4 x double> %30, i64 0
  store double %31, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !45
  %i.ai = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> zeroinitializer
  %i.aj = fmul <2 x double> %i.r, %i.ai
  %i.ak = fadd <2 x double> %i.ag, %i.aj
  %i.al = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.am = fmul <2 x double> %i.x, %i.al
  %i.an = fadd <2 x double> %i.ak, %i.am
  %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 8
  store <2 x double> %i.an, ptr %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx.a, align 8, !tbaa !44
  %32 = extractelement <4 x double> %30, i64 1
  %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 24
  store double %32, ptr %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !45
  %33 = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 2, i32 2>
  %34 = fmul <2 x double> %i.m, %33
  %35 = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %36 = fmul <2 x double> %i.r, %35
  %37 = fadd <2 x double> %34, %36
  %38 = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %39 = fmul <2 x double> %i.x, %38
  %40 = fadd <2 x double> %37, %39
  %41 = extractelement <4 x double> %30, i64 2
  store double %41, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !45
  %42 = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 5, i32 5>
  %43 = fmul <2 x double> %i.m, %42
  %44 = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 6, i32 6>
  %45 = fmul <2 x double> %i.r, %44
  %46 = fadd <2 x double> %43, %45
  %47 = shufflevector <8 x double> %8, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %48 = fmul <2 x double> %i.x, %47
  %49 = fadd <2 x double> %46, %48
  %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 8
  store <2 x double> %49, ptr %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !44
  %i.ao = extractelement <4 x double> %30, i64 3
  %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 24
  store double %i.ao, ptr %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !45
  store <2 x double> %i.ac, ptr %i.l, align 16, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !44
  store <2 x double> %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i, ptr %i.ap, align 16, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 464
  %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !44
  store <2 x double> %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i, ptr %i.aq, align 16, !tbaa !44
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 480
  store <2 x double> %40, ptr %i.ar, align 16, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 496
  %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !44
  store <2 x double> %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i, ptr %i.as, align 16, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 512
  %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 16
  %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !44
  store <2 x double> %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i, ptr %i.at, align 16, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  call void @_ZN3g2o6SBACam5setDrEv(ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexCam15setToOriginImplEv(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.g2o::SBACam", align 16      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @_ZN3g2o6SBACamC1Ev(ptr noundef nonnull align 16 dereferenceable(552) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(552) %i.a, ptr noundef nonnull align 16 dereferenceable(552) %1, i64 32, i1 false), !tbaa.struct !137
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.b, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !138
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !tbaa.struct !139
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.g = load double, ptr %i.f, align 16, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.g, ptr %i.h, align 16, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.j, i64 96, i1 false), !tbaa.struct !140
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.k, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !tbaa.struct !140
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.m, ptr noundef nonnull align 16 dereferenceable(72) %i.n, i64 72, i1 false), !tbaa.struct !139
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false), !tbaa.struct !139
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.q, ptr noundef nonnull align 16 dereferenceable(72) %i.r, i64 72, i1 false), !tbaa.struct !139
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexCam19setEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load <2 x double>, ptr %1, align 1, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load <2 x double>, ptr %i.c, align 1, !tbaa !44 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load <2 x double>, ptr %i.e, align 1, !tbaa !44 ; 2 uses
  %i.g = getelementptr i8, ptr %1, i64 48
  %i.h = load double, ptr %i.g, align 8, !tbaa !45
  %.sroa.8.40.vec.extract = extractelement <2 x double> %i.f, i64 1
  %i.i = shufflevector <2 x double> %i.d, <2 x double> %i.f, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.i, ptr %i.a, align 16
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double %.sroa.8.40.vec.extract, ptr %.sroa.510.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %i.h, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !44
  %.sroa.5.16.vec.extract = extractelement <2 x double> %i.d, i64 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> %i.b, ptr %i.j, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %.sroa.5.16.vec.extract, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !44
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o9VertexCam26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load <2 x double>, ptr %1, align 1, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <2 x double>, ptr %i.b, align 1, !tbaa !44 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load <2 x double>, ptr %i.d, align 1, !tbaa !44 ; 4 uses
  %.sroa.5.24.vec.extract = extractelement <2 x double> %i.c, i64 1 ; 3 uses
  %i.f = fneg double %.sroa.5.24.vec.extract      ; 2 uses
  %i.g = tail call double @llvm.fmuladd.f64(double %i.f, double %.sroa.5.24.vec.extract, double 1.000000e+00)
  %.sroa.8.32.vec.extract = extractelement <2 x double> %i.e, i64 0
  %.sroa.8.40.vec.extract = extractelement <2 x double> %i.e, i64 1
  %i.h = fneg <2 x double> %i.e                   ; 3 uses
  %i.i = extractelement <2 x double> %i.h, i64 0
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %.sroa.8.32.vec.extract, double %i.g)
  %i.k = extractelement <2 x double> %i.h, i64 1
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %.sroa.8.40.vec.extract, double %i.j) ; 2 uses
  %i.m = fcmp ogt double %i.l, 0.000000e+00
  br i1 %i.m, label %bb.b, label %_ZN3g2o7SE3Quat17fromMinimalVectorERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.n = tail call double @sqrt(double noundef %i.l) #19
  br label %_ZN3g2o7SE3Quat17fromMinimalVectorERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE.exit

_ZN3g2o7SE3Quat17fromMinimalVectorERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE.exit: ; preds = %bb.a, %bb.b
  %.sink31.i = phi double [ %.sroa.5.24.vec.extract, %bb.b ], [ %i.f, %bb.a ]
  %.sink.i = phi double [ %i.n, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.o = phi <2 x double> [ %i.e, %bb.b ], [ %i.h, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  store double %.sink31.i, ptr %i.p, align 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  store <2 x double> %i.o, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %.sink.i, ptr %i.r, align 8, !tbaa !44
  %.sroa.5.16.vec.extract = extractelement <2 x double> %i.c, i64 0
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store <2 x double> %i.a, ptr %i.s, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %.sroa.5.16.vec.extract, ptr %.sroa.5.0..sroa_idx.i, align 16, !tbaa !44
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o9VertexCam11setEstimateERKNS_6SBACamE(ptr noundef nonnull align 16 dereferenceable(776) %0, ptr noundef nonnull align 16 dereferenceable(552) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.4.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %.sroa.11.i.i.i.i.i = alloca [4 x double], align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load <2 x double>, ptr %1, align 16, !tbaa !44
  store <2 x double> %i.b, ptr %i.a, align 16, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load <2 x double>, ptr %i.d, align 16, !tbaa !44
  store <2 x double> %i.e, ptr %i.c, align 16, !tbaa !44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load <2 x double>, ptr %i.g, align 16, !tbaa !44
  store <2 x double> %i.h, ptr %i.f, align 16, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load double, ptr %i.j, align 16, !tbaa !45
  store double %i.k, ptr %i.i, align 16, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load <2 x double>, ptr %i.m, align 8, !tbaa !44
  store <2 x double> %i.n, ptr %i.l, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !44
  store <2 x double> %i.q, ptr %i.o, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.t = load <2 x double>, ptr %i.s, align 8, !tbaa !44
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load <2 x double>, ptr %i.v, align 8, !tbaa !44
  store <2 x double> %i.w, ptr %i.u, align 8, !tbaa !44
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = load double, ptr %i.y, align 8, !tbaa !45
  store double %i.z, ptr %i.x, align 8, !tbaa !45
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ab = load double, ptr %i.aa, align 16, !tbaa !47
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 320
  store double %i.ab, ptr %i.ac, align 16, !tbaa !47
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.af = load <2 x double>, ptr %i.ae, align 16, !tbaa !44
  store <2 x double> %i.af, ptr %i.ad, align 16, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ai = load <2 x double>, ptr %i.ah, align 16, !tbaa !44
  store <2 x double> %i.ai, ptr %i.ag, align 16, !tbaa !44
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.al = load <2 x double>, ptr %i.ak, align 16, !tbaa !44
  store <2 x double> %i.al, ptr %i.aj, align 16, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ao = load <2 x double>, ptr %i.an, align 16, !tbaa !44
  store <2 x double> %i.ao, ptr %i.am, align 16, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ar = load <2 x double>, ptr %i.aq, align 16, !tbaa !44
  store <2 x double> %i.ar, ptr %i.ap, align 16, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.au = load <2 x double>, ptr %i.at, align 16, !tbaa !44
  store <2 x double> %i.au, ptr %i.as, align 16, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ax = load <2 x double>, ptr %i.aw, align 16, !tbaa !44
  store <2 x double> %i.ax, ptr %i.av, align 16, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ba = load <2 x double>, ptr %i.az, align 16, !tbaa !44
  store <2 x double> %i.ba, ptr %i.ay, align 16, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.bd = load <2 x double>, ptr %i.bc, align 16, !tbaa !44
  store <2 x double> %i.bd, ptr %i.bb, align 16, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.bg = load <2 x double>, ptr %i.bf, align 16, !tbaa !44
  store <2 x double> %i.bg, ptr %i.be, align 16, !tbaa !44
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.bj = load <2 x double>, ptr %i.bi, align 16, !tbaa !44
  store <2 x double> %i.bj, ptr %i.bh, align 16, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.bm = load <2 x double>, ptr %i.bl, align 16, !tbaa !44
  store <2 x double> %i.bm, ptr %i.bk, align 16, !tbaa !44
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.bp = load <2 x double>, ptr %i.bo, align 16, !tbaa !44
  store <2 x double> %i.bp, ptr %i.bn, align 16, !tbaa !44
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.bs = load <2 x double>, ptr %i.br, align 16, !tbaa !44
  store <2 x double> %i.bs, ptr %i.bq, align 16, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.bv = load <2 x double>, ptr %i.bu, align 16, !tbaa !44
  store <2 x double> %i.bv, ptr %i.bt, align 16, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.by = load <2 x double>, ptr %i.bx, align 16, !tbaa !44
  store <2 x double> %i.by, ptr %i.bw, align 16, !tbaa !44
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.cb = load double, ptr %i.ca, align 16, !tbaa !45
  store double %i.cb, ptr %i.bz, align 16, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ce = load <2 x double>, ptr %i.cd, align 8, !tbaa !44
  store <2 x double> %i.ce, ptr %i.cc, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.ch = load <2 x double>, ptr %i.cg, align 8, !tbaa !44
  store <2 x double> %i.ch, ptr %i.cf, align 8, !tbaa !44
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ck = load <2 x double>, ptr %i.cj, align 8, !tbaa !44
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !44
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 456
  %i.cn = load <2 x double>, ptr %i.cm, align 8, !tbaa !44
  store <2 x double> %i.cn, ptr %i.cl, align 8, !tbaa !44
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !45
  store double %i.cq, ptr %i.co, align 8, !tbaa !45
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ct = load <2 x double>, ptr %i.cs, align 16, !tbaa !44
  store <2 x double> %i.ct, ptr %i.cr, align 16, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 496
  %i.cw = load <2 x double>, ptr %i.cv, align 16, !tbaa !44
  store <2 x double> %i.cw, ptr %i.cu, align 16, !tbaa !44
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.cz = load <2 x double>, ptr %i.cy, align 16, !tbaa !44
  store <2 x double> %i.cz, ptr %i.cx, align 16, !tbaa !44
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.dc = load <2 x double>, ptr %i.db, align 16, !tbaa !44
  store <2 x double> %i.dc, ptr %i.da, align 16, !tbaa !44
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.df = load double, ptr %i.de, align 16, !tbaa !45
  store double %i.df, ptr %i.dd, align 16, !tbaa !45
  %i.dg = load ptr, ptr %0, align 16, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 216
  %i.di = load ptr, ptr %i.dh, align 8
  tail call void %i.di(ptr noundef nonnull align 16 dereferenceable(776) %0), !inline_history !142
  tail call void @_ZN3g2o6SBACam12transformW2FERN5Eigen6MatrixIdLi3ELi4ELi0ELi3ELi4EEERKNS2_IdLi3ELi1ELi0ELi3ELi1EEERKNS1_10QuaternionIdLi0EEE(ptr noundef nonnull align 16 dereferenceable(96) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  %i.dj = load <2 x double>, ptr %i.l, align 8, !tbaa !44 ; 4 uses
  %i.dk = load <2 x double>, ptr %i.ad, align 16  ; 2 uses
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x double> %i.dj, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.do = load <2 x double>, ptr %i.dn, align 16, !tbaa !44 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 344
  %2 = load <1 x double>, ptr %i.dp, align 8      ; 2 uses
  %i.dq = shufflevector <1 x double> %2, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dr = fmul <2 x double> %i.do, %i.dq
  %i.ds = fadd <2 x double> %i.dm, %i.dr
  %i.dt = load <2 x double>, ptr %i.u, align 8, !tbaa !44 ; 4 uses
  %i.du = load <2 x double>, ptr %i.ag, align 16  ; 4 uses
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul <2 x double> %i.dt, %i.dv
  %i.dx = fadd <2 x double> %i.ds, %i.dw
  %3 = load double, ptr %i.o, align 8, !tbaa !45
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 288
  %4 = load double, ptr %i.dy, align 16, !tbaa !45
  %5 = load double, ptr %i.x, align 8, !tbaa !45  ; 2 uses
  %6 = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dz = fmul <2 x double> %i.dj, %6
  %7 = load <8 x double>, ptr %i.aj, align 16, !tbaa !45 ; 12 uses
  %8 = shufflevector <2 x double> %i.dk, <2 x double> %i.du, <2 x i32> <i32 0, i32 3>
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x double> %9, <8 x double> %7, <4 x i32> <i32 0, i32 1, i32 10, i32 poison>
  %11 = insertelement <4 x double> %10, double %3, i64 3 ; 2 uses
  %12 = shufflevector <4 x double> %11, <4 x double> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x double> %12, <8 x double> %7, <4 x i32> <i32 3, i32 3, i32 3, i32 13>
  %14 = fmul <4 x double> %11, %13
  %15 = shufflevector <1 x double> %2, <1 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %16 = insertelement <4 x double> %15, double %4, i64 1 ; 2 uses
  %17 = insertelement <4 x double> %16, double %5, i64 2 ; 2 uses
  %18 = shufflevector <4 x double> %17, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %19 = shufflevector <4 x double> %16, <4 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x double> %19, <8 x double> %7, <4 x i32> <i32 1, i32 8, i32 12, i32 14>
  %21 = fmul <4 x double> %18, %20
  %22 = shufflevector <2 x double> %i.du, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <4 x double> %22, <4 x double> %17, <4 x i32> <i32 0, i32 poison, i32 5, i32 6>
  %24 = insertelement <4 x double> %23, double %5, i64 1 ; 2 uses
  %25 = shufflevector <4 x double> %24, <4 x double> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %26 = shufflevector <8 x double> %25, <8 x double> %7, <4 x i32> <i32 1, i32 9, i32 11, i32 15>
  %27 = fmul <4 x double> %24, %26
  %28 = fadd <4 x double> %21, %27
  %29 = fadd <4 x double> %14, %28                ; 4 uses
  %30 = extractelement <4 x double> %29, i64 0
  store double %30, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !45
  %i.ea = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> zeroinitializer
  %i.eb = fmul <2 x double> %i.do, %i.ea
  %i.ec = fadd <2 x double> %i.dz, %i.eb
  %i.ed = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = fmul <2 x double> %i.dt, %i.ed
  %i.ef = fadd <2 x double> %i.ec, %i.ee
  %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx.a = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 8
  store <2 x double> %i.ef, ptr %.sroa.4.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx.a, align 8, !tbaa !44
  %31 = extractelement <4 x double> %29, i64 1
  %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 24
  store double %31, ptr %.sroa.4.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !45
  %32 = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 2, i32 2>
  %33 = fmul <2 x double> %i.dj, %32
  %34 = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 3, i32 3>
  %35 = fmul <2 x double> %i.do, %34
  %36 = fadd <2 x double> %33, %35
  %37 = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 4, i32 4>
  %38 = fmul <2 x double> %i.dt, %37
  %39 = fadd <2 x double> %36, %38
  %40 = extractelement <4 x double> %29, i64 2
  store double %40, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !45
  %41 = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 5, i32 5>
  %42 = fmul <2 x double> %i.dj, %41
  %43 = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 6, i32 6>
  %44 = fmul <2 x double> %i.do, %43
  %45 = fadd <2 x double> %42, %44
  %46 = shufflevector <8 x double> %7, <8 x double> poison, <2 x i32> <i32 7, i32 7>
  %47 = fmul <2 x double> %i.dt, %46
  %48 = fadd <2 x double> %45, %47
  %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 8
  store <2 x double> %48, ptr %.sroa.11.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.i.8.i.i.i.i.8.i.i.i.i.8.i.i.i.8.i.i.i.8.i.i.8.i.i.8.i.8.i.8..sroa_idx, align 8, !tbaa !44
  %i.eg = extractelement <4 x double> %29, i64 3
  %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 24
  store double %i.eg, ptr %.sroa.11.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.i.24.i.i.i.i.24.i.i.i.i.24.i.i.i.24.i.i.i.24.i.i.24.i.i.24.i.24.i.24..sroa_idx, align 8, !tbaa !45
  store <2 x double> %i.dx, ptr %i.av, align 16, !tbaa !44
  %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i, align 16, !tbaa !44
  store <2 x double> %.sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.16..i.i.i.i.i, ptr %i.ay, align 16, !tbaa !44
  %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i.i.i.i, i64 16
  %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i = load <2 x double>, ptr %.sroa.4.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !44
  store <2 x double> %.sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.i.16..sroa.4.i.i.16..sroa.4.i.i.16..sroa.4.i.16..sroa.4.i.16..sroa.4.16..sroa.4.16..sroa.4.32..i.i.i.i.i, ptr %i.bb, align 16, !tbaa !44
  store <2 x double> %39, ptr %i.be, align 16, !tbaa !44
  %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i, align 16, !tbaa !44
  store <2 x double> %.sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.64..i.i.i.i.i, ptr %i.bh, align 16, !tbaa !44
  %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.11.i.i.i.i.i, i64 16
  %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i = load <2 x double>, ptr %.sroa.11.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.i.16.i.i.i.i.16.i.i.i.i.16.i.i.i.16.i.i.i.16.i.i.16.i.i.16.i.16.i.16..sroa_idx, align 16, !tbaa !44
  store <2 x double> %.sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.i.16..sroa.11.i.i.16..sroa.11.i.i.16..sroa.11.i.16..sroa.11.i.16..sroa.11.16..sroa.11.16..sroa.11.80..i.i.i.i.i, ptr %i.bk, align 16, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  tail call void @_ZN3g2o6SBACam5setDrEv(ptr noundef nonnull align 16 dereferenceable(552) %i.a)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o9VertexCamD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %i.a, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %0, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !67  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !70
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !71
  br label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit

_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(776) %i.a) #19, !inline_history !71
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o9VertexCamD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %i.a, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %0, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !67  ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3g2o9VertexCamD0Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !70
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !71
  br label %_ZN3g2o9VertexCamD0Ev.exit

_ZN3g2o9VertexCamD0Ev.exit:                       ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(776) %i.a) #19, !inline_history !71
  tail call void @_ZdlPvm(ptr noundef nonnull align 16 dereferenceable(776) %i.a, i64 noundef 784) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev(ptr noundef nonnull align 16 dead_on_return(776) dereferenceable(776) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %0, align 16, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %i.a, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 752
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !67  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt5stackIN3g2o6SBACamESt6vectorIS1_SaIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !70
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20
  br label %_ZNSt5stackIN3g2o6SBACamESt6vectorIS1_SaIS1_EEED2Ev.exit

_ZNSt5stackIN3g2o6SBACamESt6vectorIS1_SaIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3g2o10BaseVertexILi6ENS_6SBACamEED0Ev(ptr noundef nonnull align 16 dereferenceable(776) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex15getEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex17estimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK3g2o16OptimizableGraph6Vertex22getMinimalEstimateDataEPd(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

declare noundef i32 @_ZNK3g2o16OptimizableGraph6Vertex24minimalEstimateDimensionEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex19setEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o16OptimizableGraph6Vertex26setMinimalEstimateDataImplEPKd(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #5 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6ENS_6SBACamEED1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 16), ptr %i.a, align 16, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3g2o10BaseVertexILi6ENS_6SBACamEEE, i64 288), ptr %0, align 16, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !67  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !70
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #20, !inline_history !71
  br label %_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit

_ZN3g2o10BaseVertexILi6ENS_6SBACamEED2Ev.exit:    ; preds = %bb.a, %bb.b
  tail call void @_ZN3g2o16OptimizableGraph6VertexD2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(776) %i.a) #19, !inline_history !71
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZThn64_N3g2o10BaseVertexILi6ENS_6SBACamEED0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !132    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !143
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !45
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
end_hunk_0
