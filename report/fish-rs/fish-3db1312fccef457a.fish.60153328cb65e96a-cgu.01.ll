Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.01?download=true
inline.NumInlined: 2770
inline.NumDeleted: 706
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData11delete_char:bb.a
  %.sroa.42.0..sroa_idx.i35 = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ay, ptr %.sroa.42.0..sroa_idx.i35, align 8, !noalias !1378
  %.sroa.53.0..sroa_idx.i36 = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 0, ptr %.sroa.53.0..sroa_idx.i36, align 8, !noalias !1378
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bd, align 8, !noalias !1378
  call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18push_edit_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, i1 noundef zeroext %.sroa.021.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.b, i1 noundef zeroext false), !inline_history !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1378
  br label %bb.n

bb.n:                                             ; preds = %_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15erase_substring.exit37, %_RNvMs5_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15erase_substring.exit
  %i.be = call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef align 8 dereferenceable(2304) %0, i1 noundef zeroext %.sroa.021.0, i64 noundef 0, i64 undef) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.n
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18push_edit_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, i1 noundef zeroext %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(104) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 4 uses
  br i1 %1, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1400)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1399, !noalias !1401, !noundef !14 ; 4 uses
  %i.o = icmp ult i64 %i.n, 2305843009213693952
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.r = load i64, ptr %i.q, align 8, !range !28, !alias.scope !1399, !noalias !1401, !noundef !14 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 392
  %.val48.i.a = load i64, ptr %i.t, align 8, !alias.scope !1402, !noalias !1401, !noundef !14 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %.val49.i = load i64, ptr %i.u, align 8, !alias.scope !1403, !noalias !1401, !noundef !14 ; 9 uses
  %i.v = icmp ult i64 %.val49.i, %.val48.i.a
  %.not.i = icmp ugt i64 %.val49.i, %i.l
  %or.cond45.i = or i1 %i.v, %.not.i
  br i1 %or.cond45.i, label %.invoke77.a, label %bb.d, !prof !33

bb.d:                                             ; preds = %bb.c
  %i.w = icmp ne i64 %i.r, 0
  %i.x = sub nuw i64 %.val49.i, %.val48.i.a       ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.val48.i.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !1399, !noalias !1401, !nonnull !14, !noundef !14 ; 4 uses
  %i.ab = invoke noundef zeroext i1 @_RNvCskeBJdk8gjxq_17fish_wcstringutil45string_prefixes_string_maybe_case_insensitive(i1 noundef zeroext %i.w, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.y, i64 noundef %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.aa, i64 noundef %i.n)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  br i1 %i.ab, label %bb.f, label %bb.e, !prof !21

.invoke77.a:                                      ; preds = %bb.i, %bb.c
  %i.ac = phi ptr [ @400, %bb.c ], [ @30, %bb.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @29, i64 noundef 19, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac) #40
          to label %.cont78.a unwind label %.loopexit.split-lp.loopexit.split-lp

.cont78.a:                                        ; preds = %.invoke77.a
  unreachable

bb.e:                                             ; preds = %.noexc
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @394, i64 noundef 208, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @395) #40
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.noexc
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1400, !noalias !1404, !noundef !14 ; 4 uses
  %i.af = icmp ult i64 %i.ae, %.val48.i.a
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1400, !noalias !1404
  %i.ai = icmp ne i64 %i.ah, %.val49.i
  %or.cond.i = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i, label %.thread58, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.n ; 2 uses
  %i.ak = load i64, ptr %i.s, align 8, !alias.scope !1399, !noalias !1401 ; 4 uses
  %.sroa.018.0.i = tail call i64 @llvm.usub.sat.i64(i64 %.val49.i, i64 %i.ae) ; 4 uses
  %i.al = icmp ult i64 %i.x, %.sroa.018.0.i
  br i1 %i.al, label %.invoke75, label %bb.h, !prof !22

