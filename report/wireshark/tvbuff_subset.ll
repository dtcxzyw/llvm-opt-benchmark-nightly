Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tvbuff_subset?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@tvb_new_subset_length:bb.a
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %i.h, i64 68
  store i32 %i.g, ptr %i.k, align 4
  store ptr %0, ptr %i.i, align 8
  %i.l = getelementptr i8, ptr %i.h, i64 40
  store i32 %i.g, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %i.o = sub i32 %i.n, %1
  %..i = call i32 @llvm.umin.i32(i32 %2, i32 %i.o)
  %i.p = getelementptr i8, ptr %i.h, i64 48
  store i32 %..i, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.h, i64 20
  store i32 %i.r, ptr %i.s, align 4
  %i.t = getelementptr i8, ptr %i.h, i64 44
  store i32 %2, ptr %i.t, align 4
  %i.u = getelementptr i8, ptr %i.h, i64 16
  store i8 1, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = zext i32 %1 to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.h, i64 32
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = load i32, ptr %i.q, align 4
  %i.ab = and i32 %i.aa, 2
  %.not33.i = icmp eq i32 %i.ab, 0
  br i1 %.not33.i, label %tvb_new_with_subset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %0, i64 52
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = add i32 %i.ad, %1
  %i.af = getelementptr i8, ptr %i.h, i64 52
  store i32 %i.ae, ptr %i.af, align 4
  br label %tvb_new_with_subset.exit

tvb_new_with_subset.exit:                         ; preds = %bb.h, %bb.i
  %i.ag = getelementptr i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = getelementptr i8, ptr %i.h, i64 24
  store ptr %i.ah, ptr %i.ai, align 8
  call void @tvb_add_to_chain(ptr noundef nonnull %0, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %i.h
}

