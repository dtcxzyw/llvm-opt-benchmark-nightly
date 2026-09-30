Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iso_8859_16?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.OnigPairCaseFoldCodes = type { i32, i32 }

@encoding_ISO_8859_16 = internal constant %struct.OnigEncodingTypeST { ptr @onigenc_single_byte_mbc_enc_len, ptr @.str, i32 1, i32 1, ptr @onigenc_is_mbc_newline_0x0a, ptr @onigenc_single_byte_mbc_to_code, ptr @onigenc_single_byte_code_to_mbclen, ptr @onigenc_single_byte_code_to_mbc, ptr @mbc_case_fold, ptr @apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @onigenc_minimum_property_name_to_ctype, ptr @is_code_ctype, ptr @onigenc_not_support_get_ctype_code_range, ptr @onigenc_single_byte_left_adjust_char_head, ptr @onigenc_always_true_is_allowed_reverse_match, ptr @case_map, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [12 x i8] c"ISO-8859-16\00", align 1
@EncISO_8859_16_ToLowerCaseTable = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A2\A2\B3\A5\A5\A8\A7\A8\A9\BA\AB\AE\AD\AE\BF\B0\B1\B9\B3\B8\B5\B6\B7\B8\B9\BA\BB\BD\BD\FF\BF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@CaseFoldMap = internal constant [41 x %struct.OnigPairCaseFoldCodes] [%struct.OnigPairCaseFoldCodes { i32 161, i32 162 }, %struct.OnigPairCaseFoldCodes { i32 163, i32 179 }, %struct.OnigPairCaseFoldCodes { i32 166, i32 168 }, %struct.OnigPairCaseFoldCodes { i32 170, i32 186 }, %struct.OnigPairCaseFoldCodes { i32 172, i32 174 }, %struct.OnigPairCaseFoldCodes { i32 175, i32 191 }, %struct.OnigPairCaseFoldCodes { i32 178, i32 185 }, %struct.OnigPairCaseFoldCodes { i32 180, i32 184 }, %struct.OnigPairCaseFoldCodes { i32 188, i32 189 }, %struct.OnigPairCaseFoldCodes { i32 190, i32 255 }, %struct.OnigPairCaseFoldCodes { i32 192, i32 224 }, %struct.OnigPairCaseFoldCodes { i32 193, i32 225 }, %struct.OnigPairCaseFoldCodes { i32 194, i32 226 }, %struct.OnigPairCaseFoldCodes { i32 195, i32 227 }, %struct.OnigPairCaseFoldCodes { i32 196, i32 228 }, %struct.OnigPairCaseFoldCodes { i32 197, i32 229 }, %struct.OnigPairCaseFoldCodes { i32 198, i32 230 }, %struct.OnigPairCaseFoldCodes { i32 199, i32 231 }, %struct.OnigPairCaseFoldCodes { i32 200, i32 232 }, %struct.OnigPairCaseFoldCodes { i32 201, i32 233 }, %struct.OnigPairCaseFoldCodes { i32 202, i32 234 }, %struct.OnigPairCaseFoldCodes { i32 203, i32 235 }, %struct.OnigPairCaseFoldCodes { i32 204, i32 236 }, %struct.OnigPairCaseFoldCodes { i32 205, i32 237 }, %struct.OnigPairCaseFoldCodes { i32 206, i32 238 }, %struct.OnigPairCaseFoldCodes { i32 207, i32 239 }, %struct.OnigPairCaseFoldCodes { i32 208, i32 240 }, %struct.OnigPairCaseFoldCodes { i32 209, i32 241 }, %struct.OnigPairCaseFoldCodes { i32 210, i32 242 }, %struct.OnigPairCaseFoldCodes { i32 211, i32 243 }, %struct.OnigPairCaseFoldCodes { i32 212, i32 244 }, %struct.OnigPairCaseFoldCodes { i32 213, i32 245 }, %struct.OnigPairCaseFoldCodes { i32 214, i32 246 }, %struct.OnigPairCaseFoldCodes { i32 215, i32 247 }, %struct.OnigPairCaseFoldCodes { i32 216, i32 248 }, %struct.OnigPairCaseFoldCodes { i32 217, i32 249 }, %struct.OnigPairCaseFoldCodes { i32 218, i32 250 }, %struct.OnigPairCaseFoldCodes { i32 219, i32 251 }, %struct.OnigPairCaseFoldCodes { i32 220, i32 252 }, %struct.OnigPairCaseFoldCodes { i32 221, i32 253 }, %struct.OnigPairCaseFoldCodes { i32 222, i32 254 }], align 16
@EncISO_8859_16_CtypeTable = internal unnamed_addr constant [256 x i16] [i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16908, i16 16905, i16 16904, i16 16904, i16 16904, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 17028, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 31906, i16 31906, i16 31906, i16 31906, i16 31906, i16 31906, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 16800, i16 16800, i16 16800, i16 16800, i16 20896, i16 16800, i16 30946, i16 30946, i16 30946, i16 30946, i16 30946, i16 30946, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 16800, i16 16800, i16 16800, i16 16800, i16 16392, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 644, i16 13474, i16 12514, i16 13474, i16 160, i16 416, i16 13474, i16 160, i16 12514, i16 160, i16 13474, i16 416, i16 13474, i16 416, i16 12514, i16 13474, i16 160, i16 160, i16 13474, i16 12514, i16 13474, i16 416, i16 160, i16 416, i16 12514, i16 12514, i16 12514, i16 416, i16 13474, i16 12514, i16 13474, i16 12514, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514], align 16

; Function Attrs: nounwind sspstrong uwtable
define void @Init_iso_8859_16() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_ISO_8859_16) #5 ; 0 uses
  ret void
}

