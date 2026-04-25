inline.NumInlined: 73
inline.NumDeleted: 8
begin_hunk_0_@emit_dht:bb.a
  %.035.in.v.v = select i1 %.not, i64 120, i64 152
  %.035.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v.v
  %.035.in = getelementptr inbounds [8 x i8], ptr %.035.in.v, i64 %i.a
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !81 ; 10 uses
  %i.c = icmp eq ptr %.035, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@emit_dht:bb.a

emit_marker.exit:                                 ; preds = %emit_byte.exit.i, %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %3 = load <8 x i8>, ptr %i.al, align 1, !tbaa !41
  %4 = getelementptr inbounds nuw i8, ptr %.035, i64 9
  %5 = load <4 x i8>, ptr %4, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.035, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !41
  %i.ao = zext i8 %i.an to i32
end_hunk_1
begin_hunk_2_@emit_dht:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.035, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !41
  %i.au = zext i8 %i.at to i32
  %6 = zext <8 x i8> %3 to <8 x i32>              ; 2 uses
  %7 = zext <4 x i8> %5 to <4 x i32>
  %8 = shufflevector <8 x i32> %6, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add nuw nsw <4 x i32> %8, %7
  %9 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %10 = shufflevector <8 x i32> %9, <8 x i32> %6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.av = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %10)
  %op.rdx = add nuw nsw i32 %i.av, %i.ao
  %op.rdx54 = add nuw nsw i32 %i.ar, %i.au
  %op.rdx55 = add i32 %op.rdx, %op.rdx54
  %i.aw = getelementptr inbounds nuw i8, ptr %.035, i64 16
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !41
  %i.ay = zext i8 %i.ax to i32
end_hunk_2
begin_hunk_3_@llvm.assume
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_3
