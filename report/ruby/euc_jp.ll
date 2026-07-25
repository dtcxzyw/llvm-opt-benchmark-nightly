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
define internal range(i32 -2147483647, -2147483648) i32 @mbc_enc_len(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10
  %i.c = zext i8 %i.b to i64                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = sext i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  %i.h = select i1 %i.g, i32 1, i32 -1
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %i.a, %1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = sub nsw i32 0, %i.k
  br label %bb.j

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
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.v = icmp eq ptr %i.n, %1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.x = load i32, ptr %i.w, align 4, !tbaa !6
  %i.y = sub nsw i32 1, %i.x
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.aa = load i8, ptr %i.n, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = icmp eq i8 %i.ad, -1
  %i.af = select i1 %i.ae, i32 3, i32 -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ %i.l, %bb.d ], [ %i.u, %bb.f ], [ %i.y, %bb.h ], [ %i.af, %bb.i ]
  ret i32 %.0
}

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal i32 @mbc_to_code(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !10      ; 4 uses
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr @trans, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10    ; 3 uses
  %3 = sext i8 %i.e to i64
  %i.f = icmp slt i8 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  br i1 %i.g, label %mbc_enc_len.exit.thread, label %mbc_enc_len.exit.thread32

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, %1
  br i1 %i.h, label %mbc_enc_len.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.a, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10    ; 3 uses
  %4 = sext i8 %i.n to i64
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.n, -1
  %i.q = select i1 %i.p, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread32

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %i.j, %1
  br i1 %i.r, label %mbc_enc_len.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.t = load i8, ptr %i.j, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = icmp eq i8 %i.w, -1
  %i.y = select i1 %i.x, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread32

mbc_enc_len.exit.thread:                          ; preds = %bb.b
  %i.z = zext i8 %i.b to i32
  br label %.loopexit

mbc_enc_len.exit.thread32:                        ; preds = %bb.b, %bb.e, %bb.g
  %.0.i.ph = phi i32 [ %i.y, %bb.g ], [ %i.q, %bb.e ], [ -1, %bb.b ]
  %i.aa = zext i8 %i.b to i32
  br label %.preheader

mbc_enc_len.exit:                                 ; preds = %bb.f, %bb.c
  %.sink = phi i32 [ 0, %bb.c ], [ 1, %bb.f ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !6
  %i.ad = sub nsw i32 %.sink, %i.ac               ; 2 uses
  %i.ae = zext i8 %i.b to i32                     ; 2 uses
  %i.af = icmp eq i32 %i.ad, 1
  br i1 %i.af, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %mbc_enc_len.exit.thread32, %mbc_enc_len.exit
  %i.ag = phi i32 [ %i.aa, %mbc_enc_len.exit.thread32 ], [ %i.ae, %mbc_enc_len.exit ] ; 2 uses
  %.0.i34 = phi i32 [ %.0.i.ph, %mbc_enc_len.exit.thread32 ], [ %i.ad, %mbc_enc_len.exit ] ; 2 uses
  %i.ah = icmp sgt i32 %.0.i34, 1
  %.not22 = icmp ult ptr %i.a, %1
  %or.cond23 = select i1 %i.ah, i1 %.not22, i1 false
  br i1 %or.cond23, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01826 = phi ptr [ %.018, %.lr.ph ], [ %i.a, %.preheader ] ; 2 uses
  %.025 = phi i32 [ %i.al, %.lr.ph ], [ %i.ag, %.preheader ]
  %.01724 = phi i32 [ %i.am, %.lr.ph ], [ 1, %.preheader ]
  %i.ai = load i8, ptr %.01826, align 1, !tbaa !10
  %i.aj = zext i8 %i.ai to i32
  %i.ak = shl i32 %.025, 8
  %i.al = or disjoint i32 %i.ak, %i.aj            ; 2 uses
  %i.am = add nuw nsw i32 %.01724, 1              ; 2 uses
  %.018 = getelementptr inbounds nuw i8, ptr %.01826, i64 1 ; 2 uses
  %i.an = icmp slt i32 %i.am, %.0.i34
  %.not = icmp ult ptr %.018, %1
  %or.cond = select i1 %i.an, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %mbc_enc_len.exit.thread, %mbc_enc_len.exit
  %.016 = phi i32 [ %i.ae, %mbc_enc_len.exit ], [ %i.z, %mbc_enc_len.exit.thread ], [ %i.ag, %.preheader ], [ %i.al, %.lr.ph ]
  ret i32 %.016
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 -401, 4) i32 @code_to_mbclen(i32 noundef %0, ptr nofree readnone captures(none) %1) #4 {
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
define internal range(i32 -400, 4) i32 @code_to_mbc(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2) #5 {
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
  %3 = sext i8 %i.l to i64
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.l, -1
  %i.o = select i1 %i.n, i32 1, i32 -1
  br label %mbc_enc_len.exit

bb.g:                                             ; preds = %bb.e
  %i.p = icmp samesign eq i64 %.1.idx, 0
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.j
  %i.r = load i32, ptr %i.q, align 4, !tbaa !6
  %i.s = sub nsw i32 0, %i.r
  br label %mbc_enc_len.exit

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %3
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.v = load i8, ptr %i.h, align 1, !tbaa !10
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10    ; 3 uses
  %4 = sext i8 %i.y to i64
  %i.z = icmp slt i8 %i.y, 0
  br i1 %i.z, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aa = icmp eq i8 %i.y, -1
  %i.ab = select i1 %i.aa, i32 2, i32 -1
  br label %mbc_enc_len.exit

bb.k:                                             ; preds = %bb.i
  %i.ac = icmp eq i64 %.1.add, 2
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.j
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !6
  %i.af = sub nsw i32 1, %i.ae
  br label %mbc_enc_len.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.ah = load i8, ptr %i.u, align 1, !tbaa !10
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !10
  %i.al = icmp eq i8 %i.ak, -1
  %i.am = select i1 %i.al, i32 3, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %bb.f, %bb.h, %bb.j, %bb.l, %bb.m
  %.0.i = phi i32 [ %i.o, %bb.f ], [ %i.s, %bb.h ], [ %i.ab, %bb.j ], [ %i.af, %bb.l ], [ %i.am, %bb.m ]
  %i.an = sext i32 %.0.i to i64
  %.not19 = icmp eq i64 %.1.add, %i.an
  %i.ao = trunc nuw nsw i64 %.1.add to i32
  %.016 = select i1 %.not19, i32 %i.ao, i32 -400
  ret i32 %.016
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -400, 4) i32 @mbc_case_fold(i32 %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef captures(none) %3, ptr nofree readnone captures(none) %4) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !10    ; 6 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i8 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @OnigEncAsciiToLowerCaseTable, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  store i8 %i.f, ptr %3, align 1, !tbaa !10
  %i.g = load ptr, ptr %1, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.j = zext i8 %i.b to i64                      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr @trans, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10    ; 3 uses
  %5 = sext i8 %i.l to i64
  %i.m = icmp slt i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq ptr %i.i, %2
  br i1 %i.n, label %mbc_enc_len.exit.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = icmp eq i8 %i.l, -1
  br i1 %i.o, label %mbc_enc_len.exit.thread.i, label %mbc_enc_len.exit.thread32.i

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.r = load i8, ptr %i.i, align 1, !tbaa !10
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10    ; 3 uses
  %6 = sext i8 %i.u to i64
  %i.v = icmp slt i8 %i.u, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = icmp eq i8 %i.u, -1
  %i.x = select i1 %i.w, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread32.i