bb.h:                                             ; preds = %bb.g
  %i.am = trunc nuw i64 %i.r to i1
  br i1 %i.am, label %bb.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.thread.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1405
  %i.an = icmp ult i64 %.val49.i, %i.ae
  br i1 %i.an, label %.invoke77.a, label %bb.j, !prof !33

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.ae
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.val49.i
  invoke void @_RNvMs_NvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB4_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseE3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull readonly %i.ap, ptr noundef nonnull @_RNvYNCINvCsiolMeYWJ97s_13fish_fallback9lowercaseNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %bb.j
  %i.aq = invoke noundef i32 @_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc10:                                         ; preds = %.noexc9
  %.not7.i.i.i.i = icmp eq i32 %i.aq, -1
  br i1 %.not7.i.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.thread.i, label %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i.i.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.thread.i: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1405
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc12
  %i.ar = icmp eq i64 %i.at, -1
  br i1 %i.ar, label %.invoke, label %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i.i.i

_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %.noexc10, %.lr.ph.i.i.i.i
  %.sroa.0.08.i.i.i.i85 = phi i64 [ %i.at, %.lr.ph.i.i.i.i ], [ 0, %.noexc10 ] ; 2 uses
  %i.as = invoke noundef i32 @_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.at = add nuw i64 %.sroa.0.08.i.i.i.i85, 1    ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.as, -1
  br i1 %.not.i.i.i.i, label %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i.i.i, label %.lr.ph.i.i.i.i

_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1405
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.k, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.i

bb.k:                                             ; preds = %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1406
  br label %.invoke79

.invoke79:                                        ; preds = %bb.m, %bb.k
  %.sink = phi ptr [ %i.c, %bb.m ], [ %i.a, %bb.k ] ; 2 uses
  %i.av = phi ptr [ @396, %bb.m ], [ @27, %bb.k ]
  store i8 2, ptr %.sink, align 1, !noalias !1407
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noundef nonnull %.sink, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.av) #40
          to label %.cont80 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont80:                                          ; preds = %.invoke79
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i.i.i
  %.not81.i = icmp ugt i64 %i.ak, %.sroa.0.08.i.i.i.i85
  br i1 %.not81.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.i, label %.invoke75, !prof !1408

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.thread.i
  %.sroa.0.0.lcssa.i8.ph.i.i79.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.thread.i ], [ %i.at, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.i ] ; 2 uses
  %i.aw = sub nuw i64 %i.ak, %.sroa.0.0.lcssa.i8.ph.i.i79.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1407
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !1400, !noalias !1404, !nonnull !14, !noundef !14 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !1400, !noalias !1404, !noundef !14 ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ba ; 2 uses
  invoke void @_RNvMs_NvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB4_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseE3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bb, ptr noundef nonnull @_RNvYNCINvCsiolMeYWJ97s_13fish_fallback9lowercaseNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.i
  %i.bc = invoke noundef i32 @_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %.noexc16
  %.not7.i.i = icmp eq i32 %i.bc, -1
  br i1 %.not7.i.i, label %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.thread.i, label %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.thread.i: ; preds = %bb.h
  %i.bd = sub nuw i64 %i.x, %.sroa.018.0.i
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !1400, !noalias !1404, !nonnull !14, !noundef !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !1400, !noalias !1404, !noundef !14 ; 3 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1407
  store ptr %i.aa, ptr %i.d, align 8, !noalias !1407
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.aj, ptr %i.bj, align 8, !noalias !1407
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.bd, ptr %i.bk, align 8, !noalias !1407
  %i.bl = invoke noundef i8 @_RINvCskeBJdk8gjxq_17fish_wcstringutil9is_prefixNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters4skip4SkipBJ_EECs8frGy5WneL6_4fish(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %.thread59 unwind label %.loopexit.split-lp.loopexit.split-lp

_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.thread.i: ; preds = %.noexc17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1407
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i

.lr.ph.i.i:                                       ; preds = %.noexc21
  %i.bm = icmp eq i64 %i.bo, -1
  br i1 %i.bm, label %.invoke, label %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i

_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i: ; preds = %.noexc17, %.lr.ph.i.i
  %.sroa.0.08.i.i86 = phi i64 [ %i.bo, %.lr.ph.i.i ], [ 0, %.noexc17 ]
  %i.bn = invoke noundef i32 @_RNvXNvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB2_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB26_4iter6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.g)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i
  %i.bo = add nuw i64 %.sroa.0.08.i.i86, 1        ; 4 uses
  %.not.i.i = icmp eq i32 %i.bn, -1
  br i1 %.not.i.i, label %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i, label %.lr.ph.i.i

