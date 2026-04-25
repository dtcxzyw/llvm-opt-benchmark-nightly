inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBody10updatePoseEv:bb.a
  %i.gd = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.hd, %bb.e ]
  %i.ge = phi <4 x float> [ %i.bs, %.lr.ph ], [ %i.he, %bb.e ]
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv
  %i.gg = getelementptr inbounds nuw [120 x i8], ptr %i.bj, i64 %indvars.iv
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %i.gi = load float, ptr %i.gf, align 4, !tbaa !159
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !159
  %i.gm = load <2 x float>, ptr %i.gj, align 4, !tbaa !159 ; 4 uses
  %i.gn = extractelement <2 x float> %i.gm, i64 0
  %4 = load <3 x float>, ptr %i.gh, align 4, !tbaa !159
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 2>
  %i.go = fsub <4 x float> %5, %i.bt
  %i.gp = insertelement <4 x float> poison, float %i.gi, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul <4 x float> %i.gq, %i.go           ; 4 uses
end_hunk_0
