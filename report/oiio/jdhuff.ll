inline.NumInlined: 4
inline.NumDeleted: 4
begin_hunk_0_@add_huff_table:bb.a
  %i.f = phi ptr [ %i.a, %bb.c ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = load <8 x i8>, ptr %i.g, align 1, !tbaa !35
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %6 = load <4 x i8>, ptr %5, align 1, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.i = load i8, ptr %i.h, align 1, !tbaa !35
  %i.j = zext i8 %i.i to i32
end_hunk_0
begin_hunk_1_@add_huff_table:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !35
  %i.p = zext i8 %i.o to i32
  %7 = zext <8 x i8> %4 to <8 x i32>              ; 2 uses
  %8 = zext <4 x i8> %6 to <4 x i32>
  %9 = shufflevector <8 x i32> %7, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add nuw nsw <4 x i32> %9, %8
  %10 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %11 = shufflevector <8 x i32> %10, <8 x i32> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.q = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %11)
  %op.rdx = add nuw nsw i32 %i.q, %i.j
  %op.rdx27 = add nuw nsw i32 %i.m, %i.p
  %op.rdx28 = add i32 %op.rdx, %op.rdx27
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load i8, ptr %i.r, align 1, !tbaa !35
  %i.t = zext i8 %i.s to i32
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
