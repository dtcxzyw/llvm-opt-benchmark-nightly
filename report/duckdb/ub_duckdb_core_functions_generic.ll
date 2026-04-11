inline.NumInlined: 3289
inline.NumDeleted: 1424
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_120EquiWidthBinFunctionIdNS0_19EquiWidthBinsDoubleEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
  %i.fk = fdiv double %i.cy, %i.fi
  %i.fl = fdiv double %i.cp, %i.fi
  %i.fm = fsub double %i.fk, %i.fl
  %.046.i.i.i.i = select i1 %i.fh, double %i.fj, double %i.fm ; 16 uses
  %i.fn = fcmp olt double %.046.i.i.i.i, 1.000000e+00 ; 2 uses
  br i1 %i.fn, label %.preheader.i.i.i.i.i, label %.preheader11.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_120EquiWidthBinFunctionIdNS0_19EquiWidthBinsDoubleEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:bb.a
.noexc67.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i
  %.0..i.i.i.i.i.i = select i1 %i.gi, double %.0.i.i.i.i.i.i, double %.046.i.i.i.i ; 2 uses
  %.0..i26.i.i.i.i.i = select i1 %i.gn, double %.0.i25.i.i.i.i.i, double %.046.i.i.i.i ; 2 uses
  %23 = insertelement <2 x double> poison, double %.046.i.i.i.i, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  %25 = insertelement <2 x double> poison, double %.0..i.i.i.i.i.i, i64 0
  %26 = insertelement <2 x double> %25, double %.0..i26.i.i.i.i.i, i64 1
  %27 = fsub <2 x double> %24, %26
  %28 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %27) ; 2 uses
  %29 = extractelement <2 x double> %28, i64 0
  %30 = extractelement <2 x double> %28, i64 1
  %i.go = fcmp olt double %29, %30
  %.0.i.i.i.i.i = select i1 %i.go, double %.0..i.i.i.i.i.i, double %.0..i26.i.i.i.i.i
  br label %_ZN6duckdb12_GLOBAL__N_114MakeNumberNiceEddNS0_12NiceRoundingE.exit.i.i.i.i

end_hunk_1
begin_hunk_2_@llvm.umax.i64
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
