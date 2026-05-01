inline.NumInlined: 95
inline.NumDeleted: 39
begin_hunk_0_@_ZN4geos9operation6buffer22OffsetSegmentGenerator16initSideSegmentsERKNS_4geom10CoordinateES6_i:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.i = icmp eq i32 %3, 1
  %i.j = select i1 %i.i, i32 1, i32 -1
  %4 = load double, ptr %i.e, align 8, !tbaa !43  ; 2 uses
  %5 = load double, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %6 = fsub double %4, %5                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360
  %7 = load double, ptr %i.k, align 8, !tbaa !45  ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 336
  %9 = load double, ptr %8, align 8, !tbaa !46    ; 2 uses
  %10 = fsub double %7, %9                        ; 3 uses
  %11 = fmul double %6, %6
  %12 = fmul double %10, %10
  %13 = fadd double %11, %12
  %sqrt.i = tail call double @llvm.sqrt.f64(double %13) ; 2 uses
  %14 = sitofp i32 %i.j to double
  %15 = fmul double %i.g, %14                     ; 2 uses
  %16 = fmul double %15, %6
  %17 = fdiv double %16, %sqrt.i                  ; 2 uses
  %18 = fmul double %15, %10
  %19 = fdiv double %18, %sqrt.i                  ; 2 uses
  %20 = fsub double %5, %19
  store double %20, ptr %i.h, align 8, !tbaa !44
  %21 = fadd double %9, %17
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store double %21, ptr %22, align 8, !tbaa !46
  %23 = fsub double %4, %19
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %23, ptr %24, align 8, !tbaa !43
  %25 = fadd double %7, %17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double %25, ptr %i.l, align 8, !tbaa !45
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN4geos9operation6buffer22OffsetSegmentGenerator20computeOffsetSegmentERKNS_4geom11LineSegmentEidRS4_:bb.a
  %i.a = icmp eq i32 %2, 1
  %i.b = select i1 %i.a, i32 1, i32 -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = load double, ptr %i.c, align 8, !tbaa !43  ; 2 uses
  %6 = load double, ptr %1, align 8, !tbaa !44    ; 2 uses
  %7 = fsub double %5, %6                         ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %8 = load double, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %10 = load double, ptr %9, align 8, !tbaa !46   ; 2 uses
  %11 = fsub double %8, %10                       ; 3 uses
  %12 = fmul double %7, %7
  %13 = fmul double %11, %11
  %14 = fadd double %12, %13
  %sqrt = tail call double @llvm.sqrt.f64(double %14) ; 2 uses
  %15 = sitofp i32 %i.b to double
  %16 = fmul double %3, %15                       ; 2 uses
  %17 = fmul double %16, %7
  %18 = fdiv double %17, %sqrt                    ; 2 uses
  %19 = fmul double %16, %11
  %20 = fdiv double %19, %sqrt                    ; 2 uses
  %21 = fsub double %6, %20
  store double %21, ptr %4, align 8, !tbaa !44
  %22 = fadd double %10, %18
  %23 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %22, ptr %23, align 8, !tbaa !46
  %24 = fsub double %5, %20
  %25 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store double %24, ptr %25, align 8, !tbaa !43
  %26 = fadd double %8, %18
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %26, ptr %i.e, align 8, !tbaa !45
  ret void
}

end_hunk_1
begin_hunk_2_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb:bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.p = icmp eq i32 %i.l, 1
  %i.q = select i1 %i.p, i32 1, i32 -1
  %i.r = load double, ptr %i.j, align 8, !tbaa !43 ; 2 uses
  %i.s = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.t = fsub double %i.r, %i.s                   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.v = load double, ptr %i.u, align 8, !tbaa !45 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.x = load double, ptr %i.w, align 8, !tbaa !46 ; 2 uses
  %i.y = fsub double %i.v, %i.x                   ; 3 uses
  %i.z = fmul double %i.t, %i.t
  %i.aa = fmul double %i.y, %i.y
