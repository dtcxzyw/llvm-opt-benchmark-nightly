Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_tokenizer-84cff9cecc8d20b6.lance_tokenizer.6a2dd2e881936859-cgu.0?download=true
inline.NumInlined: 783
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0
@2030 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2027, [16 x i8] c"r\00\00\00\00\00\00\00W\00\00\00\14\00\00\00" }>, align 8
@2031 = private unnamed_addr constant <{ [24 x i8], ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs97bFUy425Ar_15lance_tokenizer8analyzerNtNtB7_3icu12IcuTokenizerNtB5_16BoxableTokenizer16box_token_streamB7_, ptr @_RNvXs1_NtCs97bFUy425Ar_15lance_tokenizer8analyzerNtNtB7_3icu12IcuTokenizerNtB5_16BoxableTokenizer9box_cloneB7_ }>, align 8
@2032 = private unnamed_addr constant [2 x i8] c"zh", align 1
@2033 = private unnamed_addr constant [2 x i8] c"ko", align 1
@2034 = private unnamed_addr constant [2 x i8] c"ss", align 1
@2035 = private unnamed_addr constant [2 x i8] c"SS", align 1
@2036 = private unnamed_addr constant [2 x i8] c"AE", align 1
@2037 = private unnamed_addr constant [2 x i8] c"ae", align 1
@2038 = private unnamed_addr constant [2 x i8] c"OE", align 1
@2039 = private unnamed_addr constant [2 x i8] c"oe", align 1
@2040 = private unnamed_addr constant [1 x i8] c"O", align 1
@2041 = private unnamed_addr constant [1 x i8] c"L", align 1
@2042 = private unnamed_addr constant [1 x i8] c"D", align 1
@2043 = private unnamed_addr constant [2 x i8] c"TH", align 1
@2044 = private unnamed_addr constant [2 x i8] c"th", align 1
@2045 = private unnamed_addr constant [1 x i8] c"H", align 1
@2046 = private unnamed_addr constant [1 x i8] c"h", align 1
@2047 = private unnamed_addr constant [1 x i8] c"T", align 1
@2048 = private unnamed_addr constant [1 x i8] c"N", align 1
@2049 = private unnamed_addr constant [1 x i8] c"k", align 1
@2050 = private unnamed_addr constant [50 x i8] c"rust/lance-tokenizer/src/word_delimiter_filter.rs\00", align 1
@2051 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2050, [16 x i8] c"1\00\00\00\00\00\00\00}\00\00\00\15\00\00\00" }>, align 8
@2052 = private unnamed_addr constant [32 x i8] c"rust/lance-tokenizer/src/icu.rs\00", align 1
@2053 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2052, [16 x i8] c"\1F\00\00\00\00\00\00\001\00\00\00\1B\00\00\00" }>, align 8
@2054 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2052, [16 x i8] c"\1F\00\00\00\00\00\00\00D\00\00\00%\00\00\00" }>, align 8
@2055 = private unnamed_addr constant [18 x i8] c"variant identifier", align 1
@2056 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2027, [16 x i8] c"r\00\00\00\00\00\00\00\99\00\00\00\22\00\00\00" }>, align 8
@2057 = private unnamed_addr constant [45 x i8] c"rust/lance-tokenizer/src/simple_tokenizer.rs\00", align 1
@2058 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2057, [16 x i8] c",\00\00\00\00\00\00\006\00\00\004\00\00\00" }>, align 8
@2059 = private unnamed_addr constant [49 x i8] c"rust/lance-tokenizer/src/whitespace_tokenizer.rs\00", align 1
@2060 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2059, [16 x i8] c"0\00\00\00\00\00\00\006\00\00\004\00\00\00" }>, align 8
@2061 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2052, [16 x i8] c"\1F\00\00\00\00\00\00\00Y\00\00\00\15\00\00\00" }>, align 8
@2062 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2052, [16 x i8] c"\1F\00\00\00\00\00\00\00]\00\00\00\19\00\00\00" }>, align 8
@2063 = private unnamed_addr constant [13 x i8] c"enum Language", align 1
@2064 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @1981, [16 x i8] c"*\00\00\00\00\00\00\00\84\00\00\000\00\00\00" }>, align 8
@2065 = private unnamed_addr constant <{ [24 x i8], ptr, ptr, ptr, ptr, ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizerNtB4_14RawTokenStreamNtNtB6_13tokenizer_api11TokenStream7advance, ptr @_RNvXs_NtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizerNtB4_14RawTokenStreamNtNtB6_13tokenizer_api11TokenStream5token, ptr @_RNvXs_NtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizerNtB4_14RawTokenStreamNtNtB6_13tokenizer_api11TokenStream9token_mut, ptr @_RNvYNtNtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizer14RawTokenStreamNtNtB6_13tokenizer_api11TokenStream4nextB6_, ptr @_RNvYNtNtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizer14RawTokenStreamNtNtB6_13tokenizer_api11TokenStream7processB6_ }>, align 8
@2066 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizer12RawTokenizerEBF_, [16 x i8] c"8\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1_NtCs97bFUy425Ar_15lance_tokenizer8analyzerNtNtB7_13raw_tokenizer12RawTokenizerNtB5_16BoxableTokenizer16box_token_streamB7_, ptr @_RNvXs1_NtCs97bFUy425Ar_15lance_tokenizer8analyzerNtNtB7_13raw_tokenizer12RawTokenizerNtB5_16BoxableTokenizer9box_cloneB7_ }>, align 8
@2067 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer3icu14IcuTokenStreamEBF_, [16 x i8] c" \00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NtCs97bFUy425Ar_15lance_tokenizer3icuNtB5_14IcuTokenStreamNtNtB7_13tokenizer_api11TokenStream7advance, ptr @_RNvXs0_NtCs97bFUy425Ar_15lance_tokenizer3icuNtB5_14IcuTokenStreamNtNtB7_13tokenizer_api11TokenStream5token, ptr @_RNvXs0_NtCs97bFUy425Ar_15lance_tokenizer3icuNtB5_14IcuTokenStreamNtNtB7_13tokenizer_api11TokenStream9token_mut, ptr @_RNvYNtNtCs97bFUy425Ar_15lance_tokenizer3icu14IcuTokenStreamNtNtB6_13tokenizer_api11TokenStream4nextB6_, ptr @_RNvYNtNtCs97bFUy425Ar_15lance_tokenizer3icu14IcuTokenStreamNtNtB6_13tokenizer_api11TokenStream7processB6_ }>, align 8
@2068 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2026, [16 x i8] c"c\00\00\00\00\00\00\00\9F\00\00\00\1A\00\00\00" }>, align 8
@2069 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2026, [16 x i8] c"c\00\00\00\00\00\00\00\A6\00\00\00\22\00\00\00" }>, align 8
@2070 = private unnamed_addr constant [44 x i8] c"rust/lance-tokenizer/src/ngram_tokenizer.rs\00", align 1
@2071 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2070, [16 x i8] c"+\00\00\00\00\00\00\00h\00\00\000\00\00\00" }>, align 8
@2072 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2070, [16 x i8] c"+\00\00\00\00\00\00\00\A8\00\00\00\1C\00\00\00" }>, align 8
@2073 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2070, [16 x i8] c"+\00\00\00\00\00\00\00\B4\00\00\00!\00\00\00" }>, align 8
@2074 = private unnamed_addr constant [16 x i8] c"\01\01\01\01\01\01\01\01\02\02\02\02\02\02\03\04", align 1
@2075 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @2070, [16 x i8] c"+\00\00\00\00\00\00\00\D2\00\00\00#\00\00\00" }>, align 8

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !60, !noalias !61, !noundef !3 ; 6 uses
  %i.c = add i64 %i.b, %1                         ; 3 uses
  %i.d = icmp ult i64 %i.c, %i.b
  br i1 %i.d, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !60, !noalias !61, !noundef !3 ; 14 uses
  %i.g = icmp ult i64 %i.f, 8
  %i.h = add i64 %i.f, 1                          ; 6 uses
  %i.i = lshr i64 %i.h, 3
  %i.j = mul nuw i64 %i.i, 7
  %.sroa.03.0.i = select i1 %i.g, i64 %i.f, i64 %i.j ; 3 uses
  %i.k = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.c, %i.k
  br i1 %.not.i, label %bb.d, label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.l = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !62 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

bb.d:                                             ; preds = %bb.b
  %i.o = add nuw i64 %.sroa.03.0.i, 1
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %i.o, i64 %i.c) ; 5 uses
  %i.p = icmp ult i64 %.sroa.0.0.i9, 15
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = icmp ugt i64 %.sroa.0.0.i9, 2305843009213693951
  br i1 %i.q, label %bb.l, label %bb.f, !prof !4

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw i64 %.sroa.0.0.i9, 3
  %i.s = udiv i64 %i.r, 7
  %i.t = add nsw i64 %i.s, -1
  %i.u = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.t, i1 true)
  %i.v = lshr i64 -1, %i.u
  %i.w = add nuw nsw i64 %i.v, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i64 %.sroa.0.0.i9, 4
  %i.y = and i64 %.sroa.0.0.i9, 8
  %..i.i = add nuw nsw i64 %i.y, 8
  %.sroa.03.0.i.i = select i1 %i.x, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.w, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.z = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 24) ; 2 uses
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %bb.j, label %bb.i, !prof !4

bb.i:                                             ; preds = %bb.h
  %i.ab = extractvalue { i64, i1 } %i.z, 0
  %i.ac = add nuw i64 %i.ab, 8
  %i.ad = and i64 %i.ac, -16                      ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.af = add i64 %i.ad, %i.ae                    ; 4 uses
  %i.ag = icmp ult i64 %i.af, %i.ad
  %i.ah = icmp ugt i64 %i.af, 9223372036854775792
  %or.cond.i.i = or i1 %i.ag, %i.ah
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i, !prof !5

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !63
  %i.ai = tail call noundef align 16 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !63 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.k, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !63
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread

bb.k:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  %i.al = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.af), !noalias !63
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread

bb.l:                                             ; preds = %bb.e
  %i.am = tail call { i64, i64 } @_RNvMNtCsfKiFC1ztrmh_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !64
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 6 uses
  %i.ap = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.aq = mul nuw nsw i64 %i.ap, 7
  %.sroa.07.0.i.i = select i1 %i.an, i64 %i.ao, i64 %i.aq
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ad ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ar, i8 -1, i64 %i.ae, i1 false), !noalias !64
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = icmp eq i64 %i.b, 0
  br i1 %i.at, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge, label %.preheader.lr.ph

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge: ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !65, !noalias !66
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge52

