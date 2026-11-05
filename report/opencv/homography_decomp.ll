Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/homography_decomp?download=true
inline.NumInlined: 716
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN2cv23HomographyDecomposition16HomographyDecomp9normalizeERKNS_4MatxIdLi3ELi3EEES5_:bb.a
  %i.co = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cn, <2 x double> %i.aj, <2 x double> %i.ak)
  %i.cp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.cl, <2 x double> %i.co) ; 4 uses
  %i.cq = extractelement <2 x double> %i.cp, i64 0
  %i.cr = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.cs = insertelement <2 x double> %i.cr, double %i.cm, i64 0 ; 2 uses
  %i.ct = insertelement <2 x double> %i.cj, double %i.ad, i64 1
  %i.cu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.ct, <2 x double> zeroinitializer)
  %i.cv = shufflevector <2 x double> %i.bl, <2 x double> %i.bs, <2 x i32> <i32 1, i32 3>
  %i.cw = insertelement <2 x double> %i.cj, double %i.as, i64 0
  %i.cx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cv, <2 x double> %i.cw, <2 x double> %i.cu)
  %i.cy = shufflevector <2 x double> %i.bn, <2 x double> %i.bd, <2 x i32> <i32 0, i32 2>
  %i.cz = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.da = insertelement <2 x double> %i.cz, double %i.au, i64 0 ; 2 uses
  %i.db = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %i.da, <2 x double> %i.cx)
  store <2 x double> %i.db, ptr %i.av, align 8, !tbaa !11, !alias.scope !68
  %i.dc = shufflevector <1 x double> %i.cc, <1 x double> poison, <2 x i32> zeroinitializer
  %i.dd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %i.dc, <2 x double> zeroinitializer) ; 2 uses
  %i.de = insertelement <2 x double> %i.cj, double %i.ap, i64 1 ; 2 uses
  %i.df = insertelement <2 x double> %i.dd, double 0.000000e+00, i64 0
  %i.dg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> %i.de, <2 x double> %i.df)
  %i.dh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.ch, <2 x double> %i.dg) ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 1
  store double %i.di, ptr %i.aw, align 8, !tbaa !11, !alias.scope !68
  %i.dj = shufflevector <2 x double> %i.bl, <2 x double> %i.cb, <2 x i32> <i32 1, i32 2>
  %i.dk = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.dl = insertelement <2 x double> %i.dk, double %i.ad, i64 1
  %i.dm = insertelement <2 x double> %i.dd, double 0.000000e+00, i64 1
  %i.dn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.dl, <2 x double> %i.dm) ; 2 uses
  %i.do = shufflevector <2 x double> %i.cp, <2 x double> %i.dn, <2 x i32> <i32 1, i32 2>
  %i.dp = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.cf, <2 x double> %i.do)
  store <2 x double> %i.dp, ptr %0, align 8, !tbaa !11, !alias.scope !68
  %i.dq = shufflevector <2 x double> %i.bd, <2 x double> %i.cp, <2 x i32> <i32 0, i32 2>
  %i.dr = insertelement <2 x double> %i.cd, double %i.ck, i64 1
  %i.ds = insertelement <2 x double> %i.dn, double 0.000000e+00, i64 0
  %i.dt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.dr, <2 x double> %i.ds) ; 2 uses
  %i.du = shufflevector <2 x double> %i.dh, <2 x double> %i.dt, <2 x i32> <i32 0, i32 3>
  %i.dv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.da, <2 x double> %i.du)
  store <2 x double> %i.dv, ptr %i.bv, align 8, !tbaa !11, !alias.scope !68
  %i.dw = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %i.dx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> %i.de, <2 x double> %i.dw)
  %i.dy = shufflevector <2 x double> %i.cb, <2 x double> %i.cp, <2 x i32> <i32 1, i32 2>
  %i.dz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.ch, <2 x double> %i.dx) ; 2 uses
  %i.ea = extractelement <2 x double> %i.dz, i64 1
  store double %i.ea, ptr %i.bw, align 8, !tbaa !11, !alias.scope !68
  %i.eb = extractelement <2 x double> %i.dz, i64 0
  %i.ec = call double @llvm.fmuladd.f64(double %i.cq, double %i.au, double %i.eb)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.ec, ptr %i.ed, align 8, !tbaa !11, !alias.scope !68
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition16HomographyDecomp11removeScaleEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 18 uses
  %2 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %3 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %1) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1056833530, ptr %2, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !16
  store i64 12884901891, ptr %i.b, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.e, align 8
  store i32 33619968, ptr %3, align 8, !tbaa !15
  store ptr %1, ptr %i.d, align 8, !tbaa !16
  invoke void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = icmp slt i32 %i.g, 2
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr %1, align 8, !tbaa !27
  %i.m = and i32 %i.l, 16384
  %i.n = icmp ne i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp eq i32 %i.p, 1
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = load i32, ptr %i.u, align 8, !tbaa !17
  %i.w = icmp eq i32 %i.v, 1
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !30
  %.fr = freeze i32 %i.ad                         ; 3 uses
  %i.ae = add i32 %.fr, 1
  %i.af = icmp ult i32 %i.ae, 3
  %i.ag = select i1 %i.af, i32 %.fr, i32 0        ; 2 uses
  %i.ah = mul nsw i32 %i.ag, %.fr
  %i.ai = sub nsw i32 1, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.am = load i64, ptr %i.al, align 8, !tbaa !29
  %i.an = sext i32 %i.ag to i64
  %i.ao = mul i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ao
  %i.aq = sext i32 %i.ai to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %.0.i = phi ptr [ %i.k, %bb.c ], [ %i.t, %bb.e ], [ %i.ab, %bb.g ], [ %i.ar, %bb.h ]
  %i.as = load double, ptr %.0.i, align 8, !tbaa !11
  %i.at = fdiv double 1.000000e+00, %i.as         ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !11, !noalias !71
  %i.az = fmul double %i.at, %i.ay
  %i.ba = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !71
  %i.bb = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bd = fmul <2 x double> %i.bc, %i.ba
  store <2 x double> %i.bd, ptr %i.a, align 8
  %i.be = load <2 x double>, ptr %i.au, align 8, !tbaa !11, !noalias !71
  %i.bf = fmul <2 x double> %i.bc, %i.be
  store <2 x double> %i.bf, ptr %i.au, align 8
  %i.bg = load <2 x double>, ptr %i.av, align 8, !tbaa !11, !noalias !71
  %i.bh = fmul <2 x double> %i.bc, %i.bg
  store <2 x double> %i.bh, ptr %i.av, align 8
  %i.bi = load <2 x double>, ptr %i.aw, align 8, !tbaa !11, !noalias !71
  %i.bj = fmul <2 x double> %i.bc, %i.bi
  store <2 x double> %i.bj, ptr %i.aw, align 8
  store double %i.az, ptr %i.ax, align 8, !tbaa !31
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void

bb.j:                                             ; preds = %bb.a
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  resume { ptr, i32 } %i.bk
}

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #2

