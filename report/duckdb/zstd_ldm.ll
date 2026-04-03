begin_hunk_0
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = zext i32 %i.b to i64                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13
  %i.f = tail call i32 @llvm.umin.i32(i32 %i.e, i32 %i.b)
  %i.g = zext i32 %i.f to i64
  %1 = sub nsw i64 %i.c, %i.g
  %i.h = shl nuw i64 1, %1
  %i.i = shl i64 8, %i.c
  %i.j = add i64 %i.h, %i.i
  %i.k = load i32, ptr %0, align 8, !tbaa !17
end_hunk_0
begin_hunk_1
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12
end_hunk_1
