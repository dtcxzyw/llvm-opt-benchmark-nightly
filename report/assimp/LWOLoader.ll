inline.NumInlined: 3061
inline.NumDeleted: 1386
begin_hunk_0_@_ZN6Assimp11LWOImporter14ComputeNormalsEP6aiMeshRKSt6vectorIjSaIjEERKNS_3LWO7SurfaceE:bb.a
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %i.ap ; 2 uses
  %i.ar = add i32 %i.af, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4
  %i.av = load float, ptr %i.aq, align 4
  %i.aw = load float, ptr %i.am, align 4
  %6 = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %7 = zext i32 %i.au to i64
  %8 = getelementptr inbounds nuw [12 x i8], ptr %i.ah, i64 %7 ; 2 uses
  %i.ay = load float, ptr %8, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 4
  %9 = load <2 x float>, ptr %6, align 4          ; 2 uses
  %10 = load <2 x float>, ptr %i.ax, align 4      ; 3 uses
  %11 = fsub <2 x float> %9, %10                  ; 2 uses
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %13 = insertelement <2 x float> %12, float %i.av, i64 1
  %14 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %15 = insertelement <2 x float> %14, float %i.aw, i64 1 ; 2 uses
  %16 = fsub <2 x float> %13, %15                 ; 2 uses
  %17 = load <2 x float>, ptr %i.az, align 4      ; 2 uses
  %18 = shufflevector <2 x float> %17, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %19 = insertelement <2 x float> %18, float %i.ay, i64 1
  %20 = fsub <2 x float> %19, %15                 ; 2 uses
  %21 = fsub <2 x float> %17, %10                 ; 2 uses
  %22 = fneg <2 x float> %21
  %23 = fmul <2 x float> %16, %22
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> %20, <2 x float> %23) ; 5 uses
  %25 = extractelement <2 x float> %20, i64 1
  %i.ba = fneg float %25
  %26 = extractelement <2 x float> %11, i64 0
  %27 = fmul float %26, %i.ba
  %28 = extractelement <2 x float> %16, i64 1
  %29 = extractelement <2 x float> %21, i64 0
  %i.bb = tail call float @llvm.fmuladd.f32(float %28, float %29, float %27) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %24, %24
  %30 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %31 = extractelement <2 x float> %24, i64 0     ; 2 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %31, float %31, float %30)
  %i.bd = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bc) ; 2 uses
  %i.be = fcmp oeq float %i.bd, 0.000000e+00
  br i1 %i.be, label %.lr.ph.preheader, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.d
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bd)
  %i.bf = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bg = insertelement <2 x float> poison, float %i.bf, i64 0
  %32 = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %24, %32
  %i.bh = fmul float %i.bb, %i.bf
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.0232.0 = phi <2 x float> [ %24, %bb.d ], [ %33, %_ZN10aiVector3tIfEdVEf.exit.i ]
  %.sroa.9235.0 = phi float [ %i.bb, %bb.d ], [ %i.bh, %_ZN10aiVector3tIfEdVEf.exit.i ]
  br label %.lr.ph

end_hunk_0
begin_hunk_1_@_ZN6Assimp11LWOImporter14ComputeNormalsEP6aiMeshRKSt6vectorIjSaIjEERKNS_3LWO7SurfaceE:bb.a

_ZN10aiVector3tIfE9NormalizeEv.exit168:           ; preds = %_ZN10aiVector3tIfEdVEf.exit.i166, %._crit_edge317
  %.sroa.14.1 = phi float [ %.sroa.14.0.lcssa, %._crit_edge317 ], [ %i.gt, %_ZN10aiVector3tIfEdVEf.exit.i166 ]
  %i.hl = phi <2 x float> [ %i.gj, %._crit_edge317 ], [ %i.gs, %_ZN10aiVector3tIfEdVEf.exit.i166 ]
  br i1 %.not276310, label %.loopexit, label %.lr.ph323

.lr.ph323:                                        ; preds = %_ZN10aiVector3tIfE9NormalizeEv.exit168, %.lr.ph323
  %.sroa.0188.0322 = phi ptr [ %i.hy, %.lr.ph323 ], [ %i.gh, %_ZN10aiVector3tIfE9NormalizeEv.exit168 ] ; 3 uses
  %i.hm = load ptr, ptr %i.x, align 8
  %i.hn = load i32, ptr %.sroa.0188.0322, align 4
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [12 x i8], ptr %i.hm, i64 %i.ho ; 2 uses
  store <2 x float> %i.hl, ptr %i.hp, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  store float %.sroa.14.1, ptr %.sroa.14.0..sroa_idx, align 4
  %i.hq = load i32, ptr %.sroa.0188.0322, align 4 ; 2 uses
end_hunk_1
begin_hunk_2_@llvm.umin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #22

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