declare void @_ZN2cv3SVD7computeERKNS_11_InputArrayERKNS_12_OutputArrayEi(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv23HomographyDecomposition16HomographyDecomp15isRotationValidERKNS_4MatxIdLi3ELi3EEEd(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, double noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.cv::Matx", align 16         ; 7 uses
  %4 = alloca %"class.cv::Matx", align 8          ; 8 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %7 = load double, ptr %i.c, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load double, ptr %i.d, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.h = load <2 x double>, ptr %1, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.i = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %8 = load <2 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !76 ; 3 uses
  %i.j = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.h, <2 x double> zeroinitializer)
  %10 = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> %i.i, <2 x double> %9)
  %12 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> %8, <2 x double> %11) ; 2 uses
  store <2 x double> %13, ptr %3, align 16, !tbaa !11, !alias.scope !77
  %14 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %15 = shufflevector <2 x double> %i.h, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 1> ; 2 uses
  %16 = insertelement <4 x double> %15, double 0.000000e+00, i64 1
  %17 = insertelement <4 x double> %15, double -0.000000e+00, i64 1
  %18 = insertelement <4 x double> poison, double %7, i64 0
  %19 = shufflevector <4 x double> %18, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %20 = shufflevector <4 x double> %19, <4 x double> %17, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %21 = shufflevector <2 x double> %13, <2 x double> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x double> <double 0.000000e+00, double poison, double 0.000000e+00, double 0.000000e+00>, <4 x double> %21, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %23 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %16, <4 x double> %20, <4 x double> %22)
  %24 = shufflevector <2 x double> %i.i, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 1> ; 2 uses
  %25 = insertelement <4 x double> %24, double 0.000000e+00, i64 1
  %26 = insertelement <4 x double> %24, double -0.000000e+00, i64 1
  %27 = insertelement <4 x double> poison, double %i.e, i64 0
  %28 = shufflevector <4 x double> %27, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %29 = shufflevector <4 x double> %28, <4 x double> %26, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %30 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %25, <4 x double> %29, <4 x double> %23)
  %31 = shufflevector <2 x double> %8, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 1, i32 1> ; 2 uses
  %32 = insertelement <4 x double> %31, double 0.000000e+00, i64 1
  %33 = insertelement <4 x double> %31, double -0.000000e+00, i64 1
  %34 = insertelement <4 x double> poison, double %i.g, i64 0
  %35 = shufflevector <4 x double> %34, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %36 = shufflevector <4 x double> %35, <4 x double> %33, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %37 = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %32, <4 x double> %36, <4 x double> %30) ; 2 uses
  store <4 x double> %37, ptr %14, align 16, !tbaa !11, !alias.scope !77
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 48
  %38 = shufflevector <4 x double> %37, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  store <2 x double> %38, ptr %i.k, align 16, !tbaa !11, !alias.scope !77
  %39 = tail call double @llvm.fmuladd.f64(double %7, double %7, double 0.000000e+00)
  %i.l = tail call double @llvm.fmuladd.f64(double %i.e, double %i.e, double %39)
  %i.m = tail call double @llvm.fmuladd.f64(double %i.g, double %i.g, double %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.m, ptr %i.n, align 16, !tbaa !11, !alias.scope !77
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store double 1.000000e+00, ptr %4, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.p, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %i.r, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1056833530, ptr %5, align 8, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.t, align 8, !tbaa !16
  store i64 12884901891, ptr %i.s, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 -1056833530, ptr %6, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.v, align 8, !tbaa !16
  store i64 12884901891, ptr %i.u, align 8, !tbaa !17
  %i.w = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.x = call noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(24) %i.w)
  %i.y = fcmp ogt double %i.x, %2
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = load double, ptr %i.f, align 8, !tbaa !11
  %i.aa = load double, ptr %i.d, align 8, !tbaa !11
  %i.ab = fneg double %i.aa
  %i.ac = load <2 x double>, ptr %i.a, align 8, !tbaa !11 ; 3 uses
  %i.ad = load <2 x double>, ptr %i.b, align 8, !tbaa !11 ; 3 uses
  %i.ae = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.af = shufflevector <2 x double> %i.ae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ag = fmul <2 x double> %i.ad, %i.af
  %i.ah = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> %i.ai, <2 x double> %i.ag) ; 2 uses
  %i.ak = load double, ptr %i.c, align 8, !tbaa !11
  %i.al = load <2 x double>, ptr %1, align 8, !tbaa !11 ; 2 uses
  %i.am = shufflevector <2 x double> %i.aj, <2 x double> %i.ac, <2 x i32> <i32 0, i32 3>
  %i.an = fneg <2 x double> %i.am
  %i.ao = shufflevector <2 x double> %i.al, <2 x double> %i.ad, <2 x i32> <i32 1, i32 2>
  %i.ap = fmul <2 x double> %i.ao, %i.an
  %i.aq = shufflevector <2 x double> %i.al, <2 x double> %i.ac, <2 x i32> <i32 0, i32 2>
  %i.ar = shufflevector <2 x double> %i.aj, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.as = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aq, <2 x double> %i.ar, <2 x double> %i.ap) ; 2 uses
  %i.at = extractelement <2 x double> %i.as, i64 0
  %i.au = extractelement <2 x double> %i.as, i64 1
  %i.av = call noundef double @llvm.fmuladd.f64(double %i.ak, double %i.au, double %i.at)
  %i.aw = fadd double %i.av, -1.000000e+00
  %i.ax = call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp olt double %i.ax, %2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.08 = phi i1 [ %i.ay, %bb.b ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %.08
}

