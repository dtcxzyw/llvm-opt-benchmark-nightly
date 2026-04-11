inline.NumInlined: 1712
inline.NumDeleted: 796
begin_hunk_0_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+03           ; 9 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit

bb.d:                                             ; preds = %bb.b
  %4 = load double, ptr %i.h, align 8, !tbaa !152 ; 2 uses
  %5 = fcmp olt double %i.e, %4
  %.sroa.speculated9.i = select i1 %5, double %i.e, double %4
  store double %.sroa.speculated9.i, ptr %i.h, align 8, !tbaa !168
  %6 = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %7 = load double, ptr %6, align 8, !tbaa !152   ; 2 uses
  %8 = fcmp olt double %7, %i.e
  %.sroa.speculated.i = select i1 %8, double %i.e, double %7
  store double %.sroa.speculated.i, ptr %6, align 8, !tbaa !160
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit

_ZN6hermes16StatsAccumulatorIddE6recordEd.exit:   ; preds = %bb.c, %bb.d
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !164
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+03           ; 9 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !83   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit13

bb.g:                                             ; preds = %bb.e
  %9 = load double, ptr %i.x, align 8, !tbaa !152 ; 2 uses
  %10 = fcmp olt double %i.u, %9
  %.sroa.speculated9.i11 = select i1 %10, double %i.u, double %9
  store double %.sroa.speculated9.i11, ptr %i.x, align 8, !tbaa !168
  %11 = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %12 = load double, ptr %11, align 8, !tbaa !152 ; 2 uses
  %13 = fcmp olt double %12, %i.u
  %.sroa.speculated.i12 = select i1 %13, double %i.u, double %12
  store double %.sroa.speculated.i12, ptr %11, align 8, !tbaa !160
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit13

_ZN6hermes16StatsAccumulatorIddE6recordEd.exit13: ; preds = %bb.f, %bb.g
end_hunk_3