; Function Attrs: null_pointer_is_valid
declare void @tvb_validate_offset_and_remaining(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @tvb_new_subset_remaining(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !6, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @.str.2) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @tvb_validate_offset_and_remaining(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.a)
  %i.e = getelementptr i8, ptr %0, i64 44
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ult i32 %i.f, %1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #5
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = sub nuw i32 %i.f, %1                     ; 2 uses
  %i.i = load i32, ptr %i.a, align 4              ; 2 uses
  %i.j = call ptr @tvb_new(ptr noundef nonnull @tvb_subset_ops) ; 13 uses
  %i.k = getelementptr i8, ptr %i.j, i64 56
  %i.l = getelementptr i8, ptr %i.j, i64 64
  store i32 %1, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %i.j, i64 68
  store i32 %i.i, ptr %i.m, align 4
  store ptr %0, ptr %i.k, align 8
  %i.n = getelementptr i8, ptr %i.j, i64 40
  store i32 %i.i, ptr %i.n, align 8
  %i.o = getelementptr i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8
  %i.q = sub i32 %i.p, %1
  %..i = call i32 @llvm.umin.i32(i32 %i.h, i32 %i.q)
  %i.r = getelementptr i8, ptr %i.j, i64 48
  store i32 %..i, ptr %i.r, align 8
  %i.s = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = getelementptr i8, ptr %i.j, i64 20
  store i32 %i.t, ptr %i.u, align 4
  %i.v = getelementptr i8, ptr %i.j, i64 44
  store i32 %i.h, ptr %i.v, align 4
  %i.w = getelementptr i8, ptr %i.j, i64 16
  store i8 1, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = zext i32 %1 to i64
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.j, i64 32
  store ptr %i.aa, ptr %i.ab, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = load i32, ptr %i.s, align 4
  %i.ad = and i32 %i.ac, 2
  %.not33.i = icmp eq i32 %i.ad, 0
  br i1 %.not33.i, label %tvb_new_with_subset.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %0, i64 52
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add i32 %i.af, %1
  %i.ah = getelementptr i8, ptr %i.j, i64 52
  store i32 %i.ag, ptr %i.ah, align 4
  br label %tvb_new_with_subset.exit

tvb_new_with_subset.exit:                         ; preds = %bb.h, %bb.i
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.j, i64 24
  store ptr %i.aj, ptr %i.ak, align 8
  call void @tvb_add_to_chain(ptr noundef nonnull %0, ptr noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret ptr %i.j
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden ptr @tvb_new_proxy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = tail call ptr @tvb_new(ptr noundef nonnull @tvb_subset_ops) ; 12 uses
  %i.f = getelementptr i8, ptr %i.e, i64 56
  %i.g = getelementptr i8, ptr %i.e, i64 64
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 68
  store i32 %i.d, ptr %i.h, align 4
  store ptr %0, ptr %i.f, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 40
  store i32 %i.d, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 48
  %i.k = load i32, ptr %i.j, align 8
  %..i = tail call i32 @llvm.umin.i32(i32 %i.b, i32 %i.k)
  %i.l = getelementptr i8, ptr %i.e, i64 48
  store i32 %..i, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr i8, ptr %i.e, i64 20
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr i8, ptr %i.e, i64 44
  store i32 %i.b, ptr %i.p, align 4
  %i.q = getelementptr i8, ptr %i.e, i64 16
  store i8 1, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.e, i64 32
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.u = load i32, ptr %i.m, align 4
  %i.v = and i32 %i.u, 2
  %.not33.i = icmp eq i32 %i.v, 0
  br i1 %.not33.i, label %tvb_new_with_subset.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 52
  %i.x = load i32, ptr %i.w, align 4
  %i.y = getelementptr i8, ptr %i.e, i64 52
  store i32 %i.x, ptr %i.y, align 4
  br label %tvb_new_with_subset.exit

tvb_new_with_subset.exit:                         ; preds = %bb.d, %bb.e
  %1 = getelementptr i8, ptr %0, i64 24
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr i8, ptr %i.e, i64 24
  store ptr %2, ptr %3, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.z = tail call ptr @tvb_new_real_data(ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %tvb_new_with_subset.exit
  %.0 = phi ptr [ %i.e, %tvb_new_with_subset.exit ], [ %i.z, %bb.f ] ; 3 uses
  %i.aa = getelementptr i8, ptr %.0, i64 24
  store ptr %.0, ptr %i.aa, align 8
  ret ptr %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal i32 @subset_offset(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %1
  %i.f = tail call i32 @tvb_offset_from_real_beginning_counter(ptr noundef %i.b, i32 noundef %i.e)
  ret i32 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @subset_get_ptr(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %1
  %i.f = tail call ptr @tvb_get_ptr(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %2)
  ret ptr %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @subset_memcpy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %2
  %i.f = zext i32 %3 to i64
  %i.g = tail call ptr @tvb_memcpy(ptr noundef %i.b, ptr noundef %1, i32 noundef %i.e, i64 noundef %i.f)
  ret ptr %i.g
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @subset_find_uint8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %1
  %i.f = tail call zeroext i1 @tvb_find_uint8_length(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %2, i8 noundef zeroext %3, ptr noundef %4)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8
  %i.h = load i32, ptr %4, align 4
  %i.i = sub i32 %i.h, %i.g
  store i32 %i.i, ptr %4, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @subset_pbrk_uint8(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %1
  %i.f = tail call zeroext i1 @tvb_ws_mempbrk_uint8_length(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.c, align 8
  %i.h = load i32, ptr %4, align 4
  %i.i = sub i32 %i.h, %i.g
  store i32 %i.i, ptr %4, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.f
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal ptr @subset_clone(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add i32 %i.d, %1
  %i.f = tail call ptr @tvb_clone_offset_len(ptr noundef %i.b, i32 noundef %i.e, i32 noundef %2)
  ret ptr %i.f
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_offset_from_real_beginning_counter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_memcpy(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_find_uint8_length(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tvb_ws_mempbrk_uint8_length(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_clone_offset_len(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = !{i8 0, i8 2}
!7 = !{}
end_hunk_0
