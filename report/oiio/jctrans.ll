inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@jpeg_copy_critical_parameters:bb.a
  %i.da = getelementptr inbounds nuw i8, ptr %.0110124, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !98 ; 2 uses
  %.not117 = icmp eq ptr %i.db, null
  br i1 %.not117, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %._crit_edge134
  %2 = insertelement <2 x i32> <i32 45, i32 poison>, i32 %i.co, i64 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.aa
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aa ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %indvars.iv
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !99
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cz, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@jpeg_copy_critical_parameters:bb.a
  br i1 %.not118, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.preheader
  %i.dg = load ptr, ptr %1, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store <2 x i32> %2, ptr %i.dh, align 8, !tbaa !36
  %i.di = load ptr, ptr %1, align 8, !tbaa !28
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !34
  tail call void %i.dj(ptr noundef nonnull %1) #5
end_hunk_1