.preheader.lr.ph:                                 ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit
  %i.au = load ptr, ptr %0, align 8, !alias.scope !67, !noalias !68, !nonnull !3, !noundef !3 ; 5 uses
  %.val437 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val437, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  %.val.i.i10 = load i64, ptr %2, align 8, !noalias !69, !noundef !3
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i11 = load i64, ptr %i.ax, align 8, !noalias !69, !noundef !3
  br label %.preheader

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.am, %bb.l ], [ %i.ak, %bb.j ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.12.034 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.035 = extractvalue { i64, i64 } %.pn.i.pn, 0
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.020.051 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.020.1.lcssa, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.050 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.049 = phi i64 [ %i.b, %.preheader.lr.ph ], [ %i.bw, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.048 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bu, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i243 = icmp eq i16 %.sroa.13.048, 0
  br i1 %.not.i243, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.020.145 = phi ptr [ %i.ay, %.noexc3 ], [ %.sroa.020.051, %.preheader ] ; 2 uses
  %.sroa.5.144 = phi i64 [ %i.bb, %.noexc3 ], [ %.sroa.5.050, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.145) ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.145, i64 16 ; 3 uses
  %.val38 = load <16 x i8>, ptr %i.ay, align 16
  %i.az = icmp sgt <16 x i8> %.val38, splat (i8 -1)
  %i.ba = bitcast <16 x i1> %i.az to i16          ; 2 uses
  %i.bb = add i64 %.sroa.5.144, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.ba, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge52:                                    ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.._crit_edge52_crit_edge ], [ %i.au, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %i.bc = sub i64 %.sroa.07.0.i.i, %i.b
  store i64 %i.as, ptr %0, align 8, !alias.scope !65, !noalias !66
  store i64 %i.ao, ptr %i.e, align 8, !alias.scope !70, !noalias !71
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %i.bd, align 8, !alias.scope !72, !noalias !73
  %i.be = icmp eq i64 %i.f, 0
  br i1 %i.be, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit, label %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge52
  %i.bf = mul i64 %i.f, 24                        ; 2 uses
  %i.bg = add i64 %i.bf, 24
  %i.bh = add i64 %i.bf, 39                       ; 2 uses
  %i.bi = icmp uge i64 %i.bh, %i.bg
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = and i64 %i.bh, -16                      ; 3 uses
  %i.bk = add i64 %i.f, 17
  %i.bl = add i64 %i.bk, %i.bj                    ; 4 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  %i.bn = icmp ult i64 %i.bl, 9223372036854775793
  tail call void @llvm.assume(i1 %i.bm)
  tail call void @llvm.assume(i1 %i.bn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.m

bb.m:                                             ; preds = %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bp = sub nsw i64 0, %i.bj
  %i.bq = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bp
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !74
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.048, %.preheader ], [ %i.ba, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.050, %.preheader ], [ %i.bb, %.noexc3 ] ; 2 uses
  %.sroa.020.1.lcssa = phi ptr [ %.sroa.020.051, %.preheader ], [ %i.ay, %.noexc3 ]
  %i.br = add i16 %.sroa.13.1.lcssa, -1
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64
  %i.bu = and i16 %i.br, %.sroa.13.1.lcssa
  %i.bv = add i64 %.sroa.5.1.lcssa, %i.bt         ; 2 uses
  %i.bw = add i64 %.sroa.9.049, -1                ; 2 uses
  %i.bx = sub nsw i64 0, %i.bv
  %i.by = getelementptr inbounds [24 x i8], ptr %i.au, i64 %i.bx
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -24
  %i.ca = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bz), !noalias !75 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ca, %i.ao            ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.cb, align 1, !noalias !76
  %i.cc = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cd = bitcast <16 x i1> %i.cc to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cd, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !77

._crit_edge.i:                                    ; preds = %.lr.ph.i, %._crit_edge
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %._crit_edge ], [ %.sroa.0.0.i13, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cd, %._crit_edge ], [ %i.cu, %.lr.ph.i ]
  %i.ce = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cf = zext nneg i16 %i.ce to i64
  %i.cg = add nuw nsw i64 %.sroa.0.0.lcssa.i, %i.cf
  %i.ch = and i64 %i.cg, %i.ao                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noundef !3
  %i.ck = icmp sgt i8 %i.cj, -1
  br i1 %i.ck, label %bb.n, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !4

bb.n:                                             ; preds = %._crit_edge.i
  %.val2.i.i12 = load <16 x i8>, ptr %i.ar, align 16
  %i.cl = icmp slt <16 x i8> %.val2.i.i12, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cm, 0
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cm, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i13, %.lr.ph.i ], [ %.sroa.0.07.i, %._crit_edge ]
  %i.cp = phi i64 [ %i.cq, %.lr.ph.i ], [ 0, %._crit_edge ]
  %i.cq = add i64 %i.cp, 16                       ; 2 uses
  %i.cr = add i64 %i.cq, %.sroa.0.010.i
  %.sroa.0.0.i13 = and i64 %i.cr, %i.ao           ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i13
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cs, align 1, !noalias !76
  %i.ct = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.cu = bitcast <16 x i1> %i.ct to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.cu, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !78

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.n, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.co, %bb.n ], [ %i.ch, %._crit_edge.i ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.i5.i
  %i.cw = lshr i64 %i.ca, 57
  %i.cx = trunc nuw nsw i64 %i.cw to i8           ; 2 uses
  %i.cy = add nsw i64 %.sroa.0.0.i5.i, -16
  %i.cz = and i64 %i.cy, %i.ao
  store i8 %i.cx, ptr %i.cv, align 1
  %i.da = getelementptr i8, ptr %i.ar, i64 %i.cz
  %i.db = getelementptr i8, ptr %i.da, i64 16
  store i8 %i.cx, ptr %i.db, align 1
  %.neg.i.i = mul i64 %i.bv, -24
  %i.dc = getelementptr i8, ptr %i.au, i64 %.neg.i.i
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i, -24
  %i.de = getelementptr i8, ptr %i.ar, i64 %.neg62.i.i
  %i.df = getelementptr i8, ptr %i.de, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.df, ptr noundef nonnull align 1 dereferenceable(24) %i.dd, i64 24, i1 false)
  %i.dg = icmp eq i64 %i.bw, 0
  br i1 %i.dg, label %._crit_edge52, label %.preheader

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %.val14.i = load ptr, ptr %0, align 8, !alias.scope !79 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.h, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread, label %.lr.ph.i.i

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread: ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.dh = lshr i64 %i.h, 4
  %i.di = and i64 %i.h, 15
  %.not10.i.i.i.i = icmp ne i64 %i.di, 0
  %i.dj = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.dh, %i.dj ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dk = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dk, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.p

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dt, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.dl = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.dl, align 16, !noalias !79
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dm = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.dn = or <2 x i64> %i.dm, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dn, ptr %i.dl, align 16, !noalias !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 16)
  %.32.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 16)
  %i.do = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.do, ptr nonnull align 1 %.val14.i, i64 %.32.i, i1 false), !noalias !79
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dp, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.dt, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.p ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dq, align 16, !noalias !79
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.dr = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.ds = or <2 x i64> %i.dr, splat (i64 -9187201950435737472)
  store <2 x i64> %i.ds, ptr %i.dq, align 16, !noalias !79
  %i.dt = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.08.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.dv, align 16, !noalias !79
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.dw = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.dx = or <2 x i64> %i.dw, splat (i64 -9187201950435737472)
  store <2 x i64> %i.dx, ptr %i.dv, align 16, !noalias !79
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %bb.w, %._crit_edge.i.i
  %.sroa.0.06.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.dy, %bb.w ] ; 7 uses
  %i.dy = add nuw i64 %.sroa.0.06.i, 1            ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.06.i ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 1, !noalias !79, !noundef !3
  %.not.i15 = icmp eq i8 %i.ea, -128
  br i1 %.not.i15, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %.neg.i = mul i64 %i.dy, -24
  %i.eb = getelementptr inbounds i8, ptr %.val14.i, i64 %.neg.i ; 5 uses
  %i.ec = sub nsw i64 0, %.sroa.0.06.i
  %i.ed = getelementptr inbounds [24 x i8], ptr %.val14.i, i64 %i.ec
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -24
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  br label %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i

_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i: ; preds = %.preheader.preheader.i, %bb.r
  %i.eh = tail call fastcc noundef i64 @_RINvYNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateNtNtCscI6d9CVNmLh_4core4hash11BuildHasher8hash_oneRNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ee), !noalias !80 ; 3 uses
  %.sroa.0.07.i.i = and i64 %i.eh, %i.f           ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.07.i.i
  %.sroa.0.0.copyload.i68.i.i = load <16 x i8>, ptr %i.ei, align 1, !noalias !81
  %i.ej = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i, zeroinitializer
  %i.ek = bitcast <16 x i1> %i.ej to i16          ; 2 uses
  %.not.i9.i.i = icmp eq i16 %i.ek, 0
  br i1 %.not.i9.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !77

._crit_edge.i16.i:                                ; preds = %.lr.ph.i17.i, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.07.i.i, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %.sroa.0.0.i.i19, %.lr.ph.i17.i ]
  %.lcssa.i.i = phi i16 [ %i.ek, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ], [ %i.fb, %.lr.ph.i17.i ]
  %i.el = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.em = zext nneg i16 %i.el to i64
  %i.en = add i64 %.sroa.0.0.lcssa.i.i, %i.em
  %i.eo = and i64 %i.en, %i.f                     ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !noalias !79, !noundef !3
  %i.er = icmp sgt i8 %i.eq, -1
  br i1 %i.er, label %bb.s, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i, !prof !4

bb.s:                                             ; preds = %._crit_edge.i16.i
  %.val2.i.i.i = load <16 x i8>, ptr %.val14.i, align 16, !noalias !79
  %i.es = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.et = bitcast <16 x i1> %i.es to i16          ; 2 uses
  %.not.i6.i.i = icmp ne i16 %i.et, 0
  %i.eu = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.et, i1 true)
  %i.ev = zext nneg i16 %i.eu to i64
  tail call void @llvm.assume(i1 %.not.i6.i.i)
  br label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i

.lr.ph.i17.i:                                     ; preds = %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i, %.lr.ph.i17.i
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.0.i.i19, %.lr.ph.i17.i ], [ %.sroa.0.07.i.i, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ew = phi i64 [ %i.ex, %.lr.ph.i17.i ], [ 0, %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i ]
  %i.ex = add i64 %i.ew, 16                       ; 2 uses
  %i.ey = add i64 %i.ex, %.sroa.0.010.i.i
  %.sroa.0.0.i.i19 = and i64 %i.ey, %i.f          ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.0.i.i19
  %.sroa.0.0.copyload.i6.i.i = load <16 x i8>, ptr %i.ez, align 1, !noalias !81
  %i.fa = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i, zeroinitializer
  %i.fb = bitcast <16 x i1> %i.fa to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fb, 0
  br i1 %.not.i.i.i, label %.lr.ph.i17.i, label %._crit_edge.i16.i, !prof !78

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i: ; preds = %bb.s, %._crit_edge.i16.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.ev, %bb.s ], [ %i.eo, %._crit_edge.i16.i ] ; 4 uses
  %i.fc = sub i64 %.sroa.0.06.i, %.sroa.0.07.i.i
  %i.fd = sub i64 %.sroa.0.0.i5.i.i, %.sroa.0.07.i.i
  %i.fe = xor i64 %i.fd, %i.fc
  %.unshifted.i = and i64 %i.fe, %i.f
  %i.ff = icmp ult i64 %.unshifted.i, 16
  br i1 %i.ff, label %bb.u, label %bb.t, !prof !6

bb.t:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %.neg12.i = mul i64 %.sroa.0.0.i5.i.i, -24
  %i.fg = getelementptr i8, ptr %.val14.i, i64 %.neg12.i ; 3 uses
  %i.fh = getelementptr i8, ptr %i.fg, i64 -24    ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.val14.i, i64 %.sroa.0.0.i5.i.i ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !noalias !79, !noundef !3
  %i.fk = lshr i64 %i.eh, 57
  %i.fl = trunc nuw nsw i64 %i.fk to i8           ; 2 uses
  %i.fm = add i64 %.sroa.0.0.i5.i.i, -16
  %i.fn = and i64 %i.fm, %i.f
  store i8 %i.fl, ptr %i.fi, align 1, !noalias !79
  %i.fo = getelementptr i8, ptr %.val14.i, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fo, i64 16
  store i8 %i.fl, ptr %i.fp, align 1, !noalias !79
  %i.fq = icmp eq i8 %i.fj, -1
  br i1 %i.fq, label %bb.v, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.eb, align 1, !alias.scope !82, !noalias !84
  %.sroa.02.0.copyload.i.i.i.i = load i64, ptr %i.fh, align 1, !alias.scope !83, !noalias !85
  store i64 %.sroa.02.0.copyload.i.i.i.i, ptr %i.eb, align 1, !alias.scope !82, !noalias !84
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.fh, align 1, !alias.scope !83, !noalias !85
  %i.fr = getelementptr i8, ptr %i.fg, i64 -16    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  %.sroa.0.0.copyload.i.i.i.1.i = load i64, ptr %i.ef, align 1, !alias.scope !86, !noalias !88
  %.sroa.02.0.copyload.i.i.i.1.i = load i64, ptr %i.fr, align 1, !alias.scope !87, !noalias !89
  store i64 %.sroa.02.0.copyload.i.i.i.1.i, ptr %i.ef, align 1, !alias.scope !86, !noalias !88
  store i64 %.sroa.0.0.copyload.i.i.i.1.i, ptr %i.fr, align 1, !alias.scope !87, !noalias !89
  %i.fs = getelementptr i8, ptr %i.fg, i64 -8     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.sroa.0.0.copyload.i.i.i.2.i = load i64, ptr %i.eg, align 1, !alias.scope !90, !noalias !92
  %.sroa.02.0.copyload.i.i.i.2.i = load i64, ptr %i.fs, align 1, !alias.scope !91, !noalias !93
  store i64 %.sroa.02.0.copyload.i.i.i.2.i, ptr %i.eg, align 1, !alias.scope !90, !noalias !92
  store i64 %.sroa.0.0.copyload.i.i.i.2.i, ptr %i.fs, align 1, !alias.scope !91, !noalias !93
  br label %_RNvNtCscI6d9CVNmLh_4core3ptr25swap_nonoverlapping_bytes.exit.i