_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i: ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1407
  %i.bp = icmp slt i64 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i

bb.l:                                             ; preds = %.noexc24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1407
  %.not44.i = icmp eq i8 %i.bs, 0
  br i1 %.not44.i, label %bb.n, label %.thread58

.thread59:                                        ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1407
  %.not44.i63 = icmp eq i8 %i.bl, 0
  br i1 %.not44.i63, label %.thread67, label %.thread58

bb.m:                                             ; preds = %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1409
  br label %.invoke79

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i, %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.thread.i
  %.sroa.0.0.lcssa.i63.ph.i = phi i64 [ %i.bo, %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.i ], [ 0, %_RINvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB24_4iter6traits8iterator8Iterator4foldjNCNvYB3_B2G_5count0ECs8frGy5WneL6_4fish.exit.thread.i ]
  %i.bq = sub nsw i64 %.sroa.0.0.lcssa.i63.ph.i, %.sroa.0.0.lcssa.i8.ph.i.i79.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1407
  invoke void @_RNvMs_NvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB4_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseE3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bb, ptr noundef nonnull @_RNvYNCINvCsiolMeYWJ97s_13fish_fallback9lowercaseNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1407
  invoke void @_RNvMs_NvCsiolMeYWJ97s_13fish_fallback14lowercase_implINtB4_13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseE3newCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aj, ptr noundef nonnull @_RNvYNCINvCsiolMeYWJ97s_13fish_fallback9lowercaseNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTcEE9call_onceCs8frGy5WneL6_4fish)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc24:                                         ; preds = %.noexc23
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.aw, ptr %i.br, align 8, !noalias !1407
  %i.bs = invoke noundef i8 @_RINvCskeBJdk8gjxq_17fish_wcstringutil9is_prefixINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseEINtNtNtNtB2K_4iter8adapters4skip4SkipBJ_EECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.l
  %i.bt = sub nuw i64 %.val49.i, %.sroa.018.0.i   ; 2 uses
  %i.bu = icmp ult i64 %i.ba, 2305843009213693952
  call void @llvm.assume(i1 %i.bu)
  %i.bv = add i64 %i.ba, %i.bt                    ; 2 uses
  %i.bw = icmp ult i64 %i.bv, %i.bt
  br i1 %i.bw, label %.invoke, label %bb.o

.thread67:                                        ; preds = %.thread59
  %i.bx = sub nuw i64 %.val49.i, %.sroa.018.0.i   ; 2 uses
  %i.by = icmp ult i64 %i.bh, 2305843009213693952
  call void @llvm.assume(i1 %i.by)
  %i.bz = add i64 %i.bh, %i.bx                    ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.bx
  br i1 %i.ca, label %.invoke, label %.thread70

.thread70:                                        ; preds = %.thread67
  store i64 %i.bz, ptr %i.u, align 8, !alias.scope !1399, !noalias !1401
  br label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit

bb.o:                                             ; preds = %bb.n
  store i64 %i.bv, ptr %i.u, align 8, !alias.scope !1399, !noalias !1401
  %i.cb = add i64 %i.bq, %i.ak                    ; 2 uses
  %i.cc = icmp ult i64 %i.cb, %i.ak
  %i.cd = icmp slt i64 %i.bq, 0
  %i.ce = xor i1 %i.cd, %i.cc
  br i1 %i.ce, label %.invoke75, label %bb.p, !prof !22

.invoke:                                          ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i, %bb.n, %.thread67
  %i.cf = phi ptr [ @397, %bb.n ], [ @32, %.lr.ph.i.i ], [ @397, %.thread67 ], [ @32, %.lr.ph.i.i.i.i ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cf) #40
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  store i64 %i.cb, ptr %i.s, align 8, !alias.scope !1399, !noalias !1401
  br label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit

