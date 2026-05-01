inline.NumInlined: 95
inline.NumDeleted: 39
begin_hunk_0_@_ZN4geos9operation6buffer22OffsetSegmentGenerator16initSideSegmentsERKNS_4geom10CoordinateES6_i:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = icmp eq i32 %3, 1
  %i.j = select i1 %i.i, i32 1, i32 -1
  %4 = sitofp i32 %i.j to double
  %5 = fmul double %i.g, %4
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 448
  %7 = load <2 x double>, ptr %i.e, align 8, !tbaa !42 ; 2 uses
  %8 = load <2 x double>, ptr %i.d, align 8, !tbaa !42 ; 2 uses
  %9 = fsub <2 x double> %7, %8                   ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %9, %9
  %foldExtExtBinop4 = fmul <2 x double> %9, %9
  %shift = shufflevector <2 x double> %foldExtExtBinop4, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop6 = fadd <2 x double> %foldExtExtBinop, %shift
  %10 = extractelement <2 x double> %foldExtExtBinop6, i64 0
  %sqrt.i = tail call double @llvm.sqrt.f64(double %10)
  %11 = insertelement <2 x double> poison, double %5, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, %9
  %14 = insertelement <2 x double> poison, double %sqrt.i, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %16 = fdiv <2 x double> %13, %15
  %17 = shufflevector <2 x double> %16, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %18 = shufflevector <2 x double> %8, <2 x double> %7, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %19 = fadd <4 x double> %18, %17                ; 2 uses
  %20 = fsub <4 x double> %18, %17                ; 2 uses
  %21 = extractelement <4 x double> %20, i64 1
  store double %21, ptr %i.h, align 8, !tbaa !43
  %22 = extractelement <4 x double> %19, i64 0
  store double %22, ptr %6, align 8, !tbaa !44
  %23 = extractelement <4 x double> %20, i64 3
  store double %23, ptr %i.k, align 8, !tbaa !45
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  %24 = extractelement <4 x double> %19, i64 2
  store double %24, ptr %i.l, align 8, !tbaa !46
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN4geos9operation6buffer22OffsetSegmentGenerator20computeOffsetSegmentERKNS_4geom11LineSegmentEidRS4_:bb.a
  %i.a = icmp eq i32 %2, 1
  %i.b = select i1 %i.a, i32 1, i32 -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = sitofp i32 %i.b to double
  %6 = fmul double %3, %5
  %7 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %8 = load <2 x double>, ptr %i.c, align 8, !tbaa !42 ; 2 uses
  %9 = load <2 x double>, ptr %1, align 8, !tbaa !42 ; 2 uses
  %10 = fsub <2 x double> %8, %9                  ; 5 uses
  %foldExtExtBinop = fmul <2 x double> %10, %10
  %foldExtExtBinop29 = fmul <2 x double> %10, %10
  %shift = shufflevector <2 x double> %foldExtExtBinop29, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop31 = fadd <2 x double> %foldExtExtBinop, %shift
  %11 = extractelement <2 x double> %foldExtExtBinop31, i64 0
  %sqrt = tail call double @llvm.sqrt.f64(double %11)
  %12 = insertelement <2 x double> poison, double %6, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x double> %13, %10
  %15 = insertelement <2 x double> poison, double %sqrt, i64 0
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = fdiv <2 x double> %14, %16
  %18 = shufflevector <2 x double> %17, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %19 = shufflevector <2 x double> %9, <2 x double> %8, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %20 = fadd <4 x double> %19, %18                ; 2 uses
  %21 = fsub <4 x double> %19, %18                ; 2 uses
  %22 = extractelement <4 x double> %21, i64 1
  store double %22, ptr %4, align 8, !tbaa !43
  %23 = extractelement <4 x double> %20, i64 0
  store double %23, ptr %7, align 8, !tbaa !44
  %24 = extractelement <4 x double> %21, i64 3
  store double %24, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  %25 = extractelement <4 x double> %20, i64 2
  store double %25, ptr %i.e, align 8, !tbaa !46
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.p = icmp eq i32 %i.l, 1
  %i.q = select i1 %i.p, i32 1, i32 -1
  %i.r = load double, ptr %i.j, align 8, !tbaa !45 ; 2 uses
  %i.s = load double, ptr %i.i, align 8, !tbaa !43 ; 2 uses
  %i.t = fsub double %i.r, %i.s                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = load double, ptr %i.u, align 8, !tbaa !46 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.x = load double, ptr %i.w, align 8, !tbaa !44 ; 2 uses
  %i.y = fsub double %i.v, %i.x                   ; 3 uses
  %i.z = fmul double %i.t, %i.t
  %i.aa = fmul double %i.y, %i.y
