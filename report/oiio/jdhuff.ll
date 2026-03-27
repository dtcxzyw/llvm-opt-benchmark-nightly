begin_hunk_0
  %i.f = phi ptr [ %i.a, %bb.c ], [ %i.c, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.f, ptr noundef nonnull align 1 dereferenceable(17) %2, i64 17, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 1
  %4 = load <8 x i8>, ptr %i.g, align 1, !tbaa !35
  %5 = getelementptr inbounds nuw i8, ptr %2, i64 9
  %6 = load <4 x i8>, ptr %5, align 1, !tbaa !35
  %7 = getelementptr inbounds nuw i8, ptr %2, i64 13
  %8 = load i8, ptr %7, align 1, !tbaa !35
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds nuw i8, ptr %2, i64 14
  %11 = load i8, ptr %10, align 1, !tbaa !35
  %12 = zext i8 %11 to i32
  %13 = getelementptr inbounds nuw i8, ptr %2, i64 15
  %14 = load i8, ptr %13, align 1, !tbaa !35
  %15 = zext i8 %14 to i32
  %16 = zext <8 x i8> %4 to <8 x i32>             ; 2 uses
  %17 = zext <4 x i8> %6 to <4 x i32>
  %18 = shufflevector <8 x i32> %16, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add nuw nsw <4 x i32> %18, %17
  %19 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <8 x i32> %19, <8 x i32> %16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.h = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %20)
  %op.rdx = add nuw nsw i32 %i.h, %9
  %op.rdx27 = add nuw nsw i32 %12, %15
  %op.rdx28 = add i32 %op.rdx, %op.rdx27
  %21 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %22 = load i8, ptr %21, align 1, !tbaa !35
  %23 = zext i8 %22 to i32
  %24 = add nuw nsw i32 %op.rdx28, %23            ; 3 uses
  %i.i = add nsw i32 %24, -257
  %or.cond = icmp ult i32 %i.i, -256
  br i1 %or.cond, label %bb.e, label %bb.f

end_hunk_0
begin_hunk_1
bb.f:                                             ; preds = %bb.d, %bb.e
  %i.m = load ptr, ptr %1, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 17
  %i.o = zext nneg i32 %24 to i64                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %3, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %1, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 17
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  %i.s = sub nsw i32 256, %24
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.r, i8 0, i64 %i.t, i1 false)
  %i.u = load ptr, ptr %1, align 8, !tbaa !37
end_hunk_1
begin_hunk_2
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_2