declare noundef double @_ZN2cv4normERKNS_11_InputArrayES2_iS2_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv() local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2cv23HomographyDecomposition16HomographyDecomp31passesSameSideOfPlaneConstraintERNS0_13_CameraMotionE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.414.0.copyload = load double, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.515.0.copyload = load double, ptr %.sroa.515.0..sroa_idx, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load double, ptr %i.d, align 8, !tbaa !11, !noalias !80
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load double, ptr %i.h, align 8, !tbaa !11, !noalias !80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.k = load double, ptr %i.j, align 8, !tbaa !11, !noalias !80
  %i.l = load <2 x double>, ptr %i.a, align 8     ; 2 uses
  %.sroa.412.0.copyload = load double, ptr %.sroa.412.0..sroa_idx, align 8 ; 3 uses
  %i.m = load double, ptr %1, align 8, !tbaa !11, !noalias !80
  %i.n = load double, ptr %i.c, align 8, !tbaa !11, !noalias !80
  %i.o = load <2 x double>, ptr %i.g, align 8, !tbaa !11, !noalias !80 ; 2 uses
  %i.p = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.m, double 0.000000e+00)
  %i.r = tail call double @llvm.fmuladd.f64(double %.sroa.412.0.copyload, double %i.n, double %i.q)
  %i.s = shufflevector <2 x double> %i.o, <2 x double> %i.l, <2 x i32> <i32 0, i32 2>
  %i.t = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.r, i64 0
  %i.u = load <2 x double>, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.v = load double, ptr %i.b, align 8, !tbaa !11, !noalias !80
  %i.w = load double, ptr %i.f, align 8, !tbaa !11, !noalias !80
  %i.x = shufflevector <2 x double> %i.u, <2 x double> %i.o, <2 x i32> <i32 0, i32 3>
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.s, <2 x double> %i.x, <2 x double> %i.t) ; 2 uses
  %i.z = extractelement <2 x double> %i.y, i64 1
  %i.aa = tail call double @llvm.fmuladd.f64(double %.sroa.412.0.copyload, double %i.e, double %i.z)
  %i.ab = extractelement <2 x double> %i.u, i64 0
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.i, double %i.aa)
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.p, double %i.v, double 0.000000e+00)
  %i.ae = tail call double @llvm.fmuladd.f64(double %.sroa.412.0.copyload, double %i.w, double %i.ad)
  %i.af = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ag = insertelement <2 x double> %i.af, double %i.k, i64 0
  %i.ah = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ae, i64 0
  %i.ai = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.u, <2 x double> %i.ah) ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 1
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.ac, double %.sroa.414.0.copyload, double %i.aj)
  %i.al = extractelement <2 x double> %i.ai, i64 0
  %i.am = tail call double @llvm.fmuladd.f64(double %i.al, double %.sroa.515.0.copyload, double %i.ak)
  %i.an = fadd double %i.am, 1.000000e+00
  %i.ao = fcmp ugt double %i.an, 0.000000e+00
  ret i1 %i.ao
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition16HomographyDecomp19decomposeHomographyERKNS_4MatxIdLi3ELi3EEES5_RSt6vectorINS0_13_CameraMotionESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.cv::Matx", align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2cv23HomographyDecomposition16HomographyDecomp9normalizeERKNS_4MatxIdLi3ELi3EEES5_(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx") align 8 %4, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %4, i64 72, i1 false), !tbaa.struct !32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  tail call void @_ZN2cv23HomographyDecomposition16HomographyDecomp11removeScaleEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.b = load ptr, ptr %0, align 8, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv23HomographyDecomposition21HomographyDecompZhang22findMotionFrom_tstar_nERKNS_3VecIdLi3EEES5_RNS0_13_CameraMotionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(120) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %5 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %6 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %7 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %8 = alloca %"class.cv::Matx.0", align 16       ; 6 uses
  %9 = alloca %"class.cv::Mat", align 16          ; 12 uses
  %10 = alloca %"class.cv::Matx.0", align 16      ; 6 uses
  %11 = alloca %"class.cv::Mat", align 16         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store <4 x i32> <i32 1124024326, i32 1, i32 1, i32 3>, ptr %9, align 16, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 153, ptr %i.a, align 16, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, i8 0, i64 48, i1 false)
  call void @_ZN2cv8MatShapeC1EmPKiNS_10DataLayoutEi(ptr noundef nonnull align 4 dereferenceable(52) %i.c, i64 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 128
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, i8 0, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 3, i32 noundef 1, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 0, ptr %i.f, align 8
  store i32 33619968, ptr %7, align 8, !tbaa !15
  store ptr %9, ptr %i.e, align 8, !tbaa !16
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %_ZN2cv3MatC2IdLi3EEERKNS_3VecIT_XT0_EEEb.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.k, %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.n, %bb.d ], [ %.pn, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

_ZN2cv3MatC2IdLi3EEERKNS_3VecIT_XT0_EEEb.exit:    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  invoke void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi1EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.0") align 8 %8, ptr noundef nonnull align 8 dereferenceable(208) %9)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %_ZN2cv3MatC2IdLi3EEERKNS_3VecIT_XT0_EEEb.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #22
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef double @_ZN2cv23HomographyDecomposition21HomographyDecompInria15oppositeOfMinorERKNS_4MatxIdLi3ELi3EEEii(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = icmp eq i32 %3, 0
  %i.b = zext i1 %i.a to i32                      ; 2 uses
  %i.c = icmp eq i32 %3, 2
  %i.d = select i1 %i.c, i32 1, i32 2             ; 2 uses
  %i.e = icmp eq i32 %2, 0
  %i.f = icmp eq i32 %2, 2
  %i.g = select i1 %i.e, i32 3, i32 0             ; 2 uses
  %i.h = add nuw nsw i32 %i.d, %i.g
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !11
  %i.l = select i1 %i.f, i32 3, i32 6             ; 2 uses
  %i.m = add nuw nsw i32 %i.l, %i.b
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load double, ptr %i.o, align 8, !tbaa !11
  %i.q = add nuw nsw i32 %i.g, %i.b
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !11
  %i.u = add nuw nsw i32 %i.d, %i.l
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !11
  %i.y = fneg double %i.x
  %i.z = fmul double %i.t, %i.y
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.k, double %i.p, double %i.z)
  ret double %i.aa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2cv23HomographyDecomposition21HomographyDecompInria20findRmatFrom_tstar_nERKNS_3VecIdLi3EEES5_dRNS_4MatxIdLi3ELi3EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, double noundef %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 72)) %4) local_unnamed_addr #9 align 2 {
