inline.NumInlined: 219
inline.NumDeleted: 155
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.bf = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.bg = load i8, ptr %i.y, align 2, !range !5, !noundef !6
  %.not137 = icmp eq i8 %i.bf, %i.bg              ; 2 uses
  %spec.select = select i1 %.not137, ptr %i.be, ptr %i.ay ; 2 uses
  %spec.select229 = select i1 %.not137, ptr %i.ay, ptr %i.be ; 2 uses
  %i.bh = load float, ptr %spec.select229, align 4
  %i.bi = load float, ptr %i.au, align 4
  %5 = getelementptr inbounds nuw i8, ptr %spec.select229, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bk = load float, ptr %spec.select, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %6 = load <2 x float>, ptr %5, align 4          ; 2 uses
  %7 = load <2 x float>, ptr %i.bj, align 4       ; 3 uses
  %8 = fsub <2 x float> %6, %7                    ; 2 uses
  %9 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %i.bh, i64 1
  %11 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %12 = insertelement <2 x float> %11, float %i.bi, i64 1 ; 2 uses
  %13 = fsub <2 x float> %10, %12                 ; 2 uses
  %14 = load <2 x float>, ptr %i.bl, align 4      ; 2 uses
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x float> %15, float %i.bk, i64 1
  %17 = fsub <2 x float> %16, %12                 ; 2 uses
  %18 = fsub <2 x float> %14, %7                  ; 2 uses
  %19 = fneg <2 x float> %18
  %20 = fmul <2 x float> %13, %19
  %21 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %8, <2 x float> %17, <2 x float> %20) ; 5 uses
  %22 = extractelement <2 x float> %17, i64 1
  %i.bm = fneg float %22
  %23 = extractelement <2 x float> %8, i64 0
  %24 = fmul float %23, %i.bm
  %25 = extractelement <2 x float> %13, i64 1
  %26 = extractelement <2 x float> %18, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %25, float %26, float %24) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %21, %21
  %27 = extractelement <2 x float> %foldExtExtBinop, i64 1
  %28 = extractelement <2 x float> %21, i64 0     ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %28, float %28, float %27)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.i
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bp)
  %i.br = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %29 = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %21, %29
  %i.bt = fmul float %i.bn, %i.br
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.i
  %.sroa.0199.0 = phi <2 x float> [ %30, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %21, %bb.i ]
  %.sroa.8.0 = phi float [ %i.bt, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.bn, %bb.i ]
  br label %.lr.ph

end_hunk_1
begin_hunk_2_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a

._crit_edge245:                                   ; preds = %bb.y, %.preheader
  %.sroa.14182.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.sroa.14182.1, %bb.y ] ; 4 uses
  %i.ei = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.fh, %bb.y ] ; 5 uses
  %foldExtExtBinop319.a = fmul <2 x float> %i.ei, %i.ei
  %i.ej = extractelement <2 x float> %foldExtExtBinop319.a, i64 1
  %i.ek = extractelement <2 x float> %i.ei, i64 0 ; 2 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ej)
  %i.em = call noundef float @llvm.fmuladd.f32(float %.sroa.14182.0.lcssa, float %.sroa.14182.0.lcssa, float %i.el) ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
end_hunk_2
begin_hunk_3_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a

_ZN10aiVector3tIfEdVEf.exit.i150:                 ; preds = %._crit_edge245
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.em)
  %i.eo = fdiv float 1.000000e+00, %sqrt.i.i151   ; 2 uses
  %31 = insertelement <2 x float> poison, float %i.eo, i64 0
  %32 = shufflevector <2 x float> %31, <2 x float> poison, <2 x i32> zeroinitializer
  %33 = fmul <2 x float> %i.ei, %32
  %i.ep = fmul float %.sroa.14182.0.lcssa, %i.eo
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfE13NormalizeSafeEv.exit152:      ; preds = %._crit_edge245, %_ZN10aiVector3tIfEdVEf.exit.i150
  %.sroa.14182.2 = phi float [ %i.ep, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %.sroa.14182.0.lcssa, %._crit_edge245 ]
  %34 = phi <2 x float> [ %33, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.ei, %._crit_edge245 ]
  br i1 %.not270, label %.loopexit, label %.lr.ph249

.thread220:                                       ; preds = %bb.v
end_hunk_3
begin_hunk_4_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.fa, i64 1
  %i.fd = fadd <2 x float> %i.es, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ff = load float, ptr %i.fe, align 4
end_hunk_4
begin_hunk_5_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.fo ; 2 uses
  store <2 x float> %34, ptr %i.fp, align 4
  %.sroa.14182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store float %.sroa.14182.2, ptr %.sroa.14182.0..sroa_idx, align 4
  %i.fq = lshr i32 %i.fn, 6
end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
