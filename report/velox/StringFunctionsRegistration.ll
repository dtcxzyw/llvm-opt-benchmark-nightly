inline.NumInlined: 89609
inline.NumDeleted: 14427
begin_hunk_0_@_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIhEEvRdPKT_SA_mm:bb.a

._crit_edge154:                                   ; preds = %bb.p
  %i.aw = fmul double %.151, 5.000000e-01
  %i.ax = sitofp i32 %.155 to double              ; 4 uses
  %8 = uitofp nneg i64 %4 to double
  %9 = fdiv double %i.ax, %8
  %10 = uitofp nneg i64 %5 to double
  %11 = fdiv double %i.ax, %10
  %12 = fadd double %9, %11
  %i.ay = fsub double %i.ax, %i.aw
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = fadd double %12, %i.az
  %i.bb = fdiv double %i.ba, 3.000000e+00         ; 4 uses
  %i.bc = fcmp ogt double %i.bb, 0x3FE6666666666666
  br i1 %i.bc, label %.preheader, label %bb.r
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIiEEvRdPKT_SA_mm:bb.a

._crit_edge154:                                   ; preds = %bb.p
  %i.aw = fmul double %.151, 5.000000e-01
  %i.ax = sitofp i32 %.155 to double              ; 4 uses
  %8 = uitofp nneg i64 %4 to double
  %9 = fdiv double %i.ax, %8
  %10 = uitofp nneg i64 %5 to double
  %11 = fdiv double %i.ax, %10
  %12 = fadd double %9, %11
  %i.ay = fsub double %i.ax, %i.aw
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = fadd double %12, %i.az
  %i.bb = fdiv double %i.ba, 3.000000e+00         ; 4 uses
  %i.bc = fcmp ogt double %i.bb, 0x3FE6666666666666
  br i1 %i.bc, label %.preheader, label %bb.r
end_hunk_1