bb.u:                                             ; preds = %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i
  %i.ft = lshr i64 %i.eh, 57
  %i.fu = trunc nuw nsw i64 %i.ft to i8           ; 2 uses
  %i.fv = add i64 %.sroa.0.06.i, -16
  %i.fw = and i64 %i.fv, %i.f
  store i8 %i.fu, ptr %i.dz, align 1, !noalias !79
  %i.fx = getelementptr i8, ptr %.val14.i, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  store i8 %i.fu, ptr %i.fy, align 1, !noalias !79
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fz = add i64 %.sroa.0.06.i, -16
  %i.ga = and i64 %i.fz, %i.f
  store i8 -1, ptr %i.dz, align 1, !noalias !79
  %i.gb = getelementptr i8, ptr %.val14.i, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store i8 -1, ptr %i.gc, align 1, !noalias !79
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.fh, ptr noundef nonnull align 1 dereferenceable(24) %i.eb, i64 24, i1 false), !noalias !79
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.q
  %exitcond.not.i = icmp eq i64 %.sroa.0.06.i, %i.f
  br i1 %exitcond.not.i, label %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit, label %bb.q

_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit: ; preds = %bb.w, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread
  %i.gd = phi i64 [ 0, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit.thread ], [ %.sroa.03.0.i, %bb.w ]
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gf = sub i64 %i.gd, %i.b
  store i64 %i.gf, ptr %i.ge, align 8, !alias.scope !79
  br label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.m, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %._crit_edge52, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread, %bb.c, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit
  %.sroa.4.0.i = phi i64 [ %i.n, %bb.c ], [ undef, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.12.034, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread ], [ undef, %._crit_edge52 ], [ undef, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ undef, %bb.m ]
  %.sroa.0.0.i = phi i64 [ %i.m, %bb.c ], [ -1, %_RNvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit ], [ %.sroa.7.035, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs40k4W9msRzi_5alloc5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer.exit.thread ], [ -1, %._crit_edge52 ], [ -1, %_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i ], [ -1, %bb.m ]
  %i.gg = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.gh = insertvalue { i64, i64 } %i.gg, i64 %.sroa.4.0.i, 1
  ret { i64, i64 } %i.gh
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i
  %.sroa.0.011.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i, 1      ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !alias.scope !96 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !96, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !96
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1j_.exit6, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit
  %i.j = mul nuw i64 %.val2, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1j_.exit6

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1j_.exit6: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc4sync8ArcInnerINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtBG_6string6StringEEECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !121, !noundef !3 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !123, !noundef !3 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !123, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !124
  %i.i = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.06.1.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.t, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !125
  %i.n = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -384 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = add i64 %.sroa.108.014.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -24
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !123 ; 2 uses
  %i.y = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i
  %i.z = getelementptr i8, ptr %i.v, i64 -16
  %.val5.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !123, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !123
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i
  %i.aa = icmp eq i64 %i.w, 0
  br i1 %i.aa, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i.i, %bb.b
  %i.ab = mul i64 %i.c, 24
  %i.ac = icmp slt i64 %i.c, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.c, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i
  %i.ak = load ptr, ptr %i.a, align 8, !alias.scope !121, !nonnull !3, !noundef !3
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !121
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfUzTxybQDTm_7tinyvec7tinyvec7TinyVecAThcEj4_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !8, !noundef !3
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.d = icmp eq i64 %.val, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.f = shl nuw i64 %.val, 3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringEECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !147, !noundef !3 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !149, !noundef !3 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !149, !nonnull !3, !noundef !3 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !150
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, %bb.c
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i ]
  %.not12.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not12.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.d ]
  %.val10.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !151
  %i.m = icmp sgt <16 x i8> %.val10.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i

_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !noalias !149 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !149, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !149
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsfKiFC1ztrmh_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs40k4W9msRzi_5alloc6string6StringuEE9next_implKb0_ECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i.i, %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !147, !nonnull !3, !noundef !3
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #29, !noalias !147
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown3set7HashSetNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.a, %_RINvMsa_NtCsfKiFC1ztrmh_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs40k4W9msRzi_5alloc6string6StringuEECs97bFUy425Ar_15lance_tokenizer.exit.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13raw_tokenizer12RawTokenizerEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer3icu14IcuTokenStreamEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !156, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !156, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !157, !noalias !156 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !157, !noalias !156, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #29, !noalias !158
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = icmp eq i64 %i.e, %.val1.i
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEBF_.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !7, !alias.scope !156, !noundef !3 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i
  %i.j = mul nuw i64 %.val2.i, 56
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !156
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenEEB1c_.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBJ_.exit.i, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0INtNtB1b_3vec3VecBZ_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4096 x i8], align 4              ; 3 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nuw nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 1000000)
  %.sroa.0.0.i11 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c) ; 2 uses
  %.sroa.0.0.i12 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i11, i64 48) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = icmp samesign ugt i64 %.sroa.0.0.i11, 512 ; 3 uses
  br i1 %i.d, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, label %bb.c

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  %i.e = shl nuw nsw i64 %.sroa.0.0.i12, 3        ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !163
  %i.f = tail call noundef align 4 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 4) #29, !noalias !163 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc, label %bb.c

.noexc:                                           ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 4, i64 %i.e) #30
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit13, label %bb.f

bb.c:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.a
  %.sroa.6.1 = phi ptr [ undef, %bb.a ], [ %i.f, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 4 uses
  %.sroa.4.0 = phi i64 [ 512, %bb.a ], [ %.sroa.0.0.i12, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %.pn22 = phi ptr [ %i.a, %bb.a ], [ %i.f, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ]
  %i.i = icmp samesign ult i64 %1, 65
  invoke fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable5drift4sortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBW_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB1X_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %.pn22, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.i, ptr noalias noundef align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.d
  %3 = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %bb.e

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit13, %bb.b
  resume { ptr, i32 } %i.h

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecThcEEECs97bFUy425Ar_15lance_tokenizer.exit13: ; preds = %bb.b
  %4 = shl nuw nsw i64 %.sroa.0.0.i12, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.1) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.1, i64 noundef %4, i64 noundef range(i64 1, -9223372036854775807) 4) #29
  br label %bb.f
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB26_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 144115188075855872) %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB26_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB26_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot11median3_recThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB14_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB26_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i8, ptr %.sroa.0.0, align 4, !noundef !3 ; 2 uses
  %.sroa.04.0.val14 = load i8, ptr %.sroa.04.0, align 4, !noundef !3 ; 2 uses
  %i.n = icmp ult i8 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i8, ptr %.sroa.08.0, align 4, !noundef !3 ; 2 uses
  %i.o = icmp ult i8 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i8 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort12sort8_stableThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB19_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2b_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 64)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 64)) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load i8, ptr %i.a, align 4, !noundef !3
  %.val9.i = load i8, ptr %0, align 4, !noundef !3
  %i.b = icmp ult i8 %.val8.i, %.val9.i           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6.i = load i8, ptr %i.c, align 4, !noundef !3
  %.val7.i = load i8, ptr %i.d, align 4, !noundef !3
  %i.e = icmp ult i8 %.val6.i, %.val7.i           ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i8, ptr %i.l, align 4, !noundef !3
  %.val5.i = load i8, ptr %i.g, align 4, !noundef !3
  %i.o = icmp ult i8 %.val4.i, %.val5.i           ; 3 uses
  %.val2.i = load i8, ptr %i.n, align 4, !noundef !3
  %.val3.i = load i8, ptr %i.j, align 4, !noundef !3
  %i.p = icmp ult i8 %.val2.i, %.val3.i           ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !3
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !3
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !3
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !3 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !3
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !3 ; 3 uses
  %.val.i = load i8, ptr %i.v, align 4, !noundef !3
  %.val1.i = load i8, ptr %i.t, align 4, !noundef !3
  %i.w = icmp ult i8 %.val.i, %.val1.i            ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !3
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !3
  %i.z = load i64, ptr %i.q, align 4              ; 3 uses
  store i64 %i.z, ptr %2, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = load i64, ptr %i.x, align 4
  store i64 %i.ab, ptr %i.aa, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load i64, ptr %i.y, align 4
  store i64 %i.ad, ptr %i.ac, align 4
  %i.ae = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.af = load i64, ptr %i.r, align 4             ; 3 uses
  store i64 %i.af, ptr %i.ae, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ah = getelementptr i8, ptr %2, i64 32        ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8.i1 = load i8, ptr %i.ai, align 4, !noundef !3
  %.val9.i2 = load i8, ptr %i.ag, align 4, !noundef !3
  %i.aj = icmp ult i8 %.val8.i1, %.val9.i2        ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val6.i3 = load i8, ptr %i.ak, align 4, !noundef !3
  %.val7.i4 = load i8, ptr %i.al, align 4, !noundef !3
  %i.am = icmp ult i8 %.val6.i3, %.val7.i4        ; 2 uses
  %i.an = zext i1 %i.aj to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = xor i1 %i.aj, true
  %i.aq = zext i1 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.aq ; 4 uses
  %i.as = select i1 %i.am, i64 3, i64 2
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.as ; 4 uses
  %i.au = select i1 %i.am, i64 2, i64 3
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.au ; 3 uses
  %.val4.i5 = load i8, ptr %i.at, align 4, !noundef !3
  %.val5.i6 = load i8, ptr %i.ao, align 4, !noundef !3
  %i.aw = icmp ult i8 %.val4.i5, %.val5.i6        ; 3 uses
  %.val2.i7 = load i8, ptr %i.av, align 4, !noundef !3
  %.val3.i8 = load i8, ptr %i.ar, align 4, !noundef !3
  %i.ax = icmp ult i8 %.val2.i7, %.val3.i8        ; 3 uses
  %i.ay = select i1 %i.aw, ptr %i.at, ptr %i.ao, !unpredictable !3
  %i.az = select i1 %i.ax, ptr %i.ar, ptr %i.av, !unpredictable !3
  %i.ba = select i1 %i.ax, ptr %i.at, ptr %i.ar, !unpredictable !3
  %i.bb = select i1 %i.aw, ptr %i.ao, ptr %i.ba, !unpredictable !3 ; 3 uses
  %i.bc = select i1 %i.aw, ptr %i.ar, ptr %i.at, !unpredictable !3
  %i.bd = select i1 %i.ax, ptr %i.av, ptr %i.bc, !unpredictable !3 ; 3 uses
  %.val.i9 = load i8, ptr %i.bd, align 4, !noundef !3
  %.val1.i10 = load i8, ptr %i.bb, align 4, !noundef !3
  %i.be = icmp ult i8 %.val.i9, %.val1.i10        ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.bd, ptr %i.bb, !unpredictable !3
  %i.bg = select i1 %i.be, ptr %i.bb, ptr %i.bd, !unpredictable !3
  %i.bh = load i64, ptr %i.ay, align 4            ; 3 uses
  store i64 %i.bh, ptr %i.ah, align 4
  %i.bi = getelementptr i8, ptr %2, i64 40
  %i.bj = load i64, ptr %i.bf, align 4
  store i64 %i.bj, ptr %i.bi, align 4
  %i.bk = getelementptr i8, ptr %2, i64 48
  %i.bl = load i64, ptr %i.bg, align 4
  store i64 %i.bl, ptr %i.bk, align 4
  %i.bm = getelementptr i8, ptr %2, i64 56        ; 2 uses
  %i.bn = load i64, ptr %i.az, align 4            ; 3 uses
  store i64 %i.bn, ptr %i.bm, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bp = trunc i64 %i.bh to i8
  %i.bq = trunc i64 %i.z to i8
  %i.br = icmp ult i8 %i.bp, %i.bq                ; 3 uses
  %i.bs = xor i1 %i.br, true
  %i.bt = select i1 %i.br, i64 %i.bh, i64 %i.z
  store i64 %i.bt, ptr %1, align 4, !noalias !173
  %i.bu = zext i1 %i.br to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.bu ; 3 uses
  %i.bw = zext i1 %i.bs to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bw ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bz = trunc i64 %i.bn to i8
  %i.ca = trunc i64 %i.af to i8
  %i.cb = icmp ult i8 %i.bz, %i.ca                ; 3 uses
  %i.cc = xor i1 %i.cb, true
  %i.cd = select i1 %i.cb, i64 %i.af, i64 %i.bn
  store i64 %i.cd, ptr %i.bo, align 4, !noalias !174
  %.neg.i.i = sext i1 %i.cc to i64
  %i.ce = getelementptr [8 x i8], ptr %i.bm, i64 %.neg.i.i ; 3 uses
  %.neg15.i.i = sext i1 %i.cb to i64
  %i.cf = getelementptr [8 x i8], ptr %i.ae, i64 %.neg15.i.i ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.011.0.val.i.1 = load i8, ptr %i.bv, align 4, !alias.scope !172, !noundef !3
  %.sroa.06.0.val.i.1 = load i8, ptr %i.bx, align 4, !alias.scope !172, !noundef !3
  %i.ch = icmp ult i8 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i23.i.1 = select i1 %i.ch, ptr %i.bv, ptr %i.bx
  %i.ci = xor i1 %i.ch, true
  %i.cj = load i64, ptr %..i23.i.1, align 4, !alias.scope !172, !noalias !175
  store i64 %i.cj, ptr %i.by, align 4, !noalias !173
  %i.ck = zext i1 %i.ch to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.ck ; 3 uses
  %i.cm = zext i1 %i.ci to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cm ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i.1 = load i8, ptr %i.ce, align 4, !alias.scope !172, !noundef !3
  %.sroa.015.0.val.i.1 = load i8, ptr %i.cf, align 4, !alias.scope !172, !noundef !3
  %i.cp = icmp ult i8 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.cp, ptr %i.cf, ptr %i.ce
  %i.cq = xor i1 %i.cp, true
  %i.cr = load i64, ptr %..i.i.1, align 4, !alias.scope !172, !noalias !176
  store i64 %i.cr, ptr %i.cg, align 4, !noalias !174
  %.neg.i.i.1 = sext i1 %i.cq to i64
  %i.cs = getelementptr [8 x i8], ptr %i.ce, i64 %.neg.i.i.1 ; 3 uses
  %.neg15.i.i.1 = sext i1 %i.cp to i64
  %i.ct = getelementptr [8 x i8], ptr %i.cf, i64 %.neg15.i.i.1 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.011.0.val.i.2 = load i8, ptr %i.cl, align 4, !alias.scope !172, !noundef !3
  %.sroa.06.0.val.i.2 = load i8, ptr %i.cn, align 4, !alias.scope !172, !noundef !3
  %i.cv = icmp ult i8 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 3 uses
  %..i23.i.2 = select i1 %i.cv, ptr %i.cl, ptr %i.cn
  %i.cw = xor i1 %i.cv, true
  %i.cx = load i64, ptr %..i23.i.2, align 4, !alias.scope !172, !noalias !175
  store i64 %i.cx, ptr %i.co, align 4, !noalias !173
  %i.cy = zext i1 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.cy ; 3 uses
  %i.da = zext i1 %i.cw to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.017.0.val.i.2 = load i8, ptr %i.cs, align 4, !alias.scope !172, !noundef !3
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer:bb.a
  ret void

