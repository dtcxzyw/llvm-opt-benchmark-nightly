inline.NumInlined: 1226
inline.NumDeleted: 450
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
bb.lm:                                            ; preds = %bb.lp, %.peel.next.i
  %i.aqy = phi float [ %i.apf, %.peel.next.i ], [ %i.are, %bb.lp ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.lp ] ; 6 uses
  %.pn.i = phi ptr [ %i.aom, %.peel.next.i ], [ %.0148151.i, %bb.lp ] ; 5 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.i
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !59 ; 8 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.next.i
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !59 ; 8 uses
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.next.i
  %i.are = load float, ptr %i.ard, align 4, !tbaa !59 ; 2 uses
  %i.arf = fsub float %i.are, %i.aqy
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.arx = fadd float %i.arw, %i.ars
  %i.ary = fsub float %i.arc, %i.ara
  %i.arz = fsub float %i.ary, %i.ars
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lm
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !59
  %i.asq = fsub float %i.asp, %i.arj
  %i.asr = fdiv float %i.asq, %i.asc
  %i.ass = fsub float %i.arc, %i.asf
  %i.ast = fadd float %i.asj, 1.000000e+00
  %i.asu = fdiv float %i.ass, %i.ast              ; 4 uses
  %59 = fsub float %i.asn, %i.ara
  %60 = fadd float %i.asr, 1.000000e+00
  %i.asv = fdiv float %59, %60                    ; 4 uses
  %i.asw = fmul float %i.asu, 0.000000e+00
  %i.asx = fadd float %i.ara, %i.asw
  %i.asy = call float @llvm.fmuladd.f32(float %i.arc, float 0.000000e+00, float %i.asx)
  %61 = call float @llvm.fmuladd.f32(float %i.asv, float 0.000000e+00, float %i.asy)
  %62 = call float @llvm.fmuladd.f32(float %i.ara, float 0.000000e+00, float %i.asu)
  %63 = call float @llvm.fmuladd.f32(float %i.arc, float 0.000000e+00, float %62)
  %64 = call float @llvm.fmuladd.f32(float %i.asv, float 0.000000e+00, float %63)
  %65 = fmul float %i.asu, -2.000000e+00
  %66 = call float @llvm.fmuladd.f32(float %i.ara, float -3.000000e+00, float %65)
  %67 = call float @llvm.fmuladd.f32(float %i.arc, float 3.000000e+00, float %66)
  %68 = fsub float %67, %i.asv
  %69 = call float @llvm.fmuladd.f32(float %i.ara, float 2.000000e+00, float %i.asu)
  %70 = call float @llvm.fmuladd.f32(float %i.arc, float -2.000000e+00, float %69)
  %71 = fadd float %i.asv, %70
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %.sink1135 = phi float [ %i.arv, %bb.ln ], [ %61, %bb.lo ]
  %.sink1134 = phi float [ %i.arx, %bb.ln ], [ %64, %bb.lo ]
  %.sink = phi float [ %i.arz, %bb.ln ], [ %68, %bb.lo ]
  %.sink.i = phi float [ 0.000000e+00, %bb.ln ], [ %71, %bb.lo ]
  %i.asz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store float %.sink1135, ptr %i.asz, align 4, !tbaa !59
  %72 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 28
  store float %.sink1134, ptr %72, align 4, !tbaa !59
  %i.ata = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store float %.sink, ptr %i.ata, align 4, !tbaa !59
  %73 = getelementptr inbounds nuw i8, ptr %.pn.i, i64 36
  store float %.sink.i, ptr %73, align 4, !tbaa !59
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aov
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lm, !llvm.loop !147

end_hunk_2
begin_hunk_3_@llvm.smax.i32
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
end_hunk_3
