inline.NumInlined: 27
inline.NumDeleted: 3
begin_hunk_0_@geohashDecode:bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 %5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !23
  %i.h = lshr i64 %4, 1
  %7 = insertelement <2 x i64> poison, i64 %i.h, i64 0
  %8 = insertelement <2 x i64> %7, i64 %4, i64 1
  %9 = and <2 x i64> %8, splat (i64 6148914691236517205) ; 2 uses
  %10 = lshr <2 x i64> %9, splat (i64 1)
  %11 = or disjoint <2 x i64> %10, %9
  %12 = and <2 x i64> %11, splat (i64 3689348814741910323) ; 2 uses
  %13 = lshr <2 x i64> %12, splat (i64 2)
  %14 = or disjoint <2 x i64> %13, %12
  %i.i = insertelement <2 x double> poison, double %1, i64 0
  %i.j = insertelement <2 x double> %i.i, double %3, i64 1
  %i.k = insertelement <2 x double> poison, double %0, i64 0
end_hunk_0
begin_hunk_1_@geohashDecode:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.t = and <2 x i64> %14, splat (i64 1085102592571150095) ; 2 uses
  %i.u = lshr <2 x i64> %i.t, splat (i64 4)
  %i.v = or disjoint <2 x i64> %i.u, %i.t
  %i.w = and <2 x i64> %i.v, splat (i64 71777214294589695) ; 2 uses
end_hunk_1
begin_hunk_2_@geohashDecodeWGS84:bb.a
  store i8 %1, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !23
  %i.d = lshr i64 %0, 1
  %i.e = and i64 %0, 6148914691236517205          ; 2 uses
  %i.f = and i64 %i.d, 6148914691236517205        ; 2 uses
  %i.g = lshr i64 %i.e, 1
  %i.h = or disjoint i64 %i.g, %i.e
  %i.i = and i64 %i.h, 3689348814741910323        ; 2 uses
  %3 = lshr i64 %i.f, 1
  %i.j = or disjoint i64 %3, %i.f
  %4 = and i64 %i.j, 3689348814741910323          ; 2 uses
  %i.k = lshr i64 %i.i, 2
  %i.l = or disjoint i64 %i.k, %i.i
  %i.m = and i64 %i.l, 1085102592571150095        ; 2 uses
  %i.n = lshr i64 %4, 2
  %i.o = or disjoint i64 %i.n, %4
  %i.p = and i64 %i.o, 1085102592571150095        ; 2 uses
  %i.q = lshr i64 %i.m, 4
  %i.r = or disjoint i64 %i.q, %i.m
end_hunk_2
begin_hunk_3_@geohashDecodeToLongLatType:bb.a

geohashDecodeAreaToLongLat.exit:                  ; preds = %bb.b
  %i.c = lshr i64 %0, 1
  %3 = insertelement <2 x i64> poison, i64 %i.c, i64 0
  %4 = insertelement <2 x i64> %3, i64 %0, i64 1
  %5 = and <2 x i64> %4, splat (i64 6148914691236517205) ; 2 uses
  %6 = lshr <2 x i64> %5, splat (i64 1)
  %7 = or disjoint <2 x i64> %6, %5
  %8 = and <2 x i64> %7, splat (i64 3689348814741910323) ; 2 uses
  %9 = lshr <2 x i64> %8, splat (i64 2)
  %10 = or disjoint <2 x i64> %9, %8
  %i.d = and <2 x i64> %10, splat (i64 1085102592571150095) ; 2 uses
  %i.e = lshr <2 x i64> %i.d, splat (i64 4)
  %i.f = or disjoint <2 x i64> %i.e, %i.d
  %i.g = zext nneg i8 %1 to i64
end_hunk_3
