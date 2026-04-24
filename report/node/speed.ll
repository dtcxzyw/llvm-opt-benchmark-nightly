inline.NumInlined: 230
inline.NumDeleted: 21
begin_hunk_0_@multiblock_speed:bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.not = icmp eq i32 %1, 0                       ; 3 uses
  %.080 = select i1 %.not, i64 5, i64 1
  %spec.select = select i1 %.not, i64 5, i64 1    ; 5 uses
  %spec.select99 = select i1 %.not, ptr @multiblock_speed.mblengths_list, ptr %i.a ; 4 uses
  %i.d = getelementptr [4 x i8], ptr %spec.select99, i64 %.080
  %i.e = getelementptr i8, ptr %i.d, i64 -4       ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !5
  %i.g = sext i32 %i.f to i64
end_hunk_0
