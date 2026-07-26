inline.NumInlined: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@encoding_Emacs_Mule = internal constant %struct.OnigEncodingTypeST { ptr @mbc_enc_len, ptr @.str, i32 4, i32 1, ptr @onigenc_is_mbc_newline_0x0a, ptr @mbc_to_code, ptr @code_to_mbclen, ptr @code_to_mbc, ptr @mbc_case_fold, ptr @onigenc_ascii_apply_all_case_fold, ptr @onigenc_ascii_get_case_fold_codes_by_str, ptr @onigenc_minimum_property_name_to_ctype, ptr @is_code_ctype, ptr @onigenc_not_support_get_ctype_code_range, ptr @left_adjust_char_head, ptr @onigenc_always_true_is_allowed_reverse_match, ptr @onigenc_ascii_only_case_map, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [11 x i8] c"Emacs-Mule\00", align 1
@trans = internal unnamed_addr constant [7 x [256 x i8]] [[256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\04\04\05\06\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\02\02\02\02\02\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\02\02\02\02\02\02\02\02\02\02\FE"], align 16
@EncLen_EmacsMule = internal unnamed_addr constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1], align 16
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1
@OnigEncAsciiCtypeTable = external local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind sspstrong uwtable
define void @Init_emacs_mule() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_Emacs_Mule) #6 ; 0 uses
  ret void
}

declare i32 @rb_enc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @mbc_enc_len(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = sext i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  %i.h = select i1 %i.g, i32 1, i32 -1
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EmacsMule, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = sub nsw i32 0, %i.k
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.o = load i8, ptr %i.a, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !10    ; 3 uses
  %4 = sext i8 %i.r to i64
  %i.s = icmp slt i8 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = icmp eq i8 %i.r, -1
  %i.u = select i1 %i.t, i32 2, i32 -1
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %i.n, %1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EmacsMule, i64 %i.c
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = sub nsw i32 1, %i.x
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ab = load i8, ptr %i.n, align 1, !tbaa !10
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10  ; 3 uses
  %5 = sext i8 %i.ae to i64
  %i.af = icmp slt i8 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp eq i8 %i.ae, -1
  %i.ah = select i1 %i.ag, i32 3, i32 -1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp eq ptr %i.aa, %1
  br i1 %i.ai, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EmacsMule, i64 %i.c
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !6
  %i.al = sub nsw i32 2, %i.ak
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.an = load i8, ptr %i.aa, align 1, !tbaa !10
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !10
  %i.ar = icmp eq i8 %i.aq, -1
  %i.as = select i1 %i.ar, i32 4, i32 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.u, %bb.f ], [ %i.y, %bb.h ], [ %i.ah, %bb.j ], [ %i.al, %bb.l ], [ %i.as, %bb.m ]
  ret i32 %.0
}

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @mbc_to_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %0, %1
  br i1 %i.f, label %select.unfold, label %.preheader.thread

.preheader.thread:                                ; preds = %bb.b
  %i.g = load i8, ptr %0, align 1, !tbaa !10
  %i.h = zext i8 %i.g to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 @onigenc_mbclen(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2) #6
  br label %select.unfold