end_hunk_2
begin_hunk_3_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb:bb.a
  %i.ag = fmul double %i.ad, %i.y
  %i.ah = fdiv double %i.ag, %sqrt.i              ; 2 uses
  %i.ai = fsub double %i.s, %i.ah
  store double %i.ai, ptr %i.o, align 8, !tbaa !43
  %i.aj = fadd double %i.x, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.aj, ptr %i.ak, align 8, !tbaa !44
  %i.al = fsub double %i.r, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  store double %i.al, ptr %i.am, align 8, !tbaa !45
  %i.an = fadd double %i.v, %i.af
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 408
  store double %i.an, ptr %i.ao, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.as = load double, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %i.at = load double, ptr %i.ap, align 8, !tbaa !43 ; 2 uses
  %i.au = fsub double %i.as, %i.at                ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aw = load double, ptr %i.av, align 8, !tbaa !46 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !44 ; 2 uses
  %i.az = fsub double %i.aw, %i.ay                ; 3 uses
  %i.ba = fmul double %i.au, %i.au
  %i.bb = fmul double %i.az, %i.az
end_hunk_3
begin_hunk_4_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb:bb.a
  %i.bf = fmul double %i.ad, %i.az
  %i.bg = fdiv double %i.bf, %sqrt.i12            ; 2 uses
  %i.bh = fsub double %i.at, %i.bg
  store double %i.bh, ptr %i.ar, align 8, !tbaa !43
  %i.bi = fadd double %i.ay, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 432
  store double %i.bi, ptr %i.bj, align 8, !tbaa !44
  %i.bk = fsub double %i.as, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.bk, ptr %i.bl, align 8, !tbaa !45
  %i.bm = fadd double %i.aw, %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double %i.bm, ptr %i.bn, align 8, !tbaa !46
  %i.bo = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 3 uses
  %i.bp = icmp eq i32 %i.bo, -1
  %i.bq = load i32, ptr %i.k, align 8             ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::LineSegment", align 16 ; 6 uses
  %5 = alloca %"class.geos::geom::LineSegment", align 16 ; 6 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0x7FF8000000000000, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !25
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double 0x7FF8000000000000, ptr %8, align 8, !tbaa !25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %9 = load double, ptr %i.a, align 8, !tbaa !22  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 0x7FF8000000000000, ptr %i.b, align 16, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double 0x7FF8000000000000, ptr %10, align 8, !tbaa !25
  %11 = fneg double %9
  %12 = load <2 x double>, ptr %1, align 8, !tbaa !42 ; 5 uses
  %13 = load <2 x double>, ptr %2, align 8, !tbaa !42 ; 2 uses
  %14 = shufflevector <2 x double> %13, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %15 = fsub <2 x double> %13, %12                ; 5 uses
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %17 = extractelement <2 x double> %15, i64 0    ; 3 uses
  %i.d = fmul double %17, %17
  %18 = extractelement <2 x double> %15, i64 1
  %19 = fmul <2 x double> %15, %15
  %20 = extractelement <2 x double> %19, i64 1
  %i.e = fadd double %i.d, %20
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.e)
  %21 = insertelement <4 x double> poison, double %9, i64 0
  %22 = insertelement <4 x double> %21, double %11, i64 1
  %23 = shufflevector <4 x double> %22, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %24 = fmul <4 x double> %16, %23
  %25 = insertelement <4 x double> poison, double %sqrt.i, i64 0
  %26 = shufflevector <4 x double> %25, <4 x double> poison, <4 x i32> zeroinitializer
  %27 = fdiv <4 x double> %24, %26                ; 4 uses
  %28 = shufflevector <4 x double> %27, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %29 = fsub <2 x double> %12, %28
  %30 = fadd <2 x double> %12, %28
  %31 = shufflevector <2 x double> %29, <2 x double> %30, <2 x i32> <i32 0, i32 3>
  store <2 x double> %31, ptr %4, align 16, !tbaa !42
  %32 = fsub <4 x double> %14, %27
  %33 = fadd <4 x double> %14, %27
  %34 = shufflevector <4 x double> %32, <4 x double> %33, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %35 = shufflevector <4 x double> %34, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %35, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !42
  %36 = shufflevector <4 x double> %27, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %37 = fsub <2 x double> %12, %36
  %38 = fadd <2 x double> %12, %36
  %39 = shufflevector <2 x double> %37, <2 x double> %38, <2 x i32> <i32 0, i32 3>
  store <2 x double> %39, ptr %5, align 16, !tbaa !42
  %40 = shufflevector <4 x double> %34, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %40, ptr %i.c, align 8, !tbaa !42
  %i.f = tail call double @atan2(double noundef %18, double noundef %17) #12, !tbaa !3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_5
