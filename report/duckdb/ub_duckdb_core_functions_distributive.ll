inline.NumInlined: 35645
inline.NumDeleted: 8765
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_117KurtosisOperationINS0_26KurtosisFlagBiasCorrectionEE8FinalizeIdNS0_13KurtosisStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE:bb.a
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load i64, ptr %0, align 8, !tbaa !2145   ; 2 uses
  %i.b = uitofp i64 %i.a to double                ; 4 uses
  %i.c = icmp ult i64 %i.a, 4
  br i1 %i.c, label %.sink.split, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_117KurtosisOperationINS0_26KurtosisFlagBiasCorrectionEE8FinalizeIdNS0_13KurtosisStateEEEvRT0_RT_RNS_21AggregateFinalizeDataE:bb.a
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.d, double %i.ak)
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.x, double %i.al)
  %i.an = fmul double %i.d, %i.am
  %5 = insertelement <2 x double> poison, double %i.b, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fadd <2 x double> %6, <double -1.000000e+00, double -2.000000e+00> ; 2 uses
  %i.ao = fadd nnan double %i.b, 1.000000e+00
  %i.ap = fmul double %i.ao, %i.an
  %i.aq = fmul double %i.ab, %i.ab
  %i.ar = fdiv double %i.ap, %i.aq
  %8 = extractelement <2 x double> %7, i64 0
  %i.as = tail call double @llvm.fmuladd.f64(double %8, double -3.000000e+00, double %i.ar)
  %9 = fadd nnan double %i.b, -3.000000e+00
  %10 = insertelement <2 x double> poison, double %i.as, i64 0
  %11 = insertelement <2 x double> %10, double %9, i64 1
  %12 = fmul <2 x double> %7, %11                 ; 2 uses
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  %i.at = fdiv double %13, %14                    ; 2 uses
  store double %i.at, ptr %1, align 8, !tbaa !2146
  %i.au = tail call noundef zeroext i1 @_ZN6duckdb5Value14DoubleIsFiniteEd(double noundef %i.at)
  br i1 %i.au, label %bb.l, label %bb.f
end_hunk_1
