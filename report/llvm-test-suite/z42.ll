inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@ctab_insert:bb.a
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %indvars.iv
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  call fastcc void @ctab_insert(ptr noundef %i.z, ptr noundef nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !25
  %i.ab = sext i32 %i.aa to i64
  %.not.i.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not.i.not, label %bb.e, label %.preheader, !llvm.loop !28

.lr.ph38:                                         ; preds = %.preheader, %bb.g
  %i.ac = phi i32 [ %i.ah, %bb.g ], [ %i.w, %.preheader ]
end_hunk_0
begin_hunk_1_@ctab_insert:bb.a
  br i1 %.not14.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph38
  %i.ag = tail call i32 @DisposeObject(ptr noundef nonnull %i.af) #8 ; 0 uses
  %.pre = load i32, ptr %i.b, align 8, !tbaa !10
  br label %bb.g

end_hunk_1
begin_hunk_2_@ctab_insert:bb.a
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next45, %i.ai
  br i1 %i.aj, label %.lr.ph38, label %ctab_rehash.exit, !llvm.loop !29

ctab_rehash.exit:                                 ; preds = %bb.g, %.preheader
  tail call void @free(ptr noundef nonnull %i.b) #8
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !8   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  store ptr %i.ak, ptr %1, align 8, !tbaa !8
end_hunk_2
begin_hunk_3_@ctab_insert:bb.a
  %i.ba = add nuw nsw i32 %.02940, %i.az          ; 2 uses
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !12  ; 2 uses
  %.not = icmp eq i8 %i.bb, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph42, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph42, %bb.j
  %.029.lcssa = phi i32 [ %i.av, %bb.j ], [ %i.ba, %.lr.ph42 ]
end_hunk_3
begin_hunk_4_@llvm.memset.p0.i64
!25 = !{!11, !5, i64 4}
!26 = !{!22, !22, i64 0}
!27 = !{!21, !22, i64 0}
!28 = distinct !{!28, !19}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !19}
end_hunk_4
