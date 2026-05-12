inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0_@sortCommandGeneric:bb.a
  %7 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %struct.listIter, align 8           ; 5 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %9 = alloca %struct.listIter, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8, !tbaa !23
end_hunk_0
begin_hunk_1_@sortCommandGeneric:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ui = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8032), align 8, !tbaa !94
  %i.uj = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8036), align 4, !tbaa !95
  %i.uk = call ptr @createQuicklistObject(i32 noundef %i.ui, i32 noundef %i.uj) #12
  store ptr %i.uk, ptr %i.d, align 8, !tbaa !25
  %sext745 = shl i64 %.1398, 32
  %i.ul = ashr exact i64 %sext745, 32             ; 3 uses
end_hunk_1
begin_hunk_2_@sortCommandGeneric:bb.a
.lr.ph724.split.us:                               ; preds = %.lr.ph724, %.lr.ph724.split.us
  %indvars.iv777 = phi i64 [ %indvars.iv.next778, %.lr.ph724.split.us ], [ %i.ul, %.lr.ph724 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  %10 = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.um = getelementptr inbounds [16 x i8], ptr %i.ne, i64 %indvars.iv777
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !58
  call void @listTypePush(ptr noundef %10, ptr noundef %i.un, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #12
  %indvars.iv.next778 = add nsw i64 %indvars.iv777, 1
  %.not529.us.not = icmp sgt i64 %.2401, %indvars.iv777
end_hunk_2
begin_hunk_3_@sortCommandGeneric:bb.a

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.0 = phi ptr [ %i.ux, %bb.fm ], [ %i.va, %bb.fn ] ; 2 uses
  %11 = load ptr, ptr %i.d, align 8, !tbaa !25
  call void @listTypePush(ptr noundef %11, ptr noundef %.0, i32 noundef 1) #12
  call void @decrRefCount(ptr noundef %.0) #12
  %i.vb = call ptr @listNext(ptr noundef nonnull %9) #12 ; 2 uses
  %.not532 = icmp eq ptr %i.vb, null
end_hunk_3
begin_hunk_4_@sortCommandGeneric:bb.a
  br i1 %.not530, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %._crit_edge725
  %12 = load ptr, ptr %i.d, align 8, !tbaa !25
  call void @listTypeTryConversion(ptr noundef %12, i32 noundef 0, ptr noundef null, ptr noundef null) #12
  %i.vd = load ptr, ptr %i.kp, align 8, !tbaa !92
  call void @setKey(ptr noundef %0, ptr noundef %i.vd, ptr noundef nonnull %.0439.lcssa, ptr noundef nonnull %i.d, i32 noundef 0) #12
  store ptr null, ptr %i.d, align 8, !tbaa !25
end_hunk_4
