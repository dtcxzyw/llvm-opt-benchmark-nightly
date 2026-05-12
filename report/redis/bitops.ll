inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@lookupStringForBitCommand
define internal fastcc ptr @lookupStringForBitCommand(ptr noundef %0, i64 noundef %1, ptr noundef nonnull captures(none) %2, ptr noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.c = lshr i64 %1, 3                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
end_hunk_0
begin_hunk_1_@lookupStringForBitCommand:bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !105
  %i.j = call ptr @lookupKeyWriteWithLink(ptr noundef %i.e, ptr noundef %i.i, ptr noundef nonnull %i.a) #23 ; 3 uses
  %i.k = call i32 @checkType(ptr noundef %0, ptr noundef %i.j, i32 noundef 0) #23
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq ptr %i.j, null
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@lookupStringForBitCommand:bb.a
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !90
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !105
  %i.y = call ptr @dbUnshareStringValue(ptr noundef %i.u, ptr noundef %i.x, ptr noundef nonnull %i.j) #23 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51  ; 6 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %.val.i = load i8, ptr %i.ab, align 1, !tbaa !13 ; 2 uses
end_hunk_2
begin_hunk_3_@lookupStringForBitCommand:bb.a

bb.j:                                             ; preds = %sdslen.exit
  %i.ar = call i64 @kvobjAllocSize(ptr noundef nonnull %i.y) #23
  %.pre.a = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %sdslen.exit
end_hunk_3
begin_hunk_4_@lookupStringForBitCommand:bb.a
  %.0 = phi i64 [ %i.ar, %bb.j ], [ 0, %sdslen.exit ]
  %i.at = add nuw nsw i64 %i.c, 1
  %i.au = call ptr @sdsgrowzero(ptr noundef %i.as, i64 noundef %i.at) #23 ; 2 uses
  store ptr %i.au, ptr %i.z, align 8, !tbaa !51
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !111
  %.not22 = icmp eq i32 %i.av, 0
  br i1 %.not22, label %bb.m, label %bb.l
end_hunk_4
begin_hunk_5_@lookupStringForBitCommand:bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !51
  %i.bc = call i32 @getKeySlot(ptr noundef %i.bb) #23
  %i.bd = call i64 @kvobjAllocSize(ptr noundef nonnull %i.y) #23
  call void @updateSlotAllocSize(ptr noundef %i.aw, i32 noundef %i.bc, ptr noundef nonnull %i.y, i64 noundef %.0, i64 noundef %i.bd) #23
  %.pre26 = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.be = phi ptr [ %.pre26, %bb.l ], [ %i.au, %bb.k ] ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -1
  %.val.i23 = load i8, ptr %i.bf, align 1, !tbaa !13 ; 2 uses
  %i.bg = and i8 %.val.i23, 7
end_hunk_5
begin_hunk_6_@lookupStringForBitCommand:bb.a
  br label %bb.s

bb.s:                                             ; preds = %bb.c, %sdslen.exit25, %bb.a
  %.019 = phi ptr [ null, %bb.a ], [ %i.y, %sdslen.exit25 ], [ %.pre27.a, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %.019
end_hunk_6
