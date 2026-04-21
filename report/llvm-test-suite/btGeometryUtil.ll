inline.NumInlined: 79
inline.NumDeleted: 30
begin_hunk_0_@_ZN14btGeometryUtil29getVerticesFromPlaneEquationsERK20btAlignedObjectArrayI9btVector3ERS2_:bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !15
  %i.ce = fdiv nnan float -1.000000e+00, %i.bx
  %i.cf = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ao, i64 2
  %i.cg = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %2 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ca, i64 0
  %3 = shufflevector <4 x float> %2, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %4 = fmul <4 x float> %i.ch, %3
  %i.ci = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ax, i64 2
  %i.cj = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> %i.ci, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %5 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cb, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %7 = fmul <4 x float> %i.ck, %6
  %i.cl = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.bd, i64 2
  %i.cm = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %8 = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.cd, i64 0
  %9 = shufflevector <4 x float> %8, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.co = fmul <4 x float> %i.cn, %9
  %i.cp = fadd <4 x float> %4, %7
  %i.cq = fadd <4 x float> %i.co, %i.cp
  %i.cr = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %i.ce, i64 0
end_hunk_0
