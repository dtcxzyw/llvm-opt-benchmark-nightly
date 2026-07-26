inline.NumInlined: 12
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.OnigPairCaseFoldCodes = type { i32, i32 }
%struct.enc_property = type { i8, i8 }
%struct.onig_jis_property_pool_t = type { [4 x i8], [6 x i8], [6 x i8], [9 x i8], [9 x i8], [9 x i8] }

@encoding_Windows_31J = internal constant %struct.OnigEncodingTypeST { ptr @mbc_enc_len, ptr @.str, i32 2, i32 1, ptr @onigenc_is_mbc_newline_0x0a, ptr @mbc_to_code, ptr @code_to_mbclen, ptr @code_to_mbc, ptr @mbc_case_fold, ptr @apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @property_name_to_ctype, ptr @is_code_ctype, ptr @get_ctype_code_range, ptr @left_adjust_char_head, ptr @is_allowed_reverse_match, ptr @onigenc_ascii_only_case_map, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [12 x i8] c"Windows-31J\00", align 1
@trans = internal unnamed_addr constant [2 x [256 x i8]] [[256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE\FE\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\FE"], align 16
@EncLen_SJIS = internal unnamed_addr constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1], align 16
@SJIS_CAN_BE_TRAIL_TABLE = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00", align 16
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1
@CaseFoldMap = internal constant [83 x %struct.OnigPairCaseFoldCodes] [%struct.OnigPairCaseFoldCodes { i32 33376, i32 33409 }, %struct.OnigPairCaseFoldCodes { i32 33377, i32 33410 }, %struct.OnigPairCaseFoldCodes { i32 33378, i32 33411 }, %struct.OnigPairCaseFoldCodes { i32 33379, i32 33412 }, %struct.OnigPairCaseFoldCodes { i32 33380, i32 33413 }, %struct.OnigPairCaseFoldCodes { i32 33381, i32 33414 }, %struct.OnigPairCaseFoldCodes { i32 33382, i32 33415 }, %struct.OnigPairCaseFoldCodes { i32 33383, i32 33416 }, %struct.OnigPairCaseFoldCodes { i32 33384, i32 33417 }, %struct.OnigPairCaseFoldCodes { i32 33385, i32 33418 }, %struct.OnigPairCaseFoldCodes { i32 33386, i32 33419 }, %struct.OnigPairCaseFoldCodes { i32 33387, i32 33420 }, %struct.OnigPairCaseFoldCodes { i32 33388, i32 33421 }, %struct.OnigPairCaseFoldCodes { i32 33389, i32 33422 }, %struct.OnigPairCaseFoldCodes { i32 33390, i32 33423 }, %struct.OnigPairCaseFoldCodes { i32 33391, i32 33424 }, %struct.OnigPairCaseFoldCodes { i32 33392, i32 33425 }, %struct.OnigPairCaseFoldCodes { i32 33393, i32 33426 }, %struct.OnigPairCaseFoldCodes { i32 33394, i32 33427 }, %struct.OnigPairCaseFoldCodes { i32 33395, i32 33428 }, %struct.OnigPairCaseFoldCodes { i32 33396, i32 33429 }, %struct.OnigPairCaseFoldCodes { i32 33397, i32 33430 }, %struct.OnigPairCaseFoldCodes { i32 33398, i32 33431 }, %struct.OnigPairCaseFoldCodes { i32 33399, i32 33432 }, %struct.OnigPairCaseFoldCodes { i32 33400, i32 33433 }, %struct.OnigPairCaseFoldCodes { i32 33401, i32 33434 }, %struct.OnigPairCaseFoldCodes { i32 33695, i32 33727 }, %struct.OnigPairCaseFoldCodes { i32 33696, i32 33728 }, %struct.OnigPairCaseFoldCodes { i32 33697, i32 33729 }, %struct.OnigPairCaseFoldCodes { i32 33698, i32 33730 }, %struct.OnigPairCaseFoldCodes { i32 33699, i32 33731 }, %struct.OnigPairCaseFoldCodes { i32 33700, i32 33732 }, %struct.OnigPairCaseFoldCodes { i32 33701, i32 33733 }, %struct.OnigPairCaseFoldCodes { i32 33702, i32 33734 }, %struct.OnigPairCaseFoldCodes { i32 33703, i32 33735 }, %struct.OnigPairCaseFoldCodes { i32 33704, i32 33736 }, %struct.OnigPairCaseFoldCodes { i32 33705, i32 33737 }, %struct.OnigPairCaseFoldCodes { i32 33706, i32 33738 }, %struct.OnigPairCaseFoldCodes { i32 33707, i32 33739 }, %struct.OnigPairCaseFoldCodes { i32 33708, i32 33740 }, %struct.OnigPairCaseFoldCodes { i32 33709, i32 33741 }, %struct.OnigPairCaseFoldCodes { i32 33710, i32 33742 }, %struct.OnigPairCaseFoldCodes { i32 33711, i32 33743 }, %struct.OnigPairCaseFoldCodes { i32 33712, i32 33744 }, %struct.OnigPairCaseFoldCodes { i32 33713, i32 33745 }, %struct.OnigPairCaseFoldCodes { i32 33714, i32 33746 }, %struct.OnigPairCaseFoldCodes { i32 33715, i32 33747 }, %struct.OnigPairCaseFoldCodes { i32 33716, i32 33748 }, %struct.OnigPairCaseFoldCodes { i32 33717, i32 33749 }, %struct.OnigPairCaseFoldCodes { i32 33718, i32 33750 }, %struct.OnigPairCaseFoldCodes { i32 33856, i32 33904 }, %struct.OnigPairCaseFoldCodes { i32 33857, i32 33905 }, %struct.OnigPairCaseFoldCodes { i32 33858, i32 33906 }, %struct.OnigPairCaseFoldCodes { i32 33859, i32 33907 }, %struct.OnigPairCaseFoldCodes { i32 33860, i32 33908 }, %struct.OnigPairCaseFoldCodes { i32 33861, i32 33909 }, %struct.OnigPairCaseFoldCodes { i32 33862, i32 33910 }, %struct.OnigPairCaseFoldCodes { i32 33863, i32 33911 }, %struct.OnigPairCaseFoldCodes { i32 33864, i32 33912 }, %struct.OnigPairCaseFoldCodes { i32 33865, i32 33913 }, %struct.OnigPairCaseFoldCodes { i32 33866, i32 33914 }, %struct.OnigPairCaseFoldCodes { i32 33867, i32 33915 }, %struct.OnigPairCaseFoldCodes { i32 33868, i32 33916 }, %struct.OnigPairCaseFoldCodes { i32 33869, i32 33917 }, %struct.OnigPairCaseFoldCodes { i32 33870, i32 33918 }, %struct.OnigPairCaseFoldCodes { i32 33871, i32 33920 }, %struct.OnigPairCaseFoldCodes { i32 33872, i32 33921 }, %struct.OnigPairCaseFoldCodes { i32 33873, i32 33922 }, %struct.OnigPairCaseFoldCodes { i32 33874, i32 33923 }, %struct.OnigPairCaseFoldCodes { i32 33875, i32 33924 }, %struct.OnigPairCaseFoldCodes { i32 33876, i32 33925 }, %struct.OnigPairCaseFoldCodes { i32 33877, i32 33926 }, %struct.OnigPairCaseFoldCodes { i32 33878, i32 33927 }, %struct.OnigPairCaseFoldCodes { i32 33879, i32 33928 }, %struct.OnigPairCaseFoldCodes { i32 33880, i32 33929 }, %struct.OnigPairCaseFoldCodes { i32 33881, i32 33930 }, %struct.OnigPairCaseFoldCodes { i32 33882, i32 33931 }, %struct.OnigPairCaseFoldCodes { i32 33883, i32 33932 }, %struct.OnigPairCaseFoldCodes { i32 33884, i32 33933 }, %struct.OnigPairCaseFoldCodes { i32 33885, i32 33934 }, %struct.OnigPairCaseFoldCodes { i32 33886, i32 33935 }, %struct.OnigPairCaseFoldCodes { i32 33887, i32 33936 }, %struct.OnigPairCaseFoldCodes { i32 33888, i32 33937 }], align 16
@onig_jis_property.wordlist = internal unnamed_addr constant [13 x %struct.enc_property] [%struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 0, i8 17 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 4, i8 18 }, %struct.enc_property { i8 10, i8 19 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 16, i8 15 }, %struct.enc_property { i8 25, i8 16 }, %struct.enc_property { i8 34, i8 20 }], align 16
@onig_jis_property_pool_contents = internal constant %struct.onig_jis_property_pool_t { [4 x i8] c"han\00", [6 x i8] c"latin\00", [6 x i8] c"greek\00", [9 x i8] c"hiragana\00", [9 x i8] c"katakana\00", [9 x i8] c"cyrillic\00" }, align 1
@onig_jis_property_hash.asso_values = internal unnamed_addr constant [128 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\03\0D\02\0D\01\01\0D\0D\02\01\0D\01\0D\0D\0D\01\0D\01\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\03\0D\02\0D\01\01\0D\0D\02\01\0D\01\0D\0D\0D\01\0D\01\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@OnigEncodingASCII = external constant %struct.OnigEncodingTypeST, align 8
@OnigEncAsciiCtypeTable = external local_unnamed_addr constant [0 x i16], align 2
@PropertyList = internal unnamed_addr constant [6 x ptr] [ptr @CR_Hiragana, ptr @CR_Katakana, ptr @CR_Han, ptr @CR_Latin, ptr @CR_Greek, ptr @CR_Cyrillic], align 16
@CR_Hiragana = internal constant [3 x i32] [i32 1, i32 33439, i32 33521], align 4
@CR_Katakana = internal constant [9 x i32] [i32 4, i32 166, i32 175, i32 177, i32 221, i32 33600, i32 33662, i32 33664, i32 33686], align 16
@CR_Han = internal constant [13 x i32] [i32 6, i32 33111, i32 33111, i32 34975, i32 39026, i32 39071, i32 40956, i32 57408, i32 60068, i32 60736, i32 61164, i32 64092, i32 64587], align 16
@CR_Latin = internal constant [9 x i32] [i32 4, i32 65, i32 90, i32 97, i32 122, i32 33376, i32 33401, i32 33409, i32 33434], align 16
@CR_Greek = internal constant [5 x i32] [i32 2, i32 33695, i32 33718, i32 33727, i32 33750], align 16
@CR_Cyrillic = internal constant [7 x i32] [i32 3, i32 33856, i32 33888, i32 33904, i32 33919, i32 33920, i32 33937], align 16

; Function Attrs: nounwind sspstrong uwtable
define void @Init_windows_31j() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_Windows_31J) #7 ; 0 uses
  ret void
}

