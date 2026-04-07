inline.NumInlined: 8
inline.NumDeleted: 6
begin_hunk_0_@VP8DecompressAlphaRows:bb.a
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr @WebPUnfilters, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !58
  tail call void %i.dd(ptr noundef %.03439.i, ptr noundef %.03340.i, ptr noundef %.041.i, i32 noundef %i.cg) #3, !inline_history !59
  %i.de = getelementptr inbounds i8, ptr %.041.i, i64 %i.cz
  %i.df = getelementptr inbounds i8, ptr %.03340.i, i64 %i.cz
  %i.dg = add nuw nsw i32 %.03538.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dg, %.052
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.t, !llvm.loop !60

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %.034.lcssa.i = phi ptr [ %i.cn, %bb.s ], [ %.041.i, %bb.t ]
end_hunk_0
begin_hunk_1_@VP8DecompressAlphaRows:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 3000
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !31
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !62 ; 2 uses
  %i.dt = mul nsw i32 %i.ds, %i.a
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 %i.du
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !63 ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr inbounds i8, ptr %i.dv, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !64
  %i.ec = sub nsw i32 %i.eb, %i.dx
  %i.ed = load i32, ptr %i.b, align 4, !tbaa !29
  %i.ee = sub nsw i32 %i.ed, %i.ds
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!56 = !{!8, !4, i64 3016}
!57 = !{!26, !4, i64 164}
!58 = !{!10, !10, i64 0}
!59 = distinct !{null}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!20, !4, i64 128}
!63 = !{!20, !4, i64 120}
!64 = !{!20, !4, i64 124}
end_hunk_2
