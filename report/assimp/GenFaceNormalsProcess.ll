inline.NumInlined: 526
inline.NumDeleted: 308
begin_hunk_0_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.bz, i64 %i.cd ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = zext i32 %i.cg to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp21GenFaceNormalsProcess18GenMeshFaceNormalsEP6aiMesh:bb.a
  %i.cp = load i8, ptr %i.ax, align 1, !range !5, !noundef !6
  %i.cq = load i8, ptr %i.ay, align 2, !range !5, !noundef !6
  %.not67 = icmp eq i8 %i.cp, %i.cq               ; 2 uses
  %spec.select = select i1 %.not67, ptr %i.co, ptr %i.ci ; 3 uses
  %spec.select116 = select i1 %.not67, ptr %i.ci, ptr %i.co ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  %i.cr = load float, ptr %spec.select116, align 4
  %i.cs = load float, ptr %i.ce, align 4          ; 2 uses
  %8 = fsub float %i.cr, %i.cs                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %spec.select116, i64 4
  %i.cu = load float, ptr %i.ct, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %9 = load float, ptr %i.cv, align 4             ; 2 uses
  %10 = fsub float %i.cu, %9                      ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %spec.select116, i64 8
  %12 = load float, ptr %11, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %14 = load float, ptr %13, align 4              ; 2 uses
  %15 = fsub float %12, %14                       ; 2 uses
  %16 = load float, ptr %spec.select, align 4
  %17 = fsub float %16, %i.cs                     ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %19 = load float, ptr %18, align 4
  %20 = fsub float %19, %9                        ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %22 = load float, ptr %21, align 4
  %23 = fsub float %22, %14                       ; 2 uses
  %24 = fneg float %20
  %25 = fmul float %15, %24
  %26 = call float @llvm.fmuladd.f32(float %10, float %23, float %25) ; 4 uses
  %i.cw = fneg float %23
  %27 = fmul float %8, %i.cw
  %28 = call float @llvm.fmuladd.f32(float %15, float %17, float %27) ; 4 uses
  %29 = fneg float %17
  %30 = fmul float %10, %29
  %i.cx = call float @llvm.fmuladd.f32(float %8, float %20, float %30) ; 4 uses
  %.sroa.0.0.vec.insert.i84 = insertelement <2 x float> poison, float %26, i64 0
  %.sroa.0.4.vec.insert.i85 = insertelement <2 x float> %.sroa.0.0.vec.insert.i84, float %28, i64 1
  %31 = fmul float %28, %28
  %i.cy = call float @llvm.fmuladd.f32(float %26, float %26, float %31)
  %i.cz = call noundef float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cy) ; 2 uses
  %i.da = fcmp ogt float %i.cz, 0.000000e+00
  br i1 %i.da, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.m
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.cz)
  %i.db = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %32 = fmul float %26, %i.db
  %i.dc = insertelement <2 x float> poison, float %32, i64 0
  %33 = fmul float %28, %i.db
  %.sroa.0108.4.vec.insert = insertelement <2 x float> %i.dc, float %33, i64 1
  %i.dd = fmul float %i.cx, %i.db
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0108.0 = phi <2 x float> [ %.sroa.0108.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.sroa.0.4.vec.insert.i85, %bb.m ]
  %.sroa.9.0 = phi float [ %i.dd, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.cx, %bb.m ]
  store <2 x float> %.sroa.0108.0, ptr %7, align 8
  store float %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@llvm.umax.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
