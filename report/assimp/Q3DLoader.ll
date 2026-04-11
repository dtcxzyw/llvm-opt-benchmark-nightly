inline.NumInlined: 896
inline.NumDeleted: 419
begin_hunk_0_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.avq = getelementptr inbounds nuw i8, ptr %i.ava, i64 4
  %i.avr = load i32, ptr %i.avq, align 4
  %i.avs = zext i32 %i.avr to i64
  %i.avt = getelementptr inbounds nuw [12 x i8], ptr %i.avo, i64 %i.avs ; 3 uses
  %i.avu = load ptr, ptr %i.atp, align 8
  %i.avv = ptrtoint ptr %i.avu to i64
  %i.avw = ptrtoint ptr %i.ava to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp11Q3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.avz = getelementptr [12 x i8], ptr %i.avo, i64 %i.avy ; 2 uses
  %i.awa = getelementptr i8, ptr %i.avz, i64 -12
  %i.awb = load float, ptr %i.avt, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.avt, i64 4
  %i.awc = load float, ptr %10, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.avt, i64 8
  %12 = load float, ptr %11, align 4
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avp, i64 8
  %13 = load float, ptr %i.awd, align 4           ; 2 uses
  %14 = fsub float %12, %13                       ; 2 uses
  %i.awe = load <2 x float>, ptr %i.avp, align 4  ; 3 uses
  %15 = extractelement <2 x float> %i.awe, i64 0
  %16 = fsub float %i.awb, %15                    ; 2 uses
  %17 = extractelement <2 x float> %i.awe, i64 1
  %18 = fsub float %i.awc, %17                    ; 2 uses
  %19 = load <2 x float>, ptr %i.awa, align 4
  %i.awf = fsub <2 x float> %19, %i.awe           ; 3 uses
  %i.awg = getelementptr i8, ptr %i.avz, i64 -4
  %i.awh = load float, ptr %i.awg, align 4
  %i.awi = fsub float %i.awh, %13                 ; 4 uses
  %20 = extractelement <2 x float> %i.awf, i64 1  ; 3 uses
  %21 = fmul float %20, %20
  %i.awj = extractelement <2 x float> %i.awf, i64 0 ; 3 uses
  %i.awk = call float @llvm.fmuladd.f32(float %i.awj, float %i.awj, float %21)
  %i.awl = call noundef float @llvm.fmuladd.f32(float %i.awi, float %i.awi, float %i.awk) ; 2 uses
  %i.awm = fcmp oeq float %i.awl, 0.000000e+00
  br i1 %i.awm, label %bb.ni, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.nh
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.awl)
  %i.awn = fdiv float 1.000000e+00, %sqrt.i.i     ; 3 uses
  %22 = fmul float %i.awj, %i.awn
  %i.awo = insertelement <2 x float> poison, float %22, i64 0
  %23 = fmul float %20, %i.awn
  %.sroa.0905.4.vec.insert = insertelement <2 x float> %i.awo, float %23, i64 1
  %i.awp = fmul float %i.awi, %i.awn
  br label %bb.ni

bb.ni:                                            ; preds = %bb.nh, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.10.0 = phi float [ %i.awi, %bb.nh ], [ %i.awp, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0 = phi <2 x float> [ %i.awf, %bb.nh ], [ %.sroa.0905.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 2 uses
  %.sroa.0905.0.vec.extract908.a = extractelement <2 x float> %.sroa.0905.0, i64 1 ; 2 uses
  %i.awq = fneg float %.sroa.0905.0.vec.extract908.a
  %24 = fmul float %14, %i.awq
  %25 = call float @llvm.fmuladd.f32(float %18, float %.sroa.10.0, float %24)
  %.sroa.0905.0.vec.extract908 = extractelement <2 x float> %.sroa.0905.0, i64 0 ; 2 uses
  %26 = fneg float %.sroa.10.0
  %27 = fmul float %16, %26
  %28 = call float @llvm.fmuladd.f32(float %14, float %.sroa.0905.0.vec.extract908, float %27)
  %29 = fneg float %.sroa.0905.0.vec.extract908
  %30 = fmul float %18, %29
  %31 = call float @llvm.fmuladd.f32(float %16, float %.sroa.0905.0.vec.extract908.a, float %30)
  %.sroa.0.0.vec.insert.i863 = insertelement <2 x float> poison, float %25, i64 0
  %.sroa.0.4.vec.insert.i864 = insertelement <2 x float> %.sroa.0.0.vec.insert.i863, float %28, i64 1
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.ng
  %.sroa.7.1 = phi float [ %.sroa.7.01206, %bb.ng ], [ %31, %bb.ni ] ; 2 uses
  %.sroa.0914.3 = phi <2 x float> [ %.sroa.0914.21207, %bb.ng ], [ %.sroa.0.4.vec.insert.i864, %bb.ni ] ; 2 uses
  store <2 x float> %.sroa.0914.3, ptr %.14371209, align 4
  %.sroa.7.0..1437.sroa_idx = getelementptr inbounds nuw i8, ptr %.14371209, i64 8
  store float %.sroa.7.1, ptr %.sroa.7.0..1437.sroa_idx, align 4
end_hunk_1
begin_hunk_2_@llvm.sqrt.f32
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