bb.a:
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.036.0.copyload = load double, ptr %2, align 8 ; 2 uses
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = fdiv double 2.000000e+00, %3             ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.541.0.copyload = load double, ptr %.sroa.541.0..sroa_idx, align 8, !tbaa !31
  %i.g = load <2 x double>, ptr %.sroa.437.0..sroa_idx, align 8 ; 3 uses
  %i.h = fmul double %i.b, %.sroa.541.0.copyload
  %i.i = load <2 x double>, ptr %1, align 8
  %i.j = insertelement <2 x double> poison, double %i.b, i64 0
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = fmul <2 x double> %i.k, %i.i             ; 3 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> zeroinitializer
  %i.n = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.g, <2 x double> zeroinitializer)
  %i.o = insertelement <2 x double> poison, double %.sroa.036.0.copyload, i64 0
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> zeroinitializer
  %i.q = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.p, <2 x double> zeroinitializer) ; 2 uses
  %i.r = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.g, <2 x double> zeroinitializer)
  %i.t = insertelement <2 x double> poison, double %i.h, i64 0 ; 2 uses
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.g, <2 x double> zeroinitializer)
  %i.w = fsub <2 x double> zeroinitializer, %i.n  ; 3 uses
  %i.x = fsub <2 x double> <double 1.000000e+00, double 0.000000e+00>, %i.s ; 3 uses
  %i.y = fsub <2 x double> <double 0.000000e+00, double 1.000000e+00>, %i.v ; 3 uses
  %i.z = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aa = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ab = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ac = extractelement <2 x double> %i.x, i64 1
  %i.ad = extractelement <2 x double> %i.y, i64 1
  %i.ae = load <4 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !97 ; 7 uses
  %i.af = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.ag = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> zeroinitializer
  %i.ah = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.aj = load <2 x double>, ptr %i.c, align 8, !tbaa !11, !noalias !97 ; 3 uses
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.al = shufflevector <4 x double> %i.ae, <4 x double> %i.ak, <2 x i32> <i32 1, i32 4>
  %i.am = shufflevector <4 x double> %i.ae, <4 x double> %i.ak, <2 x i32> <i32 2, i32 5>
  %i.an = shufflevector <4 x double> %i.ae, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.an, <2 x double> %i.w, <2 x double> zeroinitializer)
  %i.ap = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.x, <2 x double> %i.ao)
  %i.ar = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.y, <2 x double> %i.aq) ; 4 uses
  %i.at = load double, ptr %i.d, align 8, !tbaa !11, !noalias !97 ; 2 uses
  %i.au = load double, ptr %i.e, align 8, !tbaa !11, !noalias !97 ; 2 uses
  %i.av = load double, ptr %i.f, align 8, !tbaa !11, !noalias !97 ; 2 uses
  %i.aw = extractelement <2 x double> %i.q, i64 0
  %i.ax = fsub double 1.000000e+00, %i.aw         ; 2 uses
  %i.ay = extractelement <2 x double> %i.q, i64 1
  %i.az = fsub double 0.000000e+00, %i.ay         ; 2 uses
  %i.ba = insertelement <2 x double> %i.z, double %i.ax, i64 0 ; 2 uses
  %i.bb = insertelement <2 x double> %i.aa, double %i.az, i64 0 ; 2 uses
  %i.bc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ag, <2 x double> %i.ba, <2 x double> zeroinitializer)
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.bb, <2 x double> %i.bc)
  %i.be = insertelement <2 x double> %i.z, double %i.ax, i64 1
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.be, <2 x double> zeroinitializer)
  %i.bg = insertelement <2 x double> %i.aa, double %i.az, i64 1
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.bg, <2 x double> %i.bf)
  %i.bi = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bj, <2 x double> %i.ba, <2 x double> zeroinitializer)
  %i.bl = insertelement <2 x double> poison, double %i.au, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bm, <2 x double> %i.bb, <2 x double> %i.bk)
  %i.bo = insertelement <2 x double> poison, double %i.av, i64 0
  %i.bp = shufflevector <2 x double> %i.bo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bq = insertelement <2 x double> %i.t, double %i.at, i64 1
  %i.br = insertelement <2 x double> %i.w, double %.sroa.036.0.copyload, i64 0
  %i.bs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.br, <2 x double> zeroinitializer) ; 2 uses
  %i.bt = extractelement <2 x double> %i.bs, i64 0
  %i.bu = fsub double 0.000000e+00, %i.bt         ; 2 uses
  %i.bv = insertelement <2 x double> %i.ab, double %i.bu, i64 0 ; 2 uses
  %i.bw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.bv, <2 x double> %i.bd) ; 4 uses
  %i.bx = insertelement <2 x double> %i.ab, double %i.bu, i64 1
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.bx, <2 x double> %i.bh) ; 5 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> %i.bv, <2 x double> %i.bn) ; 5 uses
  %i.ca = extractelement <2 x double> %i.bs, i64 1
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.au, double %i.ac, double %i.ca)
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.av, double %i.ad, double %i.cb) ; 3 uses
  store <2 x double> %i.bw, ptr %4, align 8
  %i.cd = extractelement <2 x double> %i.by, i64 0
  store <2 x double> %i.by, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x double> %i.as, ptr %.sroa.7.0..sroa_idx, align 8
  store <2 x double> %i.bz, ptr %.sroa.9.0..sroa_idx, align 8
  store double %i.cc, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !31
  %i.ce = fneg <2 x double> %i.as                 ; 2 uses
  %i.cf = shufflevector <2 x double> %i.ce, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fmul <2 x double> %i.bz, %i.cf
  %i.ch = shufflevector <2 x double> %i.by, <2 x double> %i.as, <2 x i32> <i32 1, i32 2>
  %i.ci = insertelement <2 x double> poison, double %i.cc, i64 0
  %i.cj = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.cj, <2 x double> %i.cg) ; 2 uses
  %i.cl = shufflevector <2 x double> %i.bw, <2 x double> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.cm = shufflevector <2 x double> %i.ck, <2 x double> %i.as, <2 x i32> <i32 0, i32 2>
  %i.cn = fneg <2 x double> %i.cm
  %i.co = fmul <2 x double> %i.cl, %i.cn
  %i.cp = shufflevector <2 x double> %i.bw, <2 x double> %i.by, <2 x i32> <i32 0, i32 3>
  %i.cq = shufflevector <2 x double> %i.ck, <2 x double> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cq, <2 x double> %i.co) ; 2 uses
  %i.cs = extractelement <2 x double> %i.cr, i64 0
  %i.ct = extractelement <2 x double> %i.cr, i64 1
  %i.cu = tail call noundef double @llvm.fmuladd.f64(double %i.cd, double %i.ct, double %i.cs)
  %i.cv = fcmp olt double %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.cw = fneg <2 x double> %i.bw
  store <2 x double> %i.cw, ptr %4, align 8, !tbaa !11
  %i.cx = fneg <2 x double> %i.by
  store <2 x double> %i.cx, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  store <2 x double> %i.ce, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !11
  %i.cy = fneg <2 x double> %i.bz
  store <2 x double> %i.cy, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !11
  %i.cz = fneg double %i.cc
  store double %i.cz, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv23HomographyDecomposition21HomographyDecompInria9decomposeERSt6vectorINS0_13_CameraMotionESaIS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::Matx", align 8          ; 6 uses
  %3 = alloca %"struct.cv::HomographyDecomposition::_CameraMotion", align 8 ; 5 uses
  %4 = alloca %"class.cv::Vec", align 8           ; 7 uses
  %5 = alloca %"class.cv::Vec", align 8           ; 7 uses
  %6 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %7 = alloca %"class.cv::Vec", align 8           ; 6 uses
  %8 = alloca %"class.cv::Matx", align 8          ; 10 uses
  %9 = alloca %"class.cv::Matx", align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load double, ptr %i.d, align 8, !tbaa !11, !noalias !112 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load double, ptr %i.f, align 8, !tbaa !11, !noalias !112 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load double, ptr %i.h, align 8, !tbaa !11, !noalias !112 ; 3 uses
  %i.j = load <2 x double>, ptr %i.a, align 8, !tbaa !11, !noalias !112 ; 4 uses
  %i.k = load <2 x double>, ptr %i.b, align 8, !tbaa !11, !noalias !112 ; 4 uses
  %i.l = load <2 x double>, ptr %i.c, align 8, !tbaa !11, !noalias !112 ; 4 uses
  %10 = extractelement <2 x double> %i.j, i64 0   ; 2 uses
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double 0.000000e+00)
  %12 = extractelement <2 x double> %i.k, i64 0   ; 2 uses
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %11)
  %14 = extractelement <2 x double> %i.l, i64 0   ; 2 uses
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %13)
  %i.m = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = insertelement <2 x double> %i.m, double %i.e, i64 0
  %i.o = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.j, <2 x double> %i.n, <2 x double> zeroinitializer)
  %i.p = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.q = insertelement <2 x double> %i.p, double %i.g, i64 0
  %i.r = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.q, <2 x double> %i.o)
  %16 = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = insertelement <2 x double> %16, double %i.i, i64 0
  %i.t = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.s, <2 x double> %i.r) ; 5 uses
  %17 = extractelement <2 x double> %i.j, i64 1
  %18 = extractelement <2 x double> %i.k, i64 1
  %19 = extractelement <2 x double> %i.l, i64 1
  %20 = tail call double @llvm.fmuladd.f64(double %17, double %i.e, double 0.000000e+00)
  %i.u = tail call double @llvm.fmuladd.f64(double %18, double %i.g, double %20)
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %i.i, double %i.u) ; 7 uses
  %.sroa.7.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.v = fadd double %15, -1.000000e+00           ; 8 uses
  store double %i.v, ptr %2, align 8, !tbaa !11
  %i.w = insertelement <2 x double> %i.m, double %i.e, i64 1 ; 2 uses
  %22 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.w, <2 x double> %i.w, <2 x double> zeroinitializer)
  %i.x = insertelement <2 x double> %i.p, double %i.g, i64 1 ; 2 uses
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.x, <2 x double> %i.x, <2 x double> %22)
  %i.z = insertelement <2 x double> %16, double %i.i, i64 1 ; 2 uses
  %i.aa = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.z, <2 x double> %i.y)
  %i.ab = fadd <2 x double> %i.aa, splat (double -1.000000e+00) ; 5 uses
  %i.ac = extractelement <2 x double> %i.ab, i64 0 ; 5 uses
  store double %i.ac, ptr %.sroa.7.0..sroa_idx.a, align 8, !tbaa !11
  %i.ad = extractelement <2 x double> %i.ab, i64 1 ; 4 uses
  store double %i.ad, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !11
  %i.ae = tail call noundef double @llvm.fabs.f64(double %i.v) ; 3 uses
  %i.af = fcmp one double %i.v, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.af, double %i.ae, double 0.000000e+00 ; 2 uses
  %i.ag = extractelement <2 x double> %i.t, i64 1 ; 6 uses
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.ag) ; 4 uses
  %i.ai = fcmp olt double %.sroa.speculated.i.i, %i.ah
  %.sroa.speculated.1.i.i = select i1 %i.ai, double %i.ah, double %.sroa.speculated.i.i ; 2 uses
  %i.aj = extractelement <2 x double> %i.t, i64 0 ; 4 uses
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj) ; 4 uses
  %i.al = fcmp olt double %.sroa.speculated.1.i.i, %i.ak
  %.sroa.speculated.2.i.i = select i1 %i.al, double %i.ak, double %.sroa.speculated.1.i.i ; 2 uses
  %i.am = fcmp olt double %.sroa.speculated.2.i.i, %i.ah
  %.sroa.speculated.3.i.i = select i1 %i.am, double %i.ah, double %.sroa.speculated.2.i.i ; 2 uses
  %i.an = tail call noundef double @llvm.fabs.f64(double %i.ac) ; 4 uses
  %i.ao = fcmp olt double %.sroa.speculated.3.i.i, %i.an
  %.sroa.speculated.4.i.i = select i1 %i.ao, double %i.an, double %.sroa.speculated.3.i.i ; 2 uses
  %i.ap = tail call noundef double @llvm.fabs.f64(double %21) ; 4 uses
  %i.aq = fcmp olt double %.sroa.speculated.4.i.i, %i.ap
  %.sroa.speculated.5.i.i = select i1 %i.aq, double %i.ap, double %.sroa.speculated.4.i.i ; 2 uses
  %i.ar = fcmp olt double %.sroa.speculated.5.i.i, %i.ak
  %.sroa.speculated.6.i.i = select i1 %i.ar, double %i.ak, double %.sroa.speculated.5.i.i ; 2 uses
  %i.as = fcmp olt double %.sroa.speculated.6.i.i, %i.ap
  %.sroa.speculated.7.i.i = select i1 %i.as, double %i.ap, double %.sroa.speculated.6.i.i ; 2 uses
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 4 uses
  %i.au = fcmp olt double %.sroa.speculated.7.i.i, %i.at
  %.sroa.speculated.8.i.i = select i1 %i.au, double %i.at, double %.sroa.speculated.7.i.i
  %i.av = fcmp olt double %.sroa.speculated.8.i.i, 1.000000e-03
  br i1 %i.av, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i8 0, i64 48, i1 false)
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42
  %.not.i = icmp eq ptr %i.ay, %i.ba
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ay, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i8 0, i64 48, i1 false)
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 120
  store ptr %i.bd, ptr %i.ax, align 8, !tbaa !41
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr %i.ay, ptr noundef nonnull align 8 dereferenceable(120) %3)
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE9push_backERKS2_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.be = fneg double %i.ad                       ; 2 uses
  %i.bf = insertelement <2 x double> %i.ab, double %i.v, i64 1
  %i.bg = insertelement <2 x double> poison, double %i.be, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x double> %i.bf, %i.bh
  %i.bj = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bk = insertelement <2 x double> %i.bj, double %21, i64 0 ; 2 uses
  %i.bl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> %i.bk, <2 x double> %i.bi) ; 2 uses
  %i.bm = fneg double %i.ac
  %i.bn = fmul double %i.v, %i.bm
  %i.bo = tail call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.ag, double %i.bn) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bl, i64 0 ; 2 uses
  %i.bq = tail call double @sqrt(double noundef %i.bp) #22 ; 3 uses
  %i.br = extractelement <2 x double> %i.bl, i64 1 ; 2 uses
  %i.bs = tail call double @sqrt(double noundef %i.br) #22 ; 2 uses
  %i.bt = tail call double @sqrt(double noundef %i.bo) #22 ; 2 uses
  %i.bu = fneg double %21                         ; 2 uses
  %i.bv = fcmp olt double %i.ae, %i.an
  %i.bw = fcmp olt double %i.an, %i.at
  %spec.store.select = select i1 %i.bw, i32 2, i32 1
  %i.bx = fcmp olt double %i.ae, %i.at
  %spec.select = select i1 %i.bx, i32 2, i32 0
  %.0 = select i1 %i.bv, i32 %spec.store.select, i32 %spec.select ; 2 uses
  switch i32 %.0, label %default.unreachable139 [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.by = fmul double %i.v, %i.bu
  %i.bz = tail call noundef double @llvm.fmuladd.f64(double %i.ag, double %i.aj, double %i.by)
  %i.ca = fcmp oge double %i.bz, 0.000000e+00
  %i.cb = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cc = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cd = shufflevector <2 x double> %i.cc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ce = fadd <2 x double> %i.cb, %i.cd
  %i.cf = fsub <2 x double> %i.cb, %i.cd
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.ch = select i1 %i.ca, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.ci = fneg double %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ch, i64 1
  %i.cl = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cm, <2 x double> %i.bj)
  %i.co = insertelement <2 x double> poison, double %i.v, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.cq = fmul double %i.ag, %i.bu
  %i.cr = tail call noundef double @llvm.fmuladd.f64(double %i.ac, double %i.aj, double %i.cq)
  %i.cs = fcmp oge double %i.cr, 0.000000e+00
  %i.ct = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cw = fadd <2 x double> %i.ct, %i.cv
  %i.cx = fsub <2 x double> %i.ct, %i.cv
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> %i.cw, <2 x i32> <i32 0, i32 3>
  %i.cz = select i1 %i.cs, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.da = fneg double %i.cz
  %i.db = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.dc = insertelement <2 x double> %i.db, double %i.da, i64 1
  %i.dd = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.de = shufflevector <2 x double> %i.dd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.df = insertelement <2 x double> poison, double %21, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> %i.de, <2 x double> %i.dg)
  %i.di = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.dj = fmul double %i.ag, %i.be
  %i.dk = tail call noundef double @llvm.fmuladd.f64(double %21, double %i.aj, double %i.dj)
  %i.dl = fcmp oge double %i.dk, 0.000000e+00
  %i.dm = select i1 %i.dl, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.dn = fneg double %i.dm
  %i.do = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dp = insertelement <2 x double> %i.do, double %i.dm, i64 1
  %i.dq = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.dr = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ds = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dp, <2 x double> %i.dr, <2 x double> %i.bj)
  %i.dt = insertelement <2 x double> poison, double %21, i64 0
  %i.du = insertelement <2 x double> poison, double %21, i64 0
  %i.dv = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.dw = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.dx = fadd <2 x double> %i.du, %i.dw
  %i.dy = fsub <2 x double> %i.dt, %i.dv
  %i.dz = shufflevector <2 x double> %i.dx, <2 x double> %i.dy, <2 x i32> <i32 2, i32 0>
  %i.ea = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  br label %bb.i

