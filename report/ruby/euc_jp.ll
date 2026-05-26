inline.NumInlined: 15
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.OnigPairCaseFoldCodes = type { i32, i32 }
%struct.enc_property = type { i8, i8 }
%struct.onig_jis_property_pool_t = type { [4 x i8], [6 x i8], [6 x i8], [9 x i8], [9 x i8], [9 x i8] }

@encoding_EUC_JP = internal constant %struct.OnigEncodingTypeST { ptr @mbc_enc_len, ptr @.str, i32 3, i32 1, ptr @onigenc_is_mbc_newline_0x0a, ptr @mbc_to_code, ptr @code_to_mbclen, ptr @code_to_mbc, ptr @mbc_case_fold, ptr @apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @property_name_to_ctype, ptr @is_code_ctype, ptr @get_ctype_code_range, ptr @left_adjust_char_head, ptr @is_allowed_reverse_match, ptr @onigenc_ascii_only_case_map, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [7 x i8] c"EUC-JP\00", align 1
@trans = internal unnamed_addr constant [3 x [256 x i8]] [[256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\02\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FE", [256 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\FE\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\FE"], align 16
@EncLen_EUCJP = internal unnamed_addr constant [256 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1], align 16
@OnigEncAsciiToLowerCaseTable = external local_unnamed_addr constant [0 x i8], align 1
@CaseFoldMap = internal constant [83 x %struct.OnigPairCaseFoldCodes] [%struct.OnigPairCaseFoldCodes { i32 41921, i32 41953 }, %struct.OnigPairCaseFoldCodes { i32 41922, i32 41954 }, %struct.OnigPairCaseFoldCodes { i32 41923, i32 41955 }, %struct.OnigPairCaseFoldCodes { i32 41924, i32 41956 }, %struct.OnigPairCaseFoldCodes { i32 41925, i32 41957 }, %struct.OnigPairCaseFoldCodes { i32 41926, i32 41958 }, %struct.OnigPairCaseFoldCodes { i32 41927, i32 41959 }, %struct.OnigPairCaseFoldCodes { i32 41928, i32 41960 }, %struct.OnigPairCaseFoldCodes { i32 41929, i32 41961 }, %struct.OnigPairCaseFoldCodes { i32 41930, i32 41962 }, %struct.OnigPairCaseFoldCodes { i32 41931, i32 41963 }, %struct.OnigPairCaseFoldCodes { i32 41932, i32 41964 }, %struct.OnigPairCaseFoldCodes { i32 41933, i32 41965 }, %struct.OnigPairCaseFoldCodes { i32 41934, i32 41966 }, %struct.OnigPairCaseFoldCodes { i32 41935, i32 41967 }, %struct.OnigPairCaseFoldCodes { i32 41936, i32 41968 }, %struct.OnigPairCaseFoldCodes { i32 41937, i32 41969 }, %struct.OnigPairCaseFoldCodes { i32 41938, i32 41970 }, %struct.OnigPairCaseFoldCodes { i32 41939, i32 41971 }, %struct.OnigPairCaseFoldCodes { i32 41940, i32 41972 }, %struct.OnigPairCaseFoldCodes { i32 41941, i32 41973 }, %struct.OnigPairCaseFoldCodes { i32 41942, i32 41974 }, %struct.OnigPairCaseFoldCodes { i32 41943, i32 41975 }, %struct.OnigPairCaseFoldCodes { i32 41944, i32 41976 }, %struct.OnigPairCaseFoldCodes { i32 41945, i32 41977 }, %struct.OnigPairCaseFoldCodes { i32 41946, i32 41978 }, %struct.OnigPairCaseFoldCodes { i32 42657, i32 42689 }, %struct.OnigPairCaseFoldCodes { i32 42658, i32 42690 }, %struct.OnigPairCaseFoldCodes { i32 42659, i32 42691 }, %struct.OnigPairCaseFoldCodes { i32 42660, i32 42692 }, %struct.OnigPairCaseFoldCodes { i32 42661, i32 42693 }, %struct.OnigPairCaseFoldCodes { i32 42662, i32 42694 }, %struct.OnigPairCaseFoldCodes { i32 42663, i32 42695 }, %struct.OnigPairCaseFoldCodes { i32 42664, i32 42696 }, %struct.OnigPairCaseFoldCodes { i32 42665, i32 42697 }, %struct.OnigPairCaseFoldCodes { i32 42666, i32 42698 }, %struct.OnigPairCaseFoldCodes { i32 42667, i32 42699 }, %struct.OnigPairCaseFoldCodes { i32 42668, i32 42700 }, %struct.OnigPairCaseFoldCodes { i32 42669, i32 42701 }, %struct.OnigPairCaseFoldCodes { i32 42670, i32 42702 }, %struct.OnigPairCaseFoldCodes { i32 42671, i32 42703 }, %struct.OnigPairCaseFoldCodes { i32 42672, i32 42704 }, %struct.OnigPairCaseFoldCodes { i32 42673, i32 42705 }, %struct.OnigPairCaseFoldCodes { i32 42674, i32 42706 }, %struct.OnigPairCaseFoldCodes { i32 42675, i32 42707 }, %struct.OnigPairCaseFoldCodes { i32 42676, i32 42708 }, %struct.OnigPairCaseFoldCodes { i32 42677, i32 42709 }, %struct.OnigPairCaseFoldCodes { i32 42678, i32 42710 }, %struct.OnigPairCaseFoldCodes { i32 42679, i32 42711 }, %struct.OnigPairCaseFoldCodes { i32 42680, i32 42712 }, %struct.OnigPairCaseFoldCodes { i32 42913, i32 42961 }, %struct.OnigPairCaseFoldCodes { i32 42914, i32 42962 }, %struct.OnigPairCaseFoldCodes { i32 42915, i32 42963 }, %struct.OnigPairCaseFoldCodes { i32 42916, i32 42964 }, %struct.OnigPairCaseFoldCodes { i32 42917, i32 42965 }, %struct.OnigPairCaseFoldCodes { i32 42918, i32 42966 }, %struct.OnigPairCaseFoldCodes { i32 42919, i32 42967 }, %struct.OnigPairCaseFoldCodes { i32 42920, i32 42968 }, %struct.OnigPairCaseFoldCodes { i32 42921, i32 42969 }, %struct.OnigPairCaseFoldCodes { i32 42922, i32 42970 }, %struct.OnigPairCaseFoldCodes { i32 42923, i32 42971 }, %struct.OnigPairCaseFoldCodes { i32 42924, i32 42972 }, %struct.OnigPairCaseFoldCodes { i32 42925, i32 42973 }, %struct.OnigPairCaseFoldCodes { i32 42926, i32 42974 }, %struct.OnigPairCaseFoldCodes { i32 42927, i32 42975 }, %struct.OnigPairCaseFoldCodes { i32 42928, i32 42976 }, %struct.OnigPairCaseFoldCodes { i32 42929, i32 42977 }, %struct.OnigPairCaseFoldCodes { i32 42930, i32 42978 }, %struct.OnigPairCaseFoldCodes { i32 42931, i32 42979 }, %struct.OnigPairCaseFoldCodes { i32 42932, i32 42980 }, %struct.OnigPairCaseFoldCodes { i32 42933, i32 42981 }, %struct.OnigPairCaseFoldCodes { i32 42934, i32 42982 }, %struct.OnigPairCaseFoldCodes { i32 42935, i32 42983 }, %struct.OnigPairCaseFoldCodes { i32 42936, i32 42984 }, %struct.OnigPairCaseFoldCodes { i32 42937, i32 42985 }, %struct.OnigPairCaseFoldCodes { i32 42938, i32 42986 }, %struct.OnigPairCaseFoldCodes { i32 42939, i32 42987 }, %struct.OnigPairCaseFoldCodes { i32 42940, i32 42988 }, %struct.OnigPairCaseFoldCodes { i32 42941, i32 42989 }, %struct.OnigPairCaseFoldCodes { i32 42942, i32 42990 }, %struct.OnigPairCaseFoldCodes { i32 42943, i32 42991 }, %struct.OnigPairCaseFoldCodes { i32 42944, i32 42992 }, %struct.OnigPairCaseFoldCodes { i32 42945, i32 42993 }], align 16
@onig_jis_property.wordlist = internal unnamed_addr constant [13 x %struct.enc_property] [%struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 0, i8 17 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 4, i8 18 }, %struct.enc_property { i8 10, i8 19 }, %struct.enc_property { i8 -1, i8 0 }, %struct.enc_property { i8 16, i8 15 }, %struct.enc_property { i8 25, i8 16 }, %struct.enc_property { i8 34, i8 20 }], align 16
@onig_jis_property_pool_contents = internal constant %struct.onig_jis_property_pool_t { [4 x i8] c"han\00", [6 x i8] c"latin\00", [6 x i8] c"greek\00", [9 x i8] c"hiragana\00", [9 x i8] c"katakana\00", [9 x i8] c"cyrillic\00" }, align 1
@onig_jis_property_hash.asso_values = internal unnamed_addr constant [128 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\03\0D\02\0D\01\01\0D\0D\02\01\0D\01\0D\0D\0D\01\0D\01\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\03\0D\02\0D\01\01\0D\0D\02\01\0D\01\0D\0D\0D\01\0D\01\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@OnigEncodingASCII = external constant %struct.OnigEncodingTypeST, align 8
@OnigEncAsciiCtypeTable = external local_unnamed_addr constant [0 x i16], align 2
@PropertyList = internal unnamed_addr constant [6 x ptr] [ptr @CR_Hiragana, ptr @CR_Katakana, ptr @CR_Han, ptr @CR_Latin, ptr @CR_Greek, ptr @CR_Cyrillic], align 16
@CR_Hiragana = internal constant [3 x i32] [i32 1, i32 42145, i32 42227], align 4
@CR_Katakana = internal constant [7 x i32] [i32 3, i32 36518, i32 36527, i32 36529, i32 36573, i32 42401, i32 42486], align 16
@CR_Han = internal constant [9 x i32] [i32 4, i32 41400, i32 41400, i32 45217, i32 53203, i32 53409, i32 62630, i32 9416865, i32 9432563], align 16
@CR_Latin = internal constant [9 x i32] [i32 4, i32 65, i32 90, i32 97, i32 122, i32 41921, i32 41946, i32 41953, i32 41978], align 16
@CR_Greek = internal constant [5 x i32] [i32 2, i32 42657, i32 42680, i32 42689, i32 42712], align 16
@CR_Cyrillic = internal constant [5 x i32] [i32 2, i32 42913, i32 42945, i32 42961, i32 42993], align 16

; Function Attrs: nounwind sspstrong uwtable
define void @Init_euc_jp() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_EUC_JP) #8 ; 0 uses
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
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = icmp eq ptr %i.a, %1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.l = load i32, ptr %i.k, align 4, !tbaa !6
  %i.m = sub nsw i32 0, %i.l
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.p = load i8, ptr %i.a, align 1, !tbaa !10
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10    ; 3 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp slt i8 %i.s, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i8 %i.s, -1
  %i.w = select i1 %i.v, i32 2, i32 -1
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.x = icmp eq ptr %i.o, %1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.z = load i32, ptr %i.y, align 4, !tbaa !6
  %i.aa = sub nsw i32 1, %i.z
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.t
  %i.ac = load i8, ptr %i.o, align 1, !tbaa !10
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = icmp eq i8 %i.af, -1
  %i.ah = select i1 %i.ag, i32 3, i32 -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ %i.m, %bb.d ], [ %i.w, %bb.f ], [ %i.aa, %bb.h ], [ %i.ah, %bb.i ]
  ret i32 %.0
}

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal i32 @mbc_to_code(ptr noundef readonly captures(address) %0, ptr noundef readnone captures(address) %1, ptr readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 4 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %i.f = sext i8 %i.e to i64
  %i.g = icmp slt i8 %i.e, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.e, -1
  br i1 %i.h, label %mbc_enc_len.exit.thread, label %mbc_enc_len.exit.thread31

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %mbc_enc_len.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10    ; 3 uses
  %i.p = sext i8 %i.o to i64
  %i.q = icmp slt i8 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.o, -1
  %i.s = select i1 %i.r, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread31

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.k, %1
  br i1 %i.t, label %mbc_enc_len.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.p
  %i.v = load i8, ptr %i.k, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = select i1 %i.z, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread31

mbc_enc_len.exit.thread:                          ; preds = %bb.b
  %i.ab = zext i8 %i.b to i32
  br label %.loopexit

mbc_enc_len.exit.thread31:                        ; preds = %bb.b, %bb.e, %bb.g
  %.0.i.ph = phi i32 [ %i.aa, %bb.g ], [ %i.s, %bb.e ], [ -1, %bb.b ]
  %i.ac = zext i8 %i.b to i32
  br label %.preheader

mbc_enc_len.exit:                                 ; preds = %bb.f, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %bb.f ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !6
  %i.af = sub nsw i32 %.sink, %i.ae               ; 2 uses
  %i.ag = zext i8 %i.b to i32                     ; 2 uses
  %i.ah = icmp eq i32 %i.af, 1
  br i1 %i.ah, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %mbc_enc_len.exit.thread31, %mbc_enc_len.exit
  %i.ai = phi i32 [ %i.ac, %mbc_enc_len.exit.thread31 ], [ %i.ag, %mbc_enc_len.exit ] ; 2 uses
  %.0.i33 = phi i32 [ %.0.i.ph, %mbc_enc_len.exit.thread31 ], [ %i.af, %mbc_enc_len.exit ] ; 2 uses
  %i.aj = icmp sgt i32 %.0.i33, 1
  %.not22 = icmp ult ptr %i.a, %1
  %or.cond23 = select i1 %i.aj, i1 %.not22, i1 false
  br i1 %or.cond23, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01826 = phi ptr [ %.018, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %.025 = phi i32 [ %i.an, %.lr.ph ], [ %i.ai, %.preheader ]
  %.01724 = phi i32 [ %i.ao, %.lr.ph ], [ 1, %.preheader ]
  %i.ak = load i8, ptr %.01826, align 1, !tbaa !10
  %i.al = zext i8 %i.ak to i32
  %i.am = shl i32 %.025, 8
  %i.an = or disjoint i32 %i.am, %i.al            ; 2 uses
  %i.ao = add nuw nsw i32 %.01724, 1              ; 2 uses
  %.018 = getelementptr inbounds nuw i8, ptr %.01826, i64 1 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %.0.i33
  %.not = icmp ult ptr %.018, %1
  %or.cond = select i1 %i.ap, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %mbc_enc_len.exit.thread, %mbc_enc_len.exit
  %.016 = phi i32 [ %i.ag, %mbc_enc_len.exit ], [ %i.ab, %mbc_enc_len.exit.thread ], [ %i.ai, %.preheader ], [ %i.an, %.lr.ph ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 4) i32 @code_to_mbclen(i32 noundef %0, ptr readnone captures(none) %1) #4 {
bb.a:
  %i.a = icmp ult i32 %0, 128
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i32 %0, 16777215
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = and i32 %0, 8421504
  %i.d = icmp eq i32 %i.c, 8421504
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %0, 16744576
  %i.f = icmp eq i32 %i.e, 32896
  %. = select i1 %i.f, i32 2, i32 -400
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.c ], [ 1, %bb.a ], [ -401, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal range(i32 -400, 4) i32 @code_to_mbc(i32 noundef %0, ptr noundef captures(none) %1, ptr readnone captures(none) %2) #5 {
bb.a:
  %i.a = and i32 %0, 16711680
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 16
  %i.c = trunc i32 %i.b to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.idx = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.d = and i32 %0, 65280
  %.not18 = icmp eq i32 %i.d, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.0.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx
  %i.e = lshr i32 %0, 8
  %i.f = trunc i32 %i.e to i8
  %.0.add = add nuw nsw i64 %.0.idx, 1
  store i8 %i.f, ptr %.0.ptr, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.idx = phi i64 [ %.0.add, %bb.d ], [ %.0.idx, %bb.c ] ; 3 uses
  %.1.ptr = getelementptr inbounds nuw i8, ptr %1, i64 %.1.idx
  %i.g = trunc i32 %0 to i8
  %.1.add = add nuw nsw i64 %.1.idx, 1            ; 3 uses
  store i8 %i.g, ptr %.1.ptr, align 1, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %1, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i64                      ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr @trans, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10    ; 3 uses
  %i.m = sext i8 %i.l to i64
  %i.n = icmp slt i8 %i.l, 0
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = icmp eq i8 %i.l, -1
  %i.p = select i1 %i.o, i32 1, i32 -1
  br label %mbc_enc_len.exit

bb.g:                                             ; preds = %bb.e
  %i.q = icmp samesign eq i64 %.1.idx, 0
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.j
  %i.s = load i32, ptr %i.r, align 4, !tbaa !6
  %i.t = sub nsw i32 0, %i.s
  br label %mbc_enc_len.exit

bb.i:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.m
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.w = load i8, ptr %i.h, align 1, !tbaa !10
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10    ; 3 uses
  %i.aa = sext i8 %i.z to i64
  %i.ab = icmp slt i8 %i.z, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp eq i8 %i.z, -1
  %i.ad = select i1 %i.ac, i32 2, i32 -1
  br label %mbc_enc_len.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = icmp eq i64 %.1.add, 2
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.j
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !6
  %i.ah = sub nsw i32 1, %i.ag
  br label %mbc_enc_len.exit

bb.m:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.aa
  %i.aj = load i8, ptr %i.v, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !10
  %i.an = icmp eq i8 %i.am, -1
  %i.ao = select i1 %i.an, i32 3, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i = phi i32 [ %i.p, %bb.f ], [ %i.t, %bb.h ], [ %i.ad, %bb.j ], [ %i.ah, %bb.l ], [ %i.ao, %bb.m ]
  %i.ap = sext i32 %.0.i to i64
  %.not19 = icmp eq i64 %.1.add, %i.ap
  %i.aq = trunc nuw nsw i64 %.1.add to i32
  %.016 = select i1 %.not19, i32 %i.aq, i32 -400
  ret i32 %.016
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -400, 4) i32 @mbc_case_fold(i32 %0, ptr noundef captures(none) %1, ptr noundef readnone captures(address) %2, ptr noundef captures(none) %3, ptr readnone captures(none) %4) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 6 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %mbc_enc_len.exit

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  store i8 %i.f, ptr %3, align 1, !tbaa !10
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.y

mbc_enc_len.exit:                                 ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.j = zext i8 %i.b to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr @trans, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10    ; 3 uses
  %i.m = sext i8 %i.l to i64
  %i.n = icmp slt i8 %i.l, 0
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %mbc_enc_len.exit
  %i.o = icmp eq ptr %i.i, %2
  br i1 %i.o, label %mbc_enc_len.exit.i, label %bb.e

bb.d:                                             ; preds = %mbc_enc_len.exit
  %i.p = icmp eq i8 %i.l, -1
  br i1 %i.p, label %mbc_enc_len.exit.thread.i, label %mbc_enc_len.exit.thread31.i

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.i, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !10    ; 3 uses
  %i.w = sext i8 %i.v to i64
  %i.x = icmp slt i8 %i.v, 0
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.v, -1
  %i.z = select i1 %i.y, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread31.i

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq ptr %i.r, %2
  br i1 %i.aa, label %mbc_enc_len.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.w
  %i.ac = load i8, ptr %i.r, align 1, !tbaa !10
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !10
  %i.ag = icmp eq i8 %i.af, -1
  %i.ah = select i1 %i.ag, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread31.i

mbc_enc_len.exit.thread.i:                        ; preds = %bb.d
  %i.ai = zext i8 %i.b to i32
  br label %mbc_to_code.exit

mbc_enc_len.exit.thread31.i:                      ; preds = %bb.h, %bb.f, %bb.d
  %.0.i.ph.i = phi i32 [ %i.ah, %bb.h ], [ %i.z, %bb.f ], [ -1, %bb.d ]
  %i.aj = zext i8 %i.b to i32
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.g, %bb.c
  %.sink.i = phi i32 [ 0, %bb.c ], [ 1, %bb.g ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.j
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !6
  %i.am = sub nsw i32 %.sink.i, %i.al             ; 2 uses
  %i.an = zext i8 %i.b to i32                     ; 2 uses
  %i.ao = icmp eq i32 %i.am, 1
  br i1 %i.ao, label %mbc_to_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %mbc_enc_len.exit.i, %mbc_enc_len.exit.thread31.i
  %i.ap = phi i32 [ %i.aj, %mbc_enc_len.exit.thread31.i ], [ %i.an, %mbc_enc_len.exit.i ] ; 2 uses
  %.0.i33.i = phi i32 [ %.0.i.ph.i, %mbc_enc_len.exit.thread31.i ], [ %i.am, %mbc_enc_len.exit.i ] ; 2 uses
  %i.aq = icmp sgt i32 %.0.i33.i, 1
  %.not22.i = icmp ult ptr %i.i, %2
  %or.cond23.i = select i1 %i.aq, i1 %.not22.i, i1 false
  br i1 %or.cond23.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01826.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %i.i, %.preheader.i ] ; 2 uses
  %.025.i = phi i32 [ %i.au, %.lr.ph.i ], [ %i.ap, %.preheader.i ]
  %.01724.i = phi i32 [ %i.av, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.ar = load i8, ptr %.01826.i, align 1, !tbaa !10
  %i.as = zext i8 %i.ar to i32
  %i.at = shl i32 %.025.i, 8
  %i.au = or disjoint i32 %i.at, %i.as            ; 2 uses
  %i.av = add nuw nsw i32 %.01724.i, 1            ; 2 uses
  %.018.i = getelementptr inbounds nuw i8, ptr %.01826.i, i64 1 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.0.i33.i
  %.not.i = icmp ult ptr %.018.i, %2
  %or.cond.i = select i1 %i.aw, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %mbc_enc_len.exit.thread.i, %mbc_enc_len.exit.i, %.preheader.i
  %.016.i = phi i32 [ %i.an, %mbc_enc_len.exit.i ], [ %i.ai, %mbc_enc_len.exit.thread.i ], [ %i.ap, %.preheader.i ], [ %i.au, %.lr.ph.i ] ; 7 uses
  %i.ax = add i32 %.016.i, -41921
  %i.ay = icmp ult i32 %i.ax, 26
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %mbc_to_code.exit
  %i.az = or disjoint i32 %.016.i, 32
  br label %get_lower_case.exit

bb.j:                                             ; preds = %mbc_to_code.exit
  %i.ba = add i32 %.016.i, -42657
  %i.bb = icmp ult i32 %i.ba, 24
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bc = add nuw nsw i32 %.016.i, 32
  br label %get_lower_case.exit

bb.l:                                             ; preds = %bb.j
  %i.bd = add i32 %.016.i, -42913
  %i.be = icmp ult i32 %i.bd, 33
  %i.bf = add nuw nsw i32 %.016.i, 48
  %spec.select.i = select i1 %i.be, i32 %i.bf, i32 %.016.i
  br label %get_lower_case.exit

get_lower_case.exit:                              ; preds = %bb.i, %bb.k, %bb.l
  %.0.i18 = phi i32 [ %i.az, %bb.i ], [ %i.bc, %bb.k ], [ %spec.select.i, %bb.l ] ; 5 uses
  %i.bg = and i32 %.0.i18, 16711680
  %.not.i19 = icmp eq i32 %i.bg, 0
  br i1 %.not.i19, label %bb.n, label %bb.m

bb.m:                                             ; preds = %get_lower_case.exit
  %i.bh = lshr i32 %.0.i18, 16
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %3, align 1, !tbaa !10
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %get_lower_case.exit
  %.0.idx.i = phi i64 [ 1, %bb.m ], [ 0, %get_lower_case.exit ] ; 3 uses
  %i.bj = and i32 %.0.i18, 65280
  %.not18.i = icmp eq i32 %i.bj, 0
  br i1 %.not18.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 %.0.idx.i
  %i.bk = lshr i32 %.0.i18, 8
  %i.bl = trunc i32 %i.bk to i8
  %.0.add.i = add nuw nsw i64 %.0.idx.i, 1
  store i8 %i.bl, ptr %.0.ptr.i, align 1, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.idx.i = phi i64 [ %.0.add.i, %bb.o ], [ %.0.idx.i, %bb.n ] ; 3 uses
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 %.1.idx.i
  %i.bm = trunc i32 %.0.i18 to i8
  %.1.add.i = add nuw nsw i64 %.1.idx.i, 1        ; 3 uses
  store i8 %i.bm, ptr %.1.ptr.i, align 1, !tbaa !10
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bo = load i8, ptr %3, align 1, !tbaa !10
  %i.bp = zext i8 %i.bo to i64                    ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr @trans, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !10  ; 3 uses
  %i.bs = sext i8 %i.br to i64
  %i.bt = icmp slt i8 %i.br, 0
  br i1 %i.bt, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = icmp eq i8 %i.br, -1
  %i.bv = select i1 %i.bu, i32 1, i32 -1
  br label %code_to_mbc.exit

bb.r:                                             ; preds = %bb.p
  %i.bw = icmp samesign eq i64 %.1.idx.i, 0
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.bp
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !6
  %i.bz = sub nsw i32 0, %i.by
  br label %code_to_mbc.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.bs
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.cc = load i8, ptr %i.bn, align 1, !tbaa !10
  %i.cd = zext i8 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !10  ; 3 uses
  %i.cg = sext i8 %i.cf to i64
  %i.ch = icmp slt i8 %i.cf, 0
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ci = icmp eq i8 %i.cf, -1
  %i.cj = select i1 %i.ci, i32 2, i32 -1
  br label %code_to_mbc.exit

bb.v:                                             ; preds = %bb.t
  %i.ck = icmp eq i64 %.1.add.i, 2
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.bp
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !6
  %i.cn = sub nsw i32 1, %i.cm
  br label %code_to_mbc.exit

bb.x:                                             ; preds = %bb.v
  %i.co = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.cg
  %i.cp = load i8, ptr %i.cb, align 1, !tbaa !10
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = icmp eq i8 %i.cs, -1
  %i.cu = select i1 %i.ct, i32 3, i32 -1
  br label %code_to_mbc.exit

code_to_mbc.exit:                                 ; preds = %bb.q, %bb.s, %bb.u, %bb.w, %bb.x
  %.0.i.i = phi i32 [ %i.bv, %bb.q ], [ %i.bz, %bb.s ], [ %i.cj, %bb.u ], [ %i.cn, %bb.w ], [ %i.cu, %bb.x ]
  %i.cv = sext i32 %.0.i.i to i64
  %.not19.i = icmp eq i64 %.1.add.i, %i.cv
  %i.cw = trunc nuw nsw i64 %.1.add.i to i32
  %.016.i21 = select i1 %.not19.i, i32 %i.cw, i32 -400 ; 2 uses
  %i.cx = icmp eq i32 %.016.i21, -400
  %spec.store.select = select i1 %i.cx, i32 1, i32 %.016.i21 ; 2 uses
  %i.cy = load ptr, ptr %1, align 8, !tbaa !13
  %i.cz = sext i32 %spec.store.select to i64
  %i.da = getelementptr inbounds i8, ptr %i.cy, i64 %i.cz
  br label %bb.y

bb.y:                                             ; preds = %code_to_mbc.exit, %bb.b
  %storemerge = phi ptr [ %i.da, %code_to_mbc.exit ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ %spec.store.select, %code_to_mbc.exit ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !13
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @apply_all_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_apply_all_case_fold_with_map(i32 noundef 83, ptr noundef nonnull @CaseFoldMap, i32 noundef 0, i32 noundef %0, ptr noundef %1, ptr noundef %2) #8
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !10      ; 6 uses
  %i.c = zext i8 %i.b to i64                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 4 uses
  %i.f = sext i8 %i.e to i64                      ; 2 uses
  %i.g = icmp slt i8 %i.e, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i8 %i.e, -1
  br i1 %i.h, label %mbc_to_code.exit.thread56, label %mbc_enc_len.exit.thread31.i

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %2
  br i1 %i.i, label %mbc_enc_len.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.l = load i8, ptr %i.a, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !10    ; 3 uses
  %i.p = sext i8 %i.o to i64
  %i.q = icmp slt i8 %i.o, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = icmp eq i8 %i.o, -1
  %i.s = select i1 %i.r, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread31.i

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.k, %2
  br i1 %i.t, label %mbc_enc_len.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.p
  %i.v = load i8, ptr %i.k, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = icmp eq i8 %i.y, -1
  %i.aa = select i1 %i.z, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread31.i

mbc_enc_len.exit.thread31.i:                      ; preds = %bb.g, %bb.e, %bb.b
  %.0.i.ph.i = phi i32 [ %i.aa, %bb.g ], [ %i.s, %bb.e ], [ -1, %bb.b ]
  %i.ab = zext i8 %i.b to i32
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.f, %bb.c
  %.sink.i = phi i32 [ 0, %bb.c ], [ 1, %bb.f ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !6
  %i.ae = sub nsw i32 %.sink.i, %i.ad             ; 2 uses
  %i.af = zext i8 %i.b to i32                     ; 2 uses
  %i.ag = icmp eq i32 %i.ae, 1
  br i1 %i.ag, label %mbc_to_code.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %mbc_enc_len.exit.i, %mbc_enc_len.exit.thread31.i
  %i.ah = phi i32 [ %i.ab, %mbc_enc_len.exit.thread31.i ], [ %i.af, %mbc_enc_len.exit.i ] ; 2 uses
  %.0.i33.i = phi i32 [ %.0.i.ph.i, %mbc_enc_len.exit.thread31.i ], [ %i.ae, %mbc_enc_len.exit.i ] ; 2 uses
  %i.ai = icmp sgt i32 %.0.i33.i, 1
  %.not22.i = icmp ult ptr %i.a, %2
  %or.cond23.i = select i1 %i.ai, i1 %.not22.i, i1 false
  br i1 %or.cond23.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01826.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %i.a, %.preheader.i ] ; 2 uses
  %.025.i = phi i32 [ %i.am, %.lr.ph.i ], [ %i.ah, %.preheader.i ]
  %.01724.i = phi i32 [ %i.an, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.aj = load i8, ptr %.01826.i, align 1, !tbaa !10
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl i32 %.025.i, 8
  %i.am = or disjoint i32 %i.al, %i.ak            ; 2 uses
  %i.an = add nuw nsw i32 %.01724.i, 1            ; 2 uses
  %.018.i = getelementptr inbounds nuw i8, ptr %.01826.i, i64 1 ; 2 uses
  %i.ao = icmp slt i32 %i.an, %.0.i33.i
  %.not.i = icmp ult ptr %.018.i, %2
  %or.cond.i = select i1 %i.ao, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %.preheader.i
  %.016.i = phi i32 [ %i.ah, %.preheader.i ], [ %i.am, %.lr.ph.i ] ; 3 uses
  %i.ap = icmp ult i32 %.016.i, 128
  br i1 %i.ap, label %bb.h, label %bb.i

mbc_to_code.exit.thread56:                        ; preds = %bb.b
  %i.aq = zext i8 %i.b to i32
  %i.ar = icmp sgt i8 %i.b, -1
  br i1 %i.ar, label %bb.h, label %.thread58

mbc_to_code.exit.thread:                          ; preds = %mbc_enc_len.exit.i
  %i.as = icmp sgt i8 %i.b, -1
  br i1 %i.as, label %bb.h, label %.thread52

bb.h:                                             ; preds = %mbc_to_code.exit.thread56, %mbc_to_code.exit.thread, %mbc_to_code.exit
  %i.at = tail call i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %bb.y

bb.i:                                             ; preds = %mbc_to_code.exit
  br i1 %i.g, label %.thread58, label %.thread52

.thread58:                                        ; preds = %mbc_to_code.exit.thread56, %bb.i
  %.016.i5060 = phi i32 [ %.016.i, %bb.i ], [ %i.aq, %mbc_to_code.exit.thread56 ]
  %i.au = icmp eq i8 %i.e, -1
  %i.av = select i1 %i.au, i32 1, i32 -1
  br label %mbc_enc_len.exit

.thread52:                                        ; preds = %mbc_to_code.exit.thread, %bb.i
  %.016.i5055 = phi i32 [ %.016.i, %bb.i ], [ %i.af, %mbc_to_code.exit.thread ] ; 4 uses
  %i.aw = icmp eq ptr %i.a, %2
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread52
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !6
  %i.az = sub nsw i32 0, %i.ay
  br label %mbc_enc_len.exit

bb.k:                                             ; preds = %.thread52
  %i.ba = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.f
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !10
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !10  ; 3 uses
  %i.bg = sext i8 %i.bf to i64
  %i.bh = icmp slt i8 %i.bf, 0
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bi = icmp eq i8 %i.bf, -1
  %i.bj = select i1 %i.bi, i32 2, i32 -1
  br label %mbc_enc_len.exit

bb.m:                                             ; preds = %bb.k
  %i.bk = icmp eq ptr %i.bb, %2
  br i1 %i.bk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !6
  %i.bn = sub nsw i32 1, %i.bm
  br label %mbc_enc_len.exit

bb.o:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %i.bg
  %i.bp = load i8, ptr %i.bb, align 1, !tbaa !10
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !10
  %i.bt = icmp eq i8 %i.bs, -1
  %i.bu = select i1 %i.bt, i32 3, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %.thread58, %bb.j, %bb.l, %bb.n, %bb.o
  %.016.i5054 = phi i32 [ %.016.i5060, %.thread58 ], [ %.016.i5055, %bb.j ], [ %.016.i5055, %bb.l ], [ %.016.i5055, %bb.n ], [ %.016.i5055, %bb.o ] ; 16 uses
  %.0.i = phi i32 [ %i.av, %.thread58 ], [ %i.az, %bb.j ], [ %i.bj, %bb.l ], [ %i.bn, %bb.n ], [ %i.bu, %bb.o ] ; 2 uses
  %i.bv = add i32 %.016.i5054, -41921
  %i.bw = icmp ult i32 %i.bv, 26
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %mbc_enc_len.exit
  %i.bx = or disjoint i32 %.016.i5054, 32
  br label %.thread

bb.q:                                             ; preds = %mbc_enc_len.exit
  %i.by = add i32 %.016.i5054, -42657
  %i.bz = icmp ult i32 %i.by, 24
  br i1 %i.bz, label %bb.r, label %get_lower_case.exit

bb.r:                                             ; preds = %bb.q
  %i.ca = add nuw nsw i32 %.016.i5054, 32
  br label %.thread

get_lower_case.exit:                              ; preds = %bb.q
  %i.cb = add i32 %.016.i5054, -42913
  %i.cc = icmp ult i32 %i.cb, 33
  %i.cd = add nuw nsw i32 %.016.i5054, 48
  %spec.select.i = select i1 %i.cc, i32 %i.cd, i32 %.016.i5054 ; 3 uses
  %i.ce = add i32 %.016.i5054, -41953
  %i.cf = icmp ult i32 %i.ce, 26
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %get_lower_case.exit
  %i.cg = add nsw i32 %.016.i5054, -32
  br label %get_upper_case.exit

bb.t:                                             ; preds = %get_lower_case.exit
  %i.ch = add i32 %.016.i5054, -42689
  %i.ci = icmp ult i32 %i.ch, 24
  br i1 %i.ci, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %i.cj = add nsw i32 %.016.i5054, -32
  br label %get_upper_case.exit

.thread:                                          ; preds = %bb.p, %bb.r, %bb.t
  %.0.i323739 = phi i32 [ %spec.select.i, %bb.t ], [ %i.ca, %bb.r ], [ %i.bx, %bb.p ]
  %i.ck = add i32 %.016.i5054, -42961
  %i.cl = icmp ult i32 %i.ck, 33
  %i.cm = add nsw i32 %.016.i5054, -48
  %spec.select.i33 = select i1 %i.cl, i32 %i.cm, i32 %.016.i5054
  br label %get_upper_case.exit

get_upper_case.exit:                              ; preds = %bb.s, %bb.u, %.thread
  %.0.i3236 = phi i32 [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.u ], [ %.0.i323739, %.thread ] ; 2 uses
  %.0.i34 = phi i32 [ %i.cg, %bb.s ], [ %i.cj, %bb.u ], [ %spec.select.i33, %.thread ] ; 2 uses
  %.not = icmp eq i32 %.016.i5054, %.0.i3236
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %get_upper_case.exit
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.cn, align 4, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i3236, ptr %i.co, align 4, !tbaa !6
  br label %bb.y

bb.w:                                             ; preds = %get_upper_case.exit
  %.not31 = icmp eq i32 %.016.i5054, %.0.i34
  br i1 %.not31, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.cp, align 4, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i34, ptr %i.cq, align 4, !tbaa !6
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %bb.h
  %.0 = phi i32 [ %i.at, %bb.h ], [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %bb.w ]
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
  %i.af = tail call i32 @onigenc_with_ascii_strnicmp(ptr noundef nonnull @OnigEncodingASCII, ptr noundef nonnull %1, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.z, i32 noundef %i.g) #8
  %.not27.i = icmp eq i32 %i.af, 0
  br i1 %.not27.i, label %bb.f, label %.critedge29.thread.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.d
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !10
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %onig_jis_property.exit, label %.critedge29.thread.i

.critedge29.thread.i:                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.a
  %i.aj = tail call i32 @onigenc_minimum_property_name_to_ctype(ptr noundef %0, ptr noundef %1, ptr noundef %2) #8
  br label %bb.g

onig_jis_property.exit:                           ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !21
  %i.am = zext i8 %i.al to i32
  br label %bb.g
end_hunk_0