bb.p:                                             ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i, %bb.o
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared5pivot7median3ThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit.i ], [ %i.fa, %bb.o ]
  %i.fg = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.fh = sub nuw i64 %i.fg, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.fh, 3        ; 3 uses
  %i.fi = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0121296
  call void @llvm.assume(i1 %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph128, i64 %i.fh ; 4 uses
  %i.fk = load i8, ptr %i.fj, align 4             ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fm = load i32, ptr %i.fl, align 4
  store i8 %i.fk, ptr %i.a, align 4
  store i32 %i.fm, ptr %i.c, align 4
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.sroa.028.0.val = load i8, ptr %.sroa.028.0.ph125, align 4, !noundef !3
  %i.fn = icmp ult i8 %.sroa.028.0.val, %i.fk
  br i1 %i.fn, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.p, %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !292)
  call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0121296
  br i1 %.not83, label %bb.t, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.fo = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0121296 ; 3 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.s
  %.sroa.43.0.i = phi ptr [ %i.fo, %bb.s ], [ %i.hg, %bb.v ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.s ], [ %.sroa.27.2.lcssa.i, %bb.v ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph128, %bb.s ], [ %i.hj, %bb.v ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.s ], [ %.sroa.16.0121296, %bb.v ] ; 3 uses
  %i.fp = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.fp ; 2 uses
  %i.fr = icmp ult ptr %.sroa.9.0.i, %i.fq
  br i1 %i.fr, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.u, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %i.gt, %.lr.ph.i40 ], [ %.sroa.9.0.i, %bb.u ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %i.gs, %.lr.ph.i40 ], [ %.sroa.27.0.i, %bb.u ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %i.go, %.lr.ph.i40 ], [ %.sroa.43.0.i, %bb.u ] ; 4 uses
  %.val22.i = load i8, ptr %.sroa.9.131.i, align 4, !alias.scope !292, !noalias !293, !noundef !3
  %i.fs = icmp ult i8 %.val22.i, %i.fk            ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.fs, ptr %2, ptr %i.ft
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.fv = load i64, ptr %.sroa.9.131.i, align 4, !alias.scope !292, !noalias !294
  store i64 %i.fv, ptr %i.fu, align 4, !alias.scope !293, !noalias !295
  %i.fw = zext i1 %i.fs to i64
  %i.fx = add i64 %.sroa.27.130.i, %i.fw          ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8 ; 2 uses
  %.val20.i = load i8, ptr %i.fy, align 4, !alias.scope !292, !noalias !293, !noundef !3
  %i.fz = icmp ult i8 %.val20.i, %i.fk            ; 2 uses
  %i.ga = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i24.i = select i1 %i.fz, ptr %2, ptr %i.ga
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i, i64 %i.fx
  %i.gc = load i64, ptr %i.fy, align 4, !alias.scope !292, !noalias !296
  store i64 %i.gc, ptr %i.gb, align 4, !alias.scope !293, !noalias !297
  %i.gd = zext i1 %i.fz to i64
  %i.ge = add i64 %i.fx, %i.gd                    ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val18.i = load i8, ptr %i.gf, align 4, !alias.scope !292, !noalias !293, !noundef !3
  %i.gg = icmp ult i8 %.val18.i, %i.fk            ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i25.i = select i1 %i.gg, ptr %2, ptr %i.gh
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i, i64 %i.ge
  %i.gj = load i64, ptr %i.gf, align 4, !alias.scope !292, !noalias !298
  store i64 %i.gj, ptr %i.gi, align 4, !alias.scope !293, !noalias !299
  %i.gk = zext i1 %i.gg to i64
  %i.gl = add i64 %i.ge, %i.gk                    ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24 ; 2 uses
  %.val16.i = load i8, ptr %i.gm, align 4, !alias.scope !292, !noalias !293, !noundef !3
  %i.gn = icmp ult i8 %.val16.i, %i.fk            ; 2 uses
  %i.go = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gn, ptr %2, ptr %i.go
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i, i64 %i.gl
  %i.gq = load i64, ptr %i.gm, align 4, !alias.scope !292, !noalias !300
  store i64 %i.gq, ptr %i.gp, align 4, !alias.scope !293, !noalias !301
  %i.gr = zext i1 %i.gn to i64
  %i.gs = add i64 %i.gl, %i.gr                    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.gu = icmp ult ptr %i.gt, %i.fq
  br i1 %i.gu, label %.lr.ph.i40, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i40, %bb.u
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.u ], [ %i.go, %.lr.ph.i40 ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.u ], [ %i.gs, %.lr.ph.i40 ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.u ], [ %i.gt, %.lr.ph.i40 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gw = icmp ult ptr %.sroa.9.1.lcssa.i, %i.gv
  br i1 %i.gw, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.gz, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.hd, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.he, %.lr.ph38.i ] ; 2 uses
  %i.gx = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0121296
  br i1 %i.gx, label %bb.w, label %bb.v

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.he, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.hd, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.gz, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i8, ptr %.sroa.9.236.i, align 4, !alias.scope !292, !noalias !293, !noundef !3
  %i.gy = icmp ult i8 %.val.i, %i.fk              ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i27.i = select i1 %i.gy, ptr %2, ptr %i.gz
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i, i64 %.sroa.27.235.i
  %i.hb = load i64, ptr %.sroa.9.236.i, align 4, !alias.scope !292, !noalias !302
  store i64 %i.hb, ptr %i.ha, align 4, !alias.scope !293, !noalias !303
  %i.hc = zext i1 %i.gy to i64
  %i.hd = add i64 %.sroa.27.235.i, %i.hc          ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.hf = icmp ult ptr %i.he, %i.gv
  br i1 %i.hf, label %.lr.ph38.i, label %._crit_edge39.i

bb.v:                                             ; preds = %._crit_edge39.i
  %i.hg = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %.sroa.27.2.lcssa.i
  %i.hi = load i64, ptr %.sroa.9.2.lcssa.i, align 4, !alias.scope !292, !noalias !304
  store i64 %i.hi, ptr %i.hh, align 4, !alias.scope !293, !noalias !305
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.u

bb.w:                                             ; preds = %._crit_edge39.i
  %i.hk = shl i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph128, ptr nonnull align 4 %2, i64 %i.hk, i1 false), !alias.scope !306
  %i.hl = sub i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.w
  %i.hm = getelementptr [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check315 = icmp ult i64 %i.hl, 4
  br i1 %min.iters.check315, label %scalar.ph314.preheader, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph45.i
  %n.vec317 = and i64 %i.hl, -4                   ; 3 uses
  br label %vector.body318

vector.body318:                                   ; preds = %vector.body318, %vector.ph316
  %index319 = phi i64 [ 0, %vector.ph316 ], [ %index.next324, %vector.body318 ] ; 3 uses
  %i.hn = xor i64 %index319, -1
  %i.ho = getelementptr [8 x i8], ptr %i.fo, i64 %i.hn ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %i.hm, i64 %index319 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 -8
  %i.hr = getelementptr i8, ptr %i.ho, i64 -24
  %wide.load320 = load <2 x i64>, ptr %i.hq, align 4, !alias.scope !293, !noalias !292
  %wide.load321 = load <2 x i64>, ptr %i.hr, align 4, !alias.scope !293, !noalias !292
  %reverse322 = shufflevector <2 x i64> %wide.load320, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse323 = shufflevector <2 x i64> %wide.load321, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hs = getelementptr i8, ptr %i.hp, i64 16
  store <2 x i64> %reverse322, ptr %i.hp, align 4, !alias.scope !292, !noalias !293
  store <2 x i64> %reverse323, ptr %i.hs, align 4, !alias.scope !292, !noalias !293
  %index.next324 = add nuw i64 %index319, 4       ; 2 uses
  %i.ht = icmp eq i64 %index.next324, %n.vec317
  br i1 %i.ht, label %middle.block325, label %vector.body318, !llvm.loop !258

middle.block325:                                  ; preds = %vector.body318
  %cmp.n326 = icmp eq i64 %i.hl, %n.vec317
  br i1 %cmp.n326, label %.loopexit, label %scalar.ph314.preheader

scalar.ph314.preheader:                           ; preds = %.lr.ph45.i, %middle.block325
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec317, %middle.block325 ]
  br label %scalar.ph314

scalar.ph314:                                     ; preds = %scalar.ph314.preheader, %scalar.ph314
  %.sroa.07.043.i = phi i64 [ %i.hu, %scalar.ph314 ], [ %.sroa.07.043.i.ph, %scalar.ph314.preheader ] ; 3 uses
  %i.hu = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.hv = xor i64 %.sroa.07.043.i, -1
  %i.hw = getelementptr [8 x i8], ptr %i.fo, i64 %i.hv
  %i.hx = getelementptr [8 x i8], ptr %i.hm, i64 %.sroa.07.043.i
  %i.hy = load i64, ptr %i.hw, align 4, !alias.scope !293, !noalias !292
  store i64 %i.hy, ptr %i.hx, align 4, !alias.scope !292, !noalias !293
  %exitcond.not.i39 = icmp eq i64 %i.hu, %i.hl
  br i1 %exitcond.not.i39, label %.loopexit, label %scalar.ph314, !llvm.loop !259

.loopexit:                                        ; preds = %scalar.ph314, %middle.block325, %bb.w
  %i.hz = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.hz, label %.thread, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0121296
  br i1 %.not.i41, label %bb.y, label %_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit, !prof !4

bb.y:                                             ; preds = %bb.x
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @1980, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30, !noalias !307
  unreachable

_RNvMNtCscI6d9CVNmLh_4core5sliceSThcE12split_at_mutCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.x
  %7 = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph128) ]
  call void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort9quicksortThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB15_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB27_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %7, i64 noundef %i.hl, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.ev, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ia = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ia, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.q, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !308)
  call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %.not84 = icmp samesign ult i64 %3, %.sroa.16.0121296
  br i1 %.not84, label %bb.aa, label %bb.z, !prof !9

