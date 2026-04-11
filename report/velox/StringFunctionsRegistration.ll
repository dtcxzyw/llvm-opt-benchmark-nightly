inline.NumInlined: 89609
inline.NumDeleted: 14427
begin_hunk_0_@_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIhEEvRdPKT_SA_mm:bb.a

._crit_edge154:                                   ; preds = %bb.p
  %i.aw = fmul double %.151, 5.000000e-01
  %i.ax = sitofp i32 %.155 to double              ; 3 uses
  %8 = insertelement <2 x i64> poison, i64 %4, i64 0
  %9 = insertelement <2 x i64> %8, i64 %5, i64 1
  %10 = uitofp <2 x i64> %9 to <2 x double>
  %11 = insertelement <2 x double> poison, double %i.ax, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fdiv <2 x double> %12, %10                ; 2 uses
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %13, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = fsub double %i.ax, %i.aw
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = fadd double %14, %i.az
  %i.bb = fdiv double %i.ba, 3.000000e+00         ; 4 uses
  %i.bc = fcmp ogt double %i.bb, 0x3FE6666666666666
  br i1 %i.bc, label %.preheader, label %bb.r
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox9functions29JaroWinklerSimilarityFunctionINS0_4exec10VectorExecEE6doCallIiEEvRdPKT_SA_mm:bb.a

._crit_edge154:                                   ; preds = %bb.p
  %i.aw = fmul double %.151, 5.000000e-01
  %i.ax = sitofp i32 %.155 to double              ; 3 uses
  %8 = insertelement <2 x i64> poison, i64 %4, i64 0
  %9 = insertelement <2 x i64> %8, i64 %5, i64 1
  %10 = uitofp <2 x i64> %9 to <2 x double>
  %11 = insertelement <2 x double> poison, double %i.ax, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fdiv <2 x double> %12, %10                ; 2 uses
  %shift = shufflevector <2 x double> %13, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %13, %shift
  %14 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ay = fsub double %i.ax, %i.aw
  %i.az = fdiv double %i.ay, %i.ax
  %i.ba = fadd double %14, %i.az
  %i.bb = fdiv double %i.ba, 3.000000e+00         ; 4 uses
  %i.bc = fcmp ogt double %i.bb, 0x3FE6666666666666
  br i1 %i.bc, label %.preheader, label %bb.r
end_hunk_1
