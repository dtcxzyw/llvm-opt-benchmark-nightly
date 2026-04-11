inline.NumInlined: 1226
inline.NumDeleted: 450
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
bb.lm:                                            ; preds = %bb.lp, %.peel.next.i
  %i.aqy = phi float [ %i.apf, %.peel.next.i ], [ %i.are, %bb.lp ]
  %indvars.iv.i = phi i64 [ 1, %.peel.next.i ], [ %indvars.iv.next.i, %bb.lp ] ; 6 uses
  %.pn.i = phi ptr [ %i.aom, %.peel.next.i ], [ %.0148151.i, %bb.lp ] ; 3 uses
  %.0148151.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 20 ; 2 uses
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.i
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !59 ; 7 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.arb = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv.next.i
  %i.arc = load float, ptr %i.arb, align 4, !tbaa !59 ; 5 uses
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aoc, i64 %indvars.iv.next.i
  %i.are = load float, ptr %i.ard, align 4, !tbaa !59 ; 2 uses
  %i.arf = fsub float %i.are, %i.aqy
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.arx = fadd float %i.arw, %i.ars
  %i.ary = fsub float %i.arc, %i.ara
  %i.arz = fsub float %i.ary, %i.ars
  %59 = insertelement <2 x float> poison, float %i.arv, i64 0
  %60 = insertelement <2 x float> %59, float %i.arx, i64 1
  %61 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.arz, i64 0
  br label %bb.lp

bb.lo:                                            ; preds = %bb.lm
end_hunk_1
begin_hunk_2_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_115LocalFileFormat4readERSiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_13InterpolationE:bb.a
  %i.asp = load float, ptr %i.aso, align 4, !tbaa !59
  %i.asq = fsub float %i.asp, %i.arj
  %i.asr = fdiv float %i.asq, %i.asc
  %62 = fsub float %i.arc, %i.asf
  %63 = fadd float %i.asj, 1.000000e+00
  %i.ass = fsub float %i.asn, %i.ara
  %i.ast = fadd float %i.asr, 1.000000e+00
  %i.asu = fdiv float %i.ass, %i.ast
  %64 = insertelement <2 x float> poison, float %i.arc, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %66 = insertelement <2 x float> poison, float %i.asu, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.asv = fdiv float %62, %63                    ; 3 uses
  %i.asw = fmul float %i.asv, 0.000000e+00
  %i.asx = fadd float %i.ara, %i.asw
  %i.asy = call float @llvm.fmuladd.f32(float %i.ara, float 0.000000e+00, float %i.asv)
  %68 = insertelement <2 x float> poison, float %i.asx, i64 0
  %69 = insertelement <2 x float> %68, float %i.asy, i64 1
  %70 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> zeroinitializer, <2 x float> %69)
  %71 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %67, <2 x float> zeroinitializer, <2 x float> %70)
  %72 = insertelement <2 x float> poison, float %i.asv, i64 0
  %73 = shufflevector <2 x float> %72, <2 x float> poison, <2 x i32> zeroinitializer
  %74 = fmul <2 x float> %73, <float -2.000000e+00, float 1.000000e+00>
  %75 = insertelement <2 x float> poison, float %i.ara, i64 0
  %76 = shufflevector <2 x float> %75, <2 x float> poison, <2 x i32> zeroinitializer
  %77 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %76, <2 x float> <float -3.000000e+00, float 2.000000e+00>, <2 x float> %74)
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> <float 3.000000e+00, float -2.000000e+00>, <2 x float> %77) ; 2 uses
  %79 = fsub <2 x float> %78, %67
  %80 = fadd <2 x float> %78, %67
  %81 = shufflevector <2 x float> %79, <2 x float> %80, <2 x i32> <i32 0, i32 3>
  br label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %bb.ln
  %82 = phi <2 x float> [ %60, %bb.ln ], [ %71, %bb.lo ]
  %83 = phi <2 x float> [ %61, %bb.ln ], [ %81, %bb.lo ]
  %i.asz = getelementptr inbounds nuw i8, ptr %.pn.i, i64 24
  store <2 x float> %82, ptr %i.asz, align 4, !tbaa !59
  %i.ata = getelementptr inbounds nuw i8, ptr %.pn.i, i64 32
  store <2 x float> %83, ptr %i.ata, align 4, !tbaa !59
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.aov
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_512_GLOBAL__N_132rsr_Interpolator1D_createFromRawEPNS0_23rsr_Interpolator1D_Raw_E.exit, label %bb.lm, !llvm.loop !147

end_hunk_2
begin_hunk_3_@llvm.smax.i32
; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
end_hunk_3
