begin_hunk_0_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei
define internal fastcc noundef float @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 7 uses
  %.sroa.017.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %4 = load <2 x i64>, ptr %.sroa.519.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %5 = icmp eq <2 x i64> %4, zeroinitializer      ; 2 uses
  %6 = extractelement <2 x i1> %5, i64 0
  %7 = extractelement <2 x i1> %5, i64 1
  %or.cond = select i1 %7, i1 %6, i1 false
  %i.b = icmp eq i64 %.sroa.418.0.copyload, 0
  %or.cond21 = select i1 %or.cond, i1 %i.b, i1 false
  %i.c = icmp ult i64 %.sroa.017.0.copyload, 16777215
end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi float [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  %8 = icmp eq <2 x i64> %4, zeroinitializer
  %9 = select <2 x i1> %8, <2 x float> zeroinitializer, <2 x float> splat (float 0x7FF0000000000000) ; 2 uses
  %shift = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %9, %shift
  %10 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.m = uitofp i64 %.sroa.418.0.copyload to float
  %i.n = fmul nnan float %i.m, 0x43F0000000000000
  %11 = fadd float %i.n, %10
  %i.o = uitofp i64 %.sroa.017.0.copyload to float
  %i.p = fadd float %11, %i.o
  %i.q = fmul float %i.p, %.0.i.i
  br label %bb.i

end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8
  %i.r = icmp eq i64 %.sroa.616.0.copyload, 0
  %12 = select i1 %i.r, float 0.000000e+00, float 0x7FF0000000000000
  %13 = icmp eq i64 %.sroa.515.0.copyload, 0
  %14 = select i1 %13, float 0.000000e+00, float 0x7FF0000000000000
  %15 = fadd float %14, %12
  %16 = uitofp i64 %.sroa.414.0.copyload to float
  %17 = fmul nnan float %16, 0x43F0000000000000
  %i.s = fadd float %17, %15
  %18 = uitofp i64 %.sroa.013.0.copyload to float
  %19 = fadd float %i.s, %18
  %.sroa.0.0.copyload.a = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %20 = load <2 x i64>, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = sub nsw i32 0, %1                        ; 2 uses
  %i.u = icmp samesign ult i32 %1, 77
  br i1 %i.u, label %bb.g, label %bb.h, !prof !28
end_hunk_2
begin_hunk_3_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi float [ %i.y, %bb.g ], [ %i.aa, %bb.h ]
  %21 = icmp eq <2 x i64> %20, zeroinitializer
  %22 = select <2 x i1> %21, <2 x float> zeroinitializer, <2 x float> splat (float 0x7FF0000000000000) ; 2 uses
  %shift25 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop26 = fadd <2 x float> %22, %shift25
  %23 = extractelement <2 x float> %foldExtExtBinop26, i64 0
  %i.ab = uitofp i64 %.sroa.4.0.copyload to float
  %i.ac = fmul nnan float %i.ab, 0x43F0000000000000
  %24 = fadd float %i.ac, %23
  %i.ad = uitofp i64 %.sroa.0.0.copyload.a to float
  %i.ae = fadd float %24, %i.ad
  %i.af = fmul float %i.ae, %.0.i.i11
  %i.ag = fadd float %19, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.i
end_hunk_3