default.unreachable139:                           ; preds = %bb.e
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.eb = phi <2 x double> [ %i.cp, %bb.f ], [ %i.cy, %bb.g ], [ %i.ds, %bb.h ] ; 4 uses
  %i.ec = phi <2 x double> [ %i.cn, %bb.f ], [ %i.dh, %bb.g ], [ %i.ea, %bb.h ] ; 3 uses
  %i.ed = phi <2 x double> [ %i.cg, %bb.f ], [ %i.di, %bb.g ], [ %i.dz, %bb.h ] ; 4 uses
  %i.ee = fadd double %i.v, %i.ac
  %i.ef = fadd double %i.ee, %i.ad                ; 2 uses
  %i.eg = fadd double %i.ef, 1.000000e+00
  %i.eh = fsub double %i.eg, %i.bp
  %i.ei = fsub double %i.eh, %i.br
  %i.ej = fsub double %i.ei, %i.bo
  %i.ek = tail call double @sqrt(double noundef %i.ej) #22
  %i.el = fmul double %i.ek, 2.000000e+00         ; 4 uses
  %i.em = shl nuw nsw i32 %.0, 2
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !11
  %i.eq = fcmp oge double %i.ep, 0.000000e+00
  %i.er = fadd double %i.ef, 2.000000e+00         ; 2 uses
  %i.es = fadd double %i.er, %i.el
  %i.et = fsub double %i.er, %i.el
  %i.eu = tail call double @sqrt(double noundef %i.es) #22 ; 2 uses
  %i.ev = tail call double @sqrt(double noundef %i.et) #22 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.ew = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %23 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eb, <2 x double> zeroinitializer)
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ed, <2 x double> %23)
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ec, <2 x double> %i.ec, <2 x double> %i.ey)
  %i.fa = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ez)
  %i.fb = fdiv <2 x double> splat (double 1.000000e+00), %i.fa ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fd = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fe = fmul double %i.ev, 5.000000e-01         ; 6 uses
  %i.ff = fneg double %i.eu
  %i.fg = select i1 %i.eq, double %i.eu, double %i.ff ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.fj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fk = fmul <2 x double> %i.ec, %i.fb          ; 3 uses
  %i.fl = extractelement <2 x double> %i.fk, i64 1 ; 3 uses
  store double %i.fl, ptr %i.ex, align 8, !tbaa !11, !alias.scope !113
  %i.fm = extractelement <2 x double> %i.fk, i64 0 ; 3 uses
  store double %i.fm, ptr %i.fd, align 8, !tbaa !11, !alias.scope !114
  %i.fn = insertelement <2 x double> poison, double %i.fg, i64 0 ; 2 uses
  %i.fo = insertelement <2 x double> %i.fn, double %i.ev, i64 1
  %i.fp = fmul <2 x double> %i.fk, %i.fo          ; 2 uses
  %i.fq = shufflevector <2 x double> %i.eb, <2 x double> %i.ed, <2 x i32> <i32 1, i32 3>
  %i.fr = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fs = fmul <2 x double> %i.fq, %i.fr          ; 3 uses
  %i.ft = extractelement <2 x double> %i.fs, i64 0 ; 3 uses
  store double %i.ft, ptr %4, align 8, !tbaa !11, !alias.scope !113
  %i.fu = extractelement <2 x double> %i.fs, i64 1 ; 3 uses
  store double %i.fu, ptr %i.ew, align 8, !tbaa !11, !alias.scope !113
  %i.fv = shufflevector <2 x double> %i.eb, <2 x double> %i.ed, <2 x i32> <i32 0, i32 2>
  %i.fw = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x double> %i.fv, %i.fw          ; 3 uses
  %i.fy = extractelement <2 x double> %i.fx, i64 0 ; 3 uses
  store double %i.fy, ptr %5, align 8, !tbaa !11, !alias.scope !114
  %i.fz = extractelement <2 x double> %i.fx, i64 1 ; 3 uses
  store double %i.fz, ptr %i.fc, align 8, !tbaa !11, !alias.scope !114
  %i.ga = shufflevector <2 x double> %i.fn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gb = fmul <2 x double> %i.fx, %i.ga
  %i.gc = insertelement <2 x double> poison, double %i.ev, i64 0
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = fmul <2 x double> %i.gd, %i.fs
  %i.gf = fsub <2 x double> %i.gb, %i.ge          ; 2 uses
  %shift = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.a = fsub <2 x double> %i.fp, %shift
  %i.gg = extractelement <2 x double> %foldExtExtBinop.a, i64 0
  %i.gh = extractelement <2 x double> %i.gf, i64 0
  %i.gi = fmul double %i.fe, %i.gh                ; 3 uses
  store double %i.gi, ptr %6, align 8, !tbaa !11, !alias.scope !115
  %i.gj = extractelement <2 x double> %i.gf, i64 1
  %i.gk = fmul double %i.fe, %i.gj                ; 3 uses
  store double %i.gk, ptr %i.fh, align 8, !tbaa !11, !alias.scope !115
  %i.gl = fmul double %i.fe, %i.gg                ; 3 uses
  store double %i.gl, ptr %i.fi, align 8, !tbaa !11, !alias.scope !115
  %i.gm = fmul double %i.fg, %i.ft
  %i.gn = fmul double %i.fg, %i.fu
  %i.go = fmul double %i.fg, %i.fl
  %i.gp = fmul double %i.fy, %i.ev
  %i.gq = fmul double %i.fz, %i.ev
  %i.gr = fmul double %i.fm, %i.ev
  %i.gs = fsub double %i.gm, %i.gp
  %i.gt = fsub double %i.gn, %i.gq
  %i.gu = fsub double %i.go, %i.gr
  %i.gv = fmul double %i.fe, %i.gs                ; 3 uses
  store double %i.gv, ptr %7, align 8, !tbaa !11, !alias.scope !116
  %i.gw = fmul double %i.fe, %i.gt                ; 3 uses
  store double %i.gw, ptr %i.fj, align 8, !tbaa !11, !alias.scope !116
  %i.gx = fmul double %i.fe, %i.gu                ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.gx, ptr %i.gy, align 8, !tbaa !11, !alias.scope !116
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !41 ; 2 uses
  %i.hb = load ptr, ptr %1, align 8, !tbaa !43    ; 5 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 2 uses
  %i.hf = sdiv exact i64 %i.he, 120               ; 2 uses
  %i.hg = icmp ult i64 %i.hf, 4
  br i1 %i.hg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.hh = sub nuw nsw i64 4, %i.hf
  tail call void @_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.hh)
  %.pre = load ptr, ptr %1, align 8, !tbaa !43
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE6resizeEm.exit

