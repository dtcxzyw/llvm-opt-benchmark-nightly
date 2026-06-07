inline.NumInlined: 580
inline.NumDeleted: 115
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.OnigErrorInfo = type { ptr, ptr, ptr }
%struct.re_pattern_buffer = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i64, i32, ptr, ptr, [256 x i8], ptr, ptr, i64, i64, i64, ptr }
%struct.re_registers = type { i32, i32, ptr, ptr }
%struct.reg_init_args = type { i64, i64, ptr, i32 }

@rb_reg_match_time_limit = hidden local_unnamed_addr global i64 0, align 8
@casetable = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@rb_cMatch = dso_local local_unnamed_addr global i64 0, align 8
@rb_eArgError = external local_unnamed_addr global i64, align 8
@.str = private unnamed_addr constant [29 x i8] c"regexp preprocess failed: %s\00", align 1
@ruby_single_main_ractor = external local_unnamed_addr global ptr, align 8
@OnigDefaultSyntax = external local_unnamed_addr global ptr, align 8
@rb_eRegexpTimeoutError = hidden local_unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"regexp match timeout\00", align 1
@rb_cRegexp = dso_local local_unnamed_addr global i64 0, align 8
@reg_cache = internal global i64 0, align 8
@rb_eRuntimeError = external local_unnamed_addr global i64, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid group name reference format\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"RegexpError\00", align 1
@rb_eStandardError = external local_unnamed_addr global i64, align 8
@rb_eRegexpError = dso_local local_unnamed_addr global i64 0, align 8
@OnigEncodingASCII = external constant %struct.OnigEncodingTypeST, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"$~\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"$&\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"$`\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"$'\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"$+\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"$=\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Regexp\00", align 1
@rb_cObject = external local_unnamed_addr global i64, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"compile\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"last_match\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"try_convert\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"linear_time?\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"initialize\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"initialize_copy\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"eql?\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"=~\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"===\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"match\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"match?\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"casefold?\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"fixed_encoding?\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"named_captures\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"TimeoutError\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"timeout=\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"IGNORECASE\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"EXTENDED\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"MULTILINE\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"FIXEDENCODING\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"NOENCODING\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"MatchData\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"byteoffset\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"bytebegin\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"byteend\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"begin\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"match_length\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"to_a\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"captures\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"deconstruct\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"deconstruct_keys\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"values_at\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"pre_match\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"post_match\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@ruby_current_ec = external thread_local local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [28 x i8] c"invalid byte sequence in %s\00", align 1
@.str.69 = private unnamed_addr constant [56 x i8] c"historical binary regexp match /.../n against %s string\00", align 1
@rb_eEncCompatError = external local_unnamed_addr global i64, align 8
@.str.70 = private unnamed_addr constant [62 x i8] c"incompatible encoding regexp match (%s regexp with %s string)\00", align 1
@rb_eTypeError = external local_unnamed_addr global i64, align 8
@.str.71 = private unnamed_addr constant [21 x i8] c"uninitialized Regexp\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"%s: %li\0B\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"\\x%02X\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"uninitialized MatchData\00", align 1
@.str.77 = private unnamed_addr constant [28 x i8] c"invalid multibyte character\00", align 1
@.str.78 = private unnamed_addr constant [36 x i8] c"non ASCII character in UTF-8 regexp\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"too short escape sequence\00", align 1
@.str.80 = private unnamed_addr constant [21 x i8] c"invalid Unicode list\00", align 1
@.str.81 = private unnamed_addr constant [38 x i8] c"too short escaped multibyte character\00", align 1
@.str.82 = private unnamed_addr constant [19 x i8] c"invalid hex escape\00", align 1
@.str.83 = private unnamed_addr constant [22 x i8] c"duplicate meta escape\00", align 1
@.str.84 = private unnamed_addr constant [22 x i8] c"too short meta escape\00", align 1
@.str.85 = private unnamed_addr constant [25 x i8] c"too short control escape\00", align 1
@.str.86 = private unnamed_addr constant [25 x i8] c"duplicate control escape\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"unexpected escape sequence\00", align 1
@.str.88 = private unnamed_addr constant [20 x i8] c"invalid escape code\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"invalid multibyte escape\00", align 1
@.str.90 = private unnamed_addr constant [44 x i8] c"escaped non ASCII character in UTF-8 regexp\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"invalid Unicode range\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"UTF-8 character in non UTF-8 regexp\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"invalid Unicode escape\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c": /\00", align 1
@.str.95 = private unnamed_addr constant [70 x i8] c"/.../n has a non escaped non ASCII character in non ASCII-8BIT script\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"no arguments given\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.98 = private unnamed_addr constant [48 x i8] c"encoding mismatch in dynamic regexp : %s and %s\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"can't make regexp with dummy encoding\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"incompatible character encoding\00", align 1
@.str.101 = private unnamed_addr constant [27 x i8] c"already initialized regexp\00", align 1
@OnigDefaultCaseFoldFlag = external local_unnamed_addr global i32, align 4
@rb_eIndexError = external local_unnamed_addr global i64, align 8
@.str.102 = private unnamed_addr constant [38 x i8] c"undefined group name reference: % li\0B\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"variable $= is no longer effective\00", align 1
@.str.104 = private unnamed_addr constant [44 x i8] c"variable $= is no longer effective; ignored\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"(?!)\00", align 1
@.str.106 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.107 = private unnamed_addr constant [34 x i8] c"incompatible encodings: %s and %s\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"ASCII incompatible encoding: %s\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"to_regexp\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"(?\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.112 = private unnamed_addr constant [2 x i8] c")\00", align 1
@reg_extract_args.keywords = internal global [1 x i64] zeroinitializer, align 8
@.str.114 = private unnamed_addr constant [14 x i8] c"flags ignored\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"ignorecase\00", align 1
@.str.116 = private unnamed_addr constant [28 x i8] c"unknown regexp option: %li\0B\00", align 1
@.str.117 = private unnamed_addr constant [22 x i8] c"invalid timeout: %li\0B\00", align 1
@.str.119 = private unnamed_addr constant [52 x i8] c"can not access Regexp.timeout from non-main Ractors\00", align 1
@rb_cFalseClass = external local_unnamed_addr global i64, align 8
@rb_cNilClass = external local_unnamed_addr global i64, align 8
@rb_cTrueClass = external local_unnamed_addr global i64, align 8
@rb_cInteger = external local_unnamed_addr global i64, align 8
@rb_cSymbol = external local_unnamed_addr global i64, align 8
@rb_cFloat = external local_unnamed_addr global i64, align 8
@.str.120 = private unnamed_addr constant [24 x i8] c"index %d out of matches\00", align 1
@match_named_captures.keyword_ids = internal global [1 x i64] zeroinitializer, align 8
@.str.122 = private unnamed_addr constant [16 x i8] c"symbolize_names\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"#<%li\0B:%p>\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"#<%li\0B: %li\0B>\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"#<\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"nil\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c">\00", align 1
@switch.table.rb_char_to_option_kcode.7 = private unnamed_addr constant [16 x i8] c"\01\00\00\00\04\00\00\00\00\00\00\00\00\00\00\02", align 4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define dso_local range(i32 -255, 256) i32 @rb_memcicmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not12 = icmp eq i64 %2, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr i8, ptr %.0615, i64 1
  %i.b = getelementptr i8, ptr %.0714, i64 1
  %i.c = add i64 %.0813, -1                       ; 2 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0615 = phi ptr [ %i.a, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.0714 = phi ptr [ %i.b, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.0813 = phi i64 [ %i.c, %bb.b ], [ %2, %bb.a ]
  %i.d = load i8, ptr %.0714, align 1, !tbaa !13
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr i8, ptr @casetable, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = sext i8 %i.g to i32
  %i.i = load i8, ptr %.0615, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr i8, ptr @casetable, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !13
  %i.m = sext i8 %i.l to i32
  %i.n = sub nsw i32 %i.h, %i.m                   ; 2 uses
  %.not10 = icmp eq i32 %i.n, 0
  br i1 %.not10, label %bb.b, label %._crit_edge16, !llvm.loop !11

._crit_edge16:                                    ; preds = %.lr.ph
  br label %._crit_edge, !llvm.loop !11

._crit_edge:                                      ; preds = %bb.b, %._crit_edge16, %bb.a
  %.0 = phi i32 [ %i.n, %._crit_edge16 ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_memsearch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3, ptr nofree noundef nonnull readonly captures(address) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 136 uses
  %i.b = icmp sgt i64 %1, %3
  br i1 %i.b, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, %3
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %2, i64 %1)
  %i.d = icmp ne i32 %bcmp, 0
  %i.e = sext i1 %i.d to i64
  br label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.f = icmp slt i64 %1, 1
  br i1 %i.f, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %0, align 1, !tbaa !13
  %i.i = zext i8 %i.h to i32
  %i.j = tail call ptr @memchr(ptr noundef nonnull %2, i32 noundef %i.i, i64 noundef %3) #27 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %2 to i64
  %i.m = sub i64 %i.k, %i.l
  %.0 = select i1 %.not, i64 -1, i64 %i.m
  br label %bb.r

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %4, i64 20
  %.val46 = load i32, ptr %i.n, align 4, !tbaa !14
  switch i32 %.val46, label %vector.ph [
    i32 1, label %bb.h
    i32 2, label %bb.l
    i32 4, label %bb.m
  ], !prof !18

bb.h:                                             ; preds = %bb.g
  %i.o = icmp samesign ult i64 %1, 9
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @memmem(ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %0, i64 noundef range(i64 2, 9) %1) #27 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = sub i64 %i.q, %i.r
  %.0.i = select i1 %.not.i, i64 -1, i64 %i.s
  br label %bb.r

bb.j:                                             ; preds = %bb.h
  %i.t = tail call nonnull ptr @rb_utf8_encoding() #28
  %i.u = icmp eq ptr %4, %i.t
  br i1 %i.u, label %bb.k, label %vector.ph

bb.k:                                             ; preds = %bb.j
  %i.v = tail call fastcc i64 @rb_memsearch_qs_utf8(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.r

bb.l:                                             ; preds = %bb.g
  %i.w = tail call fastcc i64 @rb_memsearch_wchar(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.r

bb.m:                                             ; preds = %bb.g
  %i.x = tail call fastcc i64 @rb_memsearch_qchar(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3)
  br label %bb.r

vector.ph:                                        ; preds = %bb.g, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.y = add nuw i64 %1, 1
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 128 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.a, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.z, align 16, !tbaa !19
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x i64> %broadcast.splat, ptr %i.aa, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.ab, align 16, !tbaa !19
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x i64> %broadcast.splat, ptr %i.ac, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.ad, align 16, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store <2 x i64> %broadcast.splat, ptr %i.ae, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.af, align 16, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store <2 x i64> %broadcast.splat, ptr %i.ag, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.ah, align 16, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store <2 x i64> %broadcast.splat, ptr %i.ai, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.aj, align 16, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store <2 x i64> %broadcast.splat, ptr %i.ak, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.al, align 16, !tbaa !19
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store <2 x i64> %broadcast.splat, ptr %i.am, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.an, align 16, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store <2 x i64> %broadcast.splat, ptr %i.ao, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.ap, align 16, !tbaa !19
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  store <2 x i64> %broadcast.splat, ptr %i.aq, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.ar, align 16, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store <2 x i64> %broadcast.splat, ptr %i.as, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.at, align 16, !tbaa !19
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store <2 x i64> %broadcast.splat, ptr %i.au, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.av, align 16, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store <2 x i64> %broadcast.splat, ptr %i.aw, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.ax, align 16, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  store <2 x i64> %broadcast.splat, ptr %i.ay, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.az, align 16, !tbaa !19
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store <2 x i64> %broadcast.splat, ptr %i.ba, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.bb, align 16, !tbaa !19
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store <2 x i64> %broadcast.splat, ptr %i.bc, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.bd, align 16, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store <2 x i64> %broadcast.splat, ptr %i.be, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.bf, align 16, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 560
  store <2 x i64> %broadcast.splat, ptr %i.bg, align 16, !tbaa !19
  store <2 x i64> %broadcast.splat, ptr %i.bh, align 16, !tbaa !19
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store <2 x i64> %broadcast.splat, ptr %i.bi, align 16, !tbaa !19
end_hunk_0
begin_hunk_1_@rb_memsearch_qs_utf8:vector.ph

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.bn = load i8, ptr %i.bg, align 1, !tbaa !13  ; 8 uses
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = icmp ult i8 %i.bn, -64
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = or disjoint i32 %i.bo, 256
  br label %rb_memsearch_qs_utf8_hash.exit35

bb.p:                                             ; preds = %bb.n
  %i.br = icmp samesign ult i8 %i.bn, -32
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = mul i8 %i.bn, -95
  %i.bt = getelementptr i8, ptr %i.bg, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !13
  %i.bv = add i8 %i.bu, %i.bs
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.bw = icmp samesign ult i8 %i.bn, -16
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = mul i8 %i.bn, -95
  %i.by = getelementptr i8, ptr %i.bg, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !13
  %i.ca = add i8 %i.bz, %i.bx
  %i.cb = mul i8 %i.ca, -95
  %i.cc = getelementptr i8, ptr %i.bg, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = add i8 %i.cb, %i.cd
  br label %bb.w

bb.t:                                             ; preds = %bb.r
  %i.cf = icmp samesign ult i8 %i.bn, -11
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = mul i8 %i.bn, -95
  %i.ch = getelementptr i8, ptr %i.bg, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = add i8 %i.ci, %i.cg
  %i.ck = mul i8 %i.cj, -95
  %i.cl = getelementptr i8, ptr %i.bg, i64 2
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !13
  %i.cn = add i8 %i.ck, %i.cm
  %i.co = mul i8 %i.cn, -95
  %i.cp = getelementptr i8, ptr %i.bg, i64 3
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = add i8 %i.co, %i.cq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cs = or disjoint i32 %i.bo, 256
  br label %rb_memsearch_qs_utf8_hash.exit35

bb.w:                                             ; preds = %bb.u, %bb.s, %bb.q
  %.0.i34 = phi i8 [ %i.bv, %bb.q ], [ %i.ce, %bb.s ], [ %i.cr, %bb.u ]
  %i.ct = zext i8 %.0.i34 to i32
  br label %rb_memsearch_qs_utf8_hash.exit35

rb_memsearch_qs_utf8_hash.exit35:                 ; preds = %bb.o, %bb.v, %bb.w
  %.026.i33 = phi i32 [ %i.bq, %bb.o ], [ %i.ct, %bb.w ], [ %i.cs, %bb.v ]
  %i.cu = zext nneg i32 %.026.i33 to i64
  %i.cv = getelementptr [8 x i8], ptr %i.a, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !19
  %i.cx = getelementptr i8, ptr %.02842, i64 %i.cw ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 %1     ; 2 uses
  %.not = icmp ugt ptr %i.cy, %i.r
  br i1 %.not, label %.loopexit, label %bb.k, !llvm.loop !29

.loopexit:                                        ; preds = %rb_memsearch_qs_utf8_hash.exit35, %.preheader, %bb.m
  %.029 = phi i64 [ %i.bm, %bb.m ], [ -1, %.preheader ], [ -1, %rb_memsearch_qs_utf8_hash.exit35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.029
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal fastcc noundef i64 @rb_memsearch_wchar(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 2, -9223372036854775808) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = sub i64 %3, %1                           ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %.lr.ph.i, label %rb_memsearch_with_char_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = add nsw i64 %1, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %2, %.lr.ph.i ], [ %i.n, %bb.e ] ; 4 uses
  %.01820.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.f = load i8, ptr %.021.i, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.021.i, i64 1
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.d, ptr %i.h, i64 %i.e)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %.021.i to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  br label %rb_memsearch_with_char_size.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = add nsw i64 %.01820.i, -2
  %i.n = getelementptr i8, ptr %.021.i, i64 2
  %i.o = icmp sgt i64 %.01820.i, 1
  br i1 %i.o, label %bb.b, label %rb_memsearch_with_char_size.exit, !llvm.loop !30

rb_memsearch_with_char_size.exit:                 ; preds = %bb.e, %bb.a, %bb.d
  %.017.i = phi i64 [ %i.l, %bb.d ], [ -1, %bb.a ], [ -1, %bb.e ]
  ret i64 %.017.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define internal fastcc noundef i64 @rb_memsearch_qchar(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 2, -9223372036854775808) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !13
  %i.b = sub i64 %3, %1                           ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  br i1 %i.c, label %.lr.ph.i, label %rb_memsearch_with_char_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 1
  %i.e = add nsw i64 %1, -1
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %.lr.ph.i
  %.021.i = phi ptr [ %2, %.lr.ph.i ], [ %i.n, %bb.e ] ; 4 uses
  %.01820.i = phi i64 [ %i.b, %.lr.ph.i ], [ %i.m, %bb.e ] ; 2 uses
  %i.f = load i8, ptr %.021.i, align 1, !tbaa !13
  %i.g = icmp eq i8 %i.a, %i.f
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.021.i, i64 1
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.d, ptr %i.h, i64 %i.e)
  %i.i = icmp eq i32 %bcmp.i, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = ptrtoint ptr %.021.i to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  br label %rb_memsearch_with_char_size.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = add nsw i64 %.01820.i, -4
  %i.n = getelementptr i8, ptr %.021.i, i64 4
  %i.o = icmp sgt i64 %.01820.i, 3
  br i1 %i.o, label %bb.b, label %rb_memsearch_with_char_size.exit, !llvm.loop !30

rb_memsearch_with_char_size.exit:                 ; preds = %bb.e, %bb.a, %bb.d
  %.017.i = phi i64 [ %i.l, %bb.d ], [ -1, %bb.a ], [ -1, %bb.e ]
  ret i64 %.017.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local range(i32 0, 33) i32 @rb_char_to_option_kcode(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #6 {
bb.a:
  switch i32 %0, label %bb.e [
    i32 110, label %bb.b
    i32 101, label %bb.f
    i32 115, label %bb.c
    i32 117, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !7
  br label %char_to_option.exit

bb.c:                                             ; preds = %bb.a
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  store i32 -1, ptr %2, align 4, !tbaa !7
  %switch.tableidx = add i32 %0, -105             ; 3 uses
  %i.a = icmp ult i32 %switch.tableidx, 16
  br i1 %i.a, label %switch.lookup, label %char_to_option.exit

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.d ], [ 11, %bb.c ], [ 10, %bb.a ]
  store i32 %.sink, ptr %2, align 4, !tbaa !7
  br label %char_to_option.exit

switch.lookup:                                    ; preds = %bb.e
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.rb_char_to_option_kcode.7, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.c = zext nneg i32 %switch.tableidx to i64
  %switch.gep12 = getelementptr inbounds nuw i8, ptr @switch.table.rb_char_to_option_kcode.7, i64 %i.c
  %switch.load13 = load i8, ptr %switch.gep12, align 1
  %switch.ext14 = zext i8 %switch.load13 to i32
  br label %char_to_option.exit

char_to_option.exit:                              ; preds = %bb.e, %switch.lookup, %bb.f, %bb.b
  %.sink11 = phi i32 [ 16, %bb.f ], [ 32, %bb.b ], [ %switch.ext, %switch.lookup ], [ 0, %bb.e ]
  %.0 = phi i32 [ 1, %bb.f ], [ 32, %bb.b ], [ %switch.ext14, %switch.lookup ], [ 0, %bb.e ]
  store i32 %.sink11, ptr %1, align 4, !tbaa !7
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -5, 1) i32 @rb_reg_region_copy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  tail call void @onig_region_copy(ptr noundef %0, ptr noundef %1) #28
  %i.a = load i32, ptr %0, align 8, !tbaa !31
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc() #28
  tail call void @onig_region_copy(ptr noundef nonnull %0, ptr noundef %1) #28
  %i.b = load i32, ptr %0, align 8, !tbaa !31
  %.not6 = icmp eq i32 %i.b, 0
  %. = select i1 %.not6, i32 -5, i32 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare void @onig_region_copy(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @rb_gc() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rb_reg_backref_number(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @match_backref_number(i64 noundef %0, i64 noundef %1)
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @match_backref_number(i64 noundef %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !19
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = getelementptr i8, ptr %i.b, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.b, label %match_check.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr @rb_eTypeError, align 8, !tbaa !19
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.f, ptr noundef nonnull @.str.76) #29
  unreachable

match_check.exit:                                 ; preds = %bb.a
  %i.g = and i64 %1, 255
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %RB_SYMBOL_P.exit.thread, label %bb.c

bb.c:                                             ; preds = %match_check.exit
  %i.i = icmp eq i64 %1, 0
  %i.j = and i64 %1, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.c
  %i.m = inttoptr i64 %1 to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !37
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 20
  br i1 %i.p, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

RB_SYMBOL_P.exit.thread:                          ; preds = %match_check.exit, %RB_SYMBOL_P.exit
  %i.q = tail call i64 @rb_sym2str(i64 noundef %1) #28
  store i64 %i.q, ptr %i.a, align 8, !tbaa !19
  br label %bb.f

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.r = inttoptr i64 %1 to ptr
  %i.s = load i64, ptr %i.r, align 8, !tbaa !37
  %i.t = and i64 %i.s, 31
  %i.u = icmp eq i64 %i.t, 5
  br i1 %i.u, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.v = trunc i64 %1 to i1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.w = tail call i64 @rb_fix2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.x = tail call i64 @rb_num2int(i64 noundef %1) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i10 = phi i64 [ %i.w, %bb.d ], [ %i.x, %bb.e ]
  %i.y = trunc i64 %.0.i10 to i32
  br label %bb.g

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %RB_SYMBOL_P.exit.thread
  %i.z = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #28 ; 2 uses
  %i.aa = icmp eq i64 %i.e, 4
  br i1 %i.aa, label %name_to_backref_number.exit.thread, label %name_to_backref_number.exit

name_to_backref_number.exit:                      ; preds = %bb.f
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr i8, ptr %i.z, i64 %i.ae
  %i.ag = inttoptr i64 %i.e to ptr
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = call i32 @onig_name_to_backref_number(ptr noundef %i.ai, ptr noundef %i.z, ptr noundef %i.af, ptr noundef %i.c) #28 ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %name_to_backref_number.exit.thread, label %bb.g

name_to_backref_number.exit.thread:               ; preds = %bb.f, %name_to_backref_number.exit
  %i.al = load i64, ptr %i.a, align 8, !tbaa !19
  call fastcc void @name_to_backref_error(i64 noundef %i.al) #30
  unreachable

bb.g:                                             ; preds = %name_to_backref_number.exit, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.y, %rb_num2int_inline.exit ], [ %i.aj, %name_to_backref_number.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @rb_match_busy(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.a, %i.c
  br i1 %.not4.i, label %bb.b, label %RB_FL_SET.exit

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = or i64 %i.e, 16384
  store i64 %i.f, ptr %i.d, align 8, !tbaa !37
  br label %RB_FL_SET.exit

RB_FL_SET.exit:                                   ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @rb_match_unbusy(i64 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ne i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp eq i64 %i.b, 0
  %.not4.i = and i1 %i.a, %i.c
  br i1 %.not4.i, label %bb.b, label %RB_FL_UNSET.exit

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !37
  %i.f = and i64 %i.e, -16385
  store i64 %i.f, ptr %i.d, align 8, !tbaa !37
  br label %RB_FL_UNSET.exit

RB_FL_UNSET.exit:                                 ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @rb_match_count(i64 noundef %0) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i64 %0, 4
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 36
  %i.e = load i32, ptr %i.d, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ %i.e, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_backref_set_string(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_backref_get() #28      ; 6 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
