inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0_@keyMetaSetMetadata
define dso_local noundef ptr @keyMetaSetMetadata(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = add i32 %2, -1
  %i.d = icmp ult i32 %i.c, 7
  br i1 %i.d, label %bb.c, label %bb.b, !prof !27
end_hunk_0
begin_hunk_1_@keyMetaSetMetadata:bb.a
bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !119
  %.not55 = icmp eq i64 %i.w, -1
  br i1 %.not55, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
end_hunk_1
begin_hunk_2_@keyMetaSetMetadata:bb.a
bb.q:                                             ; preds = %bb.p, %bb.o
  %i.an = call ptr @kvobjMetaRef(ptr noundef %i.aj, i32 noundef %2) #16
  store i64 %3, ptr %i.an, align 8, !tbaa !22
  %4 = load ptr, ptr %i.b, align 8, !tbaa !119
  %.not59 = icmp eq ptr %4, null
  br i1 %.not59, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 -8
end_hunk_2