end_hunk_2
begin_hunk_3_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb:bb.a
  %i.ag = fmul double %i.ad, %i.y
  %i.ah = fdiv double %i.ag, %sqrt.i              ; 2 uses
  %i.ai = fsub double %i.s, %i.ah
  store double %i.ai, ptr %i.o, align 8, !tbaa !44
  %i.aj = fadd double %i.x, %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 384
  store double %i.aj, ptr %i.ak, align 8, !tbaa !46
  %i.al = fsub double %i.r, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  store double %i.al, ptr %i.am, align 8, !tbaa !43
  %i.an = fadd double %i.v, %i.af
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 408
  store double %i.an, ptr %i.ao, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !41
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !41
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.as = load double, ptr %i.aq, align 8, !tbaa !43 ; 2 uses
  %i.at = load double, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.au = fsub double %i.as, %i.at                ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.aw = load double, ptr %i.av, align 8, !tbaa !45 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.az = fsub double %i.aw, %i.ay                ; 3 uses
  %i.ba = fmul double %i.au, %i.au
  %i.bb = fmul double %i.az, %i.az
end_hunk_3
begin_hunk_4_@_ZN4geos9operation6buffer22OffsetSegmentGenerator14addNextSegmentERKNS_4geom10CoordinateEb:bb.a
  %i.bf = fmul double %i.ad, %i.az
  %i.bg = fdiv double %i.bf, %sqrt.i12            ; 2 uses
  %i.bh = fsub double %i.at, %i.bg
  store double %i.bh, ptr %i.ar, align 8, !tbaa !44
  %i.bi = fadd double %i.ay, %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 432
  store double %i.bi, ptr %i.bj, align 8, !tbaa !46
  %i.bk = fsub double %i.as, %i.bg
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 448
  store double %i.bk, ptr %i.bl, align 8, !tbaa !43
  %i.bm = fadd double %i.aw, %i.be
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 456
  store double %i.bm, ptr %i.bn, align 8, !tbaa !45
  %i.bo = tail call noundef i32 @_ZN4geos9algorithm11Orientation5indexERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.a) ; 3 uses
  %i.bp = icmp eq i32 %i.bo, -1
  %i.bq = load i32, ptr %i.k, align 8             ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_
define void @_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_(ptr noundef nonnull align 8 dereferenceable(484) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.geos::geom::Coordinate", align 16 ; 5 uses
  %4 = alloca %"class.geos::geom::LineSegment", align 8 ; 8 uses
  %5 = alloca %"class.geos::geom::LineSegment", align 8 ; 8 uses
  %6 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %7 = alloca %"class.geos::geom::Coordinate", align 8 ; 6 uses
  %.sroa.017.0.copyload = load double, ptr %1, align 8, !tbaa !42 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !42 ; 3 uses
  %.sroa.720.24.copyload = load double, ptr %2, align 8, !tbaa !42 ; 3 uses
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.10.24.copyload = load double, ptr %.sroa.10.24..sroa_idx, align 8, !tbaa !42 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store double 0x7FF8000000000000, ptr %i.a, align 8, !tbaa !25
  %8 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 40
  store double 0x7FF8000000000000, ptr %i.b, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %9 = load double, ptr %i.c, align 8, !tbaa !22  ; 4 uses
  %10 = fsub double %.sroa.720.24.copyload, %.sroa.017.0.copyload ; 5 uses
  %11 = fsub double %.sroa.10.24.copyload, %.sroa.5.0.copyload ; 5 uses
  %12 = fmul double %10, %10
  %13 = fmul double %11, %11
  %14 = fadd double %12, %13
  %sqrt.i = tail call double @llvm.sqrt.f64(double %14) ; 4 uses
  %15 = fmul double %10, %9
  %16 = fdiv double %15, %sqrt.i                  ; 2 uses
  %i.d = fmul double %11, %9
  %17 = fdiv double %i.d, %sqrt.i                 ; 2 uses
  %18 = fsub double %.sroa.017.0.copyload, %17
  store double %18, ptr %4, align 8, !tbaa !44
  %i.e = fadd double %.sroa.5.0.copyload, %16
  %19 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.e, ptr %19, align 8, !tbaa !46
  %20 = fsub double %.sroa.720.24.copyload, %17   ; 2 uses
  store double %20, ptr %8, align 8, !tbaa !43
  %21 = fadd double %.sroa.10.24.copyload, %16    ; 2 uses
  %22 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store double %21, ptr %22, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %23 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double 0x7FF8000000000000, ptr %23, align 8, !tbaa !25
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double 0x7FF8000000000000, ptr %25, align 8, !tbaa !25
  %26 = fneg double %9                            ; 2 uses
  %27 = fmul double %10, %26
  %28 = fdiv double %27, %sqrt.i                  ; 2 uses
  %29 = fmul double %11, %26
  %30 = fdiv double %29, %sqrt.i                  ; 2 uses
  %31 = fsub double %.sroa.017.0.copyload, %30
  store double %31, ptr %5, align 8, !tbaa !44
  %32 = fadd double %.sroa.5.0.copyload, %28
  %33 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %32, ptr %33, align 8, !tbaa !46
  %34 = fsub double %.sroa.720.24.copyload, %30   ; 2 uses
  store double %34, ptr %24, align 8, !tbaa !43
  %35 = fadd double %.sroa.10.24.copyload, %28    ; 2 uses
  %36 = getelementptr inbounds nuw i8, ptr %5, i64 32
  store double %35, ptr %36, align 8, !tbaa !45
  %i.f = tail call double @atan2(double noundef %11, double noundef %10) #12, !tbaa !3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !48, !nonnull !49, !align !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
end_hunk_5
begin_hunk_6_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %8)
  %i.l = fadd double %i.f, 0x3FF921FB54442D18     ; 2 uses
  %i.m = fadd double %i.f, 0xBFF921FB54442D18
  %i.n = fsub double %i.l, %i.m
