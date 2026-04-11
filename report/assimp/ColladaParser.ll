inline.NumInlined: 6572
inline.NumDeleted: 2480
begin_hunk_0_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.ab = phi float [ %.promoted211.a, %.lr.ph ], [ %i.lr, %bb.h ]
  %i.ac = phi <2 x float> [ %.promoted209.a, %.lr.ph ], [ %i.ls, %bb.h ]
  %i.ad = phi float [ %.promoted, %.lr.ph ], [ %i.lt, %bb.h ]
  %.sroa.0149.0159 = phi ptr [ %i.g, %.lr.ph ], [ %i.ly, %bb.h ] ; 34 uses
  %i.ae = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lu, %bb.h ] ; 21 uses
  %i.af = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lv, %bb.h ] ; 21 uses
  %i.ag = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.lw, %bb.h ] ; 20 uses
end_hunk_0
begin_hunk_1_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.at = load float, ptr %i.as, align 4          ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %3 = load <2 x float>, ptr %i.au, align 4       ; 6 uses
  %foldExtExtBinop = fmul <2 x float> %3, %3
  %4 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %5 = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %4)
  %6 = extractelement <2 x float> %3, i64 1       ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %6, float %6, float %5) ; 2 uses
  %i.aw = fcmp oeq float %i.av, 0.000000e+00
  %7 = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %8 = insertelement <2 x float> %7, float %i.at, i64 1 ; 2 uses
  br i1 %i.aw, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.av)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i
  %9 = insertelement <2 x float> poison, float %i.ax, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = fmul <2 x float> %8, %10
  %12 = fmul <2 x float> %3, %10
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.c, %_ZN10aiVector3tIfEdVEf.exit.i
  %13 = phi <2 x float> [ %8, %bb.c ], [ %11, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %14 = phi <2 x float> [ %3, %bb.c ], [ %12, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.ay = fsub <2 x float> %i.ap, %i.ao           ; 5 uses
  %i.az = fsub float %i.ar, %i.am                 ; 4 uses
  %foldExtExtBinop205 = fmul <2 x float> %i.ay, %i.ay
end_hunk_1
begin_hunk_2_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit46

_ZN10aiVector3tIfE9NormalizeEv.exit46:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i44
  %.sroa.0120.0 = phi <2 x float> [ %i.ay, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bi, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.8123.0 = phi float [ %i.az, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bj, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.0124.4.vec.extract128 = extractelement <2 x float> %.sroa.0120.0, i64 1 ; 2 uses
  %15 = fneg <2 x float> %14
  %.sroa.0124.0.vec.extract126 = extractelement <2 x float> %.sroa.0120.0, i64 0 ; 2 uses
  %16 = shufflevector <2 x float> %.sroa.0120.0, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %17 = insertelement <2 x float> %16, float %.sroa.8123.0, i64 0
  %18 = fmul <2 x float> %17, %15
  %19 = insertelement <2 x float> %16, float %.sroa.8123.0, i64 1
  %20 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %13, <2 x float> %18) ; 5 uses
  %21 = extractelement <2 x float> %13, i64 1
  %i.bk = fneg float %21
  %i.bl = fmul float %.sroa.0124.4.vec.extract128, %i.bk
  %22 = extractelement <2 x float> %14, i64 0
  %i.bm = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract126, float %22, float %i.bl) ; 4 uses
  %foldExtExtBinop207 = fmul <2 x float> %20, %20
  %23 = extractelement <2 x float> %foldExtExtBinop207, i64 1
  %24 = extractelement <2 x float> %20, i64 0     ; 2 uses
  %i.bn = tail call float @llvm.fmuladd.f32(float %24, float %24, float %23)
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bn) ; 2 uses
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN10aiVector3tIfE9NormalizeEv.exit53, label %_ZN10aiVector3tIfEdVEf.exit.i51

_ZN10aiVector3tIfEdVEf.exit.i51:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46
  %sqrt.i.i52 = tail call noundef float @llvm.sqrt.f32(float %i.bo)
  %i.bq = fdiv float 1.000000e+00, %sqrt.i.i52    ; 2 uses
  %i.br = insertelement <2 x float> poison, float %i.bq, i64 0
  %25 = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x float> %20, %25
  %i.bs = fmul float %i.bm, %i.bq
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit53

_ZN10aiVector3tIfE9NormalizeEv.exit53:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46, %_ZN10aiVector3tIfEdVEf.exit.i51
  %.sroa.0112.0 = phi <2 x float> [ %20, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %26, %_ZN10aiVector3tIfEdVEf.exit.i51 ] ; 2 uses
  %.sroa.9119.0 = phi float [ %i.bm, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.bs, %_ZN10aiVector3tIfEdVEf.exit.i51 ]
  %i.bt = fneg float %.sroa.0124.0.vec.extract126
  %i.bu = fneg float %.sroa.0124.4.vec.extract128
  %i.bv = fneg float %.sroa.8123.0
  %i.bw = shufflevector <2 x float> %14, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bw, %i.ah
  %i.by = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bz = fmul <4 x float> %i.by, %i.ah
end_hunk_2
begin_hunk_3_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.af, <4 x float> %i.cd)
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> zeroinitializer, <4 x float> %i.cg)
  %27 = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %27, <4 x float> %i.ag, <4 x float> %i.bx)
  %i.cj = shufflevector <2 x float> %13, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.af, <4 x float> %i.ci)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> zeroinitializer, <4 x float> %i.ck)
  %i.cm = insertelement <4 x float> poison, float %i.bu, i64 0
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v2i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn }
end_hunk_4
