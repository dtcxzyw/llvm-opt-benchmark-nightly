inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0_@geohashDecode:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  %i.h = lshr i64 %4, 1
  %7 = and i64 %4, 6148914691236517205            ; 2 uses
  %8 = and i64 %i.h, 4919131752989213764
  %9 = lshr i64 %7, 1
  %10 = or disjoint i64 %9, %7
  %11 = and i64 %10, 3689348814741910323          ; 2 uses
  %12 = and i64 %4, 2459565876494606882
  %13 = or disjoint i64 %8, %12                   ; 2 uses
  %14 = lshr exact i64 %13, 1
  %15 = lshr i64 %11, 2
  %16 = or disjoint i64 %15, %11
  %17 = lshr i64 %13, 3
  %18 = or disjoint i64 %14, %17
  %i.i = insertelement <2 x double> poison, double %1, i64 0
  %i.j = insertelement <2 x double> %i.i, double %3, i64 1
  %i.k = insertelement <2 x double> poison, double %0, i64 0
end_hunk_0
begin_hunk_1_@geohashDecode:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  %19 = insertelement <2 x i64> poison, i64 %18, i64 0
  %20 = insertelement <2 x i64> %19, i64 %16, i64 1
  %i.t = and <2 x i64> %20, splat (i64 1085102592571150095) ; 2 uses
  %i.u = lshr <2 x i64> %i.t, splat (i64 4)
  %i.v = or disjoint <2 x i64> %i.u, %i.t
  %i.w = and <2 x i64> %i.v, splat (i64 71777214294589695) ; 2 uses
end_hunk_1
begin_hunk_2_@geohashDecodeWGS84:bb.a
  store i8 %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !23
  %i.d = lshr i64 %0, 1
  %i.e = and i64 %0, 6148914691236517205          ; 2 uses
  %i.f = and i64 %i.d, 4919131752989213764
  %i.g = lshr i64 %i.e, 1
  %i.h = or disjoint i64 %i.g, %i.e
  %i.i = and i64 %i.h, 3689348814741910323        ; 2 uses
  %3 = and i64 %0, 2459565876494606882
  %i.j = or disjoint i64 %i.f, %3                 ; 2 uses
  %4 = lshr exact i64 %i.j, 1
  %i.k = lshr i64 %i.i, 2
  %i.l = or disjoint i64 %i.k, %i.i
  %i.m = and i64 %i.l, 1085102592571150095        ; 2 uses
  %i.n = lshr i64 %i.j, 3
  %i.o = or disjoint i64 %4, %i.n
  %i.p = and i64 %i.o, 1085102592571150095        ; 2 uses
  %i.q = lshr i64 %i.m, 4
  %i.r = or disjoint i64 %i.q, %i.m
end_hunk_2
begin_hunk_3_@geohashDecodeToLongLatType:bb.a

geohashDecodeAreaToLongLat.exit:                  ; preds = %bb.b
  %i.c = lshr i64 %0, 1
  %3 = and i64 %0, 6148914691236517205            ; 2 uses
  %4 = and i64 %0, 2459565876494606882
  %5 = lshr i64 %3, 1
  %6 = and i64 %i.c, 4919131752989213764
  %7 = or disjoint i64 %5, %3
  %8 = or disjoint i64 %6, %4                     ; 2 uses
  %9 = and i64 %7, 3689348814741910323            ; 2 uses
  %10 = lshr i64 %9, 2
  %11 = lshr exact i64 %8, 1
  %12 = lshr i64 %8, 3
  %13 = or disjoint i64 %10, %9
  %14 = or disjoint i64 %11, %12
  %15 = insertelement <2 x i64> poison, i64 %14, i64 0
  %16 = insertelement <2 x i64> %15, i64 %13, i64 1
  %i.d = and <2 x i64> %16, splat (i64 1085102592571150095) ; 2 uses
  %i.e = lshr <2 x i64> %i.d, splat (i64 4)
  %i.f = or disjoint <2 x i64> %i.e, %i.d
  %i.g = zext nneg i8 %1 to i64
end_hunk_3
