inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@encoding_CESU_8 = internal constant %struct.OnigEncodingTypeST { ptr @mbc_enc_len, ptr @.str, i32 6, i32 1, ptr @is_mbc_newline, ptr @mbc_to_code, ptr @code_to_mbclen, ptr @code_to_mbc, ptr @mbc_case_fold, ptr @onigenc_unicode_apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @onigenc_unicode_property_name_to_ctype, ptr @onigenc_unicode_is_code_ctype, ptr @get_ctype_code_range, ptr @left_adjust_char_head, ptr @onigenc_always_true_is_allowed_reverse_match, ptr @onigenc_unicode_case_map, i32 1, i32 1 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"CESU-8\00", align 1
@trans = internal unnamed_addr constant [8 x [256 x i8]] [[256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\07\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE"], align 16
@EncLen_CESU8 = internal unnamed_addr constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nounwind sspstrong uwtable
define void @Init_cesu_8() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_CESU_8) #6 ; 0 uses
  ret void
}

declare i32 @rb_enc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @mbc_enc_len(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %i.f = sext i8 %i.e to i64
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.e, -1
  %i.i = select i1 %i.h, i32 1, i32 -1
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %i.a, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !6
  %i.m = sub nsw i32 0, %i.l
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.a, align 1, !tbaa !10
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10    ; 4 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp slt i8 %i.s, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.s, -1
  %i.w = select i1 %i.v, i32 2, i32 -1
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq ptr %i.o, %1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.z = load i32, ptr %i.y, align 4, !tbaa !6
  %i.aa = icmp eq i8 %i.s, 4
  %i.ab = sub i32 1, %i.z
  %i.ac = select i1 %i.aa, i32 -5, i32 %i.ab
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.t
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.af = load i8, ptr %i.o, align 1, !tbaa !10
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 3 uses
  %i.aj = sext i8 %i.ai to i64
  %i.ak = icmp slt i8 %i.ai, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = icmp eq i8 %i.ai, -1
  %i.am = select i1 %i.al, i32 3, i32 -1
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.an = icmp eq ptr %i.ae, %1
  br i1 %i.an, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.aj
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aq = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10  ; 3 uses
  %i.au = sext i8 %i.at to i64
  %i.av = icmp slt i8 %i.at, 0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i8 %i.at, -1
  %i.ax = select i1 %i.aw, i32 4, i32 -1
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.ay = icmp eq ptr %i.ap, %1
  br i1 %i.ay, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.bb = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !10  ; 3 uses
  %i.bf = sext i8 %i.be to i64
  %i.bg = icmp slt i8 %i.be, 0
  br i1 %i.bg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bh = icmp eq i8 %i.be, -1
  %i.bi = select i1 %i.bh, i32 5, i32 -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bj = icmp eq ptr %i.ba, %1
  br i1 %i.bj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.bf
  %i.bl = load i8, ptr %i.ba, align 1, !tbaa !10
  %i.bm = zext i8 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.bp = icmp eq i8 %i.bo, -1
  %i.bq = select i1 %i.bp, i32 6, i32 -1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.n, %bb.k, %bb.r, %bb.p, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.w, %bb.f ], [ %i.ac, %bb.h ], [ %i.am, %bb.j ], [ %i.bq, %bb.r ], [ %i.ax, %bb.m ], [ -4, %bb.k ], [ %i.bi, %bb.p ], [ -3, %bb.n ], [ -2, %bb.q ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @is_mbc_newline(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #2 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -2, 1114112) i32 @mbc_to_code(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 7 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %i.f = sext i8 %i.e to i64
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.e, -1
  br i1 %i.h, label %mbc_enc_len.exit.thread29.a, label %mbc_enc_len.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = sub nsw i32 0, %i.k
  br label %mbc_enc_len.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.a, align 1, !tbaa !10    ; 4 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10    ; 4 uses
  %i.s = sext i8 %i.r to i64
  %i.t = icmp slt i8 %i.r, 0
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.u = icmp eq i8 %i.r, -1
  br i1 %i.u, label %mbc_enc_len.exit.thread31, label %mbc_enc_len.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %i.n, %1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = icmp eq i8 %i.r, 4
  %i.z = sub i32 1, %i.x
  br i1 %i.y, label %mbc_enc_len.exit.thread, label %mbc_enc_len.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ac = load i8, ptr %i.n, align 1, !tbaa !10   ; 3 uses
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 3 uses
  %i.ag = sext i8 %i.af to i64
  %i.ah = icmp slt i8 %i.af, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i8 %i.af, -1
  br i1 %i.ai, label %mbc_enc_len.exit.thread33, label %mbc_enc_len.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp eq ptr %i.ab, %1
  br i1 %i.aj, label %mbc_enc_len.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.am = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !10  ; 2 uses
  %i.aq = icmp slt i8 %i.ap, 0
  %i.ar = icmp eq ptr %i.al, %1
  %or.cond = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond, label %mbc_enc_len.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = zext nneg i8 %i.ap to i64
  %i.at = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.av = load i8, ptr %i.al, align 1, !tbaa !10  ; 2 uses
  %i.aw = zext i8 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !10  ; 2 uses
  %i.az = icmp slt i8 %i.ay, 0
  %i.ba = icmp eq ptr %i.au, %1
  %or.cond37 = select i1 %i.az, i1 true, i1 %i.ba
  br i1 %or.cond37, label %mbc_enc_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = zext nneg i8 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.bb
  %i.bd = load i8, ptr %i.au, align 1, !tbaa !10  ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !10
  %i.bh = icmp eq i8 %i.bg, -1
  br i1 %i.bh, label %mbc_enc_len.exit.thread35, label %mbc_enc_len.exit.thread

mbc_enc_len.exit:                                 ; preds = %bb.h, %bb.d
  %.0.i = phi i32 [ %i.z, %bb.h ], [ %i.l, %bb.d ]
  switch i32 %.0.i, label %mbc_enc_len.exit.thread [
    i32 1, label %mbc_enc_len.exit.thread29.a
    i32 2, label %mbc_enc_len.exit.mbc_enc_len.exit.thread31_crit_edge
    i32 3, label %mbc_enc_len.exit.mbc_enc_len.exit.thread33_crit_edge
    i32 6, label %mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge
  ]

mbc_enc_len.exit.mbc_enc_len.exit.thread31_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre50 = load i8, ptr %i.a, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread31

mbc_enc_len.exit.mbc_enc_len.exit.thread33_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre47 = load i8, ptr %i.a, align 1, !tbaa !10
  %.phi.trans.insert48 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre49 = load i8, ptr %.phi.trans.insert48, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread33

mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre = load i8, ptr %i.a, align 1, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre42 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !10
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre44 = load i8, ptr %.phi.trans.insert43, align 1, !tbaa !10
  %.phi.trans.insert45 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.pre46 = load i8, ptr %.phi.trans.insert45, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread35

mbc_enc_len.exit.thread29.a:                      ; preds = %bb.b, %mbc_enc_len.exit
  %i.bi = zext i8 %i.b to i32
  br label %bb.q

mbc_enc_len.exit.thread31:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread31_crit_edge, %bb.f
  %i.bj = phi i8 [ %.pre50, %mbc_enc_len.exit.mbc_enc_len.exit.thread31_crit_edge ], [ %i.o, %bb.f ]
  %i.bk = and i8 %i.b, 31
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = shl nuw nsw i32 %i.bl, 6
  %i.bn = and i8 %i.bj, 63
  %i.bo = zext nneg i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bm, %i.bo
  br label %bb.q

mbc_enc_len.exit.thread33:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread33_crit_edge, %bb.j
  %i.bq = phi i8 [ %.pre49, %mbc_enc_len.exit.mbc_enc_len.exit.thread33_crit_edge ], [ %i.ac, %bb.j ]
  %i.br = phi i8 [ %.pre47, %mbc_enc_len.exit.mbc_enc_len.exit.thread33_crit_edge ], [ %i.o, %bb.j ]
  %i.bs = and i8 %i.b, 15
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 12
  %i.bv = and i8 %i.br, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = or disjoint i32 %i.bx, %i.bu
  %i.bz = and i8 %i.bq, 63
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = or disjoint i32 %i.by, %i.ca
  br label %bb.q

mbc_enc_len.exit.thread35:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge, %bb.n
  %i.cc = phi i8 [ %.pre46, %mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge ], [ %i.bd, %bb.n ]
  %i.cd = phi i8 [ %.pre44, %mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge ], [ %i.av, %bb.n ]
  %i.ce = phi i8 [ %.pre42, %mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge ], [ %i.ac, %bb.n ]
  %i.cf = phi i8 [ %.pre, %mbc_enc_len.exit.mbc_enc_len.exit.thread35_crit_edge ], [ %i.o, %bb.n ]
  %i.cg = zext i8 %i.cf to i32
  %i.ch = and i8 %i.ce, 63
  %i.ci = zext nneg i8 %i.ch to i32
  %i.cj = zext i8 %i.cd to i32
  %i.ck = shl nuw nsw i32 %i.cj, 6
  %i.cl = and i8 %i.cc, 63
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = shl nuw nsw i32 %i.cg, 16
  %i.co = shl nuw nsw i32 %i.ci, 10
  %.masked = and i32 %i.cn, 983040
  %.masked40 = and i32 %i.ck, 960
  %i.cp = or disjoint i32 %.masked40, %i.cm
  %i.cq = add nuw nsw i32 %.masked, 65536
  %i.cr = or disjoint i32 %i.cq, %i.co
  %i.cs = or disjoint i32 %i.cr, %i.cp
  br label %bb.q

mbc_enc_len.exit.thread:                          ; preds = %bb.m, %bb.l, %bb.h, %bb.k, %bb.n, %bb.j, %bb.f, %bb.b, %mbc_enc_len.exit
  %i.ct = icmp ugt i8 %i.b, -3
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbc_enc_len.exit.thread
  %i.cu = icmp eq i8 %i.b, -2
  %i.cv = select i1 %i.cu, i32 -2, i32 -1
  br label %bb.q

bb.p:                                             ; preds = %mbc_enc_len.exit.thread
  %i.cw = zext i8 %i.b to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %mbc_enc_len.exit.thread35, %mbc_enc_len.exit.thread33, %mbc_enc_len.exit.thread31, %mbc_enc_len.exit.thread29.a
  %.0 = phi i32 [ %i.cv, %bb.o ], [ %i.cw, %bb.p ], [ %i.bi, %mbc_enc_len.exit.thread29.a ], [ %i.bp, %mbc_enc_len.exit.thread31 ], [ %i.cb, %mbc_enc_len.exit.thread33 ], [ %i.cs, %mbc_enc_len.exit.thread35 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 7) i32 @code_to_mbclen(i32 noundef %0, ptr readnone captures(none) %1) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 2048
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp ult i32 %0, 65536
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ult i32 %0, 1114112
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %switch = icmp ugt i32 %0, -3
  %spec.select = select i1 %switch, i32 1, i32 -401
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 6, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #4 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  store i8 %i.b, ptr %1, align 1, !tbaa !10
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !10
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %0, 65536
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 12
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = or disjoint i8 %i.j, -32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.k, ptr %1, align 1, !tbaa !10
  %i.m = lshr i32 %0, 6
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.p, ptr %i.l, align 1, !tbaa !10
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ult i32 %0, 1114112
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i32 %0, 10                          ; 2 uses
  %i.t = add nuw nsw i32 %i.s, 1984
  %i.u = or i32 %0, 56320                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 -19, ptr %1, align 1, !tbaa !10
  %i.w = lshr i32 %i.t, 6
  %i.x = trunc nuw nsw i32 %i.w to i8
  %i.y = or disjoint i8 %i.x, -128
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.y, ptr %i.v, align 1, !tbaa !10
  %i.aa = trunc i32 %i.s to i8
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, -128
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 -19, ptr %i.ad, align 1, !tbaa !10
  %i.af = lshr i32 %i.u, 6
  %i.ag = trunc i32 %i.af to i8
  %i.ah = and i8 %i.ag, 63
  %i.ai = or disjoint i8 %i.ah, -128
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.ai, ptr %i.ae, align 1, !tbaa !10
  br label %bb.l

bb.i:                                             ; preds = %bb.g
end_hunk_0
