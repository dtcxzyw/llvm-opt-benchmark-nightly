inline.NumInlined: 896
inline.NumDeleted: 419
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ava, i64 4
  %i.avr = load i32, ptr %i.avq, align 4
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [12 x i8], ptr %i.avo, i64 %i.avs ; 2 uses
  %i.avu = load ptr, ptr %i.atp, align 8
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.ava to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.avz = getelementptr [12 x i8], ptr %i.avo, i64 %i.avy ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 -12
  %i.awb = load float, ptr %i.avt, align 4
  %i.awc = load float, ptr %i.avp, align 4        ; 2 uses
  %10 = fsub float %i.awb, %i.awc                 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %11 = getelementptr inbounds nuw i8, ptr %i.avp, i64 4
  %i.awe = load <2 x float>, ptr %i.awd, align 4
  %12 = load <2 x float>, ptr %11, align 4        ; 3 uses
  %13 = fsub <2 x float> %i.awe, %12              ; 3 uses
  %14 = load <2 x float>, ptr %i.awa, align 4
  %15 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %16 = insertelement <2 x float> %15, float %i.awc, i64 0
  %i.awf = fsub <2 x float> %14, %16              ; 5 uses
  %i.awg = getelementptr i8, ptr %i.avz, i64 -4
  %i.awh = load float, ptr %i.awg, align 4
  %17 = extractelement <2 x float> %12, i64 1
  %i.awi = fsub float %i.awh, %17                 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.awf, %i.awf
  %18 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.awj = extractelement <2 x float> %i.awf, i64 0 ; 2 uses
  %i.awk = call float @llvm.fmuladd.f32(float %i.awj, float %i.awj, float %18)
  %i.awl = call noundef float @llvm.fmuladd.f32(float %i.awi, float %i.awi, float %i.awk) ; 2 uses
  %i.awm = fcmp oeq float %i.awl, 0.000000e+00
  br i1 %i.awm, label %bb.ni, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nh
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.awl)
  %i.awn = fdiv float 1.000000e+00, %sqrt.i.i     ; 2 uses
  %i.awo = insertelement <2 x float> poison, float %i.awn, i64 0
  %19 = shufflevector <2 x float> %i.awo, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x float> %i.awf, %19
  %i.awp = fmul float %i.awi, %i.awn
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.awi, %bb.nh ], [ %i.awp, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0 = phi <2 x float> [ %i.awf, %bb.nh ], [ %20, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0905.4.vec.extract911 = extractelement <2 x float> %.sroa.0905.0, i64 1 ; 2 uses
  %.sroa.0905.0.vec.extract908.a = extractelement <2 x float> %.sroa.0905.0, i64 0
  %21 = fneg float %.sroa.10.0
  %i.awq = fneg float %.sroa.0905.4.vec.extract911
  %22 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %23 = insertelement <2 x float> %22, float %10, i64 1
  %24 = insertelement <2 x float> poison, float %i.awq, i64 0
  %25 = insertelement <2 x float> %24, float %21, i64 1
  %26 = fmul <2 x float> %23, %25
  %27 = shufflevector <2 x float> %.sroa.0905.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %28 = insertelement <2 x float> %27, float %.sroa.10.0, i64 0
  %29 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %13, <2 x float> %28, <2 x float> %26)
  %30 = fneg float %.sroa.0905.0.vec.extract908.a
  %31 = extractelement <2 x float> %13, i64 0
  %32 = fmul float %31, %30
  %33 = call float @llvm.fmuladd.f32(float %10, float %.sroa.0905.4.vec.extract911, float %32)
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.ng
  %.sroa.7.1 = phi float [ %.sroa.7.01206, %bb.ng ], [ %33, %bb.ni ] ; 2 uses
  %.sroa.0914.3 = phi <2 x float> [ %.sroa.0914.21207, %bb.ng ], [ %29, %bb.ni ] ; 2 uses
  store <2 x float> %.sroa.0914.3, ptr %.14371209, align 4
  %.sroa.7.0..1437.sroa_idx = getelementptr inbounds nuw i8, ptr %.14371209, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1437.sroa_idx, align 4
end_hunk_1
begin_hunk_2_@llvm.sqrt.f32
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
