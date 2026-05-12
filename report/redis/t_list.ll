inline.NumInlined: 56
inline.NumDeleted: 4
begin_hunk_0_@createStringObject
; Function Attrs: nounwind uwtable
define dso_local ptr @listTypePop(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [21 x i8], align 16               ; 3 uses
end_hunk_0
begin_hunk_1_@listTypePop:bb.a
  %i.z = call ptr @lpGet(ptr noundef nonnull %i.y, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #8
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !17
  %i.ab = call ptr @createStringObject(ptr noundef %i.z, i64 noundef %i.aa) #8
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = call ptr @lpDelete(ptr noundef %i.ad, ptr noundef nonnull %i.y, ptr noundef null) #8
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !14
  %.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %.pre.pre, %bb.i ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  br label %bb.l
end_hunk_1
begin_hunk_2_@pushGenericCommand
define dso_local void @pushGenericCommand(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
end_hunk_2
begin_hunk_3_@pushGenericCommand:bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !97
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = call ptr @lookupKeyWriteWithLink(ptr noundef %i.d, ptr noundef %i.h, ptr noundef nonnull %i.a) #8 ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !57
  %i.j = call i32 @checkType(ptr noundef %0, ptr noundef %i.i, i32 noundef 1) #8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %3 = load ptr, ptr %i.b, align 8, !tbaa !57     ; 2 uses
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
end_hunk_3
begin_hunk_4_@pushGenericCommand:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pre38 = phi ptr [ %.pre38.pre, %bb.e ], [ %3, %bb.b ] ; 2 uses
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !100
  %.not34 = icmp eq i32 %i.r, 0
  br i1 %.not34, label %bb.h, label %bb.g
end_hunk_4
