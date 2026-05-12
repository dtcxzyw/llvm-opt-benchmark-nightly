inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@rb_define_method
; Function Attrs: nounwind uwtable
define internal i64 @enumerator_kw(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 4, ptr %i.a, align 16, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store i64 4, ptr %i.b, align 8, !tbaa !10
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0
