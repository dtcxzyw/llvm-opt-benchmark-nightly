begin_hunk_0
  %.035.in.v.v = select i1 %.not, i64 160, i64 192
  %.035.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v.v
  %.035.in = getelementptr inbounds [8 x i8], ptr %.035.in.v, i64 %i.a
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !81 ; 10 uses
  %i.c = icmp eq ptr %.035, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1

emit_marker.exit:                                 ; preds = %emit_byte.exit.i, %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %3 = load <8 x i8>, ptr %i.al, align 1, !tbaa !44
  %4 = getelementptr inbounds nuw i8, ptr %.035, i64 9
  %5 = load <4 x i8>, ptr %4, align 1, !tbaa !44
  %6 = getelementptr inbounds nuw i8, ptr %.035, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !44
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds nuw i8, ptr %.035, i64 14
  %10 = load i8, ptr %9, align 1, !tbaa !44
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds nuw i8, ptr %.035, i64 15
  %13 = load i8, ptr %12, align 1, !tbaa !44
  %14 = zext i8 %13 to i32
  %15 = zext <8 x i8> %3 to <8 x i32>             ; 2 uses
  %16 = zext <4 x i8> %5 to <4 x i32>
  %17 = shufflevector <8 x i32> %15, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = add nuw nsw <4 x i32> %17, %16
  %18 = shufflevector <4 x i32> %rdx.op, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %19 = shufflevector <8 x i32> %18, <8 x i32> %15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.am = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %19)
  %op.rdx = add nuw nsw i32 %i.am, %8
  %op.rdx54 = add nuw nsw i32 %11, %14
  %op.rdx55 = add i32 %op.rdx, %op.rdx54
  %20 = getelementptr inbounds nuw i8, ptr %.035, i64 16
  %21 = load i8, ptr %20, align 1, !tbaa !44
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %op.rdx55, %22            ; 3 uses
  %i.an = add nuw nsw i32 %23, 19                 ; 2 uses
  %i.ao = lshr i32 %i.an, 8
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !40  ; 4 uses
  %i.aq = trunc nuw nsw i32 %i.ao to i8
end_hunk_1
begin_hunk_2
  br label %emit_byte.exit

.preheader:                                       ; preds = %emit_byte.exit41
  %.not48 = icmp eq i32 %23, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.035, i64 17
  %i.cg = zext nneg i32 %23 to i64
  br label %bb.q

emit_byte.exit:                                   ; preds = %emit_byte.exit.preheader, %emit_byte.exit41
end_hunk_2
begin_hunk_3
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_3