declare i32 @rb_enc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -2147483647, -2147483648) i32 @mbc_enc_len(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = sext i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  %i.h = select i1 %i.g, i32 1, i32 -1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = sub nsw i32 0, %i.k
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.n = load i8, ptr %i.a, align 1, !tbaa !10
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !10
  %i.r = icmp eq i8 %i.q, -1
  %i.s = select i1 %i.r, i32 2, i32 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.s, %bb.e ]
  ret i32 %.0
}

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal i32 @mbc_to_code(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 3 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = sext i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  br i1 %i.g, label %mbc_enc_len.exit.thread, label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, %1
  br i1 %i.h, label %mbc_enc_len.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.j = load i8, ptr %i.a, align 1, !tbaa !10
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !10
  %i.n = icmp eq i8 %i.m, -1
  %i.o = select i1 %i.n, i32 2, i32 -1
  br label %.preheader

mbc_enc_len.exit.thread:                          ; preds = %bb.b
  %i.p = zext i8 %i.b to i32
  br label %.loopexit

mbc_enc_len.exit:                                 ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.c
  %i.r = load i32, ptr %i.q, align 4, !tbaa !6
  %i.s = sub nsw i32 0, %i.r
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.b, %mbc_enc_len.exit
  %.0.i32 = phi i32 [ %i.s, %mbc_enc_len.exit ], [ %i.o, %bb.d ], [ -1, %bb.b ] ; 2 uses
  %i.t = zext i8 %i.b to i32                      ; 2 uses
  %i.u = icmp sgt i32 %.0.i32, 1
  %.not23 = icmp ult ptr %i.a, %1
  %or.cond24 = select i1 %i.u, i1 %.not23, i1 false
  br i1 %or.cond24, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01927 = phi ptr [ %.019, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %.026 = phi i32 [ %i.y, %.lr.ph ], [ %i.t, %.preheader ]
  %.01825 = phi i32 [ %i.z, %.lr.ph ], [ 1, %.preheader ]
  %i.v = load i8, ptr %.01927, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i32
  %i.x = shl i32 %.026, 8
  %i.y = or disjoint i32 %i.x, %i.w               ; 2 uses
  %i.z = add nuw nsw i32 %.01825, 1               ; 2 uses
  %.019 = getelementptr inbounds nuw i8, ptr %.01927, i64 1 ; 2 uses
  %i.aa = icmp slt i32 %i.z, %.0.i32
  %.not = icmp ult ptr %.019, %1
  %or.cond = select i1 %i.aa, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %mbc_enc_len.exit.thread
  %.017 = phi i32 [ %i.t, %.preheader ], [ %i.p, %mbc_enc_len.exit.thread ], [ %i.y, %.lr.ph ]
  ret i32 %.017
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 3) i32 @code_to_mbclen(i32 noundef %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.b
  %i.d = load i32, ptr %i.c, align 4, !tbaa !6
  %i.e = icmp eq i32 %i.d, 1
  %. = select i1 %i.e, i32 1, i32 -400
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = icmp ult i32 %0, 65536
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = and i32 %0, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @SJIS_CAN_BE_TRAIL_TABLE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %.not = icmp eq i8 %i.j, 0
  %.8 = select i1 %.not, i32 -400, i32 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.1 = phi i32 [ %., %bb.b ], [ %.8, %bb.d ], [ -401, %bb.c ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal i32 @code_to_mbc(i32 noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #5 {
bb.a:
  %i.a = and i32 %0, 65280
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 8
  %i.c = trunc i32 %i.b to i8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.c, ptr %1, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.d, %bb.b ], [ %1, %bb.a ]    ; 2 uses
  %i.e = trunc i32 %0 to i8
  %i.f = getelementptr inbounds nuw i8, ptr %.0, i64 1
  store i8 %i.e, ptr %.0, align 1, !tbaa !10
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %1 to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = trunc i64 %i.i to i32
  ret i32 %i.j
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @mbc_case_fold(i32 %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 5 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  store i8 %i.f, ptr %3, align 1, !tbaa !10
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.j = zext i8 %i.b to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr @trans, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10    ; 2 uses
  %5 = sext i8 %i.l to i64
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = zext i8 %i.b to i32
  br label %mbc_to_code.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq ptr %i.i, %2
  br i1 %i.o, label %mbc_enc_len.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.q = load i8, ptr %i.i, align 1, !tbaa !10
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !10
  %i.u = icmp eq i8 %i.t, -1
  %i.v = select i1 %i.u, i32 2, i32 -1
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.j
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = sub nsw i32 0, %i.x
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %mbc_enc_len.exit.i
  %.0.i32.i = phi i32 [ %i.y, %mbc_enc_len.exit.i ], [ %i.v, %bb.f ] ; 2 uses
  %i.z = zext i8 %i.b to i32                      ; 2 uses
  %i.aa = icmp sgt i32 %.0.i32.i, 1
  %.not23.i = icmp ult ptr %i.i, %2
  %or.cond24.i = select i1 %i.aa, i1 %.not23.i, i1 false
  br i1 %or.cond24.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01927.i = phi ptr [ %.019.i, %.lr.ph.i ], [ %i.i, %.preheader.i ] ; 2 uses
  %.026.i = phi i32 [ %i.ae, %.lr.ph.i ], [ %i.z, %.preheader.i ]
  %.01825.i = phi i32 [ %i.af, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.ab = load i8, ptr %.01927.i, align 1, !tbaa !10
  %i.ac = zext i8 %i.ab to i32
  %i.ad = shl i32 %.026.i, 8
  %i.ae = or disjoint i32 %i.ad, %i.ac            ; 2 uses
  %i.af = add nuw nsw i32 %.01825.i, 1            ; 2 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.01927.i, i64 1 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %.0.i32.i
  %.not.i = icmp ult ptr %.019.i, %2
  %or.cond.i = select i1 %i.ag, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %bb.d, %.preheader.i
  %.017.i = phi i32 [ %i.z, %.preheader.i ], [ %i.n, %bb.d ], [ %i.ae, %.lr.ph.i ] ; 8 uses
  %i.ah = add i32 %.017.i, -33376
  %i.ai = icmp ult i32 %i.ah, 26
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %mbc_to_code.exit
  %i.aj = add nuw nsw i32 %.017.i, 33
  br label %get_lower_case.exit

bb.h:                                             ; preds = %mbc_to_code.exit
  %i.ak = add i32 %.017.i, -33695
  %i.al = icmp ult i32 %i.ak, 24
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.am = add nuw nsw i32 %.017.i, 32
  br label %get_lower_case.exit

bb.j:                                             ; preds = %bb.h
  %i.an = add i32 %.017.i, -33856
  %i.ao = icmp ult i32 %i.an, 33
  br i1 %i.ao, label %bb.k, label %get_lower_case.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp samesign ugt i32 %.017.i, 33870
  %i.aq = select i1 %i.ap, i32 49, i32 48
  %i.ar = add nuw nsw i32 %i.aq, %.017.i
  br label %get_lower_case.exit

get_lower_case.exit:                              ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %.0.i = phi i32 [ %i.aj, %bb.g ], [ %i.am, %bb.i ], [ %i.ar, %bb.k ], [ %.017.i, %bb.j ] ; 3 uses
  %i.as = and i32 %.0.i, 65280
  %.not.i14 = icmp eq i32 %i.as, 0
  br i1 %.not.i14, label %code_to_mbc.exit, label %bb.l

bb.l:                                             ; preds = %get_lower_case.exit
  %i.at = lshr i32 %.0.i, 8
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 %i.au, ptr %3, align 1, !tbaa !10
  br label %code_to_mbc.exit

code_to_mbc.exit:                                 ; preds = %get_lower_case.exit, %bb.l
  %.0.i15 = phi ptr [ %i.av, %bb.l ], [ %3, %get_lower_case.exit ] ; 2 uses
  %i.aw = trunc i32 %.0.i to i8
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i15, i64 1
  store i8 %i.aw, ptr %.0.i15, align 1, !tbaa !10
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %3 to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = load ptr, ptr %1, align 8, !tbaa !13
  %sext = shl i64 %i.ba, 32
  %i.bd = ashr exact i64 %sext, 32
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.bd
  br label %bb.m

bb.m:                                             ; preds = %code_to_mbc.exit, %bb.b
  %storemerge = phi ptr [ %i.be, %code_to_mbc.exit ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ %i.bb, %code_to_mbc.exit ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !13
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @apply_all_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_apply_all_case_fold_with_map(i32 noundef 83, ptr noundef nonnull @CaseFoldMap, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2) #7
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !10      ; 4 uses
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %5 = sext i8 %i.e to i64                        ; 2 uses
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %mbc_to_code.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.a, %2
  br i1 %i.g, label %mbc_enc_len.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.i = load i8, ptr %i.a, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = icmp eq i8 %i.l, -1
  %i.n = select i1 %i.m, i32 2, i32 -1
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.c
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6
  %i.q = sub nsw i32 0, %i.p
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %mbc_enc_len.exit.i
  %.0.i32.i = phi i32 [ %i.q, %mbc_enc_len.exit.i ], [ %i.n, %bb.c ] ; 2 uses
  %i.r = zext i8 %i.b to i32                      ; 2 uses
  %i.s = icmp sgt i32 %.0.i32.i, 1
  %.not23.i = icmp ult ptr %i.a, %2
  %or.cond24.i = select i1 %i.s, i1 %.not23.i, i1 false
  br i1 %or.cond24.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01927.i = phi ptr [ %.019.i, %.lr.ph.i ], [ %i.a, %.preheader.i ] ; 2 uses
  %.026.i = phi i32 [ %i.w, %.lr.ph.i ], [ %i.r, %.preheader.i ]
  %.01825.i = phi i32 [ %i.x, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.t = load i8, ptr %.01927.i, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i32
  %i.v = shl i32 %.026.i, 8
  %i.w = or disjoint i32 %i.v, %i.u               ; 2 uses
  %i.x = add nuw nsw i32 %.01825.i, 1             ; 2 uses
  %.019.i = getelementptr inbounds nuw i8, ptr %.01927.i, i64 1 ; 2 uses
  %i.y = icmp slt i32 %i.x, %.0.i32.i
  %.not.i = icmp ult ptr %.019.i, %2
  %or.cond.i = select i1 %i.y, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %.preheader.i
  %.017.i = phi i32 [ %i.r, %.preheader.i ], [ %i.w, %.lr.ph.i ] ; 3 uses
  %i.z = icmp ult i32 %.017.i, 128
  br i1 %i.z, label %bb.d, label %bb.e

mbc_to_code.exit.thread:                          ; preds = %bb.a
  %i.aa = icmp sgt i8 %i.b, -1
  br i1 %i.aa, label %bb.d, label %.thread

bb.d:                                             ; preds = %mbc_to_code.exit.thread, %mbc_to_code.exit
  %i.ab = tail call i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #7
  br label %bb.n

.thread:                                          ; preds = %mbc_to_code.exit.thread
  %i.ac = zext i8 %i.b to i32
  %i.ad = icmp eq i8 %i.e, -1
  %i.ae = select i1 %i.ad, i32 1, i32 -1
  br label %mbc_enc_len.exit

bb.e:                                             ; preds = %mbc_to_code.exit
  %i.af = icmp eq ptr %i.a, %2
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.c
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !6
  %i.ai = sub nsw i32 0, %i.ah
  br label %mbc_enc_len.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = icmp eq i8 %i.an, -1
  %i.ap = select i1 %i.ao, i32 2, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %.thread, %bb.f, %bb.g
  %.017.i4750 = phi i32 [ %i.ac, %.thread ], [ %.017.i, %bb.f ], [ %.017.i, %bb.g ] ; 15 uses
  %.0.i = phi i32 [ %i.ae, %.thread ], [ %i.ai, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  %i.aq = add i32 %.017.i4750, -33376
  %i.ar = icmp ult i32 %i.aq, 26
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %mbc_enc_len.exit
  %i.as = add nuw nsw i32 %.017.i4750, 33
  br label %get_lower_case.exit.thread.thread

bb.i:                                             ; preds = %mbc_enc_len.exit
  %i.at = add i32 %.017.i4750, -33695
  %i.au = icmp ult i32 %i.at, 24
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.av = add nuw nsw i32 %.017.i4750, 32
  br label %get_lower_case.exit.thread.thread

bb.k:                                             ; preds = %bb.i
  %i.aw = add i32 %.017.i4750, -33856
  %i.ax = icmp ult i32 %i.aw, 33
  br i1 %i.ax, label %bb.l, label %get_lower_case.exit

bb.l:                                             ; preds = %bb.k
  %i.ay = icmp samesign ugt i32 %.017.i4750, 33870
  %i.az = select i1 %i.ay, i32 49, i32 48
  %i.ba = add nuw nsw i32 %i.az, %.017.i4750
  br label %get_lower_case.exit.thread.thread

get_lower_case.exit:                              ; preds = %bb.k
  %i.bb = add i32 %.017.i4750, -33409
  %i.bc = icmp ult i32 %i.bb, 26
  br i1 %i.bc, label %get_upper_case.exit.thread.thread, label %get_lower_case.exit.thread

get_lower_case.exit.thread:                       ; preds = %get_lower_case.exit
  %i.bd = add i32 %.017.i4750, -33727
  %i.be = icmp ult i32 %i.bd, 24
  br i1 %i.be, label %get_upper_case.exit.thread.thread, label %get_lower_case.exit.thread.thread

get_lower_case.exit.thread.thread:                ; preds = %bb.h, %bb.j, %bb.l, %get_lower_case.exit.thread
  %.0.i324042 = phi i32 [ %.017.i4750, %get_lower_case.exit.thread ], [ %i.as, %bb.h ], [ %i.av, %bb.j ], [ %i.ba, %bb.l ] ; 2 uses
  %.not = icmp eq i32 %.017.i4750, %.0.i324042
  br i1 %.not, label %get_upper_case.exit.thread, label %bb.m

bb.m:                                             ; preds = %get_lower_case.exit.thread.thread
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.bf, align 4, !tbaa !18
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i324042, ptr %i.bg, align 4, !tbaa !6
  br label %bb.n

get_upper_case.exit.thread:                       ; preds = %get_lower_case.exit.thread.thread
  %i.bh = add i32 %.017.i4750, -33919
  %i.bi = icmp ult i32 %i.bh, -15
  %i.bj = add i32 %.017.i4750, -33938
  %i.bk = icmp ult i32 %i.bj, -18
  %or.cond.i33.not = and i1 %i.bi, %i.bk          ; 2 uses
  %i.bl = icmp samesign ugt i32 %.017.i4750, 33919
  %.neg.i = select i1 %i.bl, i32 -47, i32 -48
  %i.bm = select i1 %or.cond.i33.not, i32 0, i32 %.neg.i
  br i1 %or.cond.i33.not, label %bb.n, label %get_upper_case.exit.thread.thread

get_upper_case.exit.thread.thread:                ; preds = %get_lower_case.exit.thread, %get_lower_case.exit, %get_upper_case.exit.thread
  %.pn = phi i32 [ %i.bm, %get_upper_case.exit.thread ], [ -33, %get_lower_case.exit ], [ -32, %get_lower_case.exit.thread ]
  %.0.i345761 = add nsw i32 %.017.i4750, %.pn
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.bn, align 4, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i345761, ptr %i.bo, align 4, !tbaa !6
  br label %bb.n

bb.n:                                             ; preds = %get_upper_case.exit.thread, %get_upper_case.exit.thread.thread, %bb.m, %bb.d
  %.0 = phi i32 [ %i.ab, %bb.d ], [ 1, %bb.m ], [ 1, %get_upper_case.exit.thread.thread ], [ 0, %get_upper_case.exit.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @property_name_to_ctype(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = and i64 %i.c, 4294967295                 ; 3 uses
  %i.e = add nsw i64 %i.d, -3
  %or.cond.i = icmp ult i64 %i.e, 6
  br i1 %or.cond.i, label %bb.b, label %.critedge29.thread.i

bb.b:                                             ; preds = %bb.a
  %.val.i = load i8, ptr %1, align 1, !tbaa !10   ; 2 uses
  %i.f = getelementptr i8, ptr %1, i64 2
  %.val30.i = load i8, ptr %i.f, align 1, !tbaa !10
  %i.g = trunc i64 %i.c to i32                    ; 2 uses
  %i.h = zext i8 %.val30.i to i64
  %i.i = getelementptr inbounds nuw i8, ptr @onig_jis_property_hash.asso_values, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %i.k = zext i8 %i.j to i32
  %i.l = add nuw nsw i32 %i.k, %i.g
  %i.m = zext i8 %.val.i to i64
  %i.n = getelementptr inbounds nuw i8, ptr @onig_jis_property_hash.asso_values, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10
  %i.p = zext i8 %i.o to i32
  %i.q = add nuw nsw i32 %i.l, %i.p               ; 2 uses
  %i.r = icmp samesign ult i32 %i.q, 13
  br i1 %i.r, label %bb.c, label %.critedge29.thread.i

bb.c:                                             ; preds = %bb.b
  %i.s = zext nneg i32 %i.q to i64                ; 2 uses
  %i.t = getelementptr inbounds nuw [2 x i8], ptr @onig_jis_property.wordlist, i64 %i.s ; 2 uses
  %i.u = shl nuw nsw i64 1, %i.s
  %i.v = and i64 %i.u, 7584
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %.critedge29.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.t, align 2, !tbaa !19
  %i.x = sext i8 %i.w to i64
  %i.y = and i64 %i.x, 4294967295
  %i.z = getelementptr inbounds nuw i8, ptr @onig_jis_property_pool_contents, i64 %i.y ; 3 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = xor i8 %i.aa, %.val.i
  %i.ac = and i8 %i.ab, -33
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %.critedge29.thread.i

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  %i.af = tail call i32 @onigenc_with_ascii_strnicmp(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %1, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.z, i32 noundef %i.g) #7
  %.not27.i = icmp eq i32 %i.af, 0
  br i1 %.not27.i, label %bb.f, label %.critedge29.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.d
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %onig_jis_property.exit, label %.critedge29.thread.i

.critedge29.thread.i:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %i.aj = tail call i32 @onigenc_minimum_property_name_to_ctype(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  br label %bb.g

onig_jis_property.exit:                           ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i32
  br label %bb.g

bb.g:                                             ; preds = %onig_jis_property.exit, %.critedge29.thread.i
  %.0 = phi i32 [ %i.am, %onig_jis_property.exit ], [ %i.aj, %.critedge29.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp ult i32 %1, 15
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ult i32 %0, 128
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @OnigEncAsciiCtypeTable, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !22
  %i.f = zext i16 %i.e to i32
  %i.g = lshr i32 %i.f, %1
  %i.h = and i32 %i.g, 1
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %1, 12
  %i.j = and i32 %1, 13
  %i.k = icmp eq i32 %i.j, 5
  %or.cond3 = or i1 %i.i, %i.k
  %. = zext i1 %or.cond3 to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.l = add i32 %1, -15                          ; 2 uses
  %i.m = icmp ugt i32 %i.l, 5
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext nneg i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @PropertyList, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.q = tail call i32 @onig_is_in_code_range(ptr noundef %i.p, i32 noundef %0) #7
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ %., %bb.d ], [ -6, %bb.e ], [ %i.q, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 -6, 1) i32 @get_ctype_code_range(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3) #5 {
bb.a:
  %i.a = icmp ult i32 %0, 15
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 128, ptr %1, align 4, !tbaa !6
  %i.b = add i32 %0, -15                          ; 2 uses
  %i.c = icmp ugt i32 %i.b, 5
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @PropertyList, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  store ptr %i.f, ptr %2, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -2, %bb.a ], [ -6, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal ptr @left_adjust_char_head(ptr nofree noundef readnone captures(address) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %.not = icmp ugt ptr %1, %0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !10
  %i.b = zext i8 %i.a to i64                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr @SJIS_CAN_BE_TRAIL_TABLE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %.not26 = icmp eq i8 %i.d, 0
  br i1 %.not26, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.b
  %i.e = icmp ugt ptr %1, %0
  br i1 %i.e, label %.lr.ph, label %.loopexit.loopexit

.preheader:                                       ; preds = %.lr.ph
  %i.f = icmp ugt ptr %i.g, %0
  br i1 %i.f, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !26

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.02134 = phi ptr [ %i.g, %.preheader ], [ %1, %.preheader.preheader ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.02134, i64 -1 ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !10
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = icmp sgt i32 %i.k, 1
  br i1 %i.l, label %.preheader, label %..loopexit.loopexit_crit_edge, !llvm.loop !26

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.loopexit.loopexit, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %.preheader, %..loopexit.loopexit_crit_edge, %.preheader.preheader
  %.021.lcssa = phi ptr [ %1, %.preheader.preheader ], [ %.02134, %..loopexit.loopexit_crit_edge ], [ %i.g, %.preheader ] ; 2 uses
  %.pre = load i8, ptr %.021.lcssa, align 1, !tbaa !10
  %.pre27 = zext i8 %.pre to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.pre-phi = phi i64 [ %.pre27, %.loopexit.loopexit ], [ %i.b, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.021.lcssa, %.loopexit.loopexit ], [ %1, %bb.b ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr @trans, i64 %.pre-phi
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10    ; 3 uses
  %4 = sext i8 %i.o to i64
  %i.p = icmp slt i8 %i.o, 0
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit
  %i.q = icmp eq i8 %i.o, -1
  %i.r = select i1 %i.q, i32 1, i32 -1
  br label %mbc_enc_len.exit

bb.d:                                             ; preds = %.loopexit
  %i.s = icmp eq ptr %i.m, %2
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @EncLen_SJIS, i64 %.pre-phi
  %i.u = load i32, ptr %i.t, align 4, !tbaa !6
  %i.v = sub nsw i32 0, %i.u
  br label %mbc_enc_len.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.x = load i8, ptr %i.m, align 1, !tbaa !10
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = icmp eq i8 %i.aa, -1
  %i.ac = select i1 %i.ab, i32 2, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.v, %bb.e ], [ %i.ac, %bb.f ]
  %i.ad = sext i32 %.0.i to i64
  %i.ae = getelementptr inbounds i8, ptr %.1, i64 %i.ad ; 3 uses
  %i.af = icmp ugt ptr %i.ae, %1
  br i1 %i.af, label %bb.h, label %bb.g

bb.g:                                             ; preds = %mbc_enc_len.exit
  %i.ag = ptrtoint ptr %1 to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, -2
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  br label %bb.h

bb.h:                                             ; preds = %mbc_enc_len.exit, %bb.a, %bb.g
  %.0 = phi ptr [ %i.ak, %bb.g ], [ %1, %bb.a ], [ %.1, %mbc_enc_len.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @is_allowed_reverse_match(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @SJIS_CAN_BE_TRAIL_TABLE, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %.not = icmp eq i8 %i.d, 0
  %i.e = zext i1 %.not to i32
  ret i32 %i.e
}

declare i32 @onigenc_ascii_only_case_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_apply_all_case_fold_with_map(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_minimum_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_with_ascii_strnicmp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @onig_is_in_code_range(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 omnipotent char", !15, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!17, !7, i64 0}
!17 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8}
!18 = !{!17, !7, i64 4}
!19 = !{!20, !8, i64 0}
!20 = !{!"enc_property", !8, i64 0, !8, i64 1}
!21 = !{!20, !8, i64 1}
!22 = !{!23, !23, i64 0}
!23 = !{!"short", !8, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 int", !15, i64 0}
!26 = distinct !{!26, !12}
end_hunk_0