begin_hunk_6_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.24..sroa_idx)
  %i.l = fadd double %i.f, 0x3FF921FB54442D18     ; 2 uses
  %i.m = fadd double %i.f, 0xBFF921FB54442D18
  %i.n = fsub double %i.l, %i.m
end_hunk_6
begin_hunk_7_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_:bb.a
  br i1 %i.u, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load <2 x double>, ptr %i.a, align 8
  %i.w = uitofp nneg i32 %i.t to double
  %i.x = fdiv double %i.o, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
end_hunk_7
begin_hunk_8_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_:bb.a
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.b, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.24..sroa_idx)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.an = tail call double @llvm.fabs.f64(double %9)
  %i.ao = tail call double @cos(double noundef %i.f) #12, !tbaa !3
  %41 = tail call double @sin(double noundef %i.f) #12, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double 0x7FF8000000000000, ptr %43, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %44 = insertelement <2 x double> poison, double %i.an, i64 0
  %45 = insertelement <2 x double> poison, double %i.ao, i64 0
  %46 = insertelement <2 x double> %45, double %41, i64 1
  %47 = shufflevector <2 x double> %44, <2 x double> poison, <4 x i32> zeroinitializer
  %48 = shufflevector <2 x double> %46, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %49 = fmul <4 x double> %47, %48
  %50 = fadd <4 x double> %34, %49                ; 4 uses
  %51 = extractelement <4 x double> %50, i64 0
  store double %51, ptr %6, align 8, !tbaa !52
  %52 = extractelement <4 x double> %50, i64 1
  store double %52, ptr %42, align 8, !tbaa !53
  %53 = extractelement <4 x double> %50, i64 2
  store double %53, ptr %7, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  %54 = extractelement <4 x double> %50, i64 3
  store double %54, ptr %i.ap, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 0x7FF8000000000000, ptr %i.aq, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_8
begin_hunk_9_@llvm.sqrt.f64
!40 = !{!10, !9, i64 16}
!41 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42}
!42 = !{!9, !9, i64 0}
!43 = !{!19, !9, i64 0}
!44 = !{!19, !9, i64 8}
!45 = !{!19, !9, i64 24}
!46 = !{!19, !9, i64 32}
!47 = !{!15, !16, i64 8}
!48 = !{!8, !14, i64 64}
!49 = !{}
end_hunk_9
