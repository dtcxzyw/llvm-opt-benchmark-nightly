begin_hunk_0
  %i.bw = tail call <8 x float> @llvm.fabs.v8f32(<8 x float> %i.bv)
  %i.bx = insertelement <8 x float> poison, float %i.bq, i64 0
  %i.by = shufflevector <8 x float> %i.bx, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bz = tail call float @llvm.fabs.f32(float %i.bg)
  %i.ca = fcmp ogt float %i.bq, %i.bz
  %2 = fcmp ule <8 x float> %i.by, %i.bw
  %i.cb = bitcast <8 x i1> %2 to i8
  %i.cc = icmp eq i8 %i.cb, 0
  %op.rdx = select i1 %i.cc, i1 %i.ca, i1 false
  br i1 %op.rdx, label %.critedge29, label %bb.g

end_hunk_0
