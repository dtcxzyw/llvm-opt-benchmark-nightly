inline.NumInlined: 283
inline.NumDeleted: 32
begin_hunk_0_@zsetConvertAndExpand:bb.a
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #20 ; 5 uses
  %i.s = tail call ptr @dictCreate(ptr noundef nonnull @zsetDictType) #17
  store ptr %i.s, ptr %i.r, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #17
  %i.t = call ptr @zmalloc_usable(i64 noundef 40, ptr noundef nonnull %i.h) #17 ; 6 uses
end_hunk_0
begin_hunk_1_@zsetConvertAndExpand:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #17
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.af, align 8, !tbaa !103
  %4 = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.ag = call i32 @dictExpand(ptr noundef %4, i64 noundef %2) #17 ; 0 uses
  %i.ah = call ptr @lpSeek(ptr noundef %i.q, i64 noundef 0) #17 ; 3 uses
  %.not51 = icmp eq ptr %i.ah, null
  br i1 %.not51, label %._crit_edge73, label %bb.f
end_hunk_1
