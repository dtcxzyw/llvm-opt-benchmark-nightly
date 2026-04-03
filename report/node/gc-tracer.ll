begin_hunk_0
  br label %bb.j

_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit: ; preds = %_ZNK2v84base10RingBufferIN4heap4base16BytesAndDurationELh10EE6ReduceIZNS3_12AverageSpeedERKS5_RKS4_St8optionalINS0_9TimeDeltaEEmmEUlSA_SA_E_EES4_T_SA_.exit.i.i36
  %5 = uitofp i64 %.sroa.020.2.i.i.i37 to double
  %i.hw = call noundef double @_ZNK2v84base9TimeDelta15InMillisecondsFEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  %6 = fdiv double %5, %i.hw                      ; 2 uses
  %7 = fcmp ogt double %6, 0x41D0000000000000
  %.sroa.speculated8.i.i.i39 = select i1 %7, double 0x41D0000000000000, double %6 ; 2 uses
  %8 = fcmp olt double %.sroa.speculated8.i.i.i39, 1.000000e+00
  %.sroa.speculated.i.i.i40 = select i1 %8, double 1.000000e+00, double %.sroa.speculated8.i.i.i39 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.hx = fcmp olt double %.0.i, 5.000000e-01
  %9 = fcmp olt double %.sroa.speculated.i.i.i40, 5.000000e-01
  %or.cond = or i1 %i.hx, %9
  br i1 %or.cond, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit.thread, %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit
  %i.hy = load i8, ptr %i.cc, align 8             ; 8 uses
end_hunk_0
begin_hunk_1
  br label %bb.m

bb.l:                                             ; preds = %_ZNK2v88internal8GCTracer53FinalIncrementalMarkCompactSpeedInBytesPerMillisecondEv.exit
  %i.kq = fmul double %.0.i, %.sroa.speculated.i.i.i40
  %i.kr = fadd double %.0.i, %.sroa.speculated.i.i.i40
  %i.ks = fdiv double %i.kq, %i.kr                ; 2 uses
end_hunk_1