select.unfold:                                    ; preds = %bb.b, %bb.c
  %i.j = phi i32 [ %i.i, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %i.k = load i8, ptr %0, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp eq i32 %i.j, 1
  br i1 %i.m, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %select.unfold
  %.02326 = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = icmp sgt i32 %i.j, 1
  %.not27 = icmp ult ptr %.02326, %1
  %or.cond28 = select i1 %i.n, i1 %.not27, i1 false
  br i1 %or.cond28, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02331 = phi ptr [ %.023, %.lr.ph ], [ %.02326, %.preheader ] ; 2 uses
  %.030 = phi i32 [ %i.r, %.lr.ph ], [ %i.l, %.preheader ]
  %.02229 = phi i32 [ %i.s, %.lr.ph ], [ 1, %.preheader ]
  %i.o = load i8, ptr %.02331, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = shl i32 %.030, 8
  %i.r = or disjoint i32 %i.q, %i.p               ; 2 uses
  %i.s = add nuw nsw i32 %.02229, 1               ; 2 uses
  %.023 = getelementptr inbounds nuw i8, ptr %.02331, i64 1 ; 2 uses
  %i.t = icmp slt i32 %i.s, %i.j
  %.not = icmp ult ptr %.023, %1
  %or.cond = select i1 %i.t, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !16

.loopexit:                                        ; preds = %.lr.ph, %.preheader.thread, %.preheader, %select.unfold
  %.021 = phi i32 [ %i.l, %select.unfold ], [ %i.l, %.preheader ], [ %i.h, %.preheader.thread ], [ %i.r, %.lr.ph ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -400, 5) i32 @code_to_mbclen(i32 noundef %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %0, 0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 8388608
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = and i32 %0, 32768
  %.not7 = icmp eq i32 %i.d, 0
  %. = select i1 %.not7, i32 -400, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.d ], [ 3, %bb.c ], [ 1, %bb.a ], [ 4, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %.not = icmp ult i32 %0, 16777216
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = lshr i32 %0, 24
  %i.b = trunc nuw i32 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.b, ptr %1, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.c, %bb.b ], [ %1, %bb.a ]    ; 3 uses
  %i.d = and i32 %0, 16711680
  %.not27 = icmp eq i32 %i.d, 0
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = lshr i32 %0, 16
  %i.f = trunc i32 %i.e to i8
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.f, ptr %.0, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.g, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.h = and i32 %0, 65280
  %.not28 = icmp eq i32 %i.h, 0
  br i1 %.not28, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = lshr i32 %0, 8
  %i.j = trunc i32 %i.i to i8
  %i.k = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.j, ptr %.1, align 1, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi ptr [ %i.k, %bb.f ], [ %.1, %bb.e ]   ; 2 uses
  %i.l = trunc i32 %0 to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  store i8 %i.l, ptr %.2, align 1, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = icmp ult ptr %1, %i.m
  %spec.select = select i1 %i.s, i32 %i.o, i32 0
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.t = tail call i32 @onigenc_mbclen(ptr noundef %1, ptr noundef nonnull %i.m, ptr noundef nonnull %2) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.u = phi i32 [ %i.t, %bb.i ], [ %spec.select, %bb.h ]
  %i.v = sext i32 %i.u to i64
  %i.w = ptrtoint ptr %i.m to i64
  %i.x = ptrtoint ptr %1 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %.not29 = icmp eq i64 %i.y, %i.v
  %i.z = trunc nsw i64 %i.y to i32
  %.024 = select i1 %.not29, i32 %i.z, i32 -400
  ret i32 %.024
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @mbc_case_fold(i32 %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree readnone captures(none) %4) #4 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = load ptr, ptr %1, align 8, !tbaa !18     ; 15 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = load i8, ptr %i.b, align 1, !tbaa !10    ; 3 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  store i8 %i.h, ptr %3, align 1, !tbaa !10
  %i.i = load ptr, ptr %1, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.l = zext i8 %i.d to i64                      ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr @trans, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10    ; 3 uses
  %5 = sext i8 %i.n to i64
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i8 %i.n, -1
  br i1 %i.p, label %iter.check, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq ptr %i.k, %2
  br i1 %i.q, label %mbc_enc_len.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.k, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10    ; 3 uses
  %6 = sext i8 %i.w to i64
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %i.w, -1
  br i1 %i.y, label %iter.check, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq ptr %i.s, %2
  br i1 %i.z, label %mbc_enc_len.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3 ; 2 uses
  %i.ac = load i8, ptr %i.s, align 1, !tbaa !10
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10  ; 3 uses
  %7 = sext i8 %i.af to i64
  %i.ag = icmp slt i8 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp eq i8 %i.af, -1
  br i1 %i.ah, label %iter.check, label %._crit_edge

bb.k:                                             ; preds = %bb.i
  %i.ai = icmp eq ptr %i.ab, %2
  br i1 %i.ai, label %mbc_enc_len.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %7
  %i.ak = load i8, ptr %i.ab, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %iter.check, label %._crit_edge

mbc_enc_len.exit:                                 ; preds = %bb.k, %bb.h, %bb.e
  %.sink = phi i32 [ 1, %bb.h ], [ 0, %bb.e ], [ 2, %bb.k ]
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EmacsMule, i64 %i.l
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !6
  %i.ar = sub nsw i32 %.sink, %i.aq               ; 3 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.l, %bb.j, %bb.g, %bb.d, %mbc_enc_len.exit
  %.0.i35 = phi i32 [ %i.ar, %mbc_enc_len.exit ], [ 3, %bb.j ], [ 2, %bb.g ], [ 1, %bb.d ], [ 4, %bb.l ] ; 7 uses
  %i.at = zext nneg i32 %.0.i35 to i64            ; 5 uses
  %min.iters.check = icmp samesign ult i32 %.0.i35, 4
  %i.au = sub i64 %i.c, %i.a
  %diff.check = icmp ugt i64 %i.au, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check41 = icmp samesign ult i32 %.0.i35, 32
  br i1 %min.iters.check41, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.at, 28
  %n.vec = and i64 %i.at, 2147483616              ; 6 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ax = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep42 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !10
  %wide.load43 = load <16 x i8>, ptr %i.ay, align 1, !tbaa !10
  %i.az = getelementptr i8, ptr %next.gep42, i64 16
  store <16 x i8> %wide.load, ptr %next.gep42, align 1, !tbaa !10
  store <16 x i8> %wide.load43, ptr %i.az, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !19

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.at
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !22

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %i.at, 2147483644            ; 5 uses
  %i.bb = trunc nuw nsw i64 %n.vec47 to i32
  %i.bc = getelementptr i8, ptr %i.b, i64 %n.vec47
  %i.bd = getelementptr i8, ptr %3, i64 %n.vec47
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index48 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %next.gep49 = getelementptr i8, ptr %i.b, i64 %index48
  %next.gep50 = getelementptr i8, ptr %3, i64 %index48
  %wide.load51 = load <4 x i8>, ptr %next.gep49, align 1, !tbaa !10
  store <4 x i8> %wide.load51, ptr %next.gep50, align 1, !tbaa !10
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.be = icmp eq i64 %index.next52, %n.vec47
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !23

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec47, %i.at
  br i1 %cmp.n53, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.022.ph = phi i32 [ 0, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ] ; 4 uses
  %.01621.ph = phi ptr [ %i.b, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ] ; 2 uses
  %.01820.ph = phi ptr [ %3, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ] ; 2 uses
  %i.bf = sub i32 %.0.i35, %.022.ph
  %xtraiter = and i32 %i.bf, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.022.prol = phi i32 [ %i.bj, %.lr.ph.prol ], [ %.022.ph, %.lr.ph.preheader ]
  %.01621.prol = phi ptr [ %i.bg, %.lr.ph.prol ], [ %.01621.ph, %.lr.ph.preheader ] ; 2 uses
  %.01820.prol = phi ptr [ %i.bi, %.lr.ph.prol ], [ %.01820.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.01621.prol, i64 1 ; 2 uses
  %i.bh = load i8, ptr %.01621.prol, align 1, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %.01820.prol, i64 1 ; 2 uses
  store i8 %i.bh, ptr %.01820.prol, align 1, !tbaa !10
  %i.bj = add nuw nsw i32 %.022.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !24

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.022.unr = phi i32 [ %.022.ph, %.lr.ph.preheader ], [ %i.bj, %.lr.ph.prol ]
  %.01621.unr = phi ptr [ %.01621.ph, %.lr.ph.preheader ], [ %i.bg, %.lr.ph.prol ]
  %.01820.unr = phi ptr [ %.01820.ph, %.lr.ph.preheader ], [ %i.bi, %.lr.ph.prol ]
  %i.bk = sub i32 %.022.ph, %.0.i35
  %i.bl = icmp ugt i32 %i.bk, -8
  br i1 %i.bl, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.022 = phi i32 [ %i.ck, %.lr.ph ], [ %.022.unr, %.lr.ph.prol.loopexit ]
  %.01621 = phi ptr [ %i.ch, %.lr.ph ], [ %.01621.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.01820 = phi ptr [ %i.cj, %.lr.ph ], [ %.01820.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01621, i64 1
  %i.bn = load i8, ptr %.01621, align 1, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %.01820, i64 1
  store i8 %i.bn, ptr %.01820, align 1, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %.01621, i64 2
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %.01820, i64 2
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.01621, i64 3
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.01820, i64 3
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !10
  %i.bv = getelementptr inbounds nuw i8, ptr %.01621, i64 4
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !10
  %i.bx = getelementptr inbounds nuw i8, ptr %.01820, i64 4
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %.01621, i64 5
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.01820, i64 5
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !10
  %i.cb = getelementptr inbounds nuw i8, ptr %.01621, i64 6
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !10
  %i.cd = getelementptr inbounds nuw i8, ptr %.01820, i64 6
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.01621, i64 7
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %.01820, i64 7
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !10
  %i.ch = getelementptr inbounds nuw i8, ptr %.01621, i64 8
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %.01820, i64 8
  store i8 %i.ci, ptr %i.cg, align 1, !tbaa !10
  %i.ck = add nuw nsw i32 %.022, 8                ; 2 uses
  %exitcond.not.7 = icmp eq i32 %i.ck, %.0.i35
  br i1 %exitcond.not.7, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !26

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load ptr, ptr %1, align 8, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %bb.j, %bb.g, %bb.d, %._crit_edge.loopexit, %mbc_enc_len.exit
  %.0.i34 = phi i32 [ %.0.i35, %._crit_edge.loopexit ], [ %i.ar, %mbc_enc_len.exit ], [ -1, %bb.d ], [ -1, %bb.g ], [ -1, %bb.j ], [ -1, %bb.l ] ; 2 uses
  %i.cl = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.b, %mbc_enc_len.exit ], [ %i.b, %bb.d ], [ %i.b, %bb.g ], [ %i.b, %bb.j ], [ %i.b, %bb.l ]
  %i.cm = sext i32 %.0.i34 to i64
  %i.cn = getelementptr inbounds i8, ptr %i.cl, i64 %i.cm
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.b
  %storemerge = phi ptr [ %i.cn, %._crit_edge ], [ %i.j, %bb.b ]
  %.017 = phi i32 [ %.0.i34, %._crit_edge ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !18
  ret i32 %.017
}

declare i32 @onigenc_ascii_apply_all_case_fold(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_minimum_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.b, label %code_to_mbclen.exit

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @OnigEncAsciiCtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !27
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
end_hunk_0