bb.z:                                             ; preds = %.thread
  %i.ib = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0121296 ; 3 uses
  br label %bb.ab

bb.aa:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ab:                                            ; preds = %bb.ad, %bb.z
  %.sroa.43.0.i44 = phi ptr [ %i.ib, %bb.z ], [ %i.jt, %bb.ad ] ; 2 uses
  %.sroa.27.0.i45 = phi i64 [ 0, %bb.z ], [ %i.jw, %bb.ad ] ; 2 uses
  %.sroa.9.0.i46 = phi ptr [ %.sroa.0.0.ph128, %bb.z ], [ %i.jx, %bb.ad ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.z ], [ %.sroa.16.0121296, %bb.ad ] ; 3 uses
  %i.ic = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i47, i64 3)
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %i.ic ; 2 uses
  %i.ie = icmp ult ptr %.sroa.9.0.i46, %i.id
  br i1 %i.ie, label %.lr.ph.i67, label %._crit_edge.i48

.lr.ph.i67:                                       ; preds = %bb.ab
  %.val23.i68 = load i8, ptr %i.fj, align 4, !alias.scope !308, !noalias !309, !noundef !3 ; 4 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i67
  %.sroa.9.131.i69 = phi ptr [ %.sroa.9.0.i46, %.lr.ph.i67 ], [ %i.jg, %bb.ac ] ; 6 uses
  %.sroa.27.130.i70 = phi i64 [ %.sroa.27.0.i45, %.lr.ph.i67 ], [ %i.jf, %bb.ac ] ; 2 uses
  %.sroa.43.129.i71 = phi ptr [ %.sroa.43.0.i44, %.lr.ph.i67 ], [ %i.jb, %bb.ac ] ; 4 uses
  %.val22.i72 = load i8, ptr %.sroa.9.131.i69, align 4, !alias.scope !308, !noalias !309, !noundef !3
  %i.if = icmp uge i8 %.val23.i68, %.val22.i72    ; 2 uses
  %i.ig = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -8
  %.sroa.01.0.i.i73 = select i1 %i.if, ptr %2, ptr %i.ig
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i70
  %i.ii = load i64, ptr %.sroa.9.131.i69, align 4, !alias.scope !308, !noalias !310
  store i64 %i.ii, ptr %i.ih, align 4, !alias.scope !309, !noalias !311
  %i.ij = zext i1 %i.if to i64
  %i.ik = add i64 %.sroa.27.130.i70, %i.ij        ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 8 ; 2 uses
  %.val20.i74 = load i8, ptr %i.il, align 4, !alias.scope !308, !noalias !309, !noundef !3
  %i.im = icmp uge i8 %.val23.i68, %.val20.i74    ; 2 uses
  %i.in = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -16
  %.sroa.01.0.i24.i75 = select i1 %i.im, ptr %2, ptr %i.in
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i24.i75, i64 %i.ik
  %i.ip = load i64, ptr %i.il, align 4, !alias.scope !308, !noalias !312
  store i64 %i.ip, ptr %i.io, align 4, !alias.scope !309, !noalias !313
  %i.iq = zext i1 %i.im to i64
  %i.ir = add i64 %i.ik, %i.iq                    ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 16 ; 2 uses
  %.val18.i76 = load i8, ptr %i.is, align 4, !alias.scope !308, !noalias !309, !noundef !3
  %i.it = icmp uge i8 %.val23.i68, %.val18.i76    ; 2 uses
  %i.iu = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -24
  %.sroa.01.0.i25.i77 = select i1 %i.it, ptr %2, ptr %i.iu
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i25.i77, i64 %i.ir
  %i.iw = load i64, ptr %i.is, align 4, !alias.scope !308, !noalias !314
  store i64 %i.iw, ptr %i.iv, align 4, !alias.scope !309, !noalias !315
  %i.ix = zext i1 %i.it to i64
  %i.iy = add i64 %i.ir, %i.ix                    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 24 ; 2 uses
  %.val16.i78 = load i8, ptr %i.iz, align 4, !alias.scope !308, !noalias !309, !noundef !3
  %i.ja = icmp uge i8 %.val23.i68, %.val16.i78    ; 2 uses
  %i.jb = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -32 ; 3 uses
  %.sroa.01.0.i26.i79 = select i1 %i.ja, ptr %2, ptr %i.jb
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i26.i79, i64 %i.iy
  %i.jd = load i64, ptr %i.iz, align 4, !alias.scope !308, !noalias !316
  store i64 %i.jd, ptr %i.jc, align 4, !alias.scope !309, !noalias !317
  %i.je = zext i1 %i.ja to i64
  %i.jf = add i64 %i.iy, %i.je                    ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 32 ; 3 uses
  %i.jh = icmp ult ptr %i.jg, %i.id
  br i1 %i.jh, label %bb.ac, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %bb.ac, %bb.ab
  %.sroa.43.1.lcssa.i49 = phi ptr [ %.sroa.43.0.i44, %bb.ab ], [ %i.jb, %bb.ac ] ; 2 uses
  %.sroa.27.1.lcssa.i50 = phi i64 [ %.sroa.27.0.i45, %bb.ab ], [ %i.jf, %bb.ac ] ; 2 uses
  %.sroa.9.1.lcssa.i51 = phi ptr [ %.sroa.9.0.i46, %bb.ab ], [ %i.jg, %bb.ac ] ; 3 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.0.0.i47 ; 2 uses
  %i.jj = icmp ult ptr %.sroa.9.1.lcssa.i51, %i.ji
  br i1 %i.jj, label %.lr.ph38.i60.preheader, label %._crit_edge39.i52

.lr.ph38.i60.preheader:                           ; preds = %._crit_edge.i48
  %.val15.i65 = load i8, ptr %i.fj, align 4, !alias.scope !308, !noalias !309, !noundef !3
  br label %.lr.ph38.i60

._crit_edge39.i52:                                ; preds = %.lr.ph38.i60, %._crit_edge.i48
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ], [ %i.jm, %.lr.ph38.i60 ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ], [ %i.jq, %.lr.ph38.i60 ] ; 9 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ], [ %i.jr, %.lr.ph38.i60 ] ; 2 uses
  %i.jk = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0121296
  br i1 %i.jk, label %bb.ae, label %bb.ad

.lr.ph38.i60:                                     ; preds = %.lr.ph38.i60.preheader, %.lr.ph38.i60
  %.sroa.9.236.i61 = phi ptr [ %i.jr, %.lr.ph38.i60 ], [ %.sroa.9.1.lcssa.i51, %.lr.ph38.i60.preheader ] ; 3 uses
  %.sroa.27.235.i62 = phi i64 [ %i.jq, %.lr.ph38.i60 ], [ %.sroa.27.1.lcssa.i50, %.lr.ph38.i60.preheader ] ; 2 uses
  %.sroa.43.234.i63 = phi ptr [ %i.jm, %.lr.ph38.i60 ], [ %.sroa.43.1.lcssa.i49, %.lr.ph38.i60.preheader ]
  %.val.i64 = load i8, ptr %.sroa.9.236.i61, align 4, !alias.scope !308, !noalias !309, !noundef !3
  %i.jl = icmp uge i8 %.val15.i65, %.val.i64      ; 2 uses
  %i.jm = getelementptr inbounds i8, ptr %.sroa.43.234.i63, i64 -8 ; 3 uses
  %.sroa.01.0.i27.i66 = select i1 %i.jl, ptr %2, ptr %i.jm
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i27.i66, i64 %.sroa.27.235.i62
  %i.jo = load i64, ptr %.sroa.9.236.i61, align 4, !alias.scope !308, !noalias !318
  store i64 %i.jo, ptr %i.jn, align 4, !alias.scope !309, !noalias !319
  %i.jp = zext i1 %i.jl to i64
  %i.jq = add i64 %.sroa.27.235.i62, %i.jp        ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i61, i64 8 ; 3 uses
  %i.js = icmp ult ptr %i.jr, %i.ji
  br i1 %i.js, label %.lr.ph38.i60, label %._crit_edge39.i52

bb.ad:                                            ; preds = %._crit_edge39.i52
  %i.jt = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -8
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  %i.jv = load i64, ptr %.sroa.9.2.lcssa.i55, align 4, !alias.scope !308, !noalias !320
  store i64 %i.jv, ptr %i.ju, align 4, !alias.scope !309, !noalias !321
  %i.jw = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.jx = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 8
  br label %bb.ab

bb.ae:                                            ; preds = %._crit_edge39.i52
  %i.jy = shl i64 %.sroa.27.2.lcssa.i54, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.0.ph128, ptr nonnull align 4 %2, i64 %i.jy, i1 false), !alias.scope !322
  %i.jz = sub i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i54 ; 7 uses
  %.not47.i56 = icmp eq i64 %.sroa.16.0121296, %.sroa.27.2.lcssa.i54
  br i1 %.not47.i56, label %.outer._crit_edge.thread, label %.lr.ph45.i57

