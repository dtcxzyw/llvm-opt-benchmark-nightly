Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/iso_8859_15?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.OnigEncodingTypeST = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.OnigPairCaseFoldCodes = type { i32, i32 }

@encoding_ISO_8859_15 = internal constant %struct.OnigEncodingTypeST { ptr @onigenc_single_byte_mbc_enc_len, ptr @.str, i32 1, i32 1, ptr @onigenc_is_mbc_newline_0x0a, ptr @onigenc_single_byte_mbc_to_code, ptr @onigenc_single_byte_code_to_mbclen, ptr @onigenc_single_byte_code_to_mbc, ptr @mbc_case_fold, ptr @apply_all_case_fold, ptr @get_case_fold_codes_by_str, ptr @onigenc_minimum_property_name_to_ctype, ptr @is_code_ctype, ptr @onigenc_not_support_get_ctype_code_range, ptr @onigenc_single_byte_left_adjust_char_head, ptr @onigenc_always_true_is_allowed_reverse_match, ptr @case_map, i32 0, i32 0 }, align 8
@.str = private unnamed_addr constant [12 x i8] c"ISO-8859-15\00", align 1
@EncISO_8859_15_ToLowerCaseTable = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A8\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B8\B5\B6\B7\B8\B9\BA\BB\BD\BD\FF\BF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\D7\F8\F9\FA\FB\FC\FD\FE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16
@CaseFoldMap = internal constant [34 x %struct.OnigPairCaseFoldCodes] [%struct.OnigPairCaseFoldCodes { i32 166, i32 168 }, %struct.OnigPairCaseFoldCodes { i32 180, i32 184 }, %struct.OnigPairCaseFoldCodes { i32 188, i32 189 }, %struct.OnigPairCaseFoldCodes { i32 190, i32 255 }, %struct.OnigPairCaseFoldCodes { i32 192, i32 224 }, %struct.OnigPairCaseFoldCodes { i32 193, i32 225 }, %struct.OnigPairCaseFoldCodes { i32 194, i32 226 }, %struct.OnigPairCaseFoldCodes { i32 195, i32 227 }, %struct.OnigPairCaseFoldCodes { i32 196, i32 228 }, %struct.OnigPairCaseFoldCodes { i32 197, i32 229 }, %struct.OnigPairCaseFoldCodes { i32 198, i32 230 }, %struct.OnigPairCaseFoldCodes { i32 199, i32 231 }, %struct.OnigPairCaseFoldCodes { i32 200, i32 232 }, %struct.OnigPairCaseFoldCodes { i32 201, i32 233 }, %struct.OnigPairCaseFoldCodes { i32 202, i32 234 }, %struct.OnigPairCaseFoldCodes { i32 203, i32 235 }, %struct.OnigPairCaseFoldCodes { i32 204, i32 236 }, %struct.OnigPairCaseFoldCodes { i32 205, i32 237 }, %struct.OnigPairCaseFoldCodes { i32 206, i32 238 }, %struct.OnigPairCaseFoldCodes { i32 207, i32 239 }, %struct.OnigPairCaseFoldCodes { i32 208, i32 240 }, %struct.OnigPairCaseFoldCodes { i32 209, i32 241 }, %struct.OnigPairCaseFoldCodes { i32 210, i32 242 }, %struct.OnigPairCaseFoldCodes { i32 211, i32 243 }, %struct.OnigPairCaseFoldCodes { i32 212, i32 244 }, %struct.OnigPairCaseFoldCodes { i32 213, i32 245 }, %struct.OnigPairCaseFoldCodes { i32 214, i32 246 }, %struct.OnigPairCaseFoldCodes { i32 216, i32 248 }, %struct.OnigPairCaseFoldCodes { i32 217, i32 249 }, %struct.OnigPairCaseFoldCodes { i32 218, i32 250 }, %struct.OnigPairCaseFoldCodes { i32 219, i32 251 }, %struct.OnigPairCaseFoldCodes { i32 220, i32 252 }, %struct.OnigPairCaseFoldCodes { i32 221, i32 253 }, %struct.OnigPairCaseFoldCodes { i32 222, i32 254 }], align 16
@EncISO_8859_15_CtypeTable = internal unnamed_addr constant [256 x i16] [i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16908, i16 16905, i16 16904, i16 16904, i16 16904, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 16392, i16 17028, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 30896, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 16800, i16 31906, i16 31906, i16 31906, i16 31906, i16 31906, i16 31906, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 29858, i16 16800, i16 16800, i16 16800, i16 16800, i16 20896, i16 16800, i16 30946, i16 30946, i16 30946, i16 30946, i16 30946, i16 30946, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 28898, i16 16800, i16 16800, i16 16800, i16 16800, i16 16392, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 644, i16 416, i16 160, i16 160, i16 160, i16 160, i16 13474, i16 160, i16 12514, i16 160, i16 12514, i16 416, i16 160, i16 416, i16 160, i16 160, i16 160, i16 160, i16 4256, i16 4256, i16 13474, i16 12514, i16 160, i16 416, i16 12514, i16 4256, i16 12514, i16 416, i16 13474, i16 12514, i16 13474, i16 416, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 160, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 13474, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 160, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514, i16 12514], align 16

