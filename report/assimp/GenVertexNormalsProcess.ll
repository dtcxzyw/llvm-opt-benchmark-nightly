inline.NumInlined: 219
inline.NumDeleted: 155
begin_hunk_0_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.ar = load ptr, ptr %i.aq, align 8            ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %i.ap, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = zext i32 %i.aw to i64
end_hunk_0
begin_hunk_1_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.bf = load i8, ptr %i.x, align 1, !range !5, !noundef !6
  %i.bg = load i8, ptr %i.y, align 2, !range !5, !noundef !6
  %.not137 = icmp eq i8 %i.bf, %i.bg              ; 2 uses
  %spec.select = select i1 %.not137, ptr %i.be, ptr %i.ay ; 3 uses
  %spec.select229 = select i1 %.not137, ptr %i.ay, ptr %i.be ; 3 uses
  %i.bh = load float, ptr %spec.select229, align 4
  %i.bi = load float, ptr %i.au, align 4          ; 2 uses
  %5 = fsub float %i.bh, %i.bi                    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select229, i64 4
  %i.bk = load float, ptr %i.bj, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %6 = load float, ptr %i.bl, align 4             ; 2 uses
  %7 = fsub float %i.bk, %6                       ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %spec.select229, i64 8
  %9 = load float, ptr %8, align 4
  %10 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %11 = load float, ptr %10, align 4              ; 2 uses
  %12 = fsub float %9, %11                        ; 2 uses
  %13 = load float, ptr %spec.select, align 4
  %14 = fsub float %13, %i.bi                     ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %spec.select, i64 4
  %16 = load float, ptr %15, align 4
  %17 = fsub float %16, %6                        ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %19 = load float, ptr %18, align 4
  %20 = fsub float %19, %11                       ; 2 uses
  %21 = fneg float %17
  %22 = fmul float %12, %21
  %23 = tail call float @llvm.fmuladd.f32(float %7, float %20, float %22) ; 4 uses
  %i.bm = fneg float %20
  %24 = fmul float %5, %i.bm
  %25 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %24) ; 4 uses
  %26 = fneg float %14
  %27 = fmul float %7, %26
  %i.bn = tail call float @llvm.fmuladd.f32(float %5, float %17, float %27) ; 4 uses
  %.sroa.0.0.vec.insert.i142 = insertelement <2 x float> poison, float %23, i64 0
  %.sroa.0.4.vec.insert.i143 = insertelement <2 x float> %.sroa.0.0.vec.insert.i142, float %25, i64 1
  %28 = fmul float %25, %25
  %i.bo = tail call float @llvm.fmuladd.f32(float %23, float %23, float %28)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bo) ; 2 uses
  %i.bq = fcmp ogt float %i.bp, 0.000000e+00
  br i1 %i.bq, label %_ZN10aiVector3tIfEdVEf.exit.i, label %.lr.ph.preheader

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.i
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bp)
  %i.br = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %29 = fmul float %23, %i.br
  %i.bs = insertelement <2 x float> poison, float %29, i64 0
  %30 = fmul float %25, %i.br
  %.sroa.0199.4.vec.insert = insertelement <2 x float> %i.bs, float %30, i64 1
  %i.bt = fmul float %i.bn, %i.br
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN10aiVector3tIfEdVEf.exit.i, %bb.i
  %.sroa.0199.0 = phi <2 x float> [ %.sroa.0199.4.vec.insert, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %.sroa.0.4.vec.insert.i143, %bb.i ]
  %.sroa.8.0 = phi float [ %i.bt, %_ZN10aiVector3tIfEdVEf.exit.i ], [ %i.bn, %bb.i ]
  br label %.lr.ph

end_hunk_1
begin_hunk_2_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a

._crit_edge245:                                   ; preds = %bb.y, %.preheader
  %.sroa.14182.0.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %.sroa.14182.1, %bb.y ] ; 4 uses
  %i.ei = phi <2 x float> [ zeroinitializer, %.preheader ], [ %i.fh, %bb.y ] ; 4 uses
  %31 = extractelement <2 x float> %i.ei, i64 0   ; 2 uses
  %foldExtExtBinop319.a = fmul <2 x float> %i.ei, %i.ei
  %i.ej = extractelement <2 x float> %foldExtExtBinop319.a, i64 0
  %i.ek = extractelement <2 x float> %i.ei, i64 1 ; 4 uses
  %i.el = call float @llvm.fmuladd.f32(float %i.ek, float %i.ek, float %i.ej)
  %i.em = call noundef float @llvm.fmuladd.f32(float %.sroa.14182.0.lcssa, float %.sroa.14182.0.lcssa, float %i.el) ; 2 uses
  %i.en = fcmp ogt float %i.em, 0.000000e+00
end_hunk_2
begin_hunk_3_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a

_ZN10aiVector3tIfEdVEf.exit.i150:                 ; preds = %._crit_edge245
  %sqrt.i.i151 = call noundef float @llvm.sqrt.f32(float %i.em)
  %i.eo = fdiv float 1.000000e+00, %sqrt.i.i151   ; 3 uses
  %32 = fmul float %i.ek, %i.eo
  %33 = fmul float %31, %i.eo
  %i.ep = fmul float %.sroa.14182.0.lcssa, %i.eo
  br label %_ZN10aiVector3tIfE13NormalizeSafeEv.exit152

_ZN10aiVector3tIfE13NormalizeSafeEv.exit152:      ; preds = %._crit_edge245, %_ZN10aiVector3tIfEdVEf.exit.i150
  %.sroa.14182.2 = phi float [ %i.ep, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %.sroa.14182.0.lcssa, %._crit_edge245 ]
  %.sroa.9180.2 = phi float [ %33, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %31, %._crit_edge245 ]
  %.sroa.0178.2 = phi float [ %32, %_ZN10aiVector3tIfEdVEf.exit.i150 ], [ %i.ek, %._crit_edge245 ]
  br i1 %.not270, label %.loopexit, label %.lr.ph249

.thread220:                                       ; preds = %bb.v
end_hunk_3
begin_hunk_4_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fa = load float, ptr %i.ez, align 4
  %i.fb = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.ex, i64 1
  %i.fd = fadd <2 x float> %i.es, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ff = load float, ptr %i.fe, align 4
end_hunk_4
begin_hunk_5_@_ZN6Assimp23GenVertexNormalsProcess20GenMeshVertexNormalsEP6aiMeshj:bb.a
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4            ; 2 uses
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw [12 x i8], ptr %i.cy, i64 %i.fo ; 3 uses
  store float %.sroa.0178.2, ptr %i.fp, align 4
  %.sroa.9180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store float %.sroa.9180.2, ptr %.sroa.9180.0..sroa_idx, align 4
  %.sroa.14182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store float %.sroa.14182.2, ptr %.sroa.14182.0..sroa_idx, align 4
  %i.fq = lshr i32 %i.fn, 6
end_hunk_5
begin_hunk_6_@llvm.experimental.noalias.scope.decl
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #13

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_6
