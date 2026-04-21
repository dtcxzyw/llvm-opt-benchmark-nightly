inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@aiMatrix4FromScalingQuaternionPosition:bb.a
  %i.ax = fmul <4 x float> %i.au, %i.aw
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = load float, ptr %i.am, align 4
  %i.az = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.al, i64 0
  %4 = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ba = insertelement <4 x float> poison, float %i.u, i64 0
  %i.bb = insertelement <4 x float> %i.ba, float %i.w, i64 1
  %i.bc = insertelement <4 x float> %i.bb, float %i.z, i64 2
  %5 = insertelement <4 x float> %i.bc, float %i.ay, i64 3
  %i.bd = fmul <4 x float> %4, %5
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.be = load float, ptr %i.ap, align 4
  %i.bf = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ao, i64 0
  %6 = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bg = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.af, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.ai, i64 2
  %7 = insertelement <4 x float> %i.bi, float %i.be, i64 3
  %i.bj = fmul <4 x float> %6, %7
  store <4 x float> %i.ax, ptr %0, align 4
  store <4 x float> %i.bd, ptr %.sroa.7.0..sroa_idx, align 4
  store <4 x float> %i.bj, ptr %.sroa.11.0..sroa_idx, align 4
end_hunk_0
