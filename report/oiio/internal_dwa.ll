inline.NumInlined: 251
inline.NumDeleted: 56
begin_hunk_0_@dctInverse8x8_scalar:bb.a
  %i.ab = load float, ptr %i.b, align 4, !tbaa !186 ; 2 uses
  %i.ac = load float, ptr %i.o, align 4, !tbaa !186 ; 2 uses
  %i.ad = insertelement <4 x float> poison, float %i.f, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.ac, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 2
  %2 = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.ag = fmul <4 x float> %2, <float 0x3FC87DE660000000, float 0x3FDD906C20000000, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ah = insertelement <4 x float> poison, float %i.d, i64 0
  %i.ai = insertelement <4 x float> %i.ah, float %i.ab, i64 1
  %i.aj = insertelement <4 x float> %i.ai, float %i.ac, i64 2
  %3 = shufflevector <4 x float> %i.aj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 2>
  %i.ak = fmul <4 x float> %3, <float 0x3FDD906C20000000, float 0x3FC87DE660000000, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.al = fadd <4 x float> %i.ak, %i.ag
  %i.am = fsub <4 x float> %i.ak, %i.ag
end_hunk_0
