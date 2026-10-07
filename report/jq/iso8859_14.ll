Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/iso8859_14?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigPairCaseFoldCodes = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ISO-8859-14\00", align 1
@OnigEncodingISO_8859_14 = dso_local local_unnamed_addr global { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @onigenc_single_byte_mbc_enc_len, ptr @.str, i32 1, i32 1, ptr @onigenc_is_mbc_newline_0x0a, ptr @onigenc_single_byte_mbc_to_code, ptr @onigenc_single_byte_code_to_mbclen, ptr @onigenc_single_byte_code_to_mbc, ptr @mbc_case_fold, ptr @apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @onigenc_minimum_property_name_to_ctype, ptr @is_code_ctype, ptr @onigenc_not_support_get_ctype_code_range, ptr @onigenc_single_byte_left_adjust_char_head, ptr @onigenc_always_true_is_allowed_reverse_match, ptr null, ptr null, ptr @onigenc_always_true_is_valid_mbc_string, i32 5, i32 0, i32 0, [4 x i8] zeroinitializer }, align 8
@EncISO_8859_14_ToLowerCaseTable = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A2\A2\A3\A5\A5\AB\A7\B8\A9\BA\AB\BC\AD\AE\FF\B1\B1\B3\B3\B5\B5\B6\B9\B8\B9\BA\BF\BC\BE\BE\BF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@CaseFoldMap = internal constant [44 x %struct.OnigPairCaseFoldCodes] [%struct.OnigPairCaseFoldCodes { i32 161, i32 162 }, %struct.OnigPairCaseFoldCodes { i32 164, i32 165 }, %struct.OnigPairCaseFoldCodes { i32 166, i32 171 }, %struct.OnigPairCaseFoldCodes { i32 168, i32 184 }, %struct.OnigPairCaseFoldCodes { i32 170, i32 186 }, %struct.OnigPairCaseFoldCodes { i32 172, i32 188 }, %struct.OnigPairCaseFoldCodes { i32 175, i32 255 }, %struct.OnigPairCaseFoldCodes { i32 176, i32 177 }, %struct.OnigPairCaseFoldCodes { i32 178, i32 179 }, %struct.OnigPairCaseFoldCodes { i32 180, i32 181 }, %struct.OnigPairCaseFoldCodes { i32 183, i32 185 }, %struct.OnigPairCaseFoldCodes { i32 187, i32 191 }, %struct.OnigPairCaseFoldCodes { i32 189, i32 190 }, %struct.OnigPairCaseFoldCodes { i32 192, i32 224 }, %struct.OnigPairCaseFoldCodes { i32 193, i32 225 }, %struct.OnigPairCaseFoldCodes { i32 194, i32 226 }, %struct.OnigPairCaseFoldCodes { i32 195, i32 227 }, %struct.OnigPairCaseFoldCodes { i32 196, i32 228 }, %struct.OnigPairCaseFoldCodes { i32 197, i32 229 }, %struct.OnigPairCaseFoldCodes { i32 198, i32 230 }, %struct.OnigPairCaseFoldCodes { i32 199, i32 231 }, %struct.OnigPairCaseFoldCodes { i32 200, i32 232 }, %struct.OnigPairCaseFoldCodes { i32 201, i32 233 }, %struct.OnigPairCaseFoldCodes { i32 202, i32 234 }, %struct.OnigPairCaseFoldCodes { i32 203, i32 235 }, %struct.OnigPairCaseFoldCodes { i32 204, i32 236 }, %struct.OnigPairCaseFoldCodes { i32 205, i32 237 }, %struct.OnigPairCaseFoldCodes { i32 206, i32 238 }, %struct.OnigPairCaseFoldCodes { i32 207, i32 239 }, %struct.OnigPairCaseFoldCodes { i32 208, i32 240 }, %struct.OnigPairCaseFoldCodes { i32 209, i32 241 }, %struct.OnigPairCaseFoldCodes { i32 210, i32 242 }, %struct.OnigPairCaseFoldCodes { i32 211, i32 243 }, %struct.OnigPairCaseFoldCodes { i32 212, i32 244 }, %struct.OnigPairCaseFoldCodes { i32 213, i32 245 }, %struct.OnigPairCaseFoldCodes { i32 214, i32 246 }, %struct.OnigPairCaseFoldCodes { i32 215, i32 247 }, %struct.OnigPairCaseFoldCodes { i32 216, i32 248 }, %struct.OnigPairCaseFoldCodes { i32 217, i32 249 }, %struct.OnigPairCaseFoldCodes { i32 218, i32 250 }, %struct.OnigPairCaseFoldCodes { i32 219, i32 251 }, %struct.OnigPairCaseFoldCodes { i32 220, i32 252 }, %struct.OnigPairCaseFoldCodes { i32 221, i32 253 }, %struct.OnigPairCaseFoldCodes { i32 222, i32 254 }], align 16
@EncISO_8859_14_CtypeTable = internal unnamed_addr constant [256 x i16] [i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16908, i16 16905, i16 16904, i16 16904, i16 16904, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 17028, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 31906, i16 31906, i16 31906, i16 31906, i16 31906, i16 31906, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 16800, i16 16800, i16 16800, i16 16800, i16 20896, i16 16800, i16 30946, i16 30946, i16 30946, i16 30946, i16 30946, i16 30946, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 16800, i16 16800, i16 16800, i16 16800, i16 16392, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 644, i16 13474, i16 12514, i16 160, i16 13474, i16 12514, i16 13474, i16 160, i16 13474, i16 160, i16 13474, i16 12514, i16 13474, i16 416, i16 160, i16 13474, i16 13474, i16 12514, i16 13474, i16 12514, i16 13474, i16 12514, i16 160, i16 13474, i16 12514, i16 12514, i16 12514, i16 13474, i16 12514, i16 13474, i16 12514, i16 12514, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514], align 16

