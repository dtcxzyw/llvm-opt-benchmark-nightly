inline.NumInlined: 44
inline.NumDeleted: 10
begin_hunk_0_@_ZNK9Imath_3_18Matrix44IfE7inverseEv:bb.a
  %i.r = load float, ptr %i.q, align 4, !tbaa !7  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load <4 x float>, ptr %i.s, align 4
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !7  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.y = load <2 x float>, ptr %i.h, align 4, !tbaa !7 ; 2 uses
  %i.z = load <2 x float>, ptr %i.d, align 4, !tbaa !7 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK9Imath_3_18Matrix44IfE7inverseEv:bb.a
  %i.ac = load float, ptr %i.x, align 4, !tbaa !7 ; 2 uses
  %i.ad = insertelement <8 x float> %i.u, float %i.r, i64 1
  %i.ae = insertelement <8 x float> %i.ad, float %i.w, i64 2 ; 2 uses
  %i.af = shufflevector <2 x float> %i.z, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 4 uses
  %i.ag = shufflevector <8 x float> %i.ae, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 9, i32 poison>
  %i.ah = shufflevector <2 x float> %i.y, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.ai = shufflevector <8 x float> %i.ag, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 6, i32 9> ; 2 uses
  %i.aj = fneg <8 x float> %i.ai
  %i.ak = shufflevector <8 x float> %i.aj, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 6, i32 7>
  %i.al = shufflevector <2 x float> %i.ab, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.am = shufflevector <8 x float> %i.ai, <8 x float> %i.al, <8 x i32> <i32 7, i32 9, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.an = shufflevector <2 x float> %i.y, <2 x float> %i.ab, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 2, i32 0, i32 2>
  %i.ao = shufflevector <8 x float> %i.am, <8 x float> %i.an, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 12, i32 13, i32 14, i32 15>
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 4, i32 5, i32 6, i32 7>
  %i.aq = fmul <8 x float> %i.ap, %i.ak
  %2 = shufflevector <8 x float> %i.am, <8 x float> %i.u, <8 x i32> <i32 2, i32 0, i32 1, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %3 = shufflevector <8 x float> %2, <8 x float> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 poison, i32 poison, i32 poison>
  %4 = shufflevector <8 x float> %3, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 8, i32 poison>
  %5 = shufflevector <8 x float> %4, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 6, i32 8> ; 2 uses
  %6 = insertelement <8 x float> %5, float %i.w, i64 5
  %7 = shufflevector <8 x float> %i.ae, <8 x float> %5, <8 x i32> <i32 1, i32 2, i32 0, i32 15, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ar = insertelement <8 x float> %7, float %i.r, i64 4
  %i.as = shufflevector <8 x float> %i.ar, <8 x float> %i.af, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 poison, i32 poison>
  %i.at = shufflevector <8 x float> %i.as, <8 x float> %i.ah, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 9, i32 poison>
  %i.au = shufflevector <8 x float> %i.at, <8 x float> %i.al, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 9>
  %i.av = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %6, <8 x float> %i.au, <8 x float> %i.aq) ; 9 uses
  %i.aw = fneg float %i.ac
  %i.ax = extractelement <2 x float> %i.z, i64 0
  %i.ay = fmul float %i.ax, %i.aw
end_hunk_1
