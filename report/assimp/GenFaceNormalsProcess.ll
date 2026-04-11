inline.NumInlined: 526
inline.NumDeleted: 308
begin_hunk_0_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.cg to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  %i.cp = load i8, ptr %i.ax, align 1, !range !5, !noundef !6
  %i.cq = load i8, ptr %i.ay, align 2, !range !5, !noundef !6
  %.not67 = icmp eq i8 %i.cp, %i.cq               ; 2 uses
  %spec.select = select i1 %.not67, ptr %i.co, ptr %i.ci ; 2 uses
  %spec.select116 = select i1 %.not67, ptr %i.ci, ptr %i.co ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cr = load float, ptr %spec.select116, align 4
  %i.cs = load float, ptr %i.ce, align 4
  %8 = getelementptr inbounds nuw i8, ptr %spec.select116, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cu = load float, ptr %spec.select, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %9 = load <2 x float>, ptr %8, align 4          ; 2 uses
  %10 = load <2 x float>, ptr %i.ct, align 4      ; 3 uses
  %11 = fsub <2 x float> %9, %10                  ; 2 uses
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x float> %12, float %i.cr, i64 1
  %14 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %i.cs, i64 1 ; 2 uses
  %16 = fsub <2 x float> %13, %15                 ; 2 uses
  %17 = load <2 x float>, ptr %i.cv, align 4      ; 2 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = insertelement <2 x float> %18, float %i.cu, i64 1
  %20 = fsub <2 x float> %19, %15                 ; 2 uses
  %21 = fsub <2 x float> %17, %10                 ; 2 uses
  %22 = fneg <2 x float> %21
  %23 = fmul <2 x float> %16, %22
  %24 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %20, <2 x float> %23) ; 5 uses
  %25 = extractelement <2 x float> %20, i64 1
  %i.cw = fneg float %25
  %26 = extractelement <2 x float> %11, i64 0
  %27 = fmul float %26, %i.cw
  %28 = extractelement <2 x float> %16, i64 1
  %29 = extractelement <2 x float> %21, i64 0
  %i.cx = call float @llvm.fmuladd.f32(float %28, float %29, float %27) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %24, %24
  %30 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %31 = extractelement <2 x float> %24, i64 0     ; 2 uses
  %i.cy = call float @llvm.fmuladd.f32(float %31, float %31, float %30)
  %i.cz = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cy) ; 2 uses
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  br i1 %i.da, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.m
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cz)
  %i.db = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.dc = insertelement <2 x float> poison, float %i.db, i64 0
  %32 = shufflevector <2 x float> %i.dc, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %24, %32
  %i.dd = fmul float %i.cx, %i.db
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0108.0 = phi <2 x float> [ %33, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %24, %bb.m ]
  %.sroa.9.0 = phi float [ %i.dd, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.cx, %bb.m ]
  store <2 x float> %.sroa.0108.0, ptr %7, align 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
