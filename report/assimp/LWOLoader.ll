inline.NumInlined: 3061
inline.NumDeleted: 1386
begin_hunk_0_@_ZN6Assimp11LWOImporter14ComputeNormalsEP6aiMeshRKSt6vectorIjSaIjEERKNS_3LWO7SurfaceE:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.al ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.ap ; 3 uses
  %i.ar = add i32 %i.af, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load float, ptr %i.aq, align 4
  %i.aw = load float, ptr %i.am, align 4          ; 2 uses
  %6 = fsub float %i.av, %i.aw                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %7 = load float, ptr %i.ax, align 4
  %8 = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ay = load float, ptr %8, align 4             ; 2 uses
  %9 = fsub float %7, %i.ay                       ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %10 = load float, ptr %i.az, align 4
  %11 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %12 = load float, ptr %11, align 4              ; 2 uses
  %13 = fsub float %10, %12                       ; 2 uses
  %14 = zext i32 %i.au to i64
  %15 = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %14 ; 3 uses
  %16 = load float, ptr %15, align 4
  %17 = fsub float %16, %i.aw                     ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %19 = load float, ptr %18, align 4
  %20 = fsub float %19, %i.ay                     ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %22 = load float, ptr %21, align 4
  %23 = fsub float %22, %12                       ; 2 uses
  %24 = fneg float %20
  %25 = fmul float %13, %24
  %26 = tail call float @llvm.fmuladd.f32(float %9, float %23, float %25) ; 4 uses
  %i.ba = fneg float %23
  %27 = fmul float %6, %i.ba
  %28 = tail call float @llvm.fmuladd.f32(float %13, float %17, float %27) ; 4 uses
  %29 = fneg float %17
  %30 = fmul float %9, %29
  %i.bb = tail call float @llvm.fmuladd.f32(float %6, float %20, float %30) ; 4 uses
  %.sroa.0.0.vec.insert.i154 = insertelement <2 x float> poison, float %26, i64 0
  %.sroa.0.4.vec.insert.i155 = insertelement <2 x float> %.sroa.0.0.vec.insert.i154, float %28, i64 1
  %31 = fmul float %28, %28
  %i.bc = tail call float @llvm.fmuladd.f32(float %26, float %26, float %31)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bc) ; 2 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %.lr.ph.preheader, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.bf = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %32 = fmul float %26, %i.bf
  %i.bg = insertelement <2 x float> poison, float %32, i64 0
  %33 = fmul float %28, %i.bf
  %.sroa.0232.4.vec.insert = insertelement <2 x float> %i.bg, float %33, i64 1
  %i.bh = fmul float %i.bb, %i.bf
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0232.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i155, %bb.d ], [ %.sroa.0232.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.9235.0 = phi float [ %i.bb, %bb.d ], [ %i.bh, %_ZN10aiVector3tIfEdVEf.exit.i ]
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter14ComputeNormalsEP6aiMeshRKSt6vectorIjSaIjEERKNS_3LWO7SurfaceE:bb.a

_ZN10aiVector3tIfE9NormalizeEv.exit168:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i166, %._crit_edge317
  %.sroa.14.1 = phi float [ %.sroa.14.0.lcssa, %._crit_edge317 ], [ %i.gt, %_ZN10aiVector3tIfEdVEf.exit.i166 ]
  %i.hl = phi <2 x float> [ %i.gj, %._crit_edge317 ], [ %i.gs, %_ZN10aiVector3tIfEdVEf.exit.i166 ] ; 2 uses
  br i1 %.not276310, label %.loopexit, label %.lr.ph323.preheader

.lr.ph323.preheader:                              ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit168
  %34 = extractelement <2 x float> %i.hl, i64 0
  %35 = extractelement <2 x float> %i.hl, i64 1
  br label %.lr.ph323

.lr.ph323:                                        ; preds = %.lr.ph323.preheader, %.lr.ph323
  %.sroa.0188.0322 = phi ptr [ %i.hy, %.lr.ph323 ], [ %i.gh, %.lr.ph323.preheader ] ; 3 uses
  %i.hm = load ptr, ptr %i.x, align 8
  %i.hn = load i32, ptr %.sroa.0188.0322, align 4
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %i.ho ; 3 uses
  store float %34, ptr %i.hp, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  store float %35, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.hq = load i32, ptr %.sroa.0188.0322, align 4 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.umin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
