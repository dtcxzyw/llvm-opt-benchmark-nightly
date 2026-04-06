begin_hunk_0_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei
define internal fastcc noundef float @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %.sroa.017.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.519.0.copyload = load i64, ptr %.sroa.519.0..sroa_idx, align 8 ; 2 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %4 = icmp eq i64 %.sroa.620.0.copyload, 0
  %5 = icmp eq i64 %.sroa.519.0.copyload, 0
  %or.cond = select i1 %4, i1 %5, i1 false
  %i.b = icmp eq i64 %.sroa.418.0.copyload, 0
  %or.cond21 = select i1 %or.cond, i1 %i.b, i1 false
  %i.c = icmp ult i64 %.sroa.017.0.copyload, 16777215
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi float [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  %6 = icmp eq i64 %.sroa.620.0.copyload, 0
  %7 = icmp eq i64 %.sroa.519.0.copyload, 0
  %8 = select i1 %6, i1 %7, i1 false
  %i.m = uitofp i64 %.sroa.418.0.copyload to float
  %i.n = fmul nnan float %i.m, 0x43F0000000000000
  %9 = select i1 %8, float %i.n, float 0x7FF0000000000000
  %i.o = uitofp i64 %.sroa.017.0.copyload to float
  %i.p = fadd nnan float %9, %i.o
  %i.q = fmul float %i.p, %.0.i.i
  br label %bb.i

end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8
  %i.r = icmp eq i64 %.sroa.616.0.copyload, 0
  %10 = icmp eq i64 %.sroa.515.0.copyload, 0
  %11 = select i1 %i.r, i1 %10, i1 false
  %12 = uitofp i64 %.sroa.414.0.copyload to float
  %13 = fmul nnan float %12, 0x43F0000000000000
  %14 = select i1 %11, float %13, float 0x7FF0000000000000
  %15 = uitofp i64 %.sroa.013.0.copyload to float
  %i.s = fadd nnan float %14, %15
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.0.0.copyload.a = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = sub nsw i32 0, %1                        ; 2 uses
  %i.u = icmp samesign ult i32 %1, 77
  br i1 %i.u, label %bb.g, label %bb.h, !prof !28
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi float [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  %16 = icmp eq i64 %.sroa.6.0.copyload, 0
  %17 = icmp eq i64 %.sroa.4.0.copyload, 0
  %18 = select i1 %16, i1 %17, i1 false
  %i.ab = uitofp i64 %.sroa.0.0.copyload.a to float
  %i.ac = fmul nnan float %i.ab, 0x43F0000000000000
  %19 = select i1 %18, float %i.ac, float 0x7FF0000000000000
  %i.ad = uitofp i64 %.sroa.0.0.copyload to float
  %i.ae = fadd nnan float %19, %i.ad
  %i.af = fmul float %i.ae, %.0.i.i11
  %i.ag = fadd float %i.s, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.i
end_hunk_3
