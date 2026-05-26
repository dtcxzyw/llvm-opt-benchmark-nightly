inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@OnigEncodingUTF_8 = hidden local_unnamed_addr constant %struct.OnigEncodingTypeST { ptr @mbc_enc_len, ptr @.str, i32 4, i32 1, ptr @is_mbc_newline, ptr @mbc_to_code, ptr @code_to_mbclen, ptr @code_to_mbc, ptr @mbc_case_fold, ptr @onigenc_unicode_apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @onigenc_unicode_property_name_to_ctype, ptr @onigenc_unicode_is_code_ctype, ptr @get_ctype_code_range, ptr @left_adjust_char_head, ptr @onigenc_always_true_is_allowed_reverse_match, ptr @onigenc_unicode_case_map, i32 1, i32 1 }, align 8
@trans = internal unnamed_addr constant [8 x [256 x i8]] [[256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\05\06\06\06\07\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE"], align 16
@EncLen_UTF8 = internal unnamed_addr constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal i32 @mbc_enc_len(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !11
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = getelementptr i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11    ; 3 uses
  %i.f = sext i8 %i.e to i64
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.e, -1
  %i.i = select i1 %i.h, i32 1, i32 -1
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %i.a, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr [4 x i8], ptr @EncLen_UTF8, i64 %i.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = sub i32 0, %i.l
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr [256 x i8], ptr @trans, i64 %i.f
  %i.o = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.p = load i8, ptr %i.a, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr i8, ptr %i.n, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11    ; 3 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp slt i8 %i.s, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.s, -1
  %i.w = select i1 %i.v, i32 2, i32 -1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq ptr %i.o, %1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr [4 x i8], ptr @EncLen_UTF8, i64 %i.c
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %i.aa = sub i32 1, %i.z
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr [256 x i8], ptr @trans, i64 %i.t
  %i.ac = getelementptr i8, ptr %0, i64 3         ; 2 uses
  %i.ad = load i8, ptr %i.o, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11  ; 3 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = icmp slt i8 %i.ag, 0
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp eq i8 %i.ag, -1
  %i.ak = select i1 %i.aj, i32 3, i32 -1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.al = icmp eq ptr %i.ac, %1
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr [4 x i8], ptr @EncLen_UTF8, i64 %i.c
  %i.an = load i32, ptr %i.am, align 4, !tbaa !7
  %i.ao = sub i32 2, %i.an
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = getelementptr [256 x i8], ptr @trans, i64 %i.ah
  %i.aq = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr i8, ptr %i.ap, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11
  %i.au = icmp eq i8 %i.at, -1
  %i.av = select i1 %i.au, i32 4, i32 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.w, %bb.f ], [ %i.aa, %bb.h ], [ %i.ak, %bb.j ], [ %i.ao, %bb.l ], [ %i.av, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @is_mbc_newline(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !11
  %i.c = icmp eq i8 %i.b, 10
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal i32 @mbc_to_code(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1          ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !11      ; 6 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !11    ; 2 uses
  %i.f = sext i8 %i.e to i64
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %mbc_enc_len.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, %1
  br i1 %i.h, label %mbc_enc_len.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr [256 x i8], ptr @trans, i64 %i.f
  %i.j = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.k = load i8, ptr %i.a, align 1, !tbaa !11
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr i8, ptr %i.i, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !11    ; 3 uses
  %i.o = sext i8 %i.n to i64
  %i.p = icmp slt i8 %i.n, 0
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq i8 %i.n, -1
  br i1 %i.q, label %mbc_enc_len.exit.thread27, label %mbc_enc_len.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq ptr %i.j, %1
  br i1 %i.r, label %mbc_enc_len.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr [256 x i8], ptr @trans, i64 %i.o
  %i.t = getelementptr i8, ptr %0, i64 3          ; 2 uses
  %i.u = load i8, ptr %i.j, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr i8, ptr %i.s, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !11    ; 3 uses
  %i.y = sext i8 %i.x to i64
  %i.z = icmp slt i8 %i.x, 0
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i8 %i.x, -1
  br i1 %i.aa, label %mbc_enc_len.exit.thread27, label %mbc_enc_len.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.ab = icmp eq ptr %i.t, %1
  br i1 %i.ab, label %mbc_enc_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr [256 x i8], ptr @trans, i64 %i.y
  %i.ad = load i8, ptr %i.t, align 1, !tbaa !11
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr i8, ptr %i.ac, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !11
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %mbc_enc_len.exit.thread27, label %mbc_enc_len.exit.thread

mbc_enc_len.exit.thread:                          ; preds = %bb.d, %bb.g, %bb.i, %bb.a
  %i.ai = zext i8 %i.b to i32
  br label %bb.j

mbc_enc_len.exit.thread27:                        ; preds = %bb.d, %bb.g, %bb.i
  %.0.i.ph = phi i32 [ 2, %bb.d ], [ 3, %bb.g ], [ 4, %bb.i ]
  %i.aj = zext i8 %i.b to i32
  br label %.lr.ph.preheader

mbc_enc_len.exit:                                 ; preds = %bb.h, %bb.e, %bb.b
  %.sink = phi i32 [ 1, %bb.e ], [ 0, %bb.b ], [ 2, %bb.h ]
  %i.ak = getelementptr [4 x i8], ptr @EncLen_UTF8, i64 %i.c
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7
  %i.am = sub i32 %.sink, %i.al                   ; 2 uses
  %i.an = zext i8 %i.b to i32                     ; 2 uses
  %i.ao = icmp sgt i32 %i.am, 1
  br i1 %i.ao, label %.lr.ph.preheader, label %bb.j

.lr.ph.preheader:                                 ; preds = %mbc_enc_len.exit, %mbc_enc_len.exit.thread27
  %i.ap = phi i32 [ %i.aj, %mbc_enc_len.exit.thread27 ], [ %i.an, %mbc_enc_len.exit ]
  %.0.i29 = phi i32 [ %.0.i.ph, %mbc_enc_len.exit.thread27 ], [ %i.am, %mbc_enc_len.exit ] ; 3 uses
  %.01632.a = add i32 %.0.i29, -1                 ; 3 uses
  %i.aq = sub nsw i32 7, %.0.i29
  %notmask = shl nsw i32 -1, %i.aq
  %i.ar = xor i32 %notmask, -1
  %i.as = and i32 %i.ap, %i.ar                    ; 2 uses
  %i.at = add i32 %.0.i29, -2
  %xtraiter = and i32 %.01632.a, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.01636.prol = phi i32 [ %.016.prol, %.lr.ph.prol ], [ %.01632.a, %.lr.ph.preheader ]
  %.035.prol = phi i32 [ %i.ay, %.lr.ph.prol ], [ %i.as, %.lr.ph.preheader ]
  %.pn34.prol = phi ptr [ %.018.prol, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %.018.prol = getelementptr i8, ptr %.pn34.prol, i64 1 ; 3 uses
  %i.au = load i8, ptr %.018.prol, align 1, !tbaa !11
  %i.av = shl i32 %.035.prol, 6
  %i.aw = and i8 %i.au, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax            ; 3 uses
  %.016.prol = add i32 %.01636.prol, -1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !12

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %.01636.unr = phi i32 [ %.01632.a, %.lr.ph.preheader ], [ %.016.prol, %.lr.ph.prol ]
  %.035.unr = phi i32 [ %i.as, %.lr.ph.preheader ], [ %i.ay, %.lr.ph.prol ]
  %.pn34.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %.018.prol, %.lr.ph.prol ]
  %i.az = icmp ult i32 %i.at, 3
  br i1 %i.az, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01636 = phi i32 [ %.016.3, %.lr.ph ], [ %.01636.unr, %.lr.ph.prol.loopexit ]
  %.035 = phi i32 [ %i.bt, %.lr.ph ], [ %.035.unr, %.lr.ph.prol.loopexit ]
  %.pn34 = phi ptr [ %.018.3, %.lr.ph ], [ %.pn34.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.018 = getelementptr i8, ptr %.pn34, i64 1
  %i.ba = load i8, ptr %.018, align 1, !tbaa !11
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %.018.1 = getelementptr i8, ptr %.pn34, i64 2
  %i.bd = load i8, ptr %.018.1, align 1, !tbaa !11
  %i.be = shl i32 %.035, 12
  %i.bf = shl nuw nsw i32 %i.bc, 6
  %i.bg = or disjoint i32 %i.be, %i.bf
  %i.bh = and i8 %i.bd, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = or disjoint i32 %i.bg, %i.bi
  %.018.2 = getelementptr i8, ptr %.pn34, i64 3
  %i.bk = load i8, ptr %.018.2, align 1, !tbaa !11
  %i.bl = and i8 %i.bk, 63
  %i.bm = zext nneg i8 %i.bl to i32
  %.018.3 = getelementptr i8, ptr %.pn34, i64 4   ; 2 uses
  %i.bn = load i8, ptr %.018.3, align 1, !tbaa !11
  %i.bo = shl i32 %i.bj, 12
  %i.bp = shl nuw nsw i32 %i.bm, 6
  %i.bq = or disjoint i32 %i.bo, %i.bp
  %i.br = and i8 %i.bn, 63
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = or disjoint i32 %i.bq, %i.bs            ; 2 uses
  %.016.3 = add i32 %.01636, -4                   ; 2 uses
  %.not.3 = icmp eq i32 %.016.3, 0
  br i1 %.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !14

bb.j:                                             ; preds = %mbc_enc_len.exit.thread, %mbc_enc_len.exit
  %i.bu = phi i32 [ %i.ai, %mbc_enc_len.exit.thread ], [ %i.an, %mbc_enc_len.exit ]
  %i.bv = icmp ugt i8 %i.b, -3
  br i1 %i.bv, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp eq i8 %i.b, -2
  %i.bx = select i1 %i.bw, i32 -2, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.j, %bb.k
  %.017 = phi i32 [ %i.bu, %bb.j ], [ %i.bx, %bb.k ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.bt, %.lr.ph ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 5) i32 @code_to_mbclen(i32 noundef %0, ptr readnone captures(none) %1) #2 {
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
  %.0 = phi i32 [ %spec.select, %bb.e ], [ 1, %bb.a ], [ 2, %bb.b ], [ 3, %bb.c ], [ 4, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr readnone captures(none) %2) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i32 %0 to i8
  store i8 %i.b, ptr %1, align 1, !tbaa !11
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %0, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i32 %0, 6
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  %i.g = getelementptr i8, ptr %1, i64 1
  store i8 %i.f, ptr %1, align 1, !tbaa !11
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %0, 65536
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 12
  %i.j = trunc nuw nsw i32 %i.i to i8
  %i.k = or disjoint i8 %i.j, -32
  %i.l = getelementptr i8, ptr %1, i64 1
  store i8 %i.k, ptr %1, align 1, !tbaa !11
  %i.m = lshr i32 %0, 6
  %i.n = trunc i32 %i.m to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  %i.q = getelementptr i8, ptr %1, i64 2
  store i8 %i.p, ptr %i.l, align 1, !tbaa !11
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.r = icmp ult i32 %0, 1114112
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = lshr i32 %0, 18
  %i.t = trunc nuw nsw i32 %i.s to i8
  %i.u = or disjoint i8 %i.t, -16
  %i.v = getelementptr i8, ptr %1, i64 1
  store i8 %i.u, ptr %1, align 1, !tbaa !11
  %i.w = lshr i32 %0, 12
  %i.x = trunc i32 %i.w to i8
  %i.y = and i8 %i.x, 63
  %i.z = or disjoint i8 %i.y, -128
  %i.aa = getelementptr i8, ptr %1, i64 2
  store i8 %i.z, ptr %i.v, align 1, !tbaa !11
  %i.ab = lshr i32 %0, 6
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = and i8 %i.ac, 63
  %i.ae = or disjoint i8 %i.ad, -128
  %i.af = getelementptr i8, ptr %1, i64 3
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !11
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  switch i32 %0, label %bb.m [
    i32 -2, label %bb.j
end_hunk_0
