Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qemu-pixman?download=true
inline.NumInlined: 8
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@qemu_pixman_linebuf_create
define dso_local nonnull ptr @qemu_pixman_linebuf_create(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pixman_image_create_bits(i32 noundef %0, i32 noundef %1, i32 noundef 1, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i32 noundef 198, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_pixman_linebuf_create) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

declare ptr @pixman_image_create_bits(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_pixman_linebuf_fill(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %3 to i16
  %i.b = trunc i32 %4 to i16
  %i.c = trunc i32 %2 to i16
  tail call void @pixman_image_composite(i32 noundef 1, ptr noundef %1, ptr noundef null, ptr noundef %0, i16 noundef signext %i.a, i16 noundef signext %i.b, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef zeroext %i.c, i16 noundef zeroext 1) #10
  ret void
}

declare void @pixman_image_composite(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qemu_pixman_mirror_create(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pixman_image_get_width(ptr noundef %1) #10
  %i.b = tail call i32 @pixman_image_get_height(ptr noundef %1) #10
  %i.c = tail call i32 @pixman_image_get_stride(ptr noundef %1) #10
  %i.d = tail call ptr @pixman_image_create_bits(i32 noundef %0, i32 noundef %i.a, i32 noundef %i.b, ptr noundef null, i32 noundef %i.c) #10
  ret ptr %i.d
}

declare i32 @pixman_image_get_width(ptr noundef) local_unnamed_addr #5

declare i32 @pixman_image_get_height(ptr noundef) local_unnamed_addr #5

declare i32 @pixman_image_get_stride(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_pixman_image_unref(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @pixman_image_unref(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare i32 @pixman_image_unref(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @qemu_pixman_glyph_from_vgafont(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pixman_image_create_bits(i32 noundef 134316032, i32 noundef 8, i32 noundef %0, ptr noundef null, i32 noundef 0) #10 ; 2 uses
  %i.b = tail call ptr @pixman_image_get_data(ptr noundef %i.a) #10
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %.preheader.preheader, label %._crit_edge

.preheader.preheader:                             ; preds = %bb.a
  %i.d = mul i32 %2, %0
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.023 = phi i32 [ %i.ae, %.preheader ], [ 0, %.preheader.preheader ]
  %.01722 = phi ptr [ %i.ad, %.preheader ], [ %i.b, %.preheader.preheader ] ; 9 uses
  %.01821 = phi ptr [ %i.af, %.preheader ], [ %i.f, %.preheader.preheader ] ; 9 uses
  %i.g = load i8, ptr %.01821, align 1
  %.lobit = ashr i8 %i.g, 7
  store i8 %.lobit, ptr %.01722, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %.01722, i64 1
  %i.i = load i8, ptr %.01821, align 1
  %i.j = shl i8 %i.i, 1
  %sext = ashr i8 %i.j, 7
  store i8 %sext, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %.01722, i64 2
  %i.l = load i8, ptr %.01821, align 1
  %i.m = shl i8 %i.l, 2
  %sext24 = ashr i8 %i.m, 7
  store i8 %sext24, ptr %i.k, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %.01722, i64 3
  %i.o = load i8, ptr %.01821, align 1
  %i.p = shl i8 %i.o, 3
  %sext25 = ashr i8 %i.p, 7
  store i8 %sext25, ptr %i.n, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01722, i64 4
  %i.r = load i8, ptr %.01821, align 1
  %i.s = shl i8 %i.r, 4
  %sext26 = ashr i8 %i.s, 7
  store i8 %sext26, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.01722, i64 5
  %i.u = load i8, ptr %.01821, align 1
  %i.v = shl i8 %i.u, 5
  %sext27 = ashr i8 %i.v, 7
  store i8 %sext27, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.01722, i64 6
  %i.x = load i8, ptr %.01821, align 1
  %i.y = shl i8 %i.x, 6
  %sext28 = ashr i8 %i.y, 7
  store i8 %sext28, ptr %i.w, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.01722, i64 7
  %i.aa = load i8, ptr %.01821, align 1
  %i.ab = and i8 %i.aa, 1
  %i.ac = sub nsw i8 0, %i.ab
  store i8 %i.ac, ptr %i.z, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.01722, i64 8
  %i.ae = add nuw nsw i32 %.023, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01821, i64 1
  %exitcond.not = icmp eq i32 %i.ae, %0
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !8

._crit_edge:                                      ; preds = %.preheader, %bb.a
  ret ptr %i.a
}

declare ptr @pixman_image_get_data(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_pixman_glyph_render(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pixman_image_create_solid_fill(ptr noundef %2) #10 ; 2 uses
  %i.b = tail call ptr @pixman_image_create_solid_fill(ptr noundef %3) #10 ; 2 uses
  %i.c = mul i32 %6, %4
  %i.d = trunc i32 %i.c to i16                    ; 2 uses
  %i.e = mul i32 %7, %5
  %i.f = trunc i32 %i.e to i16                    ; 2 uses
  %i.g = trunc i32 %6 to i16                      ; 2 uses
  %i.h = trunc i32 %7 to i16                      ; 2 uses
  tail call void @pixman_image_composite(i32 noundef 1, ptr noundef %i.b, ptr noundef null, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext %i.d, i16 noundef signext %i.f, i16 noundef zeroext %i.g, i16 noundef zeroext %i.h) #10
  tail call void @pixman_image_composite(i32 noundef 3, ptr noundef %i.a, ptr noundef %0, ptr noundef %1, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext %i.d, i16 noundef signext %i.f, i16 noundef zeroext %i.g, i16 noundef zeroext %i.h) #10
  %i.i = tail call i32 @pixman_image_unref(ptr noundef %i.a) #10 ; 0 uses
  %i.j = tail call i32 @pixman_image_unref(ptr noundef %i.b) #10 ; 0 uses
  ret void
}

declare ptr @pixman_image_create_solid_fill(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @qemu_pixman_image_new_shareable(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %8, align 8
  store ptr %7, ptr %i.a, align 8
  %i.b = icmp eq ptr %7, null
  %i.c = icmp eq ptr %7, @error_fatal
  %or.cond = or i1 %i.b, %i.c
  %spec.select = select i1 %or.cond, ptr %8, ptr %7 ; 3 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.qemu_pixman_image_new_shareable, ptr noundef nonnull @.str.1) #10
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %bb.d, label %bb.e, !prof !10

bb.d:                                             ; preds = %bb.c
  tail call void @g_return_if_fail_warning(ptr noundef null, ptr noundef nonnull @__func__.qemu_pixman_image_new_shareable, ptr noundef nonnull @.str.2) #10
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not.i = icmp eq i32 %6, 0
  br i1 %.not.i, label %bb.f, label %qemu_pixman_image_calc_size.exit

bb.f:                                             ; preds = %bb.e
  %i.d = lshr i32 %3, 24
  %i.e = lshr i32 %3, 22
  %i.f = and i32 %i.e, 3
  %i.g = shl nuw nsw i32 %i.d, %i.f
  %i.h = tail call i32 @llvm.abs.i32(i32 %4, i1 false)
  %i.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.h, i32 %i.g) ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  %i.k = extractvalue { i32, i1 } %i.i, 0         ; 3 uses
  %.lobit.i.i = lshr i32 %4, 31
  %i.l = add nuw i32 %.lobit.i.i, 2147483647
  %i.m = icmp ugt i32 %i.k, %i.l
  %i.n = or i1 %i.j, %i.m
  br i1 %i.n, label %qemu_pixman_image_calc_size.exit.thread, label %bb.g, !prof !10

bb.g:                                             ; preds = %bb.f
  %i.o = icmp slt i32 %4, 0
  %i.p = sub i32 0, %i.k
  %i.q = select i1 %i.o, i32 %i.p, i32 %i.k
  %9 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.q, i32 31) ; 2 uses
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %qemu_pixman_image_calc_size.exit.thread, label %qemu_pixman_stride.exit.i, !prof !10

qemu_pixman_stride.exit.i:                        ; preds = %bb.g
  %11 = extractvalue { i32, i1 } %9, 0            ; 2 uses
  %i.r = sdiv i32 %11, 32
  %i.s = shl nsw i32 %i.r, 2
  %i.t = icmp slt i32 %11, -31
  br i1 %i.t, label %qemu_pixman_image_calc_size.exit.thread, label %qemu_pixman_image_calc_size.exit

qemu_pixman_image_calc_size.exit:                 ; preds = %bb.e, %qemu_pixman_stride.exit.i
  %.045 = phi i32 [ %i.s, %qemu_pixman_stride.exit.i ], [ %6, %bb.e ] ; 2 uses
  %i.u = sext i32 %5 to i64
  %i.v = sext i32 %.045 to i64
  %i.w = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %12 = extractvalue { i64, i1 } %i.w, 0          ; 2 uses
  br i1 %i.x, label %qemu_pixman_image_calc_size.exit.thread, label %bb.h

qemu_pixman_image_calc_size.exit.thread:          ; preds = %bb.f, %bb.g, %qemu_pixman_stride.exit.i, %qemu_pixman_image_calc_size.exit
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @__func__.qemu_pixman_image_new_shareable, ptr noundef nonnull @.str.3) #10
  br label %bb.l

bb.h:                                             ; preds = %qemu_pixman_image_calc_size.exit
  %i.y = call ptr @qemu_memfd_alloc(ptr noundef %2, i64 noundef %12, i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %spec.select) #10 ; 3 uses
  %.not38 = icmp eq ptr %i.y, null
  br i1 %.not38, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = call ptr @pixman_image_create_bits(i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.y, i32 noundef %.045) #10 ; 3 uses
  store ptr %i.z, ptr %0, align 8
  %.not39 = icmp eq ptr %i.z, null
  br i1 %.not39, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str, i32 noundef 342, ptr noundef nonnull @__func__.qemu_pixman_image_new_shareable, ptr noundef nonnull @.str.4) #10
  %i.aa = load i32, ptr %1, align 4
  call void @qemu_memfd_free(ptr noundef nonnull %i.y, i64 noundef %12, i32 noundef %i.aa) #10
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ab = load i32, ptr %1, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = inttoptr i64 %i.ac to ptr
  call void @pixman_image_set_destroy_function(ptr noundef nonnull %i.z, ptr noundef nonnull @qemu_pixman_shared_image_destroy, ptr noundef %i.ad) #10
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %qemu_pixman_image_calc_size.exit.thread, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ false, %bb.b ], [ false, %qemu_pixman_image_calc_size.exit.thread ], [ false, %bb.d ], [ false, %bb.h ]
  %.val = load ptr, ptr %8, align 8
  %.val40 = load ptr, ptr %i.a, align 8
  call void @error_propagate(ptr noundef %.val40, ptr noundef %.val) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  ret i1 %.0
}

declare void @g_return_if_fail_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

declare void @pixman_image_set_destroy_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @qemu_pixman_shared_image_destroy(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = trunc i64 %i.a to i32
  %i.c = tail call ptr @pixman_image_get_data(ptr noundef %0) #10
  %i.d = tail call i32 @pixman_image_get_height(ptr noundef %0) #10
  %i.e = tail call i32 @pixman_image_get_stride(ptr noundef %0) #10
  %i.f = mul i32 %i.e, %i.d
  %i.g = sext i32 %i.f to i64
  tail call void @qemu_memfd_free(ptr noundef %i.c, i64 noundef %i.g, i32 noundef %i.b) #10
  ret void
}

declare void @error_propagate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #7

declare ptr @qemu_memfd_alloc(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @qemu_memfd_free(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"auto-init"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
