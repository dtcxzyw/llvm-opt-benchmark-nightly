begin_hunk_0
  %i.bq = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bp)
  %i.br = insertelement <8 x float> poison, float %i.bo, i64 0
  %i.bs = shufflevector <8 x float> %i.br, <8 x float> poison, <8 x i32> zeroinitializer
  %2 = fcmp ogt <8 x float> %i.bs, %i.bq
  %i.bt = tail call float @llvm.fabs.f32(float %i.bd)
  %i.bu = fcmp ogt float %i.bo, %i.bt
  %3 = freeze <8 x i1> %2
  %i.bv = bitcast <8 x i1> %3 to i8
  %i.bw = icmp eq i8 %i.bv, -1
  %op.rdx = select i1 %i.bw, i1 %i.bu, i1 false
  br i1 %op.rdx, label %.critedge59, label %bb.f

end_hunk_0
begin_hunk_1
  %i.cq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.cp)
  %i.cr = insertelement <4 x float> poison, float %i.co, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %4 = fcmp ogt <4 x float> %i.cs, %i.cq
  %5 = freeze <4 x i1> %4
  %i.ct = bitcast <4 x i1> %5 to i4
  %i.cu = icmp eq i4 %i.ct, -1
  br i1 %i.cu, label %.critedge63, label %bb.f

.critedge63:                                      ; preds = %.preheader67, %bb.e
end_hunk_1
