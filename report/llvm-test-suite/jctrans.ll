inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@jpeg_copy_critical_parameters:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %.08698, i64 80
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !91 ; 2 uses
  %.not91 = icmp eq ptr %i.co, null
  br i1 %.not91, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge108, %bb.y
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.y ], [ 0, %._crit_edge108 ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %indvars.iv
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !92
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cm, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@jpeg_copy_critical_parameters:bb.a
  br i1 %.not92, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.preheader
  %i.ct = load ptr, ptr %1, align 8, !tbaa !26    ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i32 43, ptr %2, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 44
  store i32 %i.cb, ptr %i.cu, align 4, !tbaa !32
  %i.cv = load ptr, ptr %1, align 8, !tbaa !26
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !33
  tail call void %i.cw(ptr noundef nonnull %1) #5
end_hunk_1
