inline.NumInlined: 73
inline.NumDeleted: 8
begin_hunk_0_@emit_dht:bb.a
  %.035.in.v.v = select i1 %.not, i64 120, i64 152
  %.035.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v.v
  %.035.in = getelementptr inbounds [8 x i8], ptr %.035.in.v, i64 %i.a
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !81 ; 9 uses
  %i.c = icmp eq ptr %.035, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@emit_dht:bb.a

emit_marker.exit:                                 ; preds = %emit_byte.exit.i, %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %3 = load <12 x i8>, ptr %i.al, align 1, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %.035, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !41
  %i.ao = zext i8 %i.an to i32
end_hunk_1
begin_hunk_2_@emit_dht:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.035, i64 15
  %i.at = load i8, ptr %i.as, align 1, !tbaa !41
  %i.au = zext i8 %i.at to i32
  %4 = zext <12 x i8> %3 to <12 x i32>
  %i.av = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %4)
  %op.rdx = add nuw nsw i32 %i.av, %i.ao
  %op.rdx54 = add nuw nsw i32 %i.ar, %i.au
  %op.rdx55 = add nuw nsw i32 %op.rdx, %op.rdx54
  %i.aw = getelementptr inbounds nuw i8, ptr %.035, i64 16
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !41
  %i.ay = zext i8 %i.ax to i32
end_hunk_2
begin_hunk_3_@llvm.assume
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
end_hunk_3
