inline.NumInlined: 425
inline.NumDeleted: 246
begin_hunk_0_@_ZN2v87sampler14SamplerManager10AddSamplerEPNS0_7SamplerE:bb.a
..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.h
  br label %_ZNSt6vectorIPN2v87sampler7SamplerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, !llvm.loop !10

_ZNSt6vectorIPN2v87sampler7SamplerESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %.lr.ph.i.i.i.i, %bb.c, %bb.e, %..loopexit_crit_edge21.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
end_hunk_0