declare i32 @onigenc_single_byte_mbc_enc_len(ptr noundef) #0

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef) #0

declare i32 @onigenc_single_byte_mbc_to_code(ptr noundef, ptr noundef) #0

declare i32 @onigenc_single_byte_code_to_mbclen(i32 noundef) #0

declare i32 @onigenc_single_byte_code_to_mbc(i32 noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 1, 3) i32 @mbc_case_fold(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3) #1 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !14
  %i.b = load i8, ptr %i.a, align 1, !tbaa !15    ; 4 uses
  %i.c = icmp ne i8 %i.b, -33
  %i.d = and i32 %0, 1073741824
  %.not = icmp eq i32 %i.d, 0
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 115, ptr %3, align 1, !tbaa !15
  store i8 115, ptr %i.e, align 1, !tbaa !15
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %4 = trunc i32 %0 to i1
  %5 = icmp slt i8 %i.b, 0
  %or.cond15.not = and i1 %5, %4
  br i1 %or.cond15.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = zext i8 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr @EncISO_8859_14_ToLowerCaseTable, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %storemerge = phi i8 [ %i.h, %bb.d ], [ %i.b, %bb.c ]
  store i8 %storemerge, ptr %3, align 1, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.e ], [ 2, %bb.b ]
  %.pn = load ptr, ptr %1, align 8, !tbaa !14
  %storemerge13 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge13, ptr %1, align 8, !tbaa !14
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @apply_all_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2) #2 {
bb.a:
  %i.a = tail call i32 @onigenc_apply_all_case_fold_with_map(i32 noundef 44, ptr noundef nonnull @CaseFoldMap, i32 noundef 1, i32 noundef %0, ptr noundef %1, ptr noundef %2) #4
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = tail call i32 @onigenc_get_case_fold_codes_by_str_with_map(i32 noundef 44, ptr noundef nonnull @CaseFoldMap, i32 noundef 1, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  ret i32 %i.a
}

declare i32 @onigenc_minimum_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @is_code_ctype(i32 noundef %0, i32 noundef %1) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_14_CtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !17
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @onigenc_not_support_get_ctype_code_range(i32 noundef, ptr noundef, ptr noundef) #0

declare ptr @onigenc_single_byte_left_adjust_char_head(ptr noundef, ptr noundef) #0

declare i32 @onigenc_always_true_is_allowed_reverse_match(ptr noundef, ptr noundef) #0

declare i32 @onigenc_always_true_is_valid_mbc_string(ptr noundef, ptr noundef) #0

declare i32 @onigenc_apply_all_case_fold_with_map(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @onigenc_get_case_fold_codes_by_str_with_map(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!8, !8, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!16, !16, i64 0}
end_hunk_0