.invoke75:                                        ; preds = %bb.o, %bb.g, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.i
  %i.cg = phi ptr [ @399, %bb.g ], [ @28, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i.i.i ], [ @398, %bb.o ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg) #40
          to label %.cont76 unwind label %.loopexit.split-lp.loopexit.split-lp

.cont76:                                          ; preds = %.invoke75
  unreachable

.thread58:                                        ; preds = %bb.l, %.thread59, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.ci = load i64, ptr %i.ch, align 8, !noundef !14 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.ck = load i64, ptr %i.cj, align 8, !noundef !14
  %i.cl = icmp ne i64 %i.ci, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.cn = load i64, ptr %i.cm, align 8
  %.not = icmp ult i64 %i.ci, %i.cn
  %or.cond = select i1 %i.cl, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %bb.q

.thread:                                          ; preds = %bb.b, %.thread58, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.cp = load i64, ptr %i.co, align 8, !range !18, !noundef !14
  %.not5 = icmp eq i64 %i.cp, 2
  br i1 %.not5, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit, label %bb.r

bb.q:                                             ; preds = %.thread58
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !14 ; 2 uses
  %i.cs = icmp ult i64 %i.cr, 2305843009213693952
  call void @llvm.assume(i1 %i.cs)
  %i.ct = icmp eq i64 %i.cr, 0
  br i1 %i.ct, label %.thread, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit

bb.r:                                             ; preds = %.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 1615
  %i.cv = load i8, ptr %i.cu, align 1, !range !20, !noalias !1410, !noundef !14
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = icmp eq i64 %i.cy, 0
  %or.cond37 = select i1 %i.cw, i1 %i.cz, i1 false
  br i1 %or.cond37, label %bb.s, label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %.val = load i64, ptr %i.da, align 8            ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !1410, !noundef !14 ; 2 uses
  %i.de = icmp ult i64 %i.dd, 2305843009213693952
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp eq i64 %i.dd, 0
  %i.dg = load i64, ptr %i.db, align 8
  %i.dh = icmp eq i64 %i.dg, %.val
  %or.cond39 = select i1 %i.df, i1 %i.dh, i1 false
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = icmp ult i64 %.val, %i.dj
  %or.cond42 = select i1 %or.cond39, i1 %i.dk, i1 false
  %spec.select = select i1 %or.cond42, i8 3, i8 1
  br label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit

bb.t:                                             ; preds = %bb.a
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 432
  br label %_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit

_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion.exit: ; preds = %.thread70, %bb.s, %bb.r, %.thread, %bb.p, %bb.q, %bb.t
  %.sroa.02.0 = phi ptr [ %i.dl, %bb.t ], [ %0, %bb.r ], [ %0, %.thread70 ], [ %0, %bb.q ], [ %0, %bb.p ], [ %0, %.thread ], [ %0, %bb.s ]
  %.sroa.0.2 = phi i8 [ 1, %bb.t ], [ 1, %bb.r ], [ 0, %.thread70 ], [ 2, %bb.q ], [ 0, %bb.p ], [ 1, %.thread ], [ %spec.select, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.h, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 104, i1 false)
  call void @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine9push_edit(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %.sroa.02.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.h, i1 noundef zeroext %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20command_line_changed(ptr noalias nofree noundef align 8 dereferenceable(2304) %0, i1 noundef zeroext %1, i8 noundef %.sroa.0.2)
  ret void

bb.u:                                             ; preds = %.loopexit.split-lp
  resume { ptr, i32 } %lpad.phi

.loopexit:                                        ; preds = %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNCNvYINtNvCsiolMeYWJ97s_13fish_fallback14lowercase_impl13ToLowerBufferNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtCs3oUPovFnLWP_4core4char11ToLowercaseENtNtNtNtB25_4iter6traits8iterator8Iterator5count0Cs8frGy5WneL6_4fish.exit.i.i.i.i
  %lpad.loopexit43 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke79, %.invoke77.a, %.invoke75, %.invoke, %bb.d, %bb.e, %bb.j, %.noexc9, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.i, %.noexc16, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE6map_orjNCNvNtNtCs8frGy5WneL6_4fish6reader6reader32try_apply_edit_to_autosuggestion0EB10_.exit.thread.i, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultiNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs8frGy5WneL6_4fish.exit.i, %.noexc23, %.noexc24
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit43, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp44, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish13editable_line4EditEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %2) #36
          to label %bb.u unwind label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20clear_transient_edit(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !13, !noundef !14
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine4undo(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0), !inline_history !42
  br i1 %i.c, label %bb.c, label %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20command_line_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, i1 noundef zeroext false, i8 noundef 1), !inline_history !42
  br label %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit

