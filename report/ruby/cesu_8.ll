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
define internal range(i32 -2147483647, -2147483648) i32 @mbc_enc_len(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = zext nneg i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  %i.h = select i1 %i.g, i32 1, i32 -1
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = sub nsw i32 0, %i.k
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.a, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10    ; 4 uses
  %4 = zext nneg i8 %i.r to i64
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i8 %i.r, -1
  %i.u = select i1 %i.t, i32 2, i32 -1
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %i.n, %1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = icmp eq i8 %i.r, 4
  %i.z = sub i32 1, %i.x
  %i.aa = select i1 %i.y, i32 -5, i32 %i.z
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ad = load i8, ptr %i.n, align 1, !tbaa !10
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !10  ; 3 uses
  %5 = zext nneg i8 %i.ag to i64
  %i.ah = icmp slt i8 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp eq i8 %i.ag, -1
  %i.aj = select i1 %i.ai, i32 3, i32 -1
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.ak = icmp eq ptr %i.ac, %1
  br i1 %i.ak, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.an = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10  ; 3 uses
  %6 = zext nneg i8 %i.aq to i64
  %i.ar = icmp slt i8 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.as = icmp eq i8 %i.aq, -1
  %i.at = select i1 %i.as, i32 4, i32 -1
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.au = icmp eq ptr %i.am, %1
  br i1 %i.au, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %6
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.ax = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10  ; 3 uses
  %7 = zext nneg i8 %i.ba to i64
  %i.bb = icmp slt i8 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bc = icmp eq i8 %i.ba, -1
  %i.bd = select i1 %i.bc, i32 5, i32 -1
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.be = icmp eq ptr %i.aw, %1
  br i1 %i.be, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %7
  %i.bg = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !10
  %i.bk = icmp eq i8 %i.bj, -1
  %i.bl = select i1 %i.bk, i32 6, i32 -1
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.n, %bb.k, %bb.r, %bb.p, %bb.m, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.u, %bb.f ], [ %i.aa, %bb.h ], [ %i.aj, %bb.j ], [ %i.bl, %bb.r ], [ %i.at, %bb.m ], [ -4, %bb.k ], [ %i.bd, %bb.p ], [ -3, %bb.n ], [ -2, %bb.q ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @is_mbc_newline(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 {
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
define internal range(i32 -2, 1114112) i32 @mbc_to_code(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 7 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = zext nneg i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  br i1 %i.g, label %mbc_enc_len.exit.thread23, label %mbc_enc_len.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, %1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.j = load i32, ptr %i.i, align 4, !tbaa !6
  %i.k = sub nsw i32 0, %i.j
  br label %mbc_enc_len.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.n = load i8, ptr %i.a, align 1, !tbaa !10    ; 4 uses
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10    ; 4 uses
  %4 = zext nneg i8 %i.q to i64
  %i.r = icmp slt i8 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i8 %i.q, -1
  br i1 %i.s, label %mbc_enc_len.exit.thread25, label %mbc_enc_len.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.t = icmp eq ptr %i.m, %1
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @EncLen_CESU8, i64 %i.c
  %i.v = load i32, ptr %i.u, align 4, !tbaa !6
  %i.w = icmp eq i8 %i.q, 4
  %i.x = sub i32 1, %i.v
  br i1 %i.w, label %mbc_enc_len.exit.thread, label %mbc_enc_len.exit

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.aa = load i8, ptr %i.m, align 1, !tbaa !10   ; 3 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10  ; 3 uses
  %5 = zext nneg i8 %i.ad to i64
  %i.ae = icmp slt i8 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = icmp eq i8 %i.ad, -1
  br i1 %i.af, label %mbc_enc_len.exit.thread27, label %mbc_enc_len.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.ag = icmp eq ptr %i.z, %1
  br i1 %i.ag, label %mbc_enc_len.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.aj = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10  ; 2 uses
  %i.an = icmp slt i8 %i.am, 0
  %i.ao = icmp eq ptr %i.ai, %1
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %mbc_enc_len.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = zext nneg i8 %i.am to i64
  %i.aq = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 5 ; 2 uses
  %i.as = load i8, ptr %i.ai, align 1, !tbaa !10  ; 2 uses
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !10  ; 2 uses
  %i.aw = icmp slt i8 %i.av, 0
  %i.ax = icmp eq ptr %i.ar, %1
  %or.cond31 = select i1 %i.aw, i1 true, i1 %i.ax
  br i1 %or.cond31, label %mbc_enc_len.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = zext nneg i8 %i.av to i64
  %i.az = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.ay
  %i.ba = load i8, ptr %i.ar, align 1, !tbaa !10  ; 2 uses
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10
  %i.be = icmp eq i8 %i.bd, -1
  br i1 %i.be, label %mbc_enc_len.exit.thread29, label %mbc_enc_len.exit.thread

mbc_enc_len.exit:                                 ; preds = %bb.h, %bb.d
  %.0.i = phi i32 [ %i.x, %bb.h ], [ %i.k, %bb.d ]
  switch i32 %.0.i, label %mbc_enc_len.exit.thread [
    i32 1, label %mbc_enc_len.exit.thread23
    i32 2, label %mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge
    i32 3, label %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge
    i32 6, label %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge
  ]

mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre41 = load i8, ptr %i.a, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread25

mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre38 = load i8, ptr %i.a, align 1, !tbaa !10
  %.phi.trans.insert39 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre40 = load i8, ptr %.phi.trans.insert39, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread27

mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge: ; preds = %mbc_enc_len.exit
  %.pre = load i8, ptr %i.a, align 1, !tbaa !10
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.pre33 = load i8, ptr %.phi.trans.insert, align 1, !tbaa !10
  %.phi.trans.insert34 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre35 = load i8, ptr %.phi.trans.insert34, align 1, !tbaa !10
  %.phi.trans.insert36 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %.pre37 = load i8, ptr %.phi.trans.insert36, align 1, !tbaa !10
  br label %mbc_enc_len.exit.thread29

mbc_enc_len.exit.thread23:                        ; preds = %bb.b, %mbc_enc_len.exit
  %i.bf = zext i8 %i.b to i32
  br label %bb.q

mbc_enc_len.exit.thread25:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge, %bb.f
  %i.bg = phi i8 [ %.pre41, %mbc_enc_len.exit.mbc_enc_len.exit.thread25_crit_edge ], [ %i.n, %bb.f ]
  %i.bh = and i8 %i.b, 31
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 6
  %i.bk = and i8 %i.bg, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  br label %bb.q

mbc_enc_len.exit.thread27:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge, %bb.j
  %i.bn = phi i8 [ %.pre40, %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge ], [ %i.aa, %bb.j ]
  %i.bo = phi i8 [ %.pre38, %mbc_enc_len.exit.mbc_enc_len.exit.thread27_crit_edge ], [ %i.n, %bb.j ]
  %i.bp = and i8 %i.b, 15
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 12
  %i.bs = and i8 %i.bo, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = shl nuw nsw i32 %i.bt, 6
  %i.bv = or disjoint i32 %i.bu, %i.br
  %i.bw = and i8 %i.bn, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  br label %bb.q

mbc_enc_len.exit.thread29:                        ; preds = %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge, %bb.n
  %i.bz = phi i8 [ %.pre37, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.ba, %bb.n ]
  %i.ca = phi i8 [ %.pre35, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.as, %bb.n ]
  %i.cb = phi i8 [ %.pre33, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.aa, %bb.n ]
  %i.cc = phi i8 [ %.pre, %mbc_enc_len.exit.mbc_enc_len.exit.thread29_crit_edge ], [ %i.n, %bb.n ]
  %i.cd = zext i8 %i.cc to i32
  %i.ce = and i8 %i.cb, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = zext i8 %i.ca to i32
  %i.ch = shl nuw nsw i32 %i.cg, 6
  %i.ci = and i8 %i.bz, 63
  %i.cj = zext nneg i8 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cd, 16
  %i.cl = shl nuw nsw i32 %i.cf, 10
  %.masked = and i32 %i.ck, 983040
  %.masked32 = and i32 %i.ch, 960
  %i.cm = or disjoint i32 %.masked32, %i.cj
  %i.cn = add nuw nsw i32 %.masked, 65536
  %i.co = or disjoint i32 %i.cn, %i.cl
  %i.cp = or disjoint i32 %i.co, %i.cm
  br label %bb.q

mbc_enc_len.exit.thread:                          ; preds = %bb.m, %bb.l, %bb.h, %bb.k, %bb.n, %bb.j, %bb.f, %bb.b, %mbc_enc_len.exit
  %i.cq = icmp ugt i8 %i.b, -3
  br i1 %i.cq, label %bb.o, label %bb.p

bb.o:                                             ; preds = %mbc_enc_len.exit.thread
  %i.cr = icmp eq i8 %i.b, -2
  %i.cs = select i1 %i.cr, i32 -2, i32 -1
  br label %bb.q

bb.p:                                             ; preds = %mbc_enc_len.exit.thread
  %i.ct = zext i8 %i.b to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %mbc_enc_len.exit.thread29, %mbc_enc_len.exit.thread27, %mbc_enc_len.exit.thread25, %mbc_enc_len.exit.thread23
  %.0 = phi i32 [ %i.cs, %bb.o ], [ %i.ct, %bb.p ], [ %i.bf, %mbc_enc_len.exit.thread23 ], [ %i.bm, %mbc_enc_len.exit.thread25 ], [ %i.by, %mbc_enc_len.exit.thread27 ], [ %i.cp, %mbc_enc_len.exit.thread29 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 7) i32 @code_to_mbclen(i32 noundef %0, ptr nofree readnone captures(none) %1) #3 {
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
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #4 {
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
end_hunk_0
