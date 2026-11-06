Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/utf_32be?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@encoding_UTF_32BE = internal constant %struct.OnigEncodingTypeST { ptr @utf32be_mbc_enc_len, ptr @.str, i32 4, i32 4, ptr @utf32be_is_mbc_newline, ptr @utf32be_mbc_to_code, ptr @utf32be_code_to_mbclen, ptr @utf32be_code_to_mbc, ptr @utf32be_mbc_case_fold, ptr @onigenc_unicode_apply_all_case_fold, ptr @utf32be_get_case_fold_codes_by_str, ptr @onigenc_unicode_property_name_to_ctype, ptr @onigenc_unicode_is_code_ctype, ptr @onigenc_utf16_32_get_ctype_code_range, ptr @utf32be_left_adjust_char_head, ptr @onigenc_always_false_is_allowed_reverse_match, ptr @onigenc_unicode_case_map, i32 0, i32 1 }, align 8, !guid !10
@.str = private unnamed_addr constant [9 x i8] c"UTF-32BE\00", align 1, !guid !11
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind sspstrong uwtable
define void @Init_utf_32be() local_unnamed_addr #0 !guid !13 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_UTF_32BE) #6 ; 0 uses
  ret void
}

declare i32 @rb_enc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -2147483648, 2147483643) i32 @utf32be_mbc_enc_len(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #2 !guid !14 {
bb.a:
  %i.a = icmp ult ptr %1, %0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp slt i64 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %i.d to i32
  %i.g = add i32 %i.f, -5
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = load i8, ptr %0, align 1, !tbaa !12
  %i.i = zext i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.i, 16
  %i.n = shl nuw nsw i32 %i.l, 8
  %i.o = or disjoint i32 %i.n, %i.m               ; 2 uses
  %i.p = icmp samesign ult i32 %i.o, 4352
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !12
  %i.s = icmp eq i32 %i.o, 0
  %i.t = and i8 %i.r, -8
  %i.u = icmp eq i8 %i.t, -40
  %or.cond = and i1 %i.s, %i.u
  %spec.select = select i1 %or.cond, i32 -1, i32 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.c
  %.1 = phi i32 [ -1, %bb.a ], [ %i.g, %bb.c ], [ -1, %bb.d ], [ %spec.select, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @utf32be_is_mbc_newline(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 !guid !15 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, -2147483648) i32 @utf32be_mbc_to_code(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 !guid !16 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !12
  %i.b = zext i8 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !12
  %i.e = zext i8 %i.d to i32
  %i.f = shl nuw nsw i32 %i.b, 16
  %i.g = shl nuw nsw i32 %i.e, 8
  %i.h = or disjoint i32 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  %i.k = zext i8 %i.j to i32
  %i.l = or disjoint i32 %i.h, %i.k
  %i.m = shl nuw nsw i32 %i.l, 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1, !tbaa !12
  %i.p = zext i8 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p
  ret i32 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @utf32be_code_to_mbclen(i32 %0, ptr nofree readnone captures(none) %1) #3 !guid !17 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @utf32be_code_to_mbc(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree readnone captures(none) %2) #4 !guid !18 {
bb.a:
  %3 = tail call i32 @llvm.bswap.i32(i32 %0)
  store i32 %3, ptr %1, align 1, !tbaa !12
  ret i32 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @utf32be_mbc_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !guid !19 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 4 uses
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
  %i.t = load ptr, ptr %1, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %1, align 8, !tbaa !22
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.v = tail call i32 @onigenc_unicode_mbc_case_fold(ptr noundef %4, i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0 = phi i32 [ 4, %bb.e ], [ %i.v, %bb.f ]
  ret i32 %.0
}

declare i32 @onigenc_unicode_apply_all_case_fold(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @utf32be_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !guid !23 {
bb.a:
  %i.a = tail call i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr noundef %4, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  ret i32 %i.a
}

declare i32 @onigenc_unicode_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_unicode_is_code_ctype(i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @onigenc_utf16_32_get_ctype_code_range(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal ptr @utf32be_left_adjust_char_head(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #3 !guid !24 {
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

declare i32 @onigenc_always_false_is_allowed_reverse_match(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_unicode_case_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_unicode_mbc_case_fold(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_unicode_get_case_fold_codes_by_str(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i64 8839776963677846678}
!11 = !{i64 8762770405314976847}
!12 = !{!7, !7, i64 0}
!13 = !{i64 2157238833668783266}
!14 = !{i64 6283490506751143558}
!15 = !{i64 6767201055158820353}
!16 = !{i64 7177081993069261293}
!17 = !{i64 -2161609682976172049}
!18 = !{i64 -2236554244470555086}
!19 = !{i64 7662928037376736634}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"p1 omnipotent char", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{i64 -5162915133119056610}
!24 = !{i64 2656799256936780091}
end_hunk_0