; Function Attrs: nounwind sspstrong uwtable
define void @Init_iso_8859_15() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @rb_enc_register(ptr noundef nonnull @.str, ptr noundef nonnull @encoding_ISO_8859_15) #5 ; 0 uses
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
  %i.g = getelementptr inbounds nuw i8, ptr @EncISO_8859_15_ToLowerCaseTable, i64 %i.f
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
  %i.a = tail call i32 @onigenc_apply_all_case_fold_with_map(i32 noundef 34, ptr noundef nonnull @CaseFoldMap, i32 noundef 1, i32 noundef %0, ptr noundef %1, ptr noundef %2) #5
  ret i32 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @get_case_fold_codes_by_str(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %i.a = tail call i32 @onigenc_get_case_fold_codes_by_str_with_map(i32 noundef 34, ptr noundef nonnull @CaseFoldMap, i32 noundef 1, i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
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
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_15_CtypeTable, i64 %i.b
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

.lr.ph:                                           ; preds = %bb.a, %bb.n
  %i.f = phi ptr [ %i.ac, %bb.n ], [ %i.b, %bb.a ] ; 2 uses
  %.059 = phi i32 [ %spec.select, %bb.n ], [ %i.a, %bb.a ] ; 14 uses
  %.04558 = phi ptr [ %i.z, %bb.n ], [ %3, %bb.a ] ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.g, ptr %1, align 8, !tbaa !12
  %i.h = load i8, ptr %i.f, align 1, !tbaa !13    ; 4 uses
  %6 = zext i8 %i.h to i32                        ; 5 uses
  switch i8 %i.h, label %bb.f [
    i8 -33, label %bb.b
    i8 -70, label %bb.n
    i8 -75, label %bb.n
    i8 -86, label %bb.n
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.i = and i32 %.059, 8192
  %.not53 = icmp eq i32 %i.i, 0
  br i1 %.not53, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = or i32 %.059, 262144
  %i.k = getelementptr inbounds nuw i8, ptr %.04558, i64 1
  store i8 83, ptr %.04558, align 1, !tbaa !13
  %7 = lshr i32 %.059, 10
  %8 = and i32 %7, 32
  %9 = or disjoint i32 %8, 83
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.l = and i32 %.059, 524288
  %.not54 = icmp eq i32 %i.l, 0
  br i1 %.not54, label %bb.n, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = or i32 %.059, 262144
  %i.n = getelementptr inbounds nuw i8, ptr %.04558, i64 1
  store i8 115, ptr %.04558, align 1, !tbaa !13
  br label %bb.n

bb.f:                                             ; preds = %.lr.ph
  %i.o = zext i8 %i.h to i64                      ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr @EncISO_8859_15_CtypeTable, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !15   ; 2 uses
  %i.r = and i16 %i.q, 1024
  %.not = icmp eq i16 %i.r, 0
  %i.s = and i32 %.059, 540672
  %.not50 = icmp eq i32 %i.s, 0
  %or.cond = select i1 %.not, i1 true, i1 %.not50
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = or i32 %.059, 262144
  %i.u = getelementptr inbounds nuw i8, ptr @EncISO_8859_15_ToLowerCaseTable, i64 %i.o
  %i.v = load i8, ptr %i.u, align 1, !tbaa !13
  %10 = zext i8 %i.v to i32
  br label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.w = and i16 %i.q, 64
  %.not51 = icmp eq i16 %i.w, 0
  %i.x = and i32 %.059, 8192
  %.not52 = icmp eq i32 %i.x, 0
  %or.cond57 = select i1 %.not51, i1 true, i1 %.not52
  br i1 %or.cond57, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = or i32 %.059, 262144                     ; 5 uses
  switch i8 %i.h, label %bb.m [
    i8 -88, label %bb.n
    i8 -72, label %bb.j
    i8 -67, label %bb.k
    i8 -1, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %11 = add nsw i32 %6, -32
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %bb.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.k, %bb.g, %bb.c, %bb.e, %bb.d
  %.146 = phi ptr [ %i.k, %bb.c ], [ %i.n, %bb.e ], [ %.04558, %bb.d ], [ %.04558, %.lr.ph ], [ %.04558, %bb.g ], [ %.04558, %.lr.ph ], [ %.04558, %bb.j ], [ %.04558, %bb.k ], [ %.04558, %bb.l ], [ %.04558, %bb.m ], [ %.04558, %.lr.ph ], [ %.04558, %bb.h ], [ %.04558, %bb.i ] ; 2 uses
  %.044 = phi i32 [ %9, %bb.c ], [ 115, %bb.e ], [ 223, %bb.d ], [ %6, %.lr.ph ], [ %10, %bb.g ], [ %6, %.lr.ph ], [ 180, %bb.j ], [ 188, %bb.k ], [ 190, %bb.l ], [ %11, %bb.m ], [ %6, %.lr.ph ], [ %6, %bb.h ], [ 166, %bb.i ]
  %.1 = phi i32 [ %i.j, %bb.c ], [ %i.m, %bb.e ], [ %.059, %bb.d ], [ %.059, %.lr.ph ], [ %i.t, %bb.g ], [ %.059, %.lr.ph ], [ %i.y, %bb.j ], [ %i.y, %bb.k ], [ %i.y, %bb.l ], [ %i.y, %bb.m ], [ %.059, %.lr.ph ], [ %.059, %bb.h ], [ %i.y, %bb.i ] ; 3 uses
  %12 = trunc i32 %.044 to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.146, i64 1 ; 3 uses
  store i8 %12, ptr %.146, align 1, !tbaa !13
  %i.aa = and i32 %.1, 32768
  %.not56 = icmp eq i32 %i.aa, 0
  %i.ab = xor i32 %.1, 57344
  %spec.select = select i1 %.not56, i32 %.1, i32 %i.ab ; 2 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !12    ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %2
  %i.ae = icmp ult ptr %i.z, %4
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.n, %bb.a
  %.045.lcssa = phi ptr [ %3, %bb.a ], [ %i.z, %bb.n ]
  %.0.lcssa = phi i32 [ %i.a, %bb.a ], [ %spec.select, %bb.n ]
  store i32 %.0.lcssa, ptr %0, align 4, !tbaa !9
  %i.ag = ptrtoint ptr %.045.lcssa to i64
  %i.ah = ptrtoint ptr %3 to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = trunc i64 %i.ai to i32
  ret i32 %i.aj
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
