begin_hunk_0_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a
_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi float [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %i.o = icmp eq i64 %.sroa.620.0.copyload, 0
  %4 = select i1 %i.o, float 0.000000e+00, float 0x7FF0000000000000
  %i.p = icmp eq i64 %.sroa.519.0.copyload, 0
  %5 = select i1 %i.p, float 0.000000e+00, float 0x7FF0000000000000
  %6 = fadd float %5, %4
  %i.q = uitofp i64 %.sroa.418.0.copyload to float
  %i.r = fmul nnan float %i.q, 0x43F0000000000000
  %7 = fadd float %i.r, %6
  %i.s = uitofp i64 %.sroa.017.0.copyload to float
  %i.t = fadd float %7, %i.s
  %i.u = fmul float %i.t, %.0.i.i
  br label %bb.i

end_hunk_0
begin_hunk_1_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8
  %i.v = icmp eq i64 %.sroa.616.0.copyload, 0
  %8 = select i1 %i.v, float 0.000000e+00, float 0x7FF0000000000000
  %i.w = icmp eq i64 %.sroa.515.0.copyload, 0
  %9 = select i1 %i.w, float 0.000000e+00, float 0x7FF0000000000000
  %10 = fadd float %9, %8
  %i.x = uitofp i64 %.sroa.414.0.copyload to float
  %i.y = fmul nnan float %i.x, 0x43F0000000000000
  %11 = fadd float %i.y, %10
  %i.z = uitofp i64 %.sroa.013.0.copyload to float
  %i.aa = fadd float %11, %i.z
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei:bb.a
_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi float [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = icmp eq i64 %.sroa.6.0.copyload, 0
  %12 = select i1 %i.aj, float 0.000000e+00, float 0x7FF0000000000000
  %i.ak = icmp eq i64 %.sroa.5.0.copyload, 0
  %13 = select i1 %i.ak, float 0.000000e+00, float 0x7FF0000000000000
  %14 = fadd float %13, %12
  %i.al = uitofp i64 %.sroa.4.0.copyload to float
  %i.am = fmul nnan float %i.al, 0x43F0000000000000
  %15 = fadd float %i.am, %14
  %i.an = uitofp i64 %.sroa.0.0.copyload to float
  %i.ao = fadd float %15, %i.an
  %i.ap = fmul float %i.ao, %.0.i.i11
  %i.aq = fadd float %i.aa, %i.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
end_hunk_2