_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit: ; preds = %bb.b, %bb.c
  %i.d = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef align 8 dereferenceable(2304) %0, i1 noundef zeroext false, i64 noundef 0, i64 undef) ; 0 uses
  store i8 2, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData39update_command_line_from_history_search(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 11 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 13 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1624 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !range !41, !noundef !14
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #40
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 3 uses
  %i.j = load i8, ptr %i.i, align 8, !range !13, !noundef !14
  store i8 2, ptr %i.i, align 8
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %bb.d, label %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit

bb.d:                                             ; preds = %bb.c
  %i.l = tail call noundef zeroext i1 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine4undo(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0), !inline_history !42
end_hunk_0
begin_hunk_1_@_RNvMsc_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader5flash:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader16make_layout_data(ptr noalias nofree noundef align 8 captures(none) dereferenceable(216) %i.c, ptr nonnull %.val29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneBL_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.s)
          to label %bb.g unwind label %.thread

bb.d:                                             ; preds = %_RNCNvMsc_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader5flash0Bb_.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %.val29, i64 2287
  %i.u = load i8, ptr %i.t, align 1, !range !20, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.e

bb.e:                                             ; preds = %_RNCNvMsc_NtNtCs8frGy5WneL6_4fish6reader6readerNtB7_6Reader5flash0Bb_.exit, %bb.d
  %i.w = icmp ult i32 %i.g, 1000000000
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val29, i64 2224
  store i64 %i.f, ptr %i.x, align 8
  store i32 %i.g, ptr %i.i, align 8
  br label %bb.r

bb.f:                                             ; preds = %.thread36
  br i1 %i.ad, label %bb.u, label %.thread63

.thread:                                          ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.g:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.aa = load i64, ptr %i.z, align 8, !noundef !14 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 2305843009213693952
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp ugt i64 %2, %i.aa
  %..i = call i64 @llvm.umin.i64(i64 %i.aa, i64 %1)
  %.sroa.5.0 = call i64 @llvm.umin.i64(i64 %2, i64 %i.aa) ; 4 uses
  %.sroa.0.0 = select i1 %i.ac, i64 %..i, i64 %1  ; 4 uses
  %i.ad = icmp ult i64 %.sroa.5.0, %.sroa.0.0     ; 2 uses
  br i1 %i.ad, label %bb.h, label %bb.i, !prof !33

.thread48:                                        ; preds = %bb.h, %bb.k, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread36

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.0, i64 noundef %.sroa.5.0, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #41
          to label %bb.t unwind label %.thread48

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.5.0
  %i.ah = icmp samesign eq i64 %.sroa.0.0, %.sroa.5.0
  br i1 %i.ah, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.sroa.0.0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.08.066 = phi ptr [ %i.aj, %.lr.ph ], [ %i.ai, %.lr.ph.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.08.066, i64 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.066, i64 2
  store i8 10, ptr %i.ak, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.08.066, i64 3
  store i8 10, ptr %i.al, align 1
  %i.am = icmp eq ptr %i.aj, %i.ag
  br i1 %i.am, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %._crit_edge
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ao, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  br label %.thread36

._crit_edge:                                      ; preds = %.lr.ph, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.a, ptr noundef nonnull align 8 dereferenceable(216) %i.c, i64 216, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val29, i64 136 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.ao)
          to label %bb.k unwind label %bb.j

bb.k:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ao, ptr noundef nonnull align 8 dereferenceable(216) %i.a, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader12paint_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @221, i64 noundef 5, i1 noundef zeroext false)
          to label %bb.l unwind label %.thread48

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.val29, i64 2287
  store i8 0, ptr %i.ap, align 1
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 100000000)
          to label %bb.m unwind label %.thread48

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit.i: ; preds = %bb.n, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.at, %bb.q ], [ %i.ar, %bb.n ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %.thread63

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %.val29, i64 208 ; 5 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit.i unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit unwind label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call fastcc void @_RNvMs4_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader12paint_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @222, i64 noundef 7, i1 noundef zeroext false)
  %i.au = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.av = extractvalue { i64, i32 } %i.au, 1      ; 2 uses
  %i.aw = icmp ult i32 %i.av, 1000000000
  call void @llvm.assume(i1 %i.aw)
  %i.ax = extractvalue { i64, i32 } %i.au, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %.val29, i64 2224
  store i64 %i.ax, ptr %i.ay, align 8
  store i32 %i.av, ptr %i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.s:                                             ; preds = %bb.u, %.thread36
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.t:                                             ; preds = %bb.h
  unreachable

