inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0_@spt_init:bb.a
  br label %.critedge2._crit_edge

.critedge2._crit_edge:                            ; preds = %.critedge2._crit_edge.loopexit, %.critedge2.preheader
  %.161.lcssa = phi i64 [ 8, %.critedge2.preheader ], [ %i.w, %.critedge2._crit_edge.loopexit ] ; 2 uses
  %.2.lcssa = phi ptr [ %.0.lcssa, %.critedge2.preheader ], [ %.3, %.critedge2._crit_edge.loopexit ]
  %i.x = tail call noalias ptr @strdup(ptr noundef nonnull %i.b) #14 ; 2 uses
  store ptr %i.x, ptr @SPT.0, align 8, !tbaa !22
  %.not74 = icmp eq ptr %i.x, null
end_hunk_0
begin_hunk_1_@spt_init:bb.a

bb.h:                                             ; preds = %bb.g
  store ptr %i.ab, ptr @program_invocation_short_name, align 8, !tbaa !17
  %i.ac = tail call noalias ptr @malloc(i64 noundef %.161.lcssa) #16 ; 7 uses
  %.not31.i = icmp eq ptr %i.ac, null
  br i1 %.not31.i, label %spt_copyenv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.a, i64 %.161.lcssa, i1 false)
  %i.ad = tail call i32 @clearenv() #14
  %.not32.i = icmp eq i32 %i.ad, 0
  br i1 %.not32.i, label %.preheader.i, label %bb.j
end_hunk_1