end_hunk_6
begin_hunk_7_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_:bb.a
  br i1 %i.u, label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load <2 x double>, ptr %i.c, align 8
  %i.w = uitofp nneg i32 %i.t to double
  %i.x = fdiv double %i.o, %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
end_hunk_7
begin_hunk_8_@_ZN4geos9operation6buffer22OffsetSegmentGenerator13addLineEndCapERKNS_4geom10CoordinateES6_:bb.a
  br label %_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit

_ZN4geos9operation6buffer22OffsetSegmentGenerator17addDirectedFilletERKNS_4geom10CoordinateEddid.exit: ; preds = %bb.b, %.split23.us.i
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %24)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %8)
  call void @_ZN4geos9operation6buffer19OffsetSegmentString5addPtERKNS_4geom10CoordinateE(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %24)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.an = tail call double @llvm.fabs.f64(double %9) ; 2 uses
  %i.ao = tail call double @cos(double noundef %i.f) #12, !tbaa !3
  %37 = fmul double %i.an, %i.ao                  ; 2 uses
  %38 = tail call double @sin(double noundef %i.f) #12, !tbaa !3
  %39 = fmul double %i.an, %38                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %40 = fadd double %20, %37
  %41 = fadd double %21, %39
  store double %40, ptr %6, align 8, !tbaa !52
  %42 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store double %41, ptr %42, align 8, !tbaa !53
  %43 = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double 0x7FF8000000000000, ptr %43, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %44 = fadd double %34, %37
  %45 = fadd double %35, %39
  store double %44, ptr %7, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %45, ptr %i.ap, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double 0x7FF8000000000000, ptr %i.aq, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_8
begin_hunk_9_@llvm.sqrt.f64
!40 = !{!10, !9, i64 16}
!41 = !{i64 0, i64 8, !42, i64 8, i64 8, !42, i64 16, i64 8, !42}
!42 = !{!9, !9, i64 0}
!43 = !{!19, !9, i64 24}
!44 = !{!19, !9, i64 0}
!45 = !{!19, !9, i64 32}
!46 = !{!19, !9, i64 8}
!47 = !{!15, !16, i64 8}
!48 = !{!8, !14, i64 64}
!49 = !{}
end_hunk_9