declare i32 @rb_enc_register(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_single_byte_mbc_enc_len(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_is_mbc_newline_0x0a(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_single_byte_mbc_to_code(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_single_byte_code_to_mbclen(i32 noundef, ptr noundef) #1

declare i32 @onigenc_single_byte_code_to_mbc(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 1, 3) i32 @mbc_case_fold(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %3, ptr nofree readnone captures(none) %4) #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  %i.c = icmp ne i8 %i.b, -33
  %i.d = and i32 %0, 1073741824
  %.not = icmp eq i32 %i.d, 0
  %or.cond = or i1 %.not, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 115, ptr %i.e, align 1, !tbaa !13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = zext i8 %i.b to i64
  %i.g = getelementptr inbounds nuw i8, ptr @EncISO_8859_16_ToLowerCaseTable, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i8 [ %i.h, %bb.c ], [ 115, %bb.b ]
  %.0 = phi i32 [ 1, %bb.c ], [ 2, %bb.b ]
  store i8 %.sink, ptr %3, align 1, !tbaa !13
  %.pn = load ptr, ptr %1, align 8, !tbaa !12
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  store ptr %storemerge, ptr %1, align 8, !tbaa !12
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @apply_all_case_fold(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_apply_all_case_fold_with_map(i32 noundef 41, ptr noundef nonnull @CaseFoldMap, i32 noundef 1, i32 noundef %0, ptr noundef %1, ptr noundef %2) #5
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_get_case_fold_codes_by_str_with_map(i32 noundef 41, ptr noundef nonnull @CaseFoldMap, i32 noundef 1, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  ret i32 %i.a
}

declare i32 @onigenc_minimum_property_name_to_ctype(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @is_code_ctype(i32 noundef %0, i32 noundef %1, ptr nofree readnone captures(none) %2) #3 {
bb.a:
  %i.a = icmp ult i32 %0, 256
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_16_CtypeTable, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !15
  %i.e = zext i16 %i.d to i32
  %i.f = lshr i32 %i.e, %1
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @onigenc_not_support_get_ctype_code_range(i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare ptr @onigenc_single_byte_left_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @onigenc_always_true_is_allowed_reverse_match(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @case_map(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(address) %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.c = icmp ult ptr %i.b, %2
  %i.d = icmp ult ptr %3, %4
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.p
  %i.f = phi ptr [ %i.ad, %bb.p ], [ %i.b, %bb.a ] ; 2 uses
  %.069 = phi i32 [ %spec.select, %bb.p ], [ %i.a, %bb.a ] ; 11 uses
  %.05468 = phi ptr [ %i.aa, %bb.p ], [ %3, %bb.a ] ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %1, align 8, !tbaa !12
  %i.h = load i8, ptr %i.f, align 1, !tbaa !13    ; 8 uses
  %i.i = icmp eq i8 %i.h, -33
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.j = and i32 %.069, 8192
  %.not62 = icmp eq i32 %i.j, 0
  br i1 %.not62, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = or i32 %.069, 262144
  %i.l = getelementptr inbounds nuw i8, ptr %.05468, i64 1
  store i8 83, ptr %.05468, align 1, !tbaa !13
  %6 = and i32 %.069, 32768
  %.not64 = icmp eq i32 %6, 0
  %7 = select i1 %.not64, i8 83, i8 115
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %.069, 524288
  %.not63 = icmp eq i32 %i.m, 0
  br i1 %.not63, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = or i32 %.069, 262144
  %i.o = getelementptr inbounds nuw i8, ptr %.05468, i64 1
  store i8 115, ptr %.05468, align 1, !tbaa !13
  br label %bb.p

bb.f:                                             ; preds = %.lr.ph
  %i.p = zext i8 %i.h to i64                      ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_16_CtypeTable, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !15   ; 2 uses
  %i.s = and i16 %i.r, 1024
  %.not = icmp eq i16 %i.s, 0
  %i.t = and i32 %.069, 540672
  %.not59 = icmp eq i32 %i.t, 0
  %or.cond66 = select i1 %.not, i1 true, i1 %.not59
  br i1 %or.cond66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = or i32 %.069, 262144
  %i.v = getelementptr inbounds nuw i8, ptr @EncISO_8859_16_ToLowerCaseTable, i64 %i.p
  %i.w = load i8, ptr %i.v, align 1, !tbaa !13
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  %i.x = and i16 %i.r, 64
  %.not60 = icmp eq i16 %i.x, 0
  %i.y = and i32 %.069, 8192
  %.not61 = icmp eq i32 %i.y, 0
  %or.cond67 = select i1 %.not60, i1 true, i1 %.not61
  br i1 %or.cond67, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = or i32 %.069, 262144                     ; 7 uses
  switch i8 %i.h, label %bb.o [
    i8 -67, label %bb.j
    i8 -94, label %bb.j
    i8 -65, label %bb.k
    i8 -70, label %bb.k
    i8 -77, label %bb.k
    i8 -82, label %bb.l
    i8 -88, label %bb.l
    i8 -71, label %bb.p
    i8 -72, label %bb.m
    i8 -1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %8 = add nsw i8 %i.h, -1
  br label %bb.p

bb.k:                                             ; preds = %bb.i, %bb.i, %bb.i
  %9 = add nsw i8 %i.h, -16
  br label %bb.p

bb.l:                                             ; preds = %bb.i, %bb.i
  %10 = add nsw i8 %i.h, -2
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  br label %bb.p

bb.n:                                             ; preds = %bb.i
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %11 = add i8 %i.h, -32
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.g, %bb.j, %bb.l, %bb.m, %bb.o, %bb.n, %bb.k, %bb.h, %bb.c, %bb.e, %bb.d
  %.155 = phi ptr [ %i.l, %bb.c ], [ %i.o, %bb.e ], [ %.05468, %bb.d ], [ %.05468, %bb.g ], [ %.05468, %bb.j ], [ %.05468, %bb.k ], [ %.05468, %bb.l ], [ %.05468, %bb.h ], [ %.05468, %bb.m ], [ %.05468, %bb.n ], [ %.05468, %bb.o ], [ %.05468, %bb.i ] ; 2 uses
  %.053 = phi i8 [ %7, %bb.c ], [ 115, %bb.e ], [ -33, %bb.d ], [ %i.w, %bb.g ], [ %8, %bb.j ], [ %9, %bb.k ], [ %10, %bb.l ], [ %i.h, %bb.h ], [ -76, %bb.m ], [ -66, %bb.n ], [ %11, %bb.o ], [ -78, %bb.i ]
  %.1 = phi i32 [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %.069, %bb.d ], [ %i.u, %bb.g ], [ %i.z, %bb.j ], [ %i.z, %bb.k ], [ %i.z, %bb.l ], [ %.069, %bb.h ], [ %i.z, %bb.m ], [ %i.z, %bb.n ], [ %i.z, %bb.o ], [ %i.z, %bb.i ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.155, i64 1 ; 3 uses
  store i8 %.053, ptr %.155, align 1, !tbaa !13
  %i.ab = and i32 %.1, 32768
  %.not65 = icmp eq i32 %i.ab, 0
  %i.ac = xor i32 %.1, 57344
  %spec.select = select i1 %.not65, i32 %.1, i32 %i.ac ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %2
  %i.af = icmp ult ptr %i.aa, %4
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.p, %bb.a
  %.054.lcssa = phi ptr [ %3, %bb.a ], [ %i.aa, %bb.p ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %spec.select, %bb.p ]
  store i32 %.0.lcssa, ptr %0, align 4, !tbaa !9
  %i.ah = ptrtoint ptr %.054.lcssa to i64
  %i.ai = ptrtoint ptr %3 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  ret i32 %i.ak
}

declare i32 @onigenc_apply_all_case_fold_with_map(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @onigenc_get_case_fold_codes_by_str_with_map(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"short", !7, i64 0}
!15 = !{!14, !14, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
end_hunk_0
