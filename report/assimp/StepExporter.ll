inline.NumInlined: 1077
inline.NumDeleted: 524
begin_hunk_0_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qx, i8 -1, i64 %i.qw, i1 false)
  %i.qy = mul nuw nsw i64 %i.qv, 12               ; 4 uses
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #25
          to label %.lr.ph1030 unwind label %bb.aq ; 9 uses

.lr.ph1030:                                       ; preds = %.noexc488
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qz, i8 0, i64 %i.qy, i1 false)
end_hunk_0
begin_hunk_1_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
  %i.te = getelementptr inbounds nuw i8, ptr %i.qz, i64 12
  %.sroa.0786.0.copyload = load float, ptr %i.te, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.qz, i64 16
  %i.tf = getelementptr inbounds nuw i8, ptr %i.qz, i64 4
  %i.tg = load float, ptr %i.qz, align 4          ; 2 uses
  %4 = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4 ; 4 uses
  %5 = load <2 x float>, ptr %i.tf, align 4       ; 3 uses
  %6 = fneg <2 x float> %5
  %7 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x float> %7, float %.sroa.0786.0.copyload, i64 1
  %9 = fmul <2 x float> %8, %6
  %10 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %11 = insertelement <2 x float> %10, float %i.tg, i64 1
  %12 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %11, <2 x float> %9) ; 5 uses
  %13 = fneg float %i.tg
  %14 = extractelement <2 x float> %4, i64 0      ; 2 uses
  %15 = fmul float %14, %13
  %16 = extractelement <2 x float> %5, i64 0
  %i.th = call float @llvm.fmuladd.f32(float %.sroa.0786.0.copyload, float %16, float %15) ; 4 uses
  %foldExtExtBinop1359 = fmul <2 x float> %12, %12
  %17 = extractelement <2 x float> %foldExtExtBinop1359, i64 1
  %18 = extractelement <2 x float> %12, i64 0     ; 2 uses
  %i.ti = call float @llvm.fmuladd.f32(float %18, float %18, float %17)
  %i.tj = call noundef float @llvm.fmuladd.f32(float %i.th, float %i.th, float %i.ti) ; 2 uses
  %i.tk = fcmp oeq float %i.tj, 0.000000e+00
  br i1 %i.tk, label %_ZN10aiVector3tIfE9NormalizeEv.exit513, label %_ZN10aiVector3tIfEdVEf.exit.i511

_ZN10aiVector3tIfEdVEf.exit.i511:                 ; preds = %._crit_edge1031
  %sqrt.i.i512 = call noundef float @llvm.sqrt.f32(float %i.tj)
  %i.tl = fdiv float 1.000000e+00, %sqrt.i.i512   ; 2 uses
  %i.tm = insertelement <2 x float> poison, float %i.tl, i64 0
  %19 = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %12, %19
  %i.tn = fmul float %i.th, %i.tl
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit513

_ZN10aiVector3tIfE9NormalizeEv.exit513:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i511, %._crit_edge1031
  %.sroa.10.0 = phi float [ %i.th, %._crit_edge1031 ], [ %i.tn, %_ZN10aiVector3tIfEdVEf.exit.i511 ]
  %.sroa.0.0 = phi <2 x float> [ %12, %._crit_edge1031 ], [ %20, %_ZN10aiVector3tIfEdVEf.exit.i511 ] ; 2 uses
  %i.to = load ptr, ptr %i.qh, align 8            ; 4 uses
  %.not.i = icmp ne ptr %i.to, null
  %i.tp = load i32, ptr %i.qi, align 4
end_hunk_1
begin_hunk_2_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit645 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit645: ; preds = %_ZNSolsEf.exit643
  %i.aah = fpext float %14 to double
  %i.aai = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aaf, double noundef %i.aah)
          to label %_ZNSolsEf.exit647 unwind label %bb.ca ; 2 uses

end_hunk_2
begin_hunk_3_@_ZN6Assimp12StepExporter9WriteFileEv:bb.a
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649 unwind label %bb.ca ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit649: ; preds = %_ZNSolsEf.exit647
  %21 = extractelement <2 x float> %4, i64 1
  %i.aak = fpext float %21 to double
  %i.aal = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aai, double noundef %i.aak)
          to label %_ZNSolsEf.exit651 unwind label %bb.ca ; 2 uses

end_hunk_3
begin_hunk_4_@llvm.sqrt.f32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_4