.thread36:                                        ; preds = %bb.j, %.thread48
  %.pn2141 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread48 ], [ %i.an, %bb.j ] ; 2 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %bb.f unwind label %bb.s

.thread63:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit.i, %bb.u, %bb.f
  %.pn21.pn34 = phi { ptr, i32 } [ %.pn21.pn35, %bb.u ], [ %.pn2141, %bb.f ], [ %eh.lpad-body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCs8frGy5WneL6_4fish9highlight9highlight13HighlightSpecEEB1l_.exit.i ]
  resume { ptr, i32 } %.pn21.pn34

bb.u:                                             ; preds = %.thread, %bb.f
  %.pn21.pn35 = phi { ptr, i32 } [ %i.y, %.thread ], [ %.pn2141, %bb.f ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish6reader6reader10LayoutDataEBH_(ptr noalias nofree noundef align 8 dereferenceable(216) %i.c) #36
          to label %.thread63 unwind label %bb.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData23pager_selection_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = tail call noundef i64 @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtNtCs8frGy5WneL6_4fish7threads7threads8ThreadIdE4withNCNvBW_9thread_id0BU_EB10_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @55)
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, i64 8) acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id15init_not_called() #41
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit: ; preds = %bb.a
  %i.g = load i64, ptr @_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14MAIN_THREAD_ID, align 8, !noundef !14
  %i.h = icmp eq i64 %i.d, %i.g
  br i1 %i.h, label %bb.d, label %bb.c, !prof !21

bb.c:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit
  tail call void @_RNvNvNtNtCs8frGy5WneL6_4fish7threads7threads21assert_is_main_thread15not_main_thread() #41
  unreachable

bb.d:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7threads7threads14main_thread_id.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.j = load i64, ptr %i.i, align 8, !noundef !14
  store i64 %i.j, ptr %i.c, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2296 ; 3 uses
  %i.l = load i8, ptr %i.k, align 8, !range !13, !noundef !14
  store i8 2, ptr %i.k, align 8
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.e, label %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit

bb.e:                                             ; preds = %bb.d
  %i.n = tail call noundef zeroext i1 @_RNvMs0_NtCs8frGy5WneL6_4fish13editable_lineNtB5_12EditableLine4undo(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %0), !inline_history !42
  br i1 %i.n, label %bb.f, label %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData20command_line_changed(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, i1 noundef zeroext false, i8 noundef 1), !inline_history !42
  br label %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit

