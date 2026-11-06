Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/utf32_be?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1
@OnigEncodingUTF32_BE = dso_local global { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @utf32be_mbc_enc_len, ptr @.str, i32 4, i32 4, ptr @utf32be_is_mbc_newline, ptr @utf32be_mbc_to_code, ptr @utf32be_code_to_mbclen, ptr @utf32be_code_to_mbc, ptr @utf32be_mbc_case_fold, ptr @onigenc_unicode_apply_all_case_fold, ptr @utf32be_get_case_fold_codes_by_str, ptr @onigenc_unicode_property_name_to_ctype, ptr @onigenc_unicode_is_code_ctype, ptr @onigenc_utf16_32_get_ctype_code_range, ptr @utf32be_left_adjust_char_head, ptr @onigenc_always_false_is_allowed_reverse_match, ptr null, ptr null, ptr @is_valid_mbc_string, i32 18, i32 0, i32 0, [4 x i8] zeroinitializer }, align 8
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @utf32be_mbc_enc_len(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @utf32be_is_mbc_newline(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.b = icmp ult ptr %i.a, %1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %i.a, align 1, !tbaa !12
  %i.d = icmp eq i8 %i.c, 10
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load i8, ptr %0, align 1, !tbaa !12
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, -2147483648) i32 @utf32be_mbc_to_code(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !12
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.c, 16
  %i.h = shl nuw nsw i32 %i.f, 8
  %i.i = or disjoint i32 %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = zext i8 %i.k to i32
  %i.m = or disjoint i32 %i.i, %i.l
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !12
  %i.q = zext i8 %i.p to i32
  %i.r = or disjoint i32 %i.n, %i.q
  ret i32 %i.r
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @utf32be_code_to_mbclen(i32 %0) #0 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @utf32be_code_to_mbc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) #2 {
bb.a:
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  store i32 %2, ptr %1, align 1, !tbaa !12
  ret i32 4
}

; Function Attrs: nounwind uwtable
define internal i32 @utf32be_mbc_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !15     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %i.d = icmp sgt i8 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.a, align 1, !tbaa !12
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 0, ptr %3, align 1, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 0, ptr %i.m, align 1, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 0, ptr %i.n, align 1, !tbaa !12
  %i.p = load i8, ptr %i.b, align 1, !tbaa !12
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  store i8 %i.s, ptr %i.o, align 1, !tbaa !12
  %i.t = load ptr, ptr %1, align 8, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %1, align 8, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.v = tail call i32 @onigenc_unicode_mbc_case_fold(ptr noundef nonnull @OnigEncodingUTF32_BE, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 4, %bb.e ], [ %i.v, %bb.f ]
  ret i32 %.0
}

declare i32 @onigenc_unicode_apply_all_case_fold(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @utf32be_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3 {
bb.a:
  %i.a = tail call i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr noundef nonnull @OnigEncodingUTF32_BE, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  ret i32 %i.a
}

declare i32 @onigenc_unicode_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @onigenc_unicode_is_code_ctype(i32 noundef, i32 noundef) #4

declare i32 @onigenc_utf16_32_get_ctype_code_range(i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal ptr @utf32be_left_adjust_char_head(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp ugt ptr %1, %0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = srem i64 %i.c, 4
  %i.e = sub nsw i64 0, %i.d
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ %1, %bb.a ]
  ret ptr %.0
}

declare i32 @onigenc_always_false_is_allowed_reverse_match(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal i32 @is_valid_mbc_string(ptr noundef %0, ptr noundef %1) #3 {
bb.a:
  %i.a = tail call i32 @onigenc_length_check_is_valid_mbc_string(ptr noundef nonnull @OnigEncodingUTF32_BE, ptr noundef %0, ptr noundef %1) #6
  ret i32 %i.a
}

declare i32 @onigenc_unicode_mbc_case_fold(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @onigenc_length_check_is_valid_mbc_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!14, !14, i64 0}
end_hunk_0