.lr.ph45.i57:                                     ; preds = %bb.ae
  %i.ka = getelementptr [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  %min.iters.check = icmp ult i64 %i.jz, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i57
  %n.vec = and i64 %i.jz, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.kb = xor i64 %index, -1
  %i.kc = getelementptr [8 x i8], ptr %i.ib, i64 %i.kb ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr %i.ka, i64 %index ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kc, i64 -8
  %i.kf = getelementptr i8, ptr %i.kc, i64 -24
  %wide.load = load <2 x i64>, ptr %i.ke, align 4, !alias.scope !309, !noalias !308
  %wide.load312 = load <2 x i64>, ptr %i.kf, align 4, !alias.scope !309, !noalias !308
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse313 = shufflevector <2 x i64> %wide.load312, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.kg = getelementptr i8, ptr %i.kd, i64 16
  store <2 x i64> %reverse, ptr %i.kd, align 4, !alias.scope !308, !noalias !309
  store <2 x i64> %reverse313, ptr %i.kg, align 4, !alias.scope !308, !noalias !309
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kh = icmp eq i64 %index.next, %n.vec
  br i1 %i.kh, label %middle.block, label %vector.body, !llvm.loop !278

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.jz, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionThcENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2B_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i57, %middle.block
  %.sroa.07.043.i58.ph = phi i64 [ 0, %.lr.ph45.i57 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i58 = phi i64 [ %i.ki, %scalar.ph ], [ %.sroa.07.043.i58.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ki = add nuw i64 %.sroa.07.043.i58, 1        ; 2 uses
  %i.kj = xor i64 %.sroa.07.043.i58, -1
  %i.kk = getelementptr [8 x i8], ptr %i.ib, i64 %i.kj
  %i.kl = getelementptr [8 x i8], ptr %i.ka, i64 %.sroa.07.043.i58
  %i.km = load i64, ptr %i.kk, align 4, !alias.scope !309, !noalias !308
  store i64 %i.km, ptr %i.kl, align 4, !alias.scope !308, !noalias !309
  %exitcond.not.i59 = icmp eq i64 %i.ki, %i.jz
  br i1 %exitcond.not.i59, label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionThcENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2B_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0E0ECs97bFUy425Ar_15lance_tokenizer.exit, label %scalar.ph, !llvm.loop !279

_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionThcENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2B_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0E0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %scalar.ph, %middle.block
  %i.kn = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0121296
  br i1 %i.kn, label %bb.af, label %.outer, !prof !4

.outer._crit_edge.thread:                         ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1s_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2u_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionThcENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2B_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph128, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kp = icmp ult i64 %i.jz, 33
  br i1 %i.kp, label %.outer._crit_edge, label %.lr.ph

bb.af:                                            ; preds = %_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable9quicksort16stable_partitionThcENCINvB2_9quicksortB1d_NCINvMNtCs40k4W9msRzi_5alloc5sliceSB1d_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2B_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0E0ECs97bFUy425Ar_15lance_tokenizer.exit
  call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0121296, i64 noundef %.sroa.16.0121296, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #30
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
begin_hunk_2_@_RNvMs1_NtCsfKiFC1ztrmh_9hashbrown3mapINtB5_7HashMapNtNtCs40k4W9msRzi_5alloc6string6StringuNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE6insertCs97bFUy425Ar_15lance_tokenizer:bb.a

bb.e:                                             ; preds = %.thread.i.i, %bb.d
  %.sroa.04.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.d ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.d ]
  %i.an = add i64 %i.o, 16                        ; 2 uses
  %i.ao = add i64 %i.an, %.sroa.0.021.i.i
  br label %bb.c

bb.f:                                             ; preds = %.thread.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !650, !noundef !3 ; 2 uses
  %i.ar = icmp sgt i8 %i.aq, -1
  br i1 %i.ar, label %bb.g, label %bb.j, !prof !4

bb.g:                                             ; preds = %bb.f
  %.val2.i24.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !650
  %i.as = icmp slt <16 x i8> %.val2.i24.i.i, zeroinitializer
  %i.at = bitcast <16 x i1> %i.as to i16          ; 2 uses
  %.not.i25.i.i = icmp ne i16 %i.at, 0
  %i.au = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.at, i1 true)
  %i.av = zext nneg i16 %i.au to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i25.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.av
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !651
  br label %bb.j

bb.h:                                             ; preds = %_RNCINvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB8_8RawTableTNtNtCs40k4W9msRzi_5alloc6string6StringuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB23_11make_hasherBS_uNtNtNtCsgczF5crJ4sT_3std4hash6random11RandomStateE0E0Cs97bFUy425Ar_15lance_tokenizer.exit.i.i
  %.val10 = load i64, ptr %1, align 8             ; 2 uses
  %i.aw = icmp eq i64 %.val10, 0
  br i1 %i.aw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val10, i64 noundef range(i64 1, -9223372036854775807) 1) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.i, %bb.h, %bb.j
  ret void

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ax = phi i8 [ %.pre, %bb.g ], [ %i.aq, %bb.f ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.av, %bb.g ], [ %.sroa.4.126.i.i, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.az = and i8 %i.ax, 1
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bc = and i64 %i.bb, %.val7.i
  store i8 %i.j, ptr %i.ay, align 1, !noalias !651
  %i.bd = getelementptr i8, ptr %.val.i, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  store i8 %i.j, ptr %i.be, align 1, !noalias !651
  %i.bf = load <2 x i64>, ptr %i.d, align 8, !alias.scope !652, !noalias !653
  %i.bg = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ba, i64 0
  %i.bh = sub <2 x i64> %i.bf, %i.bg
  store <2 x i64> %i.bh, ptr %i.d, align 8, !alias.scope !652, !noalias !653
  %i.bi = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bj = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.bi
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !652
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs97bFUy425Ar_15lance_tokenizer.exit

bb.k:                                             ; preds = %bb.m, %bb.l
  resume { ptr, i32 } %i.bl

bb.l:                                             ; preds = %bb.b
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %.val8 = load i64, ptr %1, align 8              ; 2 uses
  %i.bm = icmp eq i64 %.val8, 0
  br i1 %i.bm, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load ptr, ptr %i.bn, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %.val8, i64 noundef range(i64 1, -9223372036854775807) 1) #29
  br label %bb.k
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtCs97bFUy425Ar_15lance_tokenizer13tokenizer_api5TokenE8grow_oneBQ_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !656
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !656
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 56), !noalias !656
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !656, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !656, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !656
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !656
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !656, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !656
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !656
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !656
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecThcEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !659
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !659
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8), !noalias !659
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !659, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !659, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !659
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !659, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !659
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !659
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !659
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !7, !noundef !3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !662
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !662
  call fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !662
  %i.f = load i64, ptr %i.a, align 8, !range !13, !noalias !662, !noundef !3
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !14, !noalias !662, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !662
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !662, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !662
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !662
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !662
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs97bFUy425Ar_15lance_tokenizer(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 57) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !5
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #29
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.j = tail call noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #29
  br label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink12 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %storemerge14 = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink12
  store i64 %.sink, ptr %i.n, align 8
  store i64 %storemerge14, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB4_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE9push_backCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = tail call noundef i8 @_RNvNtCs6g2bDYgB13P_21unicode_normalization7lookups25canonical_combining_class(i32 noundef %1) ; 4 uses
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 4 uses
  %i.h = load i32, ptr %0, align 8, !range !8, !alias.scope !683, !noundef !3
  %i.i = trunc nuw i32 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !683, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !683, !noundef !3
  br label %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutINtNtB13_5range9RangeFromjEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i16, ptr %i.n, align 4, !alias.scope !684, !noundef !3 ; 2 uses
  %i.q = zext i16 %i.p to i64                     ; 2 uses
  %i.r = icmp ult i16 %i.p, 5
  br i1 %i.r, label %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutINtNtB13_5range9RangeFromjEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit, label %bb.e, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.q, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2069) #30
  unreachable

_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutINtNtB13_5range9RangeFromjEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.d, %bb.c
  %.sroa.3.0.i = phi i64 [ %i.m, %bb.c ], [ %i.q, %bb.d ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  %i.s = icmp ugt i64 %i.g, %.sroa.3.0.i
  br i1 %i.s, label %bb.f, label %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit, !prof !4

bb.f:                                             ; preds = %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutINtNtB13_5range9RangeFromjEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit
  tail call void @_RNvNtNtCscI6d9CVNmLh_4core5slice5index16slice_index_fail(i64 noundef %i.g, i64 noundef range(i64 0, 1152921504606846976) %.sroa.3.0.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.3.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2030) #30, !noalias !685
  unreachable

_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvXs3_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_EINtNtNtCscI6d9CVNmLh_4core3ops5index8IndexMutINtNtB13_5range9RangeFromjEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit
  %i.t = sub nuw nsw i64 %.sroa.3.0.i, %i.g       ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i, i64 %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !686
  %i.v = icmp samesign ult i64 %i.t, 2
  br i1 %i.v, label %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.g, !prof !6

bb.g:                                             ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit
  %i.w = icmp samesign ult i64 %i.t, 21
  br i1 %i.w, label %bb.i, label %bb.h, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort6stable14driftsort_mainThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSBZ_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB20_14DecompositionsINtNtB8_6option8IntoItercEE12sort_pending0E0INtNtB1b_3vec3VecBZ_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.u, i64 noundef range(i64 0, 1152921504606846976) %i.t, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftThcENCINvMNtCs40k4W9msRzi_5alloc5sliceSB1m_11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtB2o_14DecompositionsINtNtBa_6option8IntoItercEE12sort_pending0E0ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 4 %i.u, i64 noundef range(i64 0, 1152921504606846976) %i.t)
  br label %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit

_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvXs5_NtNtCscI6d9CVNmLh_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexSThcEE9index_mutCs97bFUy425Ar_15lance_tokenizer.exit, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !686
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.x = load i32, ptr %0, align 8, !range !8, !alias.scope !687, !noundef !3
  %i.y = trunc nuw i32 %i.x to i1
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !689, !noundef !3 ; 3 uses
  %i.ac = load i64, ptr %i.z, align 8, !range !7, !alias.scope !689, !noundef !3
  %i.ad = icmp eq i64 %i.ab, %i.ac
  br i1 %i.ad, label %bb.k, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecThcEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %bb.k, %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !689, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ab ; 2 uses
  store i8 0, ptr %i.ag, align 4, !noalias !689
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %1, ptr %i.ah, align 4, !noalias !689
  %i.ai = add i64 %i.ab, 1
  store i64 %i.ai, ptr %i.aa, align 8, !alias.scope !689
  br label %_RNvMs5_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_E4pushCs97bFUy425Ar_15lance_tokenizer.exit

bb.l:                                             ; preds = %_RINvMNtCs40k4W9msRzi_5alloc5sliceSThcE11sort_by_keyhNCNvMs_NtCs6g2bDYgB13P_21unicode_normalization9decomposeINtBV_14DecompositionsINtNtCscI6d9CVNmLh_4core6option8IntoItercEE12sort_pending0ECs97bFUy425Ar_15lance_tokenizer.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 4, !alias.scope !690, !noundef !3 ; 3 uses
  %i.al = icmp ult i16 %i.ak, 4
  br i1 %i.al, label %_RNvMs5_NtCsfUzTxybQDTm_7tinyvec8arrayvecINtB5_8ArrayVecAThcEj4_E8try_pushCs97bFUy425Ar_15lance_tokenizer.exit.thread.i, label %bb.m

_RNvMs5_NtCsfUzTxybQDTm_7tinyvec8arrayvecINtB5_8ArrayVecAThcEj4_E8try_pushCs97bFUy425Ar_15lance_tokenizer.exit.thread.i: ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = zext nneg i16 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an ; 2 uses
  store i8 0, ptr %i.ao, align 8, !alias.scope !687
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %1, ptr %i.ap, align 4, !alias.scope !687
  %i.aq = add nuw nsw i16 %i.ak, 1
  store i16 %i.aq, ptr %i.aj, align 4, !alias.scope !690
  br label %_RNvMs5_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_E4pushCs97bFUy425Ar_15lance_tokenizer.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !687
  call fastcc void @_RINvNvMs5_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB8_7TinyVecpE4push22drain_to_heap_and_pushAThcEj4_ECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef align 4 dereferenceable(36) %i.aj, i8 noundef 0, i32 noundef range(i32 0, 1114112) %1)
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfUzTxybQDTm_7tinyvec7tinyvec7TinyVecAThcEj4_EECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(40) %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !687
  br label %_RNvMs5_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_E4pushCs97bFUy425Ar_15lance_tokenizer.exit

_RNvMs5_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_E4pushCs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i, %_RNvMs5_NtCsfUzTxybQDTm_7tinyvec8arrayvecINtB5_8ArrayVecAThcEj4_E8try_pushCs97bFUy425Ar_15lance_tokenizer.exit.thread.i, %bb.m
  %i.ar = load i32, ptr %0, align 8, !range !8, !noundef !3
  %i.as = trunc nuw i32 %i.ar to i1
  br i1 %i.as, label %bb.s, label %bb.t

bb.n:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.at = load i32, ptr %0, align 8, !range !8, !alias.scope !691, !noundef !3
  %i.au = trunc nuw i32 %i.at to i1
  br i1 %i.au, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !693, !noundef !3 ; 3 uses
  %i.ay = load i64, ptr %i.av, align 8, !range !7, !alias.scope !693, !noundef !3
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.p, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i3

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecThcEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i3

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecThcEE8push_mutCs97bFUy425Ar_15lance_tokenizer.exit.i3: ; preds = %bb.p, %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !693, !nonnull !3, !noundef !3
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ax ; 2 uses
  store i8 %i.d, ptr %i.bc, align 4, !noalias !693
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  store i32 %1, ptr %i.bd, align 4, !noalias !693
  %i.be = add i64 %i.ax, 1
  store i64 %i.be, ptr %i.aw, align 8, !alias.scope !693
  br label %_RNvMs5_NtCsfUzTxybQDTm_7tinyvec7tinyvecINtB5_7TinyVecAThcEj4_E4pushCs97bFUy425Ar_15lance_tokenizer.exit4

end_hunk_2
begin_hunk_3_@_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter13split_segment:bb.a
  %i.ac = icmp samesign ugt i8 %i.q, -33
  br i1 %i.ac, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ad = zext nneg i8 %i.q to i32
  br label %bb.k

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i
  %i.ae = add nuw nsw i64 %2, 2
  %i.af = icmp samesign ne i64 %i.ae, %3
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 2 uses
  %i.ah = load i8, ptr %i.w, align 1, !noalias !893, !noundef !3
  %i.ai = shl nuw nsw i32 %i.aa, 6
  %i.aj = and i8 %i.ah, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak            ; 2 uses
  %i.am = shl nuw nsw i32 %i.t, 12
  %i.an = or disjoint i32 %i.al, %i.am
  %i.ao = icmp samesign ugt i8 %i.q, -17
  br i1 %i.ao, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i, label %bb.k

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i
  %i.ap = add nuw nsw i64 %2, 3
  %i.aq = icmp samesign ne i64 %i.ap, %3
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.as = load i8, ptr %i.ag, align 1, !noalias !893, !noundef !3
  %i.at = shl nuw nsw i32 %i.t, 18
  %i.au = and i32 %i.at, 1835008
  %i.av = shl nuw nsw i32 %i.al, 6
  %i.aw = and i8 %i.as, 63
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.av, %i.ax
  %i.az = or disjoint i32 %i.ay, %i.au
  br label %bb.k