_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit: ; preds = %bb.f, %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.q = tail call noundef align 8 ptr @_RNvMs_NtCs8frGy5WneL6_4fish5pagerNtB4_5Pager19selected_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %i.p) ; 4 uses
  %.not6 = icmp eq ptr %i.q, null
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.r = tail call noundef nonnull align 8 ptr @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7globals()
  call void @_RNvMNtCs8frGy5WneL6_4fish17operation_contextNtB2_16OperationContext24background_interruptible(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @49)
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !14, !noundef !14
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.x = load i16, ptr %i.w, align 8, !noundef !14
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2008 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !14, !noundef !14
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2016 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !14
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish6reader6reader32completion_apply_to_command_line(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.t, i64 noundef %i.v, i16 noundef %i.x, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.z, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData4undo.exit
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef align 8 dereferenceable(2304) %0, i1 noundef zeroext false, i64 noundef 0, i64 undef) ; 0 uses
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a) #36
          to label %common.resume unwind label %bb.v

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs8frGy5WneL6_4fish17operation_context16OperationContextEBF_(ptr noalias nofree noundef align 8 dereferenceable(64) %i.a)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.s, %bb.j
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #36
          to label %common.resume unwind label %bb.v

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !noundef !14 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !14 ; 4 uses
  %i.ak = icmp eq i64 %i.aj, %i.ag
  %.pre.pre = load ptr, ptr %i.ah, align 8        ; 3 uses
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !14, !noundef !14
  %i.an = shl nuw i64 %i.ag, 2
  %bcmp = call i32 @bcmp(ptr nonnull %.pre.pre, ptr nonnull %i.am, i64 %i.an)
  %.not7 = icmp eq i32 %bcmp, 0
  br i1 %.not7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ao = load i64, ptr %i.aa, align 8, !noundef !14
  %i.ap = icmp eq i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.t, %bb.r, %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.k, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.p ], [ %i.ae, %bb.k ], [ %i.ad, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.o
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.u

bb.r:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.y, align 8, !nonnull !14, !noundef !14
  %i.at = shl nuw i64 %i.aj, 2
  %bcmp8 = call i32 @bcmp(ptr nonnull %.pre.pre, ptr nonnull %i.as, i64 %i.at)
  %.not9 = icmp eq i32 %bcmp8, 0
  br i1 %.not9, label %bb.o, label %bb.s

bb.s:                                             ; preds = %bb.n, %bb.r
  %i.au = load i64, ptr %i.c, align 8, !noundef !14
  invoke fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData28set_buffer_maintaining_pager(ptr noalias nofree noundef align 8 dereferenceable(2304) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.pre.pre, i64 noundef %i.aj, i64 noundef %i.au)
          to label %bb.t unwind label %bb.k

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.k, align 8
  br label %bb.o

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.v:                                             ; preds = %bb.k, %bb.i
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsd_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData28set_buffer_maintaining_pager(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load i64, ptr %i.c, align 8, !noundef !14 ; 2 uses
  %i.e = icmp ult i64 %i.d, 2305843009213693952
  tail call void @llvm.assume(i1 %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.f = load i64, ptr %i.b, align 8, !range !28, !noundef !14
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !29, !noundef !14 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.m = icmp ule i64 %2, %i.i
  tail call void @llvm.assume(i1 %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2226
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %i.a, align 8, !noalias !2226
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 %i.d, ptr %i.o, align 8, !noalias !2226
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.p, align 8, !noalias !2226
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !2226
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !2226
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.i, ptr %i.q, align 8, !noalias !2227
  %.sroa.4.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx1, align 8, !noalias !2227
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2227
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.r, align 8, !noalias !2226
  call fastcc void @_RNvMs6_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData18push_edit_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(2304) %0, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a, i1 noundef zeroext false), !noalias !2228, !inline_history !2225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2226
  %..i = call noundef i64 @llvm.umin.i64(i64 %2, i64 %3)
  %i.s = call fastcc noundef zeroext i1 @_RNvMs3_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_10ReaderData15update_buff_pos(ptr noalias nofree noundef align 8 dereferenceable(2304) %0, i1 noundef zeroext false, i64 noundef 1, i64 %..i) ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1624
  call void @_RNvMs_NtNtCs8frGy5WneL6_4fish6reader14history_searchNtB4_19ReaderHistorySearch5reset(ptr noalias nofree noundef nonnull align 8 dereferenceable(304) %i.t)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.u = shl nuw nsw i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr nonnull align 4 %1, i64 %i.u, i1 false)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMse_NtNtCs8frGy5WneL6_4fish6reader6readerNtB5_6Reader11exec_prompt(ptr %.0.val, ptr nonnull %.8.val, i1 noundef zeroext %0, i1 noundef zeroext %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
end_hunk_1
