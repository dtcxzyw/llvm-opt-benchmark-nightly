inline.NumInlined: 1712
inline.NumDeleted: 796
begin_hunk_0_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !164
  %i.d = sitofp i64 %i.c to double
  %i.e = fdiv double %i.d, 1.000000e+03           ; 7 uses
  %i.f = load i32, ptr %i.a, align 8, !tbaa !83   ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit

bb.d:                                             ; preds = %bb.b
  %4 = load <2 x double>, ptr %i.h, align 8, !tbaa !152 ; 3 uses
  %5 = insertelement <2 x double> %4, double %i.e, i64 0 ; 2 uses
  %6 = insertelement <2 x double> %4, double %i.e, i64 1
  %7 = fcmp olt <2 x double> %5, %6
  %8 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = select <2 x i1> %7, <2 x double> %8, <2 x double> %4
  store <2 x double> %9, ptr %i.h, align 8, !tbaa !152
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit

_ZN6hermes16StatsAccumulatorIddE6recordEd.exit:   ; preds = %bb.c, %bb.d
end_hunk_1
begin_hunk_2_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load i64, ptr %i.r, align 8, !tbaa !164
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+03           ; 7 uses
  %i.v = load i32, ptr %i.q, align 8, !tbaa !83   ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN6hermes2vm6GCBase13recordGCStatsERKNS0_16GCAnalyticsEventEPNS1_19CumulativeHeapStatsEb:bb.a
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit13

bb.g:                                             ; preds = %bb.e
  %10 = load <2 x double>, ptr %i.x, align 8, !tbaa !152 ; 3 uses
  %11 = insertelement <2 x double> %10, double %i.u, i64 0 ; 2 uses
  %12 = insertelement <2 x double> %10, double %i.u, i64 1
  %13 = fcmp olt <2 x double> %11, %12
  %14 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %15 = select <2 x i1> %13, <2 x double> %14, <2 x double> %10
  store <2 x double> %15, ptr %i.x, align 8, !tbaa !152
  br label %_ZN6hermes16StatsAccumulatorIddE6recordEd.exit13

_ZN6hermes16StatsAccumulatorIddE6recordEd.exit13: ; preds = %bb.f, %bb.g
end_hunk_3