bb.k:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i, %bb.j, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i
  %.val.i = phi ptr [ %i.ag, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i ], [ %i.ar, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i ], [ %i.w, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i ], [ %i.p, %bb.j ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.an, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i ], [ %i.az, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i ], [ %i.ad, %bb.j ] ; 2 uses
  %i.ba = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.bc = sub i64 %i.bb, %i.o
  %i.bd = ptrtoint ptr %i.n to i64                ; 2 uses
  %i.be = sub nuw i64 %i.bd, %i.bb                ; 2 uses
  %i.bf = lshr i64 %i.be, 2
  %i.bg = and i64 %i.be, 3
  %.not.i.i.i.i = icmp ne i64 %i.bg, 0
  %i.bh = zext i1 %.not.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i = add nuw nsw i64 %i.bf, %i.bh ; 2 uses
  %i.bi = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i.i, i64 3) ; 2 uses
  %.sroa.0.0.i12.i = add nuw nsw i64 %i.bi, 1     ; 2 uses
  %i.bj = shl i64 %.sroa.0.0.i12.i, 4             ; 4 uses
  %i.bk = icmp samesign ugt i64 %.sroa.0.0.i.i.i.i, 1152921504606846974
  %.not.i.i.i = icmp ugt i64 %i.bj, 9223372036854775800
  %or.cond.i.i.i = select i1 %i.bk, i1 true, i1 %.not.i.i.i, !prof !5
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.l, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.l
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !noalias !894
  %i.bm = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef %i.bj, i64 noundef range(i64 1, 9) 8) #29, !noalias !894 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.m, label %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i

bb.m:                                             ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.k
  %.sroa.10.0.ph.i.i = phi i64 [ %i.bj, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ], [ undef, %bb.k ]
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.k ]
  tail call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.10.0.ph.i.i) #30, !noalias !892
  unreachable

_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.l
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.l ], [ %i.bm, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 5 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.l ], [ %.sroa.0.0.i12.i, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator8allocate.exit.i.i.i ] ; 3 uses
  %i.bo = icmp samesign ult i64 %i.bi, %.sroa.4.0.i.i
  tail call void @llvm.assume(i1 %i.bo)
  store i64 %2, ptr %.sroa.10.0.i.i, align 8, !noalias !892
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i, i64 8
  store i32 %.sroa.4.0.i.ph.i.i.i, ptr %i.bp, align 8, !noalias !892
  store i64 %.sroa.4.0.i.i, ptr %i.a, align 8, !noalias !892
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !892
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i, align 8, !noalias !892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.bq = icmp eq ptr %.val.i, %i.n
  br i1 %i.bq, label %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtB2r_3str4iter11CharIndicesNCNvBT_13split_segment0EE11spec_extendBV_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i, %.noexc.i
  %i.br = phi ptr [ %i.ds, %.noexc.i ], [ %.sroa.10.0.i.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i ]
  %i.bs = phi i64 [ %i.dv, %.noexc.i ], [ 1, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i ] ; 9 uses
  %i.bt = phi i64 [ %i.di, %.noexc.i ], [ %i.bc, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i ] ; 2 uses
  %i.bu = phi ptr [ %i.de, %.noexc.i ], [ %.val.i, %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i ] ; 6 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1 ; 3 uses
  %i.bx = load i8, ptr %i.bu, align 1, !noalias !897, !noundef !3 ; 5 uses
  %i.by = icmp sgt i8 %i.bx, -1
  br i1 %i.by, label %bb.n, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bz = and i8 %i.bx, 31
  %i.ca = zext nneg i8 %i.bz to i32               ; 3 uses
  %i.cb = icmp ne ptr %i.bw, %i.n
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 3 uses
  %i.cd = load i8, ptr %i.bw, align 1, !noalias !897, !noundef !3
  %i.ce = shl nuw nsw i32 %i.ca, 6
  %i.cf = and i8 %i.cd, 63
  %i.cg = zext nneg i8 %i.cf to i32               ; 2 uses
  %i.ch = or disjoint i32 %i.ce, %i.cg
  %i.ci = icmp samesign ugt i8 %i.bx, -33
  br i1 %i.ci, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i.i.i, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.cj = zext nneg i8 %i.bx to i32
  br label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i.i.i
  %i.ck = icmp ne ptr %i.cc, %i.n
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bu, i64 3 ; 3 uses
  %i.cm = load i8, ptr %i.cc, align 1, !noalias !897, !noundef !3
  %i.cn = shl nuw nsw i32 %i.cg, 6
  %i.co = and i8 %i.cm, 63
  %i.cp = zext nneg i8 %i.co to i32
  %i.cq = or disjoint i32 %i.cn, %i.cp            ; 2 uses
  %i.cr = shl nuw nsw i32 %i.ca, 12
  %i.cs = or disjoint i32 %i.cq, %i.cr
  %i.ct = icmp samesign ugt i8 %i.bx, -17
  br i1 %i.ct, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i.i.i, label %bb.o

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i.i.i
  %i.cu = icmp ne ptr %i.cl, %i.n
  tail call void @llvm.assume(i1 %i.cu)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %i.cw = load i8, ptr %i.cl, align 1, !noalias !897, !noundef !3
  %i.cx = shl nuw nsw i32 %i.ca, 18
  %i.cy = and i32 %i.cx, 1835008
  %i.cz = shl nuw nsw i32 %i.cq, 6
  %i.da = and i8 %i.cw, 63
  %i.db = zext nneg i8 %i.da to i32
  %i.dc = or disjoint i32 %i.cz, %i.db
  %i.dd = or disjoint i32 %i.dc, %i.cy
  br label %bb.o

bb.o:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i.i.i, %bb.n, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i.i.i
  %i.de = phi ptr [ %i.cl, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i.i.i ], [ %i.cv, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i.i.i ], [ %i.cc, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i.i.i ], [ %i.bw, %bb.n ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.cs, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i.i.i.i.i ], [ %i.dd, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i.i.i.i.i ], [ %i.ch, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i.i.i.i ], [ %i.cj, %bb.n ] ; 2 uses
  %i.df = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = ptrtoint ptr %i.de to i64               ; 2 uses
  %i.dh = sub i64 %i.bt, %i.bv
  %i.di = add i64 %i.dh, %i.dg
  %i.dj = add i64 %i.bt, %2
  %i.dk = icmp samesign ult i64 %i.bs, 576460752303423488
  tail call void @llvm.assume(i1 %i.dk)
  %i.dl = load i64, ptr %i.a, align 8, !range !7, !alias.scope !898, !noalias !899, !noundef !3
  %i.dm = icmp eq i64 %i.bs, %i.dl
  br i1 %i.dm, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i.i, label %.noexc.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i.i: ; preds = %bb.o
  %i.dn = sub nuw i64 %i.bd, %i.dg                ; 2 uses
  %i.do = lshr i64 %i.dn, 2
  %i.dp = and i64 %i.dn, 3
  %.not.i.i.i.i.i.i = icmp ne i64 %i.dp, 0
  %i.dq = zext i1 %.not.i.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i.i = add nuw nsw i64 %i.do, 1
  %i.dr = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i, %i.dq
  invoke fastcc void @_RINvNvMs2_NtCs40k4W9msRzi_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.bs, i64 noundef range(i64 1, 0) %i.dr, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i..noexc_crit_edge.i unwind label %bb.p, !noalias !892

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i..noexc_crit_edge.i: ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i.i
  %.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !898, !noalias !899
  br label %.noexc.i

.noexc.i:                                         ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i..noexc_crit_edge.i, %bb.o
  %i.ds = phi ptr [ %.pre.i, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i..noexc_crit_edge.i ], [ %i.br, %bb.o ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.bs ; 2 uses
  store i64 %i.dj, ptr %i.dt, align 8, !noalias !900
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %.sroa.4.0.i.ph.i.i.i.i.i, ptr %i.du, align 8, !noalias !900
  %i.dv = add nuw nsw i64 %i.bs, 1                ; 2 uses
  store i64 %i.dv, ptr %.sroa.64.0..sroa_idx.i, align 8, !alias.scope !898, !noalias !899
  %i.dw = icmp eq ptr %i.de, %i.n
  br i1 %i.dw, label %.lr.ph, label %.lr.ph.i.i.i

bb.p:                                             ; preds = %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoE7reserveBI_.exit.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val10.i = load i64, ptr %i.a, align 8, !noalias !892 ; 2 uses
  %i.dy = icmp eq i64 %.val10.i, 0
  br i1 %i.dy, label %common.resume, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val11.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !892, !nonnull !3, !noundef !3
  %6 = shl nuw i64 %.val10.i, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i, i64 noundef %6, i64 noundef range(i64 1, -9223372036854775807) 8) #29, !noalias !892
  br label %common.resume

_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtB2r_3str4iter11CharIndicesNCNvBT_13split_segment0EE11spec_extendBV_.exit.i: ; preds = %_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs97bFUy425Ar_15lance_tokenizer.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !892
  br label %._crit_edge

.lr.ph:                                           ; preds = %.noexc.i
  %.sroa.0.0.copyload.pre = load i64, ptr %i.a, align 8, !noalias !901 ; 2 uses
  %.sroa.6.0.copyload.pre = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !901 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !892
  %i.dz = icmp ne i64 %i.bs, 576460752303423487
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.t

common.resume:                                    ; preds = %bb.al, %bb.am, %bb.p, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.dx, %bb.p ], [ %i.dx, %bb.q ], [ %lpad.phi, %bb.am ], [ %lpad.phi, %bb.al ]
  resume { ptr, i32 } %common.resume.op

bb.r:                                             ; preds = %bb.h, %bb.f, %bb.b, %.split.i, %.split7.i
  tail call void @_RNvNtCscI6d9CVNmLh_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2051) #30
  unreachable

._crit_edge:                                      ; preds = %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtB2r_3str4iter11CharIndicesNCNvBT_13split_segment0EE11spec_extendBV_.exit.i
  %.sroa.0.0.copyload80 = phi i64 [ %.sroa.4.0.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtB2r_3str4iter11CharIndicesNCNvBT_13split_segment0EE11spec_extendBV_.exit.i ], [ %.sroa.0.0.copyload.pre, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread ] ; 3 uses
  %.sroa.6.0.copyload78 = phi ptr [ %.sroa.10.0.i.i, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtB2r_3str4iter11CharIndicesNCNvBT_13split_segment0EE11spec_extendBV_.exit.i ], [ %.sroa.6.0.copyload.pre, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread ] ; 3 uses
  %.sroa.03.0.lcssa = phi i64 [ %2, %_RNvXNtNtCs40k4W9msRzi_5alloc3vec11spec_extendINtB4_3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEINtB2_10SpecExtendBR_INtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapNtNtNtB2r_3str4iter11CharIndicesNCNvBT_13split_segment0EE11spec_extendBV_.exit.i ], [ %.sroa.03.1, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !902, !noundef !3 ; 3 uses
  %i.ee = load i64, ptr %5, align 8, !range !7, !alias.scope !902, !noundef !3
  %i.ef = icmp eq i64 %i.ed, %i.ee
  br i1 %i.ef, label %bb.s, label %bb.an

bb.s:                                             ; preds = %._crit_edge
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.an unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %.lr.ph, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread
  %.sroa.03.047 = phi i64 [ %2, %.lr.ph ], [ %.sroa.03.1, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread ] ; 9 uses
  %.sroa.09.046 = phi i64 [ 1, %.lr.ph ], [ %i.eg, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread ] ; 5 uses
  %i.eg = add nuw nsw i64 %.sroa.09.046, 1        ; 2 uses
  %i.eh = getelementptr [16 x i8], ptr %.sroa.6.0.copyload.pre, i64 %.sroa.09.046 ; 4 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 -8
  %i.ej = load i32, ptr %i.ei, align 8, !range !10, !alias.scope !903, !noundef !3 ; 7 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.el = load i32, ptr %i.ek, align 8, !range !10, !alias.scope !903, !noundef !3 ; 7 uses
  br i1 %4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %i.em = add nsw i32 %i.ej, -97
  %or.cond.i = icmp ult i32 %i.em, 26
  br i1 %or.cond.i, label %bb.z, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.en = add nsw i32 %i.ej, -48
  %.sroa.011.0.i = icmp ult i32 %i.en, 10
  %i.eo = add nsw i32 %i.el, -48
  %i.ep = icmp ult i32 %i.eo, 10
  %.sroa.012.0.i = xor i1 %.sroa.011.0.i, %i.ep
  br i1 %.sroa.012.0.i, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.eq = icmp samesign ult i32 %i.ej, 170
  br i1 %i.eq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.er = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9lowercase6lookup(i32 noundef %i.ej)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %bb.x
  br i1 %i.er, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.es = add nsw i32 %i.ej, -65
  %or.cond4.i = icmp ult i32 %i.es, 26
  br i1 %or.cond4.i, label %bb.ae, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

bb.z:                                             ; preds = %.noexc21, %bb.u
  %i.et = add nsw i32 %i.el, -65
  %or.cond2.i = icmp ult i32 %i.et, 26
  br i1 %or.cond2.i, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.eu = icmp samesign ult i32 %i.el, 192
  br i1 %i.eu, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %i.el)
          to label %.noexc22 unwind label %.loopexit

