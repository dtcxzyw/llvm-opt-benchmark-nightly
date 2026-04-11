inline.NumInlined: 6572
inline.NumDeleted: 2480
begin_hunk_0_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.ab = phi float [ %.promoted211.a, %.lr.ph ], [ %i.lr, %bb.h ]
  %i.ac = phi <2 x float> [ %.promoted209.a, %.lr.ph ], [ %i.ls, %bb.h ]
  %i.ad = phi float [ %.promoted, %.lr.ph ], [ %i.lt, %bb.h ]
  %.sroa.0149.0159 = phi ptr [ %i.g, %.lr.ph ], [ %i.ly, %bb.h ] ; 35 uses
  %i.ae = phi <4 x float> [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lu, %bb.h ] ; 21 uses
  %i.af = phi <4 x float> [ <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph ], [ %i.lv, %bb.h ] ; 21 uses
  %i.ag = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %.lr.ph ], [ %i.lw, %bb.h ] ; 20 uses
end_hunk_0
begin_hunk_1_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 56
  %i.ar = load float, ptr %i.aq, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 60
  %i.at = load float, ptr %i.as, align 4          ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 64
  %3 = load float, ptr %i.au, align 4             ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.0149.0159, i64 68
  %5 = load float, ptr %4, align 4                ; 4 uses
  %6 = fmul float %3, %3
  %7 = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %6)
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %5, float %5, float %7) ; 2 uses
  %i.aw = fcmp oeq float %i.av, 0.000000e+00
  br i1 %i.aw, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.c
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.av)
  %i.ax = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %8 = fmul float %i.at, %i.ax
  %9 = fmul float %3, %i.ax
  %10 = fmul float %5, %i.ax
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.c, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0130.0 = phi float [ %i.at, %bb.c ], [ %8, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.6131.0 = phi float [ %3, %bb.c ], [ %9, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.9132.0 = phi float [ %5, %bb.c ], [ %10, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %i.ay = fsub <2 x float> %i.ap, %i.ao           ; 5 uses
  %i.az = fsub float %i.ar, %i.am                 ; 4 uses
  %foldExtExtBinop205 = fmul <2 x float> %i.ay, %i.ay
end_hunk_1
begin_hunk_2_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit46

_ZN10aiVector3tIfE9NormalizeEv.exit46:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit, %_ZN10aiVector3tIfEdVEf.exit.i44
  %.sroa.0120.0 = phi <2 x float> [ %i.ay, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bi, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 2 uses
  %.sroa.8123.0 = phi float [ %i.az, %_ZN10aiVector3tIfE9NormalizeEv.exit ], [ %i.bj, %_ZN10aiVector3tIfEdVEf.exit.i44 ] ; 3 uses
  %.sroa.0124.4.vec.extract128 = extractelement <2 x float> %.sroa.0120.0, i64 1 ; 3 uses
  %11 = fneg float %.sroa.6131.0
  %12 = fmul float %.sroa.8123.0, %11
  %13 = tail call float @llvm.fmuladd.f32(float %.sroa.0124.4.vec.extract128, float %.sroa.9132.0, float %12) ; 4 uses
  %.sroa.0124.0.vec.extract126 = extractelement <2 x float> %.sroa.0120.0, i64 0 ; 3 uses
  %14 = fneg float %.sroa.9132.0
  %15 = fmul float %.sroa.0124.0.vec.extract126, %14
  %16 = tail call float @llvm.fmuladd.f32(float %.sroa.8123.0, float %.sroa.0130.0, float %15) ; 4 uses
  %i.bk = fneg float %.sroa.0130.0
  %i.bl = fmul float %.sroa.0124.4.vec.extract128, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %.sroa.0124.0.vec.extract126, float %.sroa.6131.0, float %i.bl) ; 4 uses
  %.sroa.0.0.vec.insert.i47 = insertelement <2 x float> poison, float %13, i64 0
  %.sroa.0.4.vec.insert.i48 = insertelement <2 x float> %.sroa.0.0.vec.insert.i47, float %16, i64 1
  %17 = fmul float %16, %16
  %i.bn = tail call float @llvm.fmuladd.f32(float %13, float %13, float %17)
  %i.bo = tail call noundef float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bn) ; 2 uses
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZN10aiVector3tIfE9NormalizeEv.exit53, label %_ZN10aiVector3tIfEdVEf.exit.i51

_ZN10aiVector3tIfEdVEf.exit.i51:                  ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46
  %sqrt.i.i52 = tail call noundef float @llvm.sqrt.f32(float %i.bo)
  %i.bq = fdiv float 1.000000e+00, %sqrt.i.i52    ; 3 uses
  %18 = fmul float %13, %i.bq
  %i.br = insertelement <2 x float> poison, float %18, i64 0
  %19 = fmul float %16, %i.bq
  %.sroa.0112.4.vec.insert = insertelement <2 x float> %i.br, float %19, i64 1
  %i.bs = fmul float %i.bm, %i.bq
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit53

_ZN10aiVector3tIfE9NormalizeEv.exit53:            ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit46, %_ZN10aiVector3tIfEdVEf.exit.i51
  %.sroa.0112.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i48, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %.sroa.0112.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i51 ] ; 2 uses
  %.sroa.9119.0 = phi float [ %i.bm, %_ZN10aiVector3tIfE9NormalizeEv.exit46 ], [ %i.bs, %_ZN10aiVector3tIfEdVEf.exit.i51 ]
  %i.bt = fneg float %.sroa.0124.0.vec.extract126
  %i.bu = fneg float %.sroa.0124.4.vec.extract128
  %i.bv = fneg float %.sroa.8123.0
  %20 = insertelement <4 x float> poison, float %.sroa.6131.0, i64 0
  %i.bw = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bw, %i.ah
  %i.by = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bz = fmul <4 x float> %i.by, %i.ah
end_hunk_2
begin_hunk_3_@_ZNK6Assimp13ColladaParser24CalculateResultTransformERKSt6vectorINS_7Collada9TransformESaIS3_EE:bb.a
  %i.cf = shufflevector <4 x float> %i.ce, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> %i.af, <4 x float> %i.cd)
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> zeroinitializer, <4 x float> %i.cg)
  %21 = insertelement <4 x float> poison, float %.sroa.0130.0, i64 0
  %22 = shufflevector <4 x float> %21, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %22, <4 x float> %i.ag, <4 x float> %i.bx)
  %23 = insertelement <4 x float> poison, float %.sroa.9132.0, i64 0
  %i.cj = shufflevector <4 x float> %23, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.af, <4 x float> %i.ci)
  %i.cl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ae, <4 x float> zeroinitializer, <4 x float> %i.ck)
  %i.cm = insertelement <4 x float> poison, float %i.bu, i64 0
end_hunk_3
begin_hunk_4_@llvm.vector.reduce.add.v2i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn }
end_hunk_4
