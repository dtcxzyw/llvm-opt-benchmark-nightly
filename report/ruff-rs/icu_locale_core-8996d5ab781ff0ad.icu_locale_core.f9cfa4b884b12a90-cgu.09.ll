Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/icu_locale_core-8996d5ab781ff0ad.icu_locale_core.f9cfa4b884b12a90-cgu.09?download=true
inline.NumInlined: 38
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCs1T0VX6PLzHG_9writeable3cmp8cmp_utf8NtNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode5value5ValueEBN_:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RINvNtCs1T0VX6PLzHG_9writeable3cmp8cmp_utf8NtNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode8keywords8KeywordsEBN_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i8 0, ptr %i.c, align 8
  %i.d = call noundef zeroext i1 @_RINvXs9_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode8keywordsNtB6_8KeywordsNtCs1T0VX6PLzHG_9writeable9Writeable8write_toNtNtB1q_3cmp15WriteComparatorEBc_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) ; 0 uses
  %i.e = load i64, ptr %i.b, align 8, !noundef !4
  %i.f = load i8, ptr %i.c, align 8, !range !6, !noundef !4 ; 2 uses
  %i.g = icmp ne i8 %i.f, 0
  %i.h = icmp eq i64 %i.e, 0
  %or.cond = or i1 %i.h, %i.g
  %switch.offset = sub nsw i8 0, %i.f
  %.sroa.0.0 = select i1 %or.cond, i8 %switch.offset, i8 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvMNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicodeNtB2_7Unicode9total_cmp(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(52) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(52) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.c = load i8, ptr %i.a, align 1, !range !3, !alias.scope !68, !noalias !69, !noundef !4
  %i.d = icmp ne i8 %i.c, -1                      ; 3 uses
  %i.e = zext i1 %i.d to i8
  %i.f = load i8, ptr %i.b, align 1, !range !3, !alias.scope !69, !noalias !68, !noundef !4
  %i.g = icmp eq i8 %i.f, -1                      ; 3 uses
  %not..i = xor i1 %i.g, true                     ; 2 uses
  %.neg.i = sext i1 %not..i to i8
  %i.h = add nsw i8 %.neg.i, %i.e
  %i.i = xor i1 %i.d, %i.g
  br i1 %i.i, label %bb.b, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.j = tail call noundef i8 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode9attribute9AttributeNtB5_8SliceOrd7compareBK_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 2)
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.l = load i8, ptr %i.k, align 1, !range !3, !alias.scope !68, !noalias !69, !noundef !4 ; 3 uses
  %.not.i = icmp eq i8 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.n = load i8, ptr %i.m, align 1, !range !3, !alias.scope !69, !noalias !68, !noundef !4 ; 4 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not6.i = icmp eq i8 %i.n, -1
  br i1 %.not6.i, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.not4.i = icmp ne i8 %i.n, -1
  %..i = sext i1 %.not4.i to i8
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %.loopexit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38
  %.val16.i.1.i.i.i = load i8, ptr %i.p, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.1.i.i.i = load i8, ptr %i.q, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.r = icmp eq i8 %.val16.i.1.i.i.i, %.val17.i.1.i.i.i
  br i1 %i.r, label %bb.i, label %.loopexit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.val16.i.2.i.i.i = load i8, ptr %i.s, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.2.i.i.i = load i8, ptr %i.t, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.u = icmp eq i8 %.val16.i.2.i.i.i, %.val17.i.2.i.i.i
  br i1 %i.u, label %bb.j, label %.loopexit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val16.i.3.i.i.i = load i8, ptr %i.v, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.3.i.i.i = load i8, ptr %i.w, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.x = icmp eq i8 %.val16.i.3.i.i.i, %.val17.i.3.i.i.i
  br i1 %i.x, label %bb.k, label %.loopexit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val16.i.4.i.i.i = load i8, ptr %i.y, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.4.i.i.i = load i8, ptr %i.z, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.aa = icmp eq i8 %.val16.i.4.i.i.i, %.val17.i.4.i.i.i
  br i1 %i.aa, label %bb.l, label %.loopexit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.val16.i.5.i.i.i = load i8, ptr %i.ab, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.5.i.i.i = load i8, ptr %i.ac, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.ad = icmp eq i8 %.val16.i.5.i.i.i, %.val17.i.5.i.i.i
  br i1 %i.ad, label %bb.m, label %.loopexit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 43
  %.val16.i.6.i.i.i = load i8, ptr %i.ae, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.6.i.i.i = load i8, ptr %i.af, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.ag = icmp eq i8 %.val16.i.6.i.i.i, %.val17.i.6.i.i.i
  br i1 %i.ag, label %bb.n, label %.loopexit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val16.i.7.i.i.i = load i8, ptr %i.ah, align 1, !range !76, !alias.scope !77, !noalias !78, !noundef !4 ; 2 uses
  %.val17.i.7.i.i.i = load i8, ptr %i.ai, align 1, !range !76, !alias.scope !78, !noalias !77, !noundef !4 ; 2 uses
  %i.aj = icmp eq i8 %.val16.i.7.i.i.i, %.val17.i.7.i.i.i
  br i1 %i.aj, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit.thread, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.val16.i.lcssa.i.i.i = phi i8 [ %i.l, %bb.g ], [ %.val16.i.1.i.i.i, %bb.h ], [ %.val16.i.2.i.i.i, %bb.i ], [ %.val16.i.3.i.i.i, %bb.j ], [ %.val16.i.4.i.i.i, %bb.k ], [ %.val16.i.5.i.i.i, %bb.l ], [ %.val16.i.6.i.i.i, %bb.m ], [ %.val16.i.7.i.i.i, %bb.n ]
  %.val17.i.lcssa.i.i.i = phi i8 [ %i.n, %bb.g ], [ %.val17.i.1.i.i.i, %bb.h ], [ %.val17.i.2.i.i.i, %bb.i ], [ %.val17.i.3.i.i.i, %bb.j ], [ %.val17.i.4.i.i.i, %bb.k ], [ %.val17.i.5.i.i.i, %bb.l ], [ %.val17.i.6.i.i.i, %bb.m ], [ %.val17.i.7.i.i.i, %bb.n ]
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val16.i.lcssa.i.i.i, i8 %.val17.i.lcssa.i.i.i)
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit: ; preds = %bb.a, %bb.c, %bb.f, %.loopexit.i.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.c ], [ %i.ak, %.loopexit.i.i.i.i ], [ %i.h, %bb.a ], [ %..i, %bb.f ] ; 2 uses
  %i.al = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.al, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit.thread, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit.thread: ; preds = %bb.n, %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.am = load i8, ptr %0, align 1, !range !3, !alias.scope !79, !noalias !80, !noundef !4
  %i.an = icmp ne i8 %i.am, -1                    ; 3 uses
  %i.ao = zext i1 %i.an to i8
  %i.ap = load i8, ptr %1, align 1, !range !3, !alias.scope !80, !noalias !79, !noundef !4
  %i.aq = icmp eq i8 %i.ap, -1                    ; 3 uses
  %not..i3 = xor i1 %i.aq, true                   ; 2 uses
  %.neg.i4 = sext i1 %not..i3 to i8
  %i.ar = add nsw i8 %.neg.i4, %i.ao
  %i.as = xor i1 %i.an, %i.aq
  br i1 %i.as, label %bb.o, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.o:                                             ; preds = %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit.thread
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i3)
  %i.at = tail call noundef i8 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core5slice3cmpTNtNtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3key3KeyNtNtBH_5value5ValueENtB5_8SliceOrd7compareBL_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %0, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %1, i64 noundef 2)
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !3, !alias.scope !79, !noalias !80, !noundef !4 ; 3 uses
  %.not.i6 = icmp eq i8 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !3, !alias.scope !80, !noalias !79, !noundef !4 ; 4 uses
  br i1 %.not.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not6.i7 = icmp eq i8 %i.ax, -1
  br i1 %.not6.i7, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %.not4.i8 = icmp ne i8 %i.ax, -1
  %..i9 = sext i1 %.not4.i8 to i8
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.ay = icmp eq i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.u, label %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val4.i.i = load i8, ptr %i.az, align 1, !alias.scope !83, !noalias !84 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val2.i.i = load i8, ptr %i.ba, align 1, !alias.scope !84, !noalias !83 ; 2 uses
  %i.bb = icmp eq i8 %.val2.i.i, %.val4.i.i
  br i1 %i.bb, label %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i

