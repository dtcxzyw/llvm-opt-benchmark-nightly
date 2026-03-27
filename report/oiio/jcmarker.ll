begin_hunk_0
  %.035.in.v.v = select i1 %.not, i64 160, i64 192
  %.035.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v.v
  %.035.in = getelementptr inbounds [8 x i8], ptr %.035.in.v, i64 %i.a
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !81 ; 5 uses
  %i.c = icmp eq ptr %.035, null
  br i1 %i.c, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1

emit_marker.exit:                                 ; preds = %emit_byte.exit.i, %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %3 = load <16 x i8>, ptr %i.al, align 1, !tbaa !44
  %4 = zext <16 x i8> %3 to <16 x i32>
  %i.am = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %4) ; 3 uses
  %i.an = add nuw nsw i32 %i.am, 19               ; 2 uses
  %i.ao = lshr i32 %i.an, 8
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !40  ; 4 uses
  %i.aq = trunc nuw nsw i32 %i.ao to i8
end_hunk_1
begin_hunk_2
  br label %emit_byte.exit

.preheader:                                       ; preds = %emit_byte.exit41
  %.not48 = icmp eq i32 %i.am, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.035, i64 17
  %i.cg = zext nneg i32 %i.am to i64
  br label %bb.q

emit_byte.exit:                                   ; preds = %emit_byte.exit.preheader, %emit_byte.exit41
end_hunk_2
begin_hunk_3
declare i32 @llvm.vector.reduce.add.v32i32(<32 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_3
