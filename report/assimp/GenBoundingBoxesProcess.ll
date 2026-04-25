inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@_ZN6Assimp23GenBoundingBoxesProcess7ExecuteEP7aiScene:bb.a
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.p = phi <4 x float> [ <float 9.999990e+05, float 9.999990e+05, float 9.999990e+05, float -9.999990e+05>, %.lr.ph.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.q = phi <2 x float> [ splat (float -9.999990e+05), %.lr.ph.i ], [ %i.x, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.n, i64 %indvars.iv.i
  %2 = load <3 x float>, ptr %i.r, align 4        ; 2 uses
  %3 = shufflevector <3 x float> %2, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 3 uses
  %i.s = fcmp olt <4 x float> %3, %i.p
  %i.t = fcmp ogt <4 x float> %3, %i.p
  %i.u = shufflevector <4 x i1> %i.s, <4 x i1> %i.t, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.v = select <4 x i1> %i.u, <4 x float> %3, <4 x float> %i.p ; 2 uses
  %4 = shufflevector <3 x float> %2, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.w = fcmp ogt <2 x float> %4, %i.q
  %i.x = select <2 x i1> %i.w, <2 x float> %4, <2 x float> %i.q ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
end_hunk_0