bb.h:                                             ; preds = %bb.f
  %i.y = icmp eq ptr %i.q, %2
  br i1 %i.y, label %mbc_enc_len.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %6
  %i.aa = load i8, ptr %i.q, align 1, !tbaa !10
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = icmp eq i8 %i.ad, -1
  %i.af = select i1 %i.ae, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread32.i

mbc_enc_len.exit.thread.i:                        ; preds = %bb.e
  %i.ag = zext i8 %i.b to i32
  br label %mbc_to_code.exit

mbc_enc_len.exit.thread32.i:                      ; preds = %bb.i, %bb.g, %bb.e
  %.0.i.ph.i = phi i32 [ %i.af, %bb.i ], [ %i.x, %bb.g ], [ -1, %bb.e ]
  %i.ah = zext i8 %i.b to i32
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.h, %bb.d
  %.sink.i = phi i32 [ 0, %bb.d ], [ 1, %bb.h ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.j
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !6
  %i.ak = sub nsw i32 %.sink.i, %i.aj             ; 2 uses
  %i.al = zext i8 %i.b to i32                     ; 2 uses
  %i.am = icmp eq i32 %i.ak, 1
  br i1 %i.am, label %mbc_to_code.exit, label %.preheader.i

.preheader.i:                                     ; preds = %mbc_enc_len.exit.i, %mbc_enc_len.exit.thread32.i
  %i.an = phi i32 [ %i.ah, %mbc_enc_len.exit.thread32.i ], [ %i.al, %mbc_enc_len.exit.i ] ; 2 uses
  %.0.i34.i = phi i32 [ %.0.i.ph.i, %mbc_enc_len.exit.thread32.i ], [ %i.ak, %mbc_enc_len.exit.i ] ; 2 uses
  %i.ao = icmp sgt i32 %.0.i34.i, 1
  %.not22.i = icmp ult ptr %i.i, %2
  %or.cond23.i = select i1 %i.ao, i1 %.not22.i, i1 false
  br i1 %or.cond23.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01826.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %i.i, %.preheader.i ] ; 2 uses
  %.025.i = phi i32 [ %i.as, %.lr.ph.i ], [ %i.an, %.preheader.i ]
  %.01724.i = phi i32 [ %i.at, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.ap = load i8, ptr %.01826.i, align 1, !tbaa !10
  %i.aq = zext i8 %i.ap to i32
  %i.ar = shl i32 %.025.i, 8
  %i.as = or disjoint i32 %i.ar, %i.aq            ; 2 uses
  %i.at = add nuw nsw i32 %.01724.i, 1            ; 2 uses
  %.018.i = getelementptr inbounds nuw i8, ptr %.01826.i, i64 1 ; 2 uses
  %i.au = icmp slt i32 %i.at, %.0.i34.i
  %.not.i = icmp ult ptr %.018.i, %2
  %or.cond.i = select i1 %i.au, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %mbc_enc_len.exit.thread.i, %mbc_enc_len.exit.i, %.preheader.i
  %.016.i = phi i32 [ %i.al, %mbc_enc_len.exit.i ], [ %i.ag, %mbc_enc_len.exit.thread.i ], [ %i.an, %.preheader.i ], [ %i.as, %.lr.ph.i ] ; 7 uses
  %i.av = add i32 %.016.i, -41921
  %i.aw = icmp ult i32 %i.av, 26
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %mbc_to_code.exit
  %i.ax = or disjoint i32 %.016.i, 32
  br label %get_lower_case.exit

bb.k:                                             ; preds = %mbc_to_code.exit
  %i.ay = add i32 %.016.i, -42657
  %i.az = icmp ult i32 %i.ay, 24
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = add nuw nsw i32 %.016.i, 32
  br label %get_lower_case.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = add i32 %.016.i, -42913
  %i.bc = icmp ult i32 %i.bb, 33
  %i.bd = add nuw nsw i32 %.016.i, 48
  %spec.select.i = select i1 %i.bc, i32 %i.bd, i32 %.016.i
  br label %get_lower_case.exit

get_lower_case.exit:                              ; preds = %bb.j, %bb.l, %bb.m
  %.0.i18 = phi i32 [ %i.ax, %bb.j ], [ %i.ba, %bb.l ], [ %spec.select.i, %bb.m ] ; 5 uses
  %i.be = and i32 %.0.i18, 16711680
  %.not.i19 = icmp eq i32 %i.be, 0
  br i1 %.not.i19, label %bb.o, label %bb.n

bb.n:                                             ; preds = %get_lower_case.exit
  %i.bf = lshr i32 %.0.i18, 16
  %i.bg = trunc i32 %i.bf to i8
  store i8 %i.bg, ptr %3, align 1, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %get_lower_case.exit
  %.0.idx.i = phi i64 [ 1, %bb.n ], [ 0, %get_lower_case.exit ] ; 3 uses
  %i.bh = and i32 %.0.i18, 65280
  %.not18.i = icmp eq i32 %i.bh, 0
  br i1 %.not18.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.0.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 %.0.idx.i
  %i.bi = lshr i32 %.0.i18, 8
  %i.bj = trunc i32 %i.bi to i8
  %.0.add.i = add nuw nsw i64 %.0.idx.i, 1
  store i8 %i.bj, ptr %.0.ptr.i, align 1, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1.idx.i = phi i64 [ %.0.add.i, %bb.p ], [ %.0.idx.i, %bb.o ] ; 3 uses
  %.1.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 %.1.idx.i
  %i.bk = trunc i32 %.0.i18 to i8
  %.1.add.i = add nuw nsw i64 %.1.idx.i, 1        ; 3 uses
  store i8 %i.bk, ptr %.1.ptr.i, align 1, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.bm = load i8, ptr %3, align 1, !tbaa !10
  %i.bn = zext i8 %i.bm to i64                    ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr @trans, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10  ; 3 uses
  %7 = sext i8 %i.bp to i64
  %i.bq = icmp slt i8 %i.bp, 0
  br i1 %i.bq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq i8 %i.bp, -1
  %i.bs = select i1 %i.br, i32 1, i32 -1
  br label %code_to_mbc.exit

bb.s:                                             ; preds = %bb.q
  %i.bt = icmp samesign eq i64 %.1.idx.i, 0
  br i1 %i.bt, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.bn
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !6
  %i.bw = sub nsw i32 0, %i.bv
  br label %code_to_mbc.exit

bb.u:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %7
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.bz = load i8, ptr %i.bl, align 1, !tbaa !10
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !10  ; 3 uses
  %8 = sext i8 %i.cc to i64
  %i.cd = icmp slt i8 %i.cc, 0
  br i1 %i.cd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ce = icmp eq i8 %i.cc, -1
  %i.cf = select i1 %i.ce, i32 2, i32 -1
  br label %code_to_mbc.exit

bb.w:                                             ; preds = %bb.u
  %i.cg = icmp eq i64 %.1.add.i, 2
  br i1 %i.cg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.bn
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !6
  %i.cj = sub nsw i32 1, %i.ci
  br label %code_to_mbc.exit

bb.y:                                             ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %8
  %i.cl = load i8, ptr %i.by, align 1, !tbaa !10
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = icmp eq i8 %i.co, -1
  %i.cq = select i1 %i.cp, i32 3, i32 -1
  br label %code_to_mbc.exit

code_to_mbc.exit:                                 ; preds = %bb.r, %bb.t, %bb.v, %bb.x, %bb.y
  %.0.i.i = phi i32 [ %i.bs, %bb.r ], [ %i.bw, %bb.t ], [ %i.cf, %bb.v ], [ %i.cj, %bb.x ], [ %i.cq, %bb.y ]
  %i.cr = sext i32 %.0.i.i to i64
  %.not19.i = icmp eq i64 %.1.add.i, %i.cr
  %i.cs = trunc nuw nsw i64 %.1.add.i to i32
  %.016.i21 = select i1 %.not19.i, i32 %i.cs, i32 -400 ; 2 uses
  %i.ct = icmp eq i32 %.016.i21, -400
  %spec.store.select = select i1 %i.ct, i32 1, i32 %.016.i21 ; 2 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !13
  %i.cv = sext i32 %spec.store.select to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  br label %bb.z

bb.z:                                             ; preds = %code_to_mbc.exit, %bb.b
  %storemerge = phi ptr [ %i.cw, %code_to_mbc.exit ], [ %i.h, %bb.b ]
  %.0 = phi i32 [ %spec.store.select, %code_to_mbc.exit ], [ 1, %bb.b ]
  store ptr %storemerge, ptr %1, align 8, !tbaa !13
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @apply_all_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
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
  %5 = sext i8 %i.e to i64                        ; 2 uses
  %i.f = icmp slt i8 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.e, -1
  br i1 %i.g, label %mbc_to_code.exit.thread40, label %mbc_enc_len.exit.thread32.i

bb.c:                                             ; preds = %bb.a
  %i.h = icmp eq ptr %i.a, %2
  br i1 %i.h, label %mbc_enc_len.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.a, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10    ; 3 uses
  %6 = sext i8 %i.n to i64
  %i.o = icmp slt i8 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = icmp eq i8 %i.n, -1
  %i.q = select i1 %i.p, i32 2, i32 -1
  br label %mbc_enc_len.exit.thread32.i

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq ptr %i.j, %2
  br i1 %i.r, label %mbc_enc_len.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %6
  %i.t = load i8, ptr %i.j, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10
  %i.x = icmp eq i8 %i.w, -1
  %i.y = select i1 %i.x, i32 3, i32 -1
  br label %mbc_enc_len.exit.thread32.i

mbc_enc_len.exit.thread32.i:                      ; preds = %bb.g, %bb.e, %bb.b
  %.0.i.ph.i = phi i32 [ %i.y, %bb.g ], [ %i.q, %bb.e ], [ -1, %bb.b ]
  %i.z = zext i8 %i.b to i32
  br label %.preheader.i

mbc_enc_len.exit.i:                               ; preds = %bb.f, %bb.c
  %.sink.i = phi i32 [ 0, %bb.c ], [ 1, %bb.f ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !6
  %i.ac = sub nsw i32 %.sink.i, %i.ab             ; 2 uses
  %i.ad = zext i8 %i.b to i32                     ; 2 uses
  %i.ae = icmp eq i32 %i.ac, 1
  br i1 %i.ae, label %mbc_to_code.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %mbc_enc_len.exit.i, %mbc_enc_len.exit.thread32.i
  %i.af = phi i32 [ %i.z, %mbc_enc_len.exit.thread32.i ], [ %i.ad, %mbc_enc_len.exit.i ] ; 2 uses
  %.0.i34.i = phi i32 [ %.0.i.ph.i, %mbc_enc_len.exit.thread32.i ], [ %i.ac, %mbc_enc_len.exit.i ] ; 2 uses
  %i.ag = icmp sgt i32 %.0.i34.i, 1
  %.not22.i = icmp ult ptr %i.a, %2
  %or.cond23.i = select i1 %i.ag, i1 %.not22.i, i1 false
  br i1 %or.cond23.i, label %.lr.ph.i, label %mbc_to_code.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.01826.i = phi ptr [ %.018.i, %.lr.ph.i ], [ %i.a, %.preheader.i ] ; 2 uses
  %.025.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.af, %.preheader.i ]
  %.01724.i = phi i32 [ %i.al, %.lr.ph.i ], [ 1, %.preheader.i ]
  %i.ah = load i8, ptr %.01826.i, align 1, !tbaa !10
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl i32 %.025.i, 8
  %i.ak = or disjoint i32 %i.aj, %i.ai            ; 2 uses
  %i.al = add nuw nsw i32 %.01724.i, 1            ; 2 uses
  %.018.i = getelementptr inbounds nuw i8, ptr %.01826.i, i64 1 ; 2 uses
  %i.am = icmp slt i32 %i.al, %.0.i34.i
  %.not.i = icmp ult ptr %.018.i, %2
  %or.cond.i = select i1 %i.am, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %mbc_to_code.exit, !llvm.loop !11

mbc_to_code.exit:                                 ; preds = %.lr.ph.i, %.preheader.i
  %.016.i = phi i32 [ %i.af, %.preheader.i ], [ %i.ak, %.lr.ph.i ] ; 3 uses
  %i.an = icmp ult i32 %.016.i, 128
  br i1 %i.an, label %bb.h, label %bb.i

mbc_to_code.exit.thread40:                        ; preds = %bb.b
  %i.ao = zext i8 %i.b to i32
  %i.ap = icmp sgt i8 %i.b, -1
  br i1 %i.ap, label %bb.h, label %.thread42

mbc_to_code.exit.thread:                          ; preds = %mbc_enc_len.exit.i
  %i.aq = icmp sgt i8 %i.b, -1
  br i1 %i.aq, label %bb.h, label %.thread

bb.h:                                             ; preds = %mbc_to_code.exit.thread40, %mbc_to_code.exit.thread, %mbc_to_code.exit
  %i.ar = tail call i32 @onigenc_ascii_get_case_fold_codes_by_str(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %bb.y

bb.i:                                             ; preds = %mbc_to_code.exit
  br i1 %i.f, label %.thread42, label %.thread

.thread42:                                        ; preds = %mbc_to_code.exit.thread40, %bb.i
  %.016.i3644 = phi i32 [ %.016.i, %bb.i ], [ %i.ao, %mbc_to_code.exit.thread40 ]
  %i.as = icmp eq i8 %i.e, -1
  %i.at = select i1 %i.as, i32 1, i32 -1
  br label %mbc_enc_len.exit

.thread:                                          ; preds = %mbc_to_code.exit.thread, %bb.i
  %.016.i3639 = phi i32 [ %.016.i, %bb.i ], [ %i.ad, %mbc_to_code.exit.thread ] ; 4 uses
  %i.au = icmp eq ptr %i.a, %2
  br i1 %i.au, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !6
  %i.ax = sub nsw i32 0, %i.aw
  br label %mbc_enc_len.exit

bb.k:                                             ; preds = %.thread
  %i.ay = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.ba = load i8, ptr %i.a, align 1, !tbaa !10
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10  ; 3 uses
  %7 = sext i8 %i.bd to i64
  %i.be = icmp slt i8 %i.bd, 0
  br i1 %i.be, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bf = icmp eq i8 %i.bd, -1
  %i.bg = select i1 %i.bf, i32 2, i32 -1
  br label %mbc_enc_len.exit

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp eq ptr %i.az, %2
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.c
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !6
  %i.bk = sub nsw i32 1, %i.bj
  br label %mbc_enc_len.exit

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %7
  %i.bm = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !10
  %i.bq = icmp eq i8 %i.bp, -1
  %i.br = select i1 %i.bq, i32 3, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %.thread42, %bb.j, %bb.l, %bb.n, %bb.o
  %.016.i3638 = phi i32 [ %.016.i3644, %.thread42 ], [ %.016.i3639, %bb.j ], [ %.016.i3639, %bb.l ], [ %.016.i3639, %bb.n ], [ %.016.i3639, %bb.o ] ; 16 uses
  %.0.i = phi i32 [ %i.at, %.thread42 ], [ %i.ax, %bb.j ], [ %i.bg, %bb.l ], [ %i.bk, %bb.n ], [ %i.br, %bb.o ] ; 2 uses
  %i.bs = add i32 %.016.i3638, -41921
  %i.bt = icmp ult i32 %i.bs, 26
  br i1 %i.bt, label %bb.p, label %bb.q

bb.p:                                             ; preds = %mbc_enc_len.exit
  %i.bu = or disjoint i32 %.016.i3638, 32
  br label %.thread48

bb.q:                                             ; preds = %mbc_enc_len.exit
  %i.bv = add i32 %.016.i3638, -42657
  %i.bw = icmp ult i32 %i.bv, 24
  br i1 %i.bw, label %bb.r, label %get_lower_case.exit

bb.r:                                             ; preds = %bb.q
  %i.bx = add nuw nsw i32 %.016.i3638, 32
  br label %.thread48

get_lower_case.exit:                              ; preds = %bb.q
  %i.by = add i32 %.016.i3638, -42913
  %i.bz = icmp ult i32 %i.by, 33
  %i.ca = add nuw nsw i32 %.016.i3638, 48
  %spec.select.i = select i1 %i.bz, i32 %i.ca, i32 %.016.i3638 ; 3 uses
  %i.cb = add i32 %.016.i3638, -41953
  %i.cc = icmp ult i32 %i.cb, 26
  br i1 %i.cc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %get_lower_case.exit
  %i.cd = add nsw i32 %.016.i3638, -32
  br label %get_upper_case.exit

bb.t:                                             ; preds = %get_lower_case.exit
  %i.ce = add i32 %.016.i3638, -42689
  %i.cf = icmp ult i32 %i.ce, 24
  br i1 %i.cf, label %bb.u, label %.thread48

bb.u:                                             ; preds = %bb.t
  %i.cg = add nsw i32 %.016.i3638, -32
  br label %get_upper_case.exit

.thread48:                                        ; preds = %bb.p, %bb.r, %bb.t
  %.0.i324750 = phi i32 [ %spec.select.i, %bb.t ], [ %i.bx, %bb.r ], [ %i.bu, %bb.p ]
  %i.ch = add i32 %.016.i3638, -42961
  %i.ci = icmp ult i32 %i.ch, 33
  %i.cj = add nsw i32 %.016.i3638, -48
  %spec.select.i33 = select i1 %i.ci, i32 %i.cj, i32 %.016.i3638
  br label %get_upper_case.exit

get_upper_case.exit:                              ; preds = %bb.s, %bb.u, %.thread48
  %.0.i3246 = phi i32 [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.u ], [ %.0.i324750, %.thread48 ] ; 2 uses
  %.0.i34 = phi i32 [ %i.cd, %bb.s ], [ %i.cg, %bb.u ], [ %spec.select.i33, %.thread48 ] ; 2 uses
  %.not = icmp eq i32 %.016.i3638, %.0.i3246
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %get_upper_case.exit
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.ck, align 4, !tbaa !18
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i3246, ptr %i.cl, align 4, !tbaa !6
  br label %bb.y

bb.w:                                             ; preds = %get_upper_case.exit
  %.not31 = icmp eq i32 %.016.i3638, %.0.i34
  br i1 %.not31, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 %.0.i, ptr %3, align 4, !tbaa !16
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.cm, align 4, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i34, ptr %i.cn, align 4, !tbaa !6
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v, %bb.h
  %.0 = phi i32 [ %i.ar, %bb.h ], [ 1, %bb.v ], [ 1, %bb.x ], [ 0, %bb.w ]
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

bb.g:                                             ; preds = %onig_jis_property.exit, %.critedge29.thread.i
  %.0 = phi i32 [ %i.am, %onig_jis_property.exit ], [ %i.aj, %.critedge29.thread.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  %i.a = icmp ult i32 %1, 15
  br i1 %i.a, label %bb.b, label %bb.g

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
  br label %code_to_mbclen.exit

bb.d:                                             ; preds = %bb.b
  %i.i = icmp ne i32 %1, 12
  %i.j = and i32 %1, 13
  %i.k = icmp ne i32 %i.j, 5
  %or.cond3.not21 = and i1 %i.i, %i.k
  %i.l = icmp ugt i32 %0, 16777215
  %or.cond = or i1 %i.l, %or.cond3.not21
  br i1 %or.cond, label %code_to_mbclen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = and i32 %0, 8421504
  %i.n = icmp eq i32 %i.m, 8421504
  br i1 %i.n, label %code_to_mbclen.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = and i32 %0, 16744576
  %i.p = icmp eq i32 %i.o, 32896
  %i.q = zext i1 %i.p to i32
  br label %code_to_mbclen.exit

bb.g:                                             ; preds = %bb.a
  %i.r = add i32 %1, -15                          ; 2 uses
  %i.s = icmp ugt i32 %i.r, 5
  br i1 %i.s, label %code_to_mbclen.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = zext nneg i32 %i.r to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @PropertyList, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !24
  %i.w = tail call i32 @onig_is_in_code_range(ptr noundef %i.v, i32 noundef %0) #8
  br label %code_to_mbclen.exit

code_to_mbclen.exit:                              ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.h, %bb.c
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.d ], [ -6, %bb.g ], [ %i.w, %bb.h ], [ 1, %bb.e ], [ %i.q, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 -6, 1) i32 @get_ctype_code_range(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3) #7 {
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
  br i1 %.not, label %.preheader, label %bb.l

.preheader:                                       ; preds = %bb.a, %.preheader
  %.020 = phi ptr [ %i.f, %.preheader ], [ %1, %bb.a ] ; 7 uses
  %i.a = load i8, ptr %.020, align 1, !tbaa !10   ; 2 uses
  %i.b = add i8 %i.a, 95
  %i.c = icmp ult i8 %i.b, 94
  %i.d = icmp ugt ptr %.020, %0
  %i.e = and i1 %i.d, %i.c
  %i.f = getelementptr inbounds i8, ptr %.020, i64 -1
  br i1 %i.e, label %.preheader, label %bb.b, !llvm.loop !26

bb.b:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %i.h = zext i8 %i.a to i64                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr @trans, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10    ; 3 uses
  %4 = sext i8 %i.j to i64
  %i.k = icmp slt i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i8 %i.j, -1
  %i.m = select i1 %i.l, i32 1, i32 -1
  br label %mbc_enc_len.exit

bb.d:                                             ; preds = %bb.b
  %i.n = icmp eq ptr %i.g, %2
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.h
  %i.p = load i32, ptr %i.o, align 4, !tbaa !6
  %i.q = sub nsw i32 0, %i.p
  br label %mbc_enc_len.exit

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %4
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 2 ; 2 uses
  %i.t = load i8, ptr %i.g, align 1, !tbaa !10
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !10    ; 3 uses
  %5 = sext i8 %i.w to i64
  %i.x = icmp slt i8 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq i8 %i.w, -1
  %i.z = select i1 %i.y, i32 2, i32 -1
  br label %mbc_enc_len.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = icmp eq ptr %i.s, %2
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @EncLen_EUCJP, i64 %i.h
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !6
  %i.ad = sub nsw i32 1, %i.ac
  br label %mbc_enc_len.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw [256 x i8], ptr @trans, i64 %5
  %i.af = load i8, ptr %i.s, align 1, !tbaa !10
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = icmp eq i8 %i.ai, -1
  %i.ak = select i1 %i.aj, i32 3, i32 -1
  br label %mbc_enc_len.exit

mbc_enc_len.exit:                                 ; preds = %bb.c, %bb.e, %bb.g, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.m, %bb.c ], [ %i.q, %bb.e ], [ %i.z, %bb.g ], [ %i.ad, %bb.i ], [ %i.ak, %bb.j ]
  %i.al = sext i32 %.0.i to i64
  %i.am = getelementptr inbounds i8, ptr %.020, i64 %i.al ; 3 uses
  %i.an = icmp ugt ptr %i.am, %1
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %mbc_enc_len.exit
  %i.ao = ptrtoint ptr %1 to i64
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = and i64 %i.aq, -2
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.ar
  br label %bb.l

bb.l:                                             ; preds = %mbc_enc_len.exit, %bb.a, %bb.k
  %.0 = phi ptr [ %i.as, %bb.k ], [ %1, %bb.a ], [ %.020, %mbc_enc_len.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @is_allowed_reverse_match(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !10      ; 2 uses
  %i.b = icmp ult i8 %i.a, 127
  %i.c = and i8 %i.a, -2
  %i.d = icmp eq i8 %i.c, -114
  %or.cond5 = or i1 %i.b, %i.d
  %. = zext i1 %or.cond5 to i32
  ret i32 %.
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
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

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