bb.k:                                             ; preds = %bb.i
  %.not = icmp eq i64 %i.he, 480
  br i1 %.not, label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hb, i64 480 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ha, %i.hi
  br i1 %.not.i.i, label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv23HomographyDecomposition13_CameraMotionES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv23HomographyDecomposition13_CameraMotionES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.l
  store ptr %i.hi, ptr %i.gz, align 8, !tbaa !41
  br label %_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE6resizeEm.exit: ; preds = %bb.j, %bb.k, %bb.l, %_ZSt8_DestroyIPN2cv23HomographyDecomposition13_CameraMotionES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.hj = phi ptr [ %.pre, %bb.j ], [ %i.hb, %bb.k ], [ %i.hb, %bb.l ], [ %i.hb, %_ZSt8_DestroyIPN2cv23HomographyDecomposition13_CameraMotionES2_EvT_S4_RSaIT0_E.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN2cv23HomographyDecomposition21HomographyDecompInria20findRmatFrom_tstar_nERKNS_3VecIdLi3EEES5_dRNS_4MatxIdLi3ELi3EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %4, double noundef %i.el, ptr noundef nonnull align 8 dereferenceable(72) %8)
  %i.hk = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !11, !noalias !117
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.gi, double 0.000000e+00)
  %i.ho = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !11, !noalias !117
  %i.hq = tail call double @llvm.fmuladd.f64(double %i.hp, double %i.gk, double %i.hn)
  %i.hr = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.hs = load double, ptr %i.hr, align 8, !tbaa !11, !noalias !117
  %i.ht = tail call double @llvm.fmuladd.f64(double %i.hs, double %i.gl, double %i.hq) ; 2 uses
  %i.hu = load <4 x double>, ptr %8, align 8, !tbaa !11, !noalias !117 ; 3 uses
  %i.hv = shufflevector <4 x double> %i.hu, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.hw = insertelement <2 x double> poison, double %i.gi, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hx, <2 x double> zeroinitializer)
  %i.hz = load <2 x double>, ptr %i.hk, align 8, !tbaa !11, !noalias !117
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ib = shufflevector <4 x double> %i.hu, <4 x double> %i.ia, <2 x i32> <i32 1, i32 4>
  %i.ic = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.id = shufflevector <2 x double> %i.ic, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ie = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.id, <2 x double> %i.hy)
  %i.if = shufflevector <4 x double> %i.hu, <4 x double> %i.ia, <2 x i32> <i32 2, i32 5>
  %i.ig = insertelement <2 x double> poison, double %i.gl, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.ih, <2 x double> %i.ie) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hj, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !32
  %i.ij = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 96
  store <2 x double> %i.ii, ptr %i.ik, align 8
  %.sroa.890.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ij, i64 112
  store double %i.ht, ptr %.sroa.890.0..sroa_idx, align 8
  %i.il = load ptr, ptr %1, align 8, !tbaa !43
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.im, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  %i.in = load ptr, ptr %1, align 8, !tbaa !43
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.io, ptr noundef nonnull align 8 dereferenceable(72) %8, i64 72, i1 false), !tbaa.struct !32
  %i.ip = fneg double %i.ht
  %i.iq = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 216
  %i.is = fneg <2 x double> %i.ii
  store <2 x double> %i.is, ptr %i.ir, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iq, i64 232
  store double %i.ip, ptr %.sroa.583.0..sroa_idx, align 8
  %i.it = fneg double %i.ft
  %i.iu = fneg double %i.fu
  %i.iv = fneg double %i.fl
  %i.iw = load ptr, ptr %1, align 8, !tbaa !43    ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 192
  store double %i.it, ptr %i.ix, align 8
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 200
  store double %i.iu, ptr %.sroa.479.0..sroa_idx, align 8
  %.sroa.580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.iw, i64 208
  store double %i.iv, ptr %.sroa.580.0..sroa_idx, align 8
  call void @_ZN2cv23HomographyDecomposition21HomographyDecompInria20findRmatFrom_tstar_nERKNS_3VecIdLi3EEES5_dRNS_4MatxIdLi3ELi3EEE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %5, double noundef %i.el, ptr noundef nonnull align 8 dereferenceable(72) %9)
  %i.iy = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ja = load double, ptr %i.iz, align 8, !tbaa !11, !noalias !118
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ja, double %i.gv, double 0.000000e+00)
  %i.jc = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !11, !noalias !118
  %i.je = tail call double @llvm.fmuladd.f64(double %i.jd, double %i.gw, double %i.jb)
  %i.jf = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !11, !noalias !118
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.jg, double %i.gx, double %i.je) ; 2 uses
  %i.ji = load ptr, ptr %1, align 8, !tbaa !43
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 240
  %i.jk = load <4 x double>, ptr %9, align 8, !tbaa !11, !noalias !118 ; 3 uses
  %i.jl = shufflevector <4 x double> %i.jk, <4 x double> poison, <2 x i32> <i32 0, i32 3>
  %i.jm = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jn, <2 x double> zeroinitializer)
  %i.jp = load <2 x double>, ptr %i.iy, align 8, !tbaa !11, !noalias !118
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jr = shufflevector <4 x double> %i.jk, <4 x double> %i.jq, <2 x i32> <i32 1, i32 4>
  %i.js = insertelement <2 x double> poison, double %i.gw, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jt, <2 x double> %i.jo)
  %i.jv = shufflevector <4 x double> %i.jk, <4 x double> %i.jq, <2 x i32> <i32 2, i32 5>
  %i.jw = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jv, <2 x double> %i.jx, <2 x double> %i.ju) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.jj, ptr noundef nonnull align 8 dereferenceable(72) %9, i64 72, i1 false), !tbaa.struct !32
  %i.jz = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 336
  store <2 x double> %i.jy, ptr %i.ka, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jz, i64 352
  store double %i.jh, ptr %.sroa.8.0..sroa_idx, align 8
  %i.kb = load ptr, ptr %1, align 8, !tbaa !43
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kc, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  %i.kd = load ptr, ptr %1, align 8, !tbaa !43
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ke, ptr noundef nonnull align 8 dereferenceable(72) %9, i64 72, i1 false), !tbaa.struct !32
  %i.kf = fneg double %i.jh
  %i.kg = load ptr, ptr %1, align 8, !tbaa !43    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 456
  %i.ki = fneg <2 x double> %i.jy
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit34
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = sub i64 %i.bi, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bj) #24
  br label %_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !43
  store ptr %.0.lcssa.i.i.i.i.i33, ptr %i.a, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw [120 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !42
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !43     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 120                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 120                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 76861433640456466
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 76861433640456465, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN2cv23HomographyDecomposition13_CameraMotionEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN2cv23HomographyDecomposition13_CameraMotionEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 120                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !41
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #23
  unreachable

_ZNKSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 76861433640456465) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 120
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 120
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not13.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not13.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.015.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(120) %.01214.i.i.i.i.i, i64 72, i1 false), !tbaa.struct !32
  %i.x = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 72
  %i.y = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 72
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  store double %i.z, ptr %i.x, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 80
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 80
  store double %i.ab, ptr %i.ac, align 8, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 88
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !11
  %i.af = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 88
  store double %i.ae, ptr %i.af, align 8, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 96
  %i.ah = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 96
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !11
  store double %i.ai, ptr %i.ag, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 104
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 104
  store double %i.ak, ptr %i.al, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 112
  %i.an = load double, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 112
  store double %i.an, ptr %i.ao, align 8, !tbaa !11
  %i.ap = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 120 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 120
  %.not.i.i.i.i.i = icmp eq ptr %i.ap, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i45 = icmp eq ptr %i.c, null
  br i1 %.not.i45, label %_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit46, label %bb.e

