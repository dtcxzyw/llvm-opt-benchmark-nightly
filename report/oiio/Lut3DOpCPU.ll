inline.NumInlined: 813
inline.NumDeleted: 378
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRenderer5applyEPKvPvl:bb.a
  %i.t = fmul <4 x float> %i.c, %i.s
  %i.u = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.t, <4 x float> zeroinitializer)
  %i.v = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.u, <4 x float> %i.i) ; 2 uses
  %i.w = tail call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> %i.v) ; 5 uses
  %i.x = sitofp <4 x i32> %i.w to <4 x float>     ; 2 uses
  %i.y = fcmp ogt <4 x float> %i.i, %i.x
  %.neg = zext <4 x i1> %i.y to <4 x i32>
  %i.z = add <4 x i32> %i.w, %.neg                ; 3 uses
  %i.aa = fsub <4 x float> %i.v, %i.x             ; 3 uses
  %4 = shufflevector <4 x i32> %i.w, <4 x i32> %i.z, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.ab = bitcast <4 x i32> %4 to <2 x i64>
  %i.ac = shufflevector <4 x i32> %i.w, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ad = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %5 = shufflevector <4 x i32> %i.w, <4 x i32> %i.z, <4 x i32> <i32 1, i32 1, i32 5, i32 5> ; 3 uses
  %i.ae = shufflevector <2 x i64> %i.ab, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !100 ; 8 uses
  %i.ag = bitcast <2 x i64> %i.ae to <4 x i32>    ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_113Lut3DRenderer5applyEPKvPvl:bb.a
  %i.an = mul nuw <2 x i64> %i.am, %i.p
  %i.ao = bitcast <2 x i64> %i.aj to <4 x i32>
  %i.ap = add <4 x i32> %5, %i.ao
  %6 = shufflevector <4 x i32> %5, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>, <4 x i32> <i32 1, i32 2, i32 3, i32 4> ; 2 uses
  %i.aq = bitcast <2 x i64> %i.an to <4 x i32>
  %i.ar = add <4 x i32> %6, %i.aq
  %i.as = bitcast <4 x i32> %i.ap to <2 x i64>
end_hunk_1