_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.u, %bb.t
  %.val16.i.lcssa.i.i.i.i = phi i8 [ %i.av, %bb.t ], [ %.val2.i.i, %bb.u ]
  %.val17.i.lcssa.i.i.i.i = phi i8 [ %i.ax, %bb.t ], [ %.val4.i.i, %bb.u ]
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val16.i.lcssa.i.i.i.i, i8 %.val17.i.lcssa.i.i.i.i)
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %i.bf = load i8, ptr %i.bd, align 1, !range !3, !alias.scope !89, !noalias !90, !noundef !4
  %i.bg = icmp ne i8 %i.bf, -1                    ; 3 uses
  %i.bh = zext i1 %i.bg to i8
  %i.bi = load i8, ptr %i.be, align 1, !range !3, !alias.scope !90, !noalias !89, !noundef !4
  %i.bj = icmp eq i8 %i.bi, -1                    ; 3 uses
  %not..i.i.i.i = xor i1 %i.bj, true              ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.bk = add nsw i8 %.neg.i.i.i.i, %i.bh
  %i.bl = xor i1 %i.bg, %i.bj
  br i1 %i.bl, label %bb.v, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.v:                                             ; preds = %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread.i.i
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.bm = tail call noundef i8 @_RNvXs7_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCslrJNpMdrWwK_15icu_locale_core7subtags6SubtagNtB5_8SliceOrd7compareBG_(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.bd, i64 noundef 2, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.be, i64 noundef 2)
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !range !3, !alias.scope !89, !noalias !90, !noundef !4 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !range !3, !alias.scope !90, !noalias !89, !noundef !4 ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not6.i.i.i.i = icmp eq i8 %i.bq, -1
  br i1 %.not6.i.i.i.i, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %.not4.i.i.i.i = icmp ne i8 %i.bq, -1
  %..i.i.i.i = sext i1 %.not4.i.i.i.i to i8
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !96)
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %bb.ab, label %.loopexit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val16.i.1.i.i.i.i.i.i = load i8, ptr %i.bs, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.1.i.i.i.i.i.i = load i8, ptr %i.bt, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.bu = icmp eq i8 %.val16.i.1.i.i.i.i.i.i, %.val17.i.1.i.i.i.i.i.i
  br i1 %i.bu, label %bb.ac, label %.loopexit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.val16.i.2.i.i.i.i.i.i = load i8, ptr %i.bv, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.2.i.i.i.i.i.i = load i8, ptr %i.bw, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.bx = icmp eq i8 %.val16.i.2.i.i.i.i.i.i, %.val17.i.2.i.i.i.i.i.i
  br i1 %i.bx, label %bb.ad, label %.loopexit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.val16.i.3.i.i.i.i.i.i = load i8, ptr %i.by, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.3.i.i.i.i.i.i = load i8, ptr %i.bz, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.ca = icmp eq i8 %.val16.i.3.i.i.i.i.i.i, %.val17.i.3.i.i.i.i.i.i
  br i1 %i.ca, label %bb.ae, label %.loopexit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16.i.4.i.i.i.i.i.i = load i8, ptr %i.cb, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.4.i.i.i.i.i.i = load i8, ptr %i.cc, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.cd = icmp eq i8 %.val16.i.4.i.i.i.i.i.i, %.val17.i.4.i.i.i.i.i.i
  br i1 %i.cd, label %bb.af, label %.loopexit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.val16.i.5.i.i.i.i.i.i = load i8, ptr %i.ce, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.5.i.i.i.i.i.i = load i8, ptr %i.cf, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.cg = icmp eq i8 %.val16.i.5.i.i.i.i.i.i, %.val17.i.5.i.i.i.i.i.i
  br i1 %i.cg, label %bb.ag, label %.loopexit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.val16.i.6.i.i.i.i.i.i = load i8, ptr %i.ch, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.6.i.i.i.i.i.i = load i8, ptr %i.ci, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.cj = icmp eq i8 %.val16.i.6.i.i.i.i.i.i, %.val17.i.6.i.i.i.i.i.i
  br i1 %i.cj, label %bb.ah, label %.loopexit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.val16.i.7.i.i.i.i.i.i = load i8, ptr %i.ck, align 1, !range !76, !alias.scope !97, !noalias !98, !noundef !4 ; 2 uses
  %.val17.i.7.i.i.i.i.i.i = load i8, ptr %i.cl, align 1, !range !76, !alias.scope !98, !noalias !97, !noundef !4 ; 2 uses
  %i.cm = icmp eq i8 %.val16.i.7.i.i.i.i.i.i, %.val17.i.7.i.i.i.i.i.i
  br i1 %i.cm, label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.val16.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.bo, %bb.aa ], [ %.val16.i.1.i.i.i.i.i.i, %bb.ab ], [ %.val16.i.2.i.i.i.i.i.i, %bb.ac ], [ %.val16.i.3.i.i.i.i.i.i, %bb.ad ], [ %.val16.i.4.i.i.i.i.i.i, %bb.ae ], [ %.val16.i.5.i.i.i.i.i.i, %bb.af ], [ %.val16.i.6.i.i.i.i.i.i, %bb.ag ], [ %.val16.i.7.i.i.i.i.i.i, %bb.ah ]
  %.val17.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.bq, %bb.aa ], [ %.val17.i.1.i.i.i.i.i.i, %bb.ab ], [ %.val17.i.2.i.i.i.i.i.i, %bb.ac ], [ %.val17.i.3.i.i.i.i.i.i, %bb.ad ], [ %.val17.i.4.i.i.i.i.i.i, %bb.ae ], [ %.val17.i.5.i.i.i.i.i.i, %bb.af ], [ %.val17.i.6.i.i.i.i.i.i, %bb.ag ], [ %.val17.i.7.i.i.i.i.i.i, %bb.ah ]
  %i.cn = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val16.i.lcssa.i.i.i.i.i.i, i8 %.val17.i.lcssa.i.i.i.i.i.i)
  br label %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit: ; preds = %bb.e, %.loopexit.i.i.i.i.i.i.i, %bb.ah, %bb.z, %bb.y, %bb.w, %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread.i.i, %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i, %bb.s, %bb.r, %bb.p, %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit.thread, %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.ah ], [ %.sroa.0.0.i, %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit ], [ %i.at, %bb.p ], [ 1, %bb.r ], [ %i.ar, %_RNvXsc_NtCslrJNpMdrWwK_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmpB7_.exit.thread ], [ %..i9, %bb.s ], [ %i.bc, %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i ], [ %i.bm, %bb.w ], [ 1, %bb.y ], [ %i.bk, %_RNvXse_NtNtNtCslrJNpMdrWwK_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.thread.i.i ], [ %..i.i.i.i, %bb.z ], [ %i.cn, %.loopexit.i.i.i.i.i.i.i ], [ 1, %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslrJNpMdrWwK_15icu_locale_core6parser6langid45parse_language_identifier_with_single_variant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([18 x i8]) align 1 captures(none) dereferenceable(18) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, i8 noundef range(i8 0, 3) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [28 x i8], align 1                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.sroa.05.0.lcssa = phi i64 [ 0, %bb.a ], [ %.sroa.05.09, %.lr.ph ], [ %2, %bb.b ]
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.05.0.lcssa, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCslrJNpMdrWwK_15icu_locale_core6parser6langid75parse_locale_with_single_variant_single_keyword_unicode_extension_from_iter(ptr noalias noundef nonnull sret([28 x i8]) align 1 captures(none) dereferenceable(28) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, i8 noundef %3)
  %i.f = load i8, ptr %i.a, align 1, !range !3, !noundef !4
  %i.g = icmp eq i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.05.09 = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.05.09
  %i.i = load i8, ptr %i.h, align 1, !noundef !4
  %i.j = icmp eq i8 %i.i, 45
  br i1 %i.j, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = add nuw nsw i64 %.sroa.05.09, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.k, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !99, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.m, ptr %i.n, align 1
  store i8 -1, ptr %0, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) %i.a, i64 3, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %i.p, i64 3, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.02.0.copyload = load i64, ptr %i.q, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i32 %.sroa.0.0.copyload, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i64 %.sroa.02.0.copyload, ptr %.sroa.6.0..sroa_idx, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslrJNpMdrWwK_15icu_locale_core6parser6langid75parse_locale_with_single_variant_single_keyword_unicode_extension_from_iter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([28 x i8]) align 1 captures(none) dereferenceable(28) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !113, !noalias !112, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvMNtCslrJNpMdrWwK_15icu_locale_core6parserNtB2_14SubtagIterator10next_const.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !113, !noalias !112, !noundef !4 ; 3 uses
end_hunk_0