bb.e:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !42
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.at) #24
  br label %_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit46

_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit46: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN2cv23HomographyDecomposition13_CameraMotionES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !43
  %i.au = getelementptr inbounds nuw [120 x i8], ptr %i.v, i64 %1
  store ptr %i.au, ptr %i.a, align 8, !tbaa !41
  %i.av = getelementptr inbounds nuw [120 x i8], ptr %i.u, i64 %i.s
  store ptr %i.av, ptr %i.h, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv23HomographyDecomposition13_CameraMotionEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE13_M_deallocateEPS2_m.exit46, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 80) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree noreturn }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { noreturn }
attributes #24 = { builtin nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !53}
!1 = distinct !{!1, !53}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"double", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"_ZTSN2cv5Size_IiEE", !7, i64 0, !7, i64 4}
!14 = !{!"_ZTSN2cv11_InputArrayE", !7, i64 0, !12, i64 8, !13, i64 16}
!15 = !{!14, !7, i64 0}
!16 = !{!14, !12, i64 8}
!17 = !{!7, !7, i64 0}
!18 = !{!"p1 omnipotent char", !12, i64 0}
!19 = !{!"p1 _ZTSN2cv12MatAllocatorE", !12, i64 0}
!20 = !{!"p1 _ZTSN2cv8UMatDataE", !12, i64 0}
!21 = !{!"_ZTSN2cv10DataLayoutE", !6, i64 0}
!22 = !{!"_ZTSN2cv8MatShapeE", !7, i64 0, !21, i64 4, !7, i64 8, !6, i64 12}
!23 = !{!"_ZTSN2cv7MatStepE", !6, i64 0}
!24 = !{!"_ZTSN2cv3MatE", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !19, i64 56, !20, i64 64, !22, i64 72, !23, i64 128}
!25 = !{!24, !7, i64 4}
!26 = !{!24, !18, i64 24}
!27 = !{!24, !7, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!24, !7, i64 12}
!31 = !{!6, !6, i64 0}
!32 = !{i64 0, i64 72, !31}
!33 = !{!"vtable pointer", !5, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!24, !7, i64 16}
!36 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!37 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !36, i64 0, !28, i64 8, !6, i64 16}
!38 = !{!37, !18, i64 0}
!39 = !{!"p1 _ZTSN2cv23HomographyDecomposition13_CameraMotionE", !12, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseIN2cv23HomographyDecomposition13_CameraMotionESaIS2_EE17_Vector_impl_dataE", !39, i64 0, !39, i64 8, !39, i64 16}
!41 = !{!40, !39, i64 8}
!42 = !{!40, !39, i64 16}
!43 = !{!40, !39, i64 0}
!44 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !12, i64 0}
!45 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !44, i64 0}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !7, i64 8, !7, i64 12}
!47 = !{!46, !7, i64 8}
!48 = !{!46, !7, i64 12}
!49 = !{!"p1 _ZTSN2cv23HomographyDecomposition21HomographyDecompInriaE", !12, i64 0}
!50 = !{!"_ZTSSt15_Sp_counted_ptrIPN2cv23HomographyDecomposition21HomographyDecompInriaELN9__gnu_cxx12_Lock_policyE2EE", !46, i64 0, !49, i64 16}
!51 = !{!50, !49, i64 16}
!52 = !{!45, !44, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!55 = !{!"p1 _ZTSN2cv3MatE", !12, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!56, !55, i64 0}
!58 = !{!56, !55, i64 8}
!59 = !{!56, !55, i64 16}
!60 = distinct !{!60, i1 true, !"_ZNK2cv4MatxIdLi3ELi3EE3invEiPb"}
!61 = distinct !{!61, !60, !"_ZNK2cv4MatxIdLi3ELi3EE3invEiPb: argument 0"}
!62 = distinct !{!62, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!63 = distinct !{!63, !62, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!64 = distinct !{!64, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!65 = distinct !{!65, !64, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!66 = !{!61}
!67 = !{!63}
!68 = !{!65}
!69 = distinct !{!69, i1 true, !"_ZN2cvmlIdLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKS3_d"}
!70 = distinct !{!70, !69, !"_ZN2cvmlIdLi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKS3_d: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, i1 true, !"_ZNK2cv4MatxIdLi3ELi3EE1tEv"}
!73 = distinct !{!73, !72, !"_ZNK2cv4MatxIdLi3ELi3EE1tEv: argument 0"}
!74 = distinct !{!74, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!75 = distinct !{!75, !74, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!76 = !{!73}
!77 = !{!75}
!78 = distinct !{!78, i1 true, !"_ZNK2cv4MatxIdLi3ELi3EE1tEv"}
!79 = distinct !{!79, !78, !"_ZNK2cv4MatxIdLi3ELi3EE1tEv: argument 0"}
!80 = !{!79}
!81 = distinct !{!81, i1 true, !"_ZNK2cv4MatxIdLi3ELi1EE1tEv"}
!82 = distinct !{!82, !81, !"_ZNK2cv4MatxIdLi3ELi1EE1tEv: argument 0"}
!83 = distinct !{!83, i1 true, !"_ZN2cvmlIdLi3ELi3ELi1EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!84 = distinct !{!84, !83, !"_ZN2cvmlIdLi3ELi3ELi1EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!85 = distinct !{!85, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!86 = distinct !{!86, !85, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!87 = distinct !{!87, i1 true, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE"}
!88 = distinct !{!88, !87, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE: argument 0"}
!89 = !{!82}
!90 = !{!84}
!91 = !{!86}
!92 = !{!88}
!93 = !{!36, !18, i64 0}
!94 = !{!37, !28, i64 8}
!95 = distinct !{!95, i1 true, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE"}
!96 = distinct !{!96, !95, !"_ZN2cvmlIdLi3ELi3ELi3EEENS_4MatxIT_XT0_EXT1_EEERKNS1_IS2_XT0_EXT2_EEERKNS1_IS2_XT2_EXT1_EEE: argument 0"}
!97 = !{!96}
!98 = distinct !{!98, i1 true, !"_ZNK2cv4MatxIdLi3ELi3EE1tEv"}
!99 = distinct !{!99, !98, !"_ZNK2cv4MatxIdLi3ELi3EE1tEv: argument 0"}
!100 = distinct !{!100, i1 true, !"_ZN2cvdvIdLi3EEENS_3VecIT_XT0_EEERKS3_d"}
!101 = distinct !{!101, !100, !"_ZN2cvdvIdLi3EEENS_3VecIT_XT0_EEERKS3_d: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZN2cvdvIdLi3EEENS_3VecIT_XT0_EEERKS3_d"}
!103 = distinct !{!103, !102, !"_ZN2cvdvIdLi3EEENS_3VecIT_XT0_EEERKS3_d: argument 0"}
!104 = distinct !{!104, i1 true, !"_ZN2cvmlIdLi3EEENS_3VecIT_XT0_EEEdRKS3_"}
!105 = distinct !{!105, !104, !"_ZN2cvmlIdLi3EEENS_3VecIT_XT0_EEEdRKS3_: argument 0"}
!106 = distinct !{!106, i1 true, !"_ZN2cvmlIdLi3EEENS_3VecIT_XT0_EEEdRKS3_"}
!107 = distinct !{!107, !106, !"_ZN2cvmlIdLi3EEENS_3VecIT_XT0_EEEdRKS3_: argument 0"}
!108 = distinct !{!108, i1 true, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE"}
!109 = distinct !{!109, !108, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE: argument 0"}
!110 = distinct !{!110, i1 true, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE"}
!111 = distinct !{!111, !110, !"_ZN2cvmlIdLi3ELi3EEENS_3VecIT_XT0_EEERKNS_4MatxIS2_XT0_EXT1_EEERKNS1_IS2_XT1_EEE: argument 0"}
!112 = !{!99}
!113 = !{!101}
!114 = !{!103}
!115 = !{!105}
!116 = !{!107}
!117 = !{!109}
!118 = !{!111}
!119 = distinct !{!119, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!120 = distinct !{!120, !119, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!121 = distinct !{!121, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!122 = distinct !{!122, !121, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!123 = distinct !{!123, !53}
!124 = distinct !{!124, !53}
!125 = distinct !{!125, !53}
!126 = distinct !{ptr @_ZNSt12__shared_ptrIN2cv23HomographyDecomposition16HomographyDecompELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!127 = !{!120}
!128 = !{!122}
!129 = !{!"p1 _ZTSN2cv23HomographyDecomposition16HomographyDecompE", !12, i64 0}
!130 = !{!"_ZTSSt12__shared_ptrIN2cv23HomographyDecomposition16HomographyDecompELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !45, i64 8}
!131 = !{!130, !129, i64 0}
!132 = distinct !{null, null}
!133 = distinct !{!133, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!134 = distinct !{!134, !133, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!135 = distinct !{!135, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!136 = distinct !{!136, !135, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!137 = distinct !{!137, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!138 = distinct !{!138, !137, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!139 = distinct !{!139, !53}
!140 = distinct !{!140, !53}
!141 = distinct !{null}
!142 = distinct !{!142, !53}
!143 = distinct !{!143, !53}
!144 = distinct !{!144, !53}
!145 = !{!134}
!146 = !{!136}
!147 = !{!138}
!148 = !{!"p1 _ZTSN2cv5MatOpE", !12, i64 0}
!149 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !6, i64 0}
!150 = !{!"_ZTSN2cv3VecIdLi4EEE", !149, i64 0}
!151 = !{!"_ZTSN2cv7Scalar_IdEE", !150, i64 0}
!152 = !{!"_ZTSN2cv7MatExprE", !148, i64 0, !7, i64 8, !24, i64 16, !24, i64 224, !24, i64 432, !10, i64 640, !10, i64 648, !151, i64 656}
!153 = !{!152, !148, i64 0}
!154 = !{!"float", !6, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{!24, !7, i64 8}
!157 = !{!24, !18, i64 32}
!158 = !{!24, !18, i64 40}
!159 = !{!24, !18, i64 48}
!160 = distinct !{null}
end_hunk_2