.noexc22:                                         ; preds = %bb.ab
  br i1 %i.ev, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %bb.ac

bb.ac:                                            ; preds = %.noexc22, %bb.aa, %.noexc21
  %i.ew = icmp samesign ult i32 %i.ej, 192
  br i1 %i.ew, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ex = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %i.ej)
          to label %.noexc23 unwind label %.loopexit

.noexc23:                                         ; preds = %bb.ad
  br i1 %i.ex, label %bb.ae, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

bb.ae:                                            ; preds = %.noexc23, %bb.y
  %i.ey = add nsw i32 %i.el, -65
  %or.cond6.i = icmp ult i32 %i.ey, 26
  br i1 %or.cond6.i, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ez = icmp samesign ult i32 %i.el, 192
  br i1 %i.ez, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fa = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9uppercase6lookup(i32 noundef %i.el)
          to label %.noexc24 unwind label %.loopexit

.noexc24:                                         ; preds = %bb.ag
  %i.fb = icmp samesign ult i64 %.sroa.09.046, %i.bs
  %or.cond = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %or.cond, label %bb.ai, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

bb.ah:                                            ; preds = %bb.ae
  %.old = icmp samesign ult i64 %.sroa.09.046, %i.bs
  br i1 %.old, label %bb.ai, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

bb.ai:                                            ; preds = %.noexc24, %bb.ah
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload.pre, i64 %i.eg
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load i32, ptr %i.fd, align 8, !range !10, !alias.scope !903, !noundef !3 ; 3 uses
  %i.ff = add nsw i32 %i.fe, -97
  %or.cond8.i = icmp ult i32 %i.ff, 26
  br i1 %or.cond8.i, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fg = icmp samesign ult i32 %i.fe, 170
  br i1 %i.fg, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fh = invoke noundef zeroext i1 @_RNvNtNtNtCscI6d9CVNmLh_4core7unicode12unicode_data9lowercase6lookup(i32 noundef %i.fe)
          to label %.noexc25 unwind label %.loopexit

.noexc25:                                         ; preds = %bb.ak
  br i1 %i.fh, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit, label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread

.loopexit:                                        ; preds = %bb.x, %bb.ab, %bb.ad, %bb.ag, %bb.ak, %bb.ap
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp:                               ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.0.0.copyload79 = phi i64 [ %.sroa.0.0.copyload.pre, %.loopexit ], [ %.sroa.0.0.copyload80, %.loopexit.split-lp ] ; 2 uses
  %.sroa.6.0.copyload77 = phi ptr [ %.sroa.6.0.copyload.pre, %.loopexit ], [ %.sroa.6.0.copyload78, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.fi = icmp eq i64 %.sroa.0.0.copyload79, 0
  br i1 %i.fi, label %common.resume, label %bb.am

bb.am:                                            ; preds = %bb.al
  %7 = shl nuw i64 %.sroa.0.0.copyload79, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload77) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload77, i64 noundef %7, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %common.resume

bb.an:                                            ; preds = %._crit_edge, %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !902, !nonnull !3, !noundef !3
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.ed ; 2 uses
  store i64 %.sroa.03.0.lcssa, ptr %i.fl, align 8, !noalias !902
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %3, ptr %i.fm, align 8, !noalias !902
  %i.fn = add i64 %i.ed, 1
  store i64 %i.fn, ptr %i.ec, align 8, !alias.scope !902
  %i.fo = icmp eq i64 %.sroa.0.0.copyload80, 0
  br i1 %i.fo, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEEB1c_.exit26, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %8 = shl nuw i64 %.sroa.0.0.copyload80, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload78) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload78, i64 noundef %8, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEEB1c_.exit26

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter8CharInfoEEB1c_.exit26: ; preds = %bb.ao, %bb.an, %bb.a
  ret void

_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread: ; preds = %bb.y, %.noexc25, %bb.ah, %bb.aj, %.noexc24, %.noexc23, %bb.ac, %bb.af, %bb.aq
  %.sroa.03.1 = phi i64 [ %i.fx, %bb.aq ], [ %.sroa.03.047, %bb.af ], [ %.sroa.03.047, %bb.ac ], [ %.sroa.03.047, %.noexc23 ], [ %.sroa.03.047, %.noexc24 ], [ %.sroa.03.047, %bb.aj ], [ %.sroa.03.047, %bb.ah ], [ %.sroa.03.047, %.noexc25 ], [ %.sroa.03.047, %bb.y ] ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.09.046, %i.bs
  br i1 %exitcond.not, label %._crit_edge, label %bb.t

_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit: ; preds = %bb.ai, %.noexc25, %.noexc22, %bb.z, %bb.v
  %i.fp = load i64, ptr %i.eh, align 8, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  %i.fq = load i64, ptr %i.ea, align 8, !alias.scope !904, !noundef !3 ; 3 uses
  %i.fr = load i64, ptr %5, align 8, !range !7, !alias.scope !904, !noundef !3
  %i.fs = icmp eq i64 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCs97bFUy425Ar_15lance_tokenizer(ptr noalias noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.aq unwind label %.loopexit

bb.aq:                                            ; preds = %bb.ap, %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit
  %i.ft = load ptr, ptr %i.eb, align 8, !alias.scope !904, !nonnull !3, !noundef !3
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fq ; 2 uses
  store i64 %.sroa.03.047, ptr %i.fu, align 8, !noalias !904
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store i64 %i.fp, ptr %i.fv, align 8, !noalias !904
  %i.fw = add i64 %i.fq, 1
  store i64 %i.fw, ptr %i.ea, align 8, !alias.scope !904
  %i.fx = load i64, ptr %i.eh, align 8, !noundef !3
  br label %_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter11is_boundary.exit.thread
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter16split_identifier(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 4 uses
  %i.e = icmp samesign eq i64 %2, 0
  br i1 %i.e, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %.sroa.69.027 = phi i64 [ %.sroa.69.1, %bb.j ], [ undef, %bb.a ] ; 2 uses
  %.sroa.06.026 = phi i64 [ %.sroa.06.1, %bb.j ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.025 = phi ptr [ %.sroa.0.1, %bb.j ], [ %1, %bb.a ] ; 6 uses
  %.sroa.10.024 = phi i64 [ %i.at, %bb.j ], [ 0, %bb.a ] ; 3 uses
  %i.f = ptrtoint ptr %.sroa.0.025 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 1 ; 3 uses
  %i.h = load i8, ptr %.sroa.0.025, align 1, !noalias !909, !noundef !3 ; 5 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i: ; preds = %.lr.ph
  %i.j = and i8 %i.h, 31
  %i.k = zext nneg i8 %i.j to i32                 ; 3 uses
  %i.l = icmp ne ptr %i.g, %i.d
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 2 ; 3 uses
  %i.n = load i8, ptr %i.g, align 1, !noalias !909, !noundef !3
  %i.o = shl nuw nsw i32 %i.k, 6
  %i.p = and i8 %i.n, 63
  %i.q = zext nneg i8 %i.p to i32                 ; 2 uses
  %i.r = or disjoint i32 %i.o, %i.q
  %i.s = icmp samesign ugt i8 %i.h, -33
  br i1 %i.s, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.t = zext nneg i8 %i.h to i32
  br label %bb.e

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i
  %i.u = icmp ne ptr %i.m, %i.d
  tail call void @llvm.assume(i1 %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 3 ; 3 uses
  %i.w = load i8, ptr %i.m, align 1, !noalias !909, !noundef !3
  %i.x = shl nuw nsw i32 %i.q, 6
  %i.y = and i8 %i.w, 63
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %i.ab = shl nuw nsw i32 %i.k, 12
  %i.ac = or disjoint i32 %i.aa, %i.ab
  %i.ad = icmp samesign ugt i8 %i.h, -17
  br i1 %i.ad, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i, label %bb.e

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i: ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i
  %i.ae = icmp ne ptr %i.v, %i.d
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 4
  %i.ag = load i8, ptr %i.v, align 1, !noalias !909, !noundef !3
  %i.ah = shl nuw nsw i32 %i.k, 18
  %i.ai = and i32 %i.ah, 1835008
  %i.aj = shl nuw nsw i32 %i.aa, 6
  %i.ak = and i8 %i.ag, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al
  %i.an = or disjoint i32 %i.am, %i.ai
  br label %bb.e

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.a, align 8             ; 2 uses
  %i.ao = icmp eq i64 %.val, 0
  br i1 %i.ao, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjjEEECs97bFUy425Ar_15lance_tokenizer.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val17 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.ap = shl nuw i64 %.val, 4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #29
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjjEEECs97bFUy425Ar_15lance_tokenizer.exit

bb.e:                                             ; preds = %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i, %bb.b, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i
  %.sroa.0.1 = phi ptr [ %i.g, %bb.b ], [ %i.af, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i ], [ %i.v, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i ], [ %i.m, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i ] ; 3 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.t, %bb.b ], [ %i.an, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit16.i.i ], [ %i.ac, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit14.i.i ], [ %i.r, %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i ] ; 2 uses
  %i.aq = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = ptrtoint ptr %.sroa.0.1 to i64
  %i.as = sub i64 %.sroa.10.024, %i.f
  %i.at = add i64 %i.as, %i.ar
  %cond = icmp eq i32 %.sroa.4.0.i.ph.i, 95
  br i1 %cond, label %bb.g, label %bb.h

.thread:                                          ; preds = %bb.j
  %i.au = trunc nuw i64 %.sroa.06.1 to i1
  br i1 %i.au, label %bb.f, label %.thread.thread

bb.f:                                             ; preds = %.thread
  invoke fastcc void @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter13split_segment(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.69.1, i64 noundef %2, i1 noundef zeroext %3, ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %.thread.thread unwind label %.loopexit.split-lp

.thread.thread:                                   ; preds = %bb.a, %bb.f, %.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.e
  %i.av = trunc nuw i64 %.sroa.06.026 to i1
  br i1 %i.av, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.e
  %.not15 = icmp eq i64 %.sroa.06.026, 1
  %spec.select16 = select i1 %.not15, i64 %.sroa.69.027, i64 %.sroa.10.024
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter13split_segment(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %.sroa.69.027, i64 noundef %.sroa.10.024, i1 noundef zeroext %3, ptr noalias noundef align 8 dereferenceable(24) %i.a)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.sroa.06.1 = phi i64 [ 0, %bb.g ], [ 1, %bb.h ], [ 0, %bb.i ] ; 2 uses
  %.sroa.69.1 = phi i64 [ undef, %bb.g ], [ %spec.select16, %bb.h ], [ undef, %bb.i ] ; 2 uses
  %i.aw = icmp eq ptr %.sroa.0.1, %i.d
  br i1 %i.aw, label %.thread, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTjjEEECs97bFUy425Ar_15lance_tokenizer.exit: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text(ptr noalias noundef nonnull readonly captures(address) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 4 uses
  %.not.i12.not.i = icmp samesign eq i64 %1, 0
  br i1 %.not.i12.not.i, label %_RINvYNtNtNtCscI6d9CVNmLh_4core3str4iter5CharsNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvNvBH_3any5checkcNCNvNtCs97bFUy425Ar_15lance_tokenizer21word_delimiter_filter18is_identifier_text0E0INtNtNtB9_3ops12control_flow11ControlFlowuEEB1X_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.backedge.i
  %i.b = phi ptr [ %i.ak, %.backedge.i ], [ %0, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 3 uses
  %i.d = load i8, ptr %i.b, align 1, !noalias !916, !noundef !3 ; 5 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.b, label %_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i

_RNvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs97bFUy425Ar_15lance_tokenizer.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.f = and i8 %i.d, 31
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = icmp ne ptr %i.c, %i.a
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 3 uses
  %i.j = load i8, ptr %i.c, align 1, !noalias !916, !noundef !3
  %i.k = shl nuw nsw i32 %i.g, 6
  %i.l = and i8 %i.j, 63
  %i.m = zext nneg i8 %i.l to i32                 ; 2 uses
  %i.n = or disjoint i32 %i.k, %i.m
  %i.o = icmp samesign ugt i8 %i.d, -33
end_hunk_3
