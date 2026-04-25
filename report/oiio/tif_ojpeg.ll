inline.NumInlined: 64
inline.NumDeleted: 29
begin_hunk_0_@OJPEGReadHeaderInfoSec:bb.a
  %i.uh = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ty, i64 408
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ty, i64 500 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.um = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.un = getelementptr inbounds nuw i8, ptr %i.a, i64 14
end_hunk_0
begin_hunk_1_@OJPEGReadHeaderInfoSec:bb.a
  br i1 %.not84.i131, label %.preheader.preheader.i, label %OJPEGReadHeaderInfoSecTablesDcTable.exit.thread

.preheader.preheader.i:                           ; preds = %._crit_edge.i130
  %1 = load <12 x i8>, ptr %i.a, align 16, !tbaa !101
  %i.vh = load i8, ptr %i.ul, align 4, !tbaa !101
  %i.vi = zext i8 %i.vh to i32
  %i.vj = load i8, ptr %i.um, align 1, !tbaa !101
  %i.vk = zext i8 %i.vj to i32
  %i.vl = load i8, ptr %i.un, align 2, !tbaa !101
  %i.vm = zext i8 %i.vl to i32
  %2 = zext <12 x i8> %1 to <12 x i32>
  %i.vn = call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %2)
  %op.rdx = add nuw nsw i32 %i.vn, %i.vi
  %op.rdx575 = add nuw nsw i32 %i.vk, %i.vm
  %op.rdx576 = add nuw nsw i32 %op.rdx, %op.rdx575
  %i.vo = load i8, ptr %i.uo, align 1, !tbaa !101
  %i.vp = zext i8 %i.vo to i32
  %i.vq = add nuw nsw i32 %op.rdx576, %i.vp       ; 4 uses
end_hunk_1
begin_hunk_2_@OJPEGReadHeaderInfoSecTablesAcTable:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 500 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 14
end_hunk_2
begin_hunk_3_@OJPEGReadHeaderInfoSecTablesAcTable:bb.a
  br i1 %.not88, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %._crit_edge
  %1 = load <12 x i8>, ptr %i.a, align 16, !tbaa !101
  %i.aq = load i8, ptr %i.p, align 4, !tbaa !101
  %i.ar = zext i8 %i.aq to i32
  %i.as = load i8, ptr %i.q, align 1, !tbaa !101
  %i.at = zext i8 %i.as to i32
  %i.au = load i8, ptr %i.r, align 2, !tbaa !101
  %i.av = zext i8 %i.au to i32
  %2 = zext <12 x i8> %1 to <12 x i32>
  %i.aw = call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %2)
  %op.rdx = add nuw nsw i32 %i.aw, %i.ar
  %op.rdx113 = add nuw nsw i32 %i.at, %i.av
  %op.rdx114 = add nuw nsw i32 %op.rdx, %op.rdx113
  %i.ax = load i8, ptr %i.s, align 1, !tbaa !101
  %i.ay = zext i8 %i.ax to i32
  %i.az = add nuw nsw i32 %op.rdx114, %i.ay       ; 4 uses
end_hunk_3
begin_hunk_4_@llvm.assume
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_4
