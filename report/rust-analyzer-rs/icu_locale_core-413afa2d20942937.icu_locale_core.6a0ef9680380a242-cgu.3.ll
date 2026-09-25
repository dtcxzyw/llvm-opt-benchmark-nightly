Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_locale_core-413afa2d20942937.icu_locale_core.6a0ef9680380a242-cgu.3?download=true
inline.NumInlined: 135
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicodeNtB2_7Unicode9total_cmp:bb.a
  %i.bj = load i8, ptr %i.bf, align 1, !range !4, !alias.scope !196, !noalias !195, !noundef !5
  %i.bk = icmp eq i8 %i.bj, -1                    ; 3 uses
  %not..i.i.i.i = xor i1 %i.bk, true              ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.bl = add nsw i8 %.neg.i.i.i.i, %i.bi
  %i.bm = xor i1 %i.bh, %i.bk
  br i1 %i.bm, label %bb.v, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.v:                                             ; preds = %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  br i1 %i.bh, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.bn = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagNtB5_8SliceOrd7compareBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.be, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.bf, i64 noundef 2)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %i.bk)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !range !4, !alias.scope !195, !noalias !196, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.bp, -1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.br = load i8, ptr %i.bq, align 1, !range !4, !alias.scope !196, !noalias !195, !noundef !5 ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not6.i.i.i.i = icmp eq i8 %i.br, -1
  br i1 %.not6.i.i.i.i, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %.not4.i.i.i.i = icmp ne i8 %i.br, -1
  %..i.i.i.i = sext i1 %.not4.i.i.i.i to i8
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.bs = icmp eq i8 %i.bp, %i.br
  br i1 %i.bs, label %bb.ab, label %.loopexit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val15.i.1.i.i.i.i.i.i = load i8, ptr %i.bt, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.1.i.i.i.i.i.i = load i8, ptr %i.bu, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.bv = icmp eq i8 %.val15.i.1.i.i.i.i.i.i, %.val16.i.1.i.i.i.i.i.i
  br i1 %i.bv, label %bb.ac, label %.loopexit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.val15.i.2.i.i.i.i.i.i = load i8, ptr %i.bw, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.2.i.i.i.i.i.i = load i8, ptr %i.bx, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.by = icmp eq i8 %.val15.i.2.i.i.i.i.i.i, %.val16.i.2.i.i.i.i.i.i
  br i1 %i.by, label %bb.ad, label %.loopexit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.val15.i.3.i.i.i.i.i.i = load i8, ptr %i.bz, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.3.i.i.i.i.i.i = load i8, ptr %i.ca, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.cb = icmp eq i8 %.val15.i.3.i.i.i.i.i.i, %.val16.i.3.i.i.i.i.i.i
  br i1 %i.cb, label %bb.ae, label %.loopexit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i.4.i.i.i.i.i.i = load i8, ptr %i.cc, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.4.i.i.i.i.i.i = load i8, ptr %i.cd, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.ce = icmp eq i8 %.val15.i.4.i.i.i.i.i.i, %.val16.i.4.i.i.i.i.i.i
  br i1 %i.ce, label %bb.af, label %.loopexit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.val15.i.5.i.i.i.i.i.i = load i8, ptr %i.cf, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.5.i.i.i.i.i.i = load i8, ptr %i.cg, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.ch = icmp eq i8 %.val15.i.5.i.i.i.i.i.i, %.val16.i.5.i.i.i.i.i.i
  br i1 %i.ch, label %bb.ag, label %.loopexit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.val15.i.6.i.i.i.i.i.i = load i8, ptr %i.ci, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.6.i.i.i.i.i.i = load i8, ptr %i.cj, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.ck = icmp eq i8 %.val15.i.6.i.i.i.i.i.i, %.val16.i.6.i.i.i.i.i.i
  br i1 %i.ck, label %bb.ah, label %.loopexit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.val15.i.7.i.i.i.i.i.i = load i8, ptr %i.cl, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.7.i.i.i.i.i.i = load i8, ptr %i.cm, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.cn = icmp eq i8 %.val15.i.7.i.i.i.i.i.i, %.val16.i.7.i.i.i.i.i.i
  br i1 %i.cn, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.val15.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.bp, %bb.aa ], [ %.val15.i.1.i.i.i.i.i.i, %bb.ab ], [ %.val15.i.2.i.i.i.i.i.i, %bb.ac ], [ %.val15.i.3.i.i.i.i.i.i, %bb.ad ], [ %.val15.i.4.i.i.i.i.i.i, %bb.ae ], [ %.val15.i.5.i.i.i.i.i.i, %bb.af ], [ %.val15.i.6.i.i.i.i.i.i, %bb.ag ], [ %.val15.i.7.i.i.i.i.i.i, %bb.ah ]
  %.val16.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.br, %bb.aa ], [ %.val16.i.1.i.i.i.i.i.i, %bb.ab ], [ %.val16.i.2.i.i.i.i.i.i, %bb.ac ], [ %.val16.i.3.i.i.i.i.i.i, %bb.ad ], [ %.val16.i.4.i.i.i.i.i.i, %bb.ae ], [ %.val16.i.5.i.i.i.i.i.i, %bb.af ], [ %.val16.i.6.i.i.i.i.i.i, %bb.ag ], [ %.val16.i.7.i.i.i.i.i.i, %bb.ah ]
  %i.co = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i.i.i.i, i8 %.val16.i.lcssa.i.i.i.i.i.i)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit: ; preds = %bb.e, %.loopexit.i.i.i.i.i.i.i, %bb.ah, %bb.z, %bb.y, %bb.w, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.s, %bb.r, %bb.p, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.ah ], [ %.sroa.0.0.i, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit ], [ %i.at, %bb.p ], [ 1, %bb.r ], [ %i.ar, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread ], [ %..i9, %bb.s ], [ %i.bc, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.bn, %bb.w ], [ 1, %bb.y ], [ %i.bl, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ], [ %..i.i.i.i, %bb.z ], [ %i.co, %.loopexit.i.i.i.i.i.i.i ], [ 1, %bb.e ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences30to_data_locale_region_priority(ptr dead_on_unwind noalias nofree noundef writable sret([26 x i8]) align 1 captures(none) dereferenceable(26) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #0 {
bb.a:
  %.sroa.014.0.copyload = load i24, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.c = load i8, ptr %i.b, align 1, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 23
  %.sroa.4.sroa.0.0.copyload = load i48, ptr %.sroa.4.0..sroa_idx, align 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.e = load i8, ptr %i.d, align 1, !range !4, !noundef !5 ; 2 uses
  %.not19 = icmp eq i8 %i.e, -1
  br i1 %.not19, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.e, %bb.b
  %.sroa.6.sroa.0.0 = phi i48 [ %.sroa.4.sroa.0.0.copyload, %bb.b ], [ %.sroa.411.sroa.0.0.copyload, %bb.e ], [ undef, %bb.c ]
  %.sroa.02.0 = phi i8 [ %i.c, %bb.b ], [ %i.e, %bb.e ], [ -1, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.07.0.copyload = load i64, ptr %i.f, align 1
  %.sroa.016.0.insert.ext = zext i8 %.sroa.02.0 to i56
  %.sroa.016.1.insert.ext = zext i48 %.sroa.6.sroa.0.0 to i56
  %.sroa.016.1.insert.shift = shl nuw i56 %.sroa.016.1.insert.ext, 8
  %.sroa.016.1.insert.insert = or disjoint i56 %.sroa.016.1.insert.shift, %.sroa.016.0.insert.ext
  tail call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10from_parts(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(none) dereferenceable(26) %0, i24 %.sroa.014.0.copyload, i32 %.sroa.0.0.copyload, i56 %.sroa.016.1.insert.insert, i64 %.sroa.07.0.copyload)
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.411.sroa.0.0.copyload = load i48, ptr %.sroa.411.0..sroa_idx, align 1
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences32to_data_locale_language_priority(ptr dead_on_unwind noalias nofree noundef writable sret([26 x i8]) align 1 captures(none) dereferenceable(26) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #0 {
bb.a:
  %.sroa.010.0.copyload = load i24, ptr %1, align 1
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.0.0.copyload = load i32, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.c = load i8, ptr %i.b, align 1, !range !4, !noundef !5 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.sroa.0.0.copyload = load i48, ptr %.sroa.4.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 14
  %.sroa.05.0.copyload = load i64, ptr %i.d, align 1
  %.sroa.012.0.insert.ext = zext i8 %i.c to i56
  %i.e = zext i48 %.sroa.4.sroa.0.0.copyload to i56
  %i.f = shl nuw i56 %i.e, 8
  %.sroa.012.1.insert.shift = select i1 %.not, i56 0, i56 %i.f
  %.sroa.012.1.insert.insert = or disjoint i56 %.sroa.012.1.insert.shift, %.sroa.012.0.insert.ext
  tail call void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10from_parts(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(none) dereferenceable(26) %0, i24 %.sroa.010.0.copyload, i32 %.sroa.0.0.copyload, i56 %.sroa.012.1.insert.insert, i64 %.sroa.05.0.copyload)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB2_5Value13remove_subtag(ptr noalias nofree noundef dereferenceable(16) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %.not = icmp eq i8 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !range !4
  %i.d = icmp ne i8 %i.c, -1
  %i.e = zext i1 %i.d to i64
  %.sroa.01.0 = select i1 %.not, i64 %i.e, i64 2
  %i.f = icmp ult i64 %.sroa.01.0, %1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef i64 @_RNvMs0_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_13ShortBoxSliceNtNtB7_7subtags6SubtagE6removeB7_(ptr noalias nofree noundef nonnull dereferenceable(16) %0, i64 noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0.insert.insert = phi i64 [ %i.g, %bb.b ], [ 255, %bb.a ]
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB2_5Value13try_from_utf8(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = icmp eq i64 %2, 0
  br i1 %i.c, label %bb.b, label %.preheader

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.0.sroa.8.0 = phi i64 [ 255, %bb.a ], [ %.sroa.0.sroa.8.2, %._crit_edge ]
  %.sroa.0.sroa.0.0 = phi i8 [ -1, %bb.a ], [ %.sroa.0.sroa.0.2, %._crit_edge ]
  %.sroa.19.0 = phi i48 [ undef, %bb.a ], [ %.sroa.19.1.lcssa, %._crit_edge ]
  %.sroa.16.0 = phi i8 [ undef, %bb.a ], [ %.sroa.16.1.lcssa, %._crit_edge ]
  store i8 %.sroa.0.sroa.0.0, ptr %0, align 1
  %.sroa.091.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i64 %.sroa.0.sroa.8.0, ptr %.sroa.091.sroa.4.0..sroa_idx, align 1
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sroa.16.0, ptr %.sroa.492.0..sroa_idx, align 1
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i48 %.sroa.19.0, ptr %.sroa.593.0..sroa_idx, align 1
  br label %bb.f

bb.c:                                             ; preds = %.preheader, %bb.d
  %.sroa.037.0.lcssa = phi i64 [ %.sroa.037.0107, %.preheader ], [ %2, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.037.0.lcssa, ptr %.sroa.4.0..sroa_idx, align 8
  %i.d = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0        ; 2 uses
  %.not108 = icmp eq ptr %i.e, null
  br i1 %.not108, label %._crit_edge, label %bb.e

.preheader:                                       ; preds = %bb.a, %bb.d
  %.sroa.037.0107 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.037.0107
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = icmp eq i8 %i.g, 45
  br i1 %i.h, label %bb.c, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.i = add nuw nsw i64 %.sroa.037.0107, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %bb.c, label %.preheader

bb.e:                                             ; preds = %bb.c, %bb.h
  %.sroa.0.sroa.8.1 = phi i64 [ %.sroa.0.sroa.8.3, %bb.h ], [ 255, %bb.c ] ; 6 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.118, %bb.h ], [ -1, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %i.q, %bb.h ], [ %i.e, %bb.c ]
  %i.k = phi { ptr, i64 } [ %i.p, %bb.h ], [ %i.d, %bb.c ]
  %.sroa.16.1110 = phi i8 [ %.sroa.16.2, %bb.h ], [ undef, %bb.c ]
  %.sroa.19.1109 = phi i48 [ %.sroa.19.2, %bb.h ], [ undef, %bb.c ]
  %i.l = extractvalue { ptr, i64 } %i.k, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = call i64 @_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l) ; 6 uses
  %.sroa.468.0.extract.shift = lshr i64 %i.m, 8
  %.sroa.468.0.extract.trunc = trunc i64 %.sroa.468.0.extract.shift to i8 ; 2 uses
  %.sroa.569.0.extract.shift = lshr i64 %i.m, 16
  %.sroa.569.0.extract.trunc = trunc nuw i64 %.sroa.569.0.extract.shift to i48
  %3 = and i64 %i.m, 255
  %i.n = icmp eq i64 %3, 255
  br i1 %i.n, label %bb.l, label %bb.g

._crit_edge:                                      ; preds = %bb.h, %bb.c
  %.sroa.0.sroa.8.2 = phi i64 [ 255, %bb.c ], [ %.sroa.0.sroa.8.3, %bb.h ]
  %.sroa.0.sroa.0.2 = phi i8 [ -1, %bb.c ], [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.118, %bb.h ]
  %.sroa.19.1.lcssa = phi i48 [ undef, %bb.c ], [ %.sroa.19.2, %bb.h ]
  %.sroa.16.1.lcssa = phi i8 [ undef, %bb.c ], [ %.sroa.16.2, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.b

bb.f:                                             ; preds = %bb.l, %bb.b
  ret void

bb.g:                                             ; preds = %bb.e
  store i64 %i.m, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull %i.a, ptr noundef nonnull @1, i64 noundef 8)
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.k, %bb.g
  %.sroa.0.sroa.8.3 = phi i64 [ %.sroa.0.sroa.8.1, %bb.g ], [ %op.rdx144, %bb.k ], [ %i.m, %bb.i ] ; 2 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.118 = phi i8 [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., %bb.g ], [ %.sroa.0.sroa.8.1.extract.trunc135, %bb.k ], [ -1, %bb.i ] ; 2 uses
  %.sroa.19.2 = phi i48 [ %.sroa.19.1109, %bb.g ], [ %.sroa.569.0.extract.trunc, %bb.k ], [ undef, %bb.i ] ; 2 uses
  %.sroa.16.2 = phi i8 [ %.sroa.16.1110, %bb.g ], [ %.sroa.468.0.extract.trunc, %bb.k ], [ undef, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0        ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.e

bb.i:                                             ; preds = %bb.g
  %.not94 = icmp eq i8 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., -1 ; 2 uses
  %.sroa.0.sroa.8.1.extract.trunc135 = trunc i64 %.sroa.0.sroa.8.1 to i8 ; 2 uses
  %i.r = icmp eq i8 %.sroa.0.sroa.8.1.extract.trunc135, -1 ; 2 uses
  %or.cond = select i1 %.not94, i1 %i.r, i1 false
  br i1 %or.cond, label %bb.h, label %bb.j

bb.j:                                             ; preds = %bb.i
  %not..not94 = xor i1 %.not94, true
  %i.s = select i1 %not..not94, i1 true, i1 %i.r
  br i1 %i.s, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.0.sroa.8.2.extract.shift = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.1.insert.ext = and i64 %.sroa.0.sroa.8.2.extract.shift, 255
  %4 = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.2.insert.shift = and i64 %4, 65280
  %5 = insertelement <4 x i64> poison, i64 %.sroa.0.sroa.8.1, i64 0
  %6 = lshr <4 x i64> %5, <i64 8, i64 poison, i64 poison, i64 poison>
  %7 = shufflevector <4 x i64> %6, <4 x i64> poison, <4 x i32> zeroinitializer
  %8 = and <4 x i64> %7, <i64 16711680, i64 4278190080, i64 1095216660480, i64 280375465082880>
  %i.t = lshr i64 %.sroa.0.sroa.8.1, 8
  %.sroa.0.sroa.8.7.insert.shift = and i64 %i.t, 71776119061217280
  %.sroa.0.sroa.8.8.insert.ext = shl i64 %i.m, 56
  %9 = call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %8)
  %op.rdx = or disjoint i64 %9, %.sroa.0.sroa.8.1.insert.ext
  %op.rdx142 = or disjoint i64 %.sroa.0.sroa.8.2.insert.shift, %.sroa.0.sroa.8.7.insert.shift
  %op.rdx143 = or disjoint i64 %op.rdx, %op.rdx142
  %op.rdx144 = or disjoint i64 %op.rdx143, %.sroa.0.sroa.8.8.insert.ext
  br label %bb.h

bb.l:                                             ; preds = %bb.j, %bb.e
  %.sink = phi i8 [ %.sroa.468.0.extract.trunc, %bb.e ], [ 1, %bb.j ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sink, ptr %i.u, align 1
  store i8 -2, ptr %0, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB2_5Value22parse_subtag_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) ; 7 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 255
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.760.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.861.0.extract.shift = lshr i64 %i.a, 40
  %.sroa.962.0.extract.shift = lshr i64 %i.a, 48
  %.sroa.1063.0.extract.shift = lshr i64 %i.a, 56
  %i.d = and i64 %i.a, 4294967295
  %or.cond8 = icmp eq i64 %i.d, 1702195828
  %i.e = or i64 %.sroa.962.0.extract.shift, %.sroa.861.0.extract.shift
  %i.f = or i64 %i.e, %.sroa.760.0.extract.shift
  %i.g = and i64 %i.f, 255
  %i.h = or i64 %i.g, %.sroa.1063.0.extract.shift
  %i.i = icmp eq i64 %i.h, 0
  %or.cond20 = and i1 %or.cond8, %i.i
  %. = select i1 %or.cond20, i64 255, i64 %i.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.5.sroa.0.0 = phi i64 [ %., %bb.b ], [ 510, %bb.a ]
  ret i64 %.sroa.5.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB5_17LocalePreferences18from_locale_strict(ptr dead_on_unwind noalias nofree noundef writable sret([30 x i8]) align 1 captures(address) dereferenceable(30) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.545 = alloca [7 x i8], align 1           ; 4 uses
  %i.a = alloca [29 x i8], align 1                ; 12 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [7 x i8], align 1                 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.e = tail call noundef ptr @_RINvMs1_NtCshD3lJRhzE0y_7litemap3mapINtB6_7LiteMapNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBQ_5value5ValueINtNtBU_8shortvec13ShortBoxSliceTBM_B1R_EEE3getBM_EBU_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) @2) ; 2 uses
  %.not = icmp ne ptr %i.e, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i56 @_RNvXs_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords20regional_subdivisionNtB4_19RegionalSubdivisionINtNtCshzWfHUSfYae_4core7convert7TryFromRNtNtNtNtBe_10extensions7unicode5value5ValueE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.e) ; 3 uses
  %.sroa.068.0.extract.trunc = trunc i56 %i.f to i8 ; 3 uses
  %i.g = icmp eq i8 %.sroa.068.0.extract.trunc, -1
  br i1 %i.g, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.068.1.extract.shift = lshr i56 %i.f, 8   ; 2 uses
  %.sroa.068.1.extract.trunc = trunc nuw i56 %.sroa.068.1.extract.shift to i48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %.sroa.068.0.extract.trunc, ptr %i.c, align 1
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i48 %.sroa.068.1.extract.trunc, ptr %.sroa.6.0..sroa_idx2, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 143 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !range !4, !noundef !5
  %.not76 = icmp eq i8 %i.i, -1
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %i.h, i64 3, i1 false)
  %i.j = call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i64 noundef 3) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %.sroa.021.0.copyload22 = load i32, ptr %i.k, align 1
  %not. = xor i1 %i.j, true
  %.sroa.021.0 = select i1 %i.j, i32 %.sroa.021.0.copyload22, i32 2054847098
  %.sroa.019.0.copyload = load i8, ptr %i.b, align 1
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.420.sroa.0.0.copyload24 = load i16, ptr %.sroa.420.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.l = lshr i56 %i.f, 24
  %i.m = trunc nuw i56 %i.l to i32
  %i.n = trunc i56 %.sroa.068.1.extract.shift to i16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.1 = phi i1 [ false, %bb.e ], [ %not., %bb.d ]
  %.sroa.5.sroa.4.0 = phi i32 [ %i.m, %bb.e ], [ %.sroa.021.0, %bb.d ]
  %.sroa.5.sroa.0.0 = phi i16 [ %i.n, %bb.e ], [ %.sroa.420.sroa.0.0.copyload24, %bb.d ]
  %.sroa.010.0 = phi i8 [ %.sroa.068.0.extract.trunc, %bb.e ], [ %.sroa.019.0.copyload, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.sroa.0.2 = phi i1 [ %.not, %bb.h ], [ %.sroa.0.1, %bb.f ] ; 2 uses
  %.sroa.5.sroa.4.1 = phi i32 [ 2054847098, %bb.h ], [ %.sroa.5.sroa.4.0, %bb.f ]
  %.sroa.5.sroa.0.1 = phi i16 [ %.sroa.5.sroa.0.2, %bb.h ], [ %.sroa.5.sroa.0.0, %bb.f ]
  %.sroa.010.1 = phi i8 [ %.sroa.029.0.copyload, %bb.h ], [ %.sroa.010.0, %bb.f ]
  %i.o = call noundef ptr @_RINvMs1_NtCshD3lJRhzE0y_7litemap3mapINtB6_7LiteMapNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBQ_5value5ValueINtNtBU_8shortvec13ShortBoxSliceTBM_B1R_EEE3getBM_EBU_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %i.d, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) @3) ; 2 uses
  %.not78 = icmp eq ptr %i.o, null
  br i1 %.not78, label %bb.i, label %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit

bb.h:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 143
  %.sroa.029.0.copyload = load i8, ptr %i.p, align 1 ; 2 uses
  %.not77 = icmp eq i8 %.sroa.029.0.copyload, -1
  %.sroa.5.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.5.0.copyload = load i16, ptr %.sroa.5.0..sroa_idx31, align 8
  %.sroa.5.sroa.0.2 = select i1 %.not77, i16 undef, i16 %.sroa.5.0.copyload
  br label %bb.g

_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit: ; preds = %bb.g
  %i.q = call i56 @_RNvXs_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_overrideNtB4_14RegionOverrideINtNtCshzWfHUSfYae_4core7convert7TryFromRNtNtNtNtBe_10extensions7unicode5value5ValueE8try_from(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.o) ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i56 %i.q to i8 ; 2 uses
  %i.r = icmp eq i8 %.sroa.0.0.extract.trunc.i, -1
  %spec.select = or i1 %.sroa.0.2, %i.r
  %.sroa.074.1.extract.shift = lshr i56 %i.q, 8
  %.sroa.074.1.extract.trunc = trunc nuw i56 %.sroa.074.1.extract.shift to i48
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit
  %.sroa.0.4 = phi i1 [ %.sroa.0.2, %bb.g ], [ %spec.select, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit ]
  %.sroa.034.0 = phi i8 [ -1, %bb.g ], [ %.sroa.0.0.extract.trunc.i, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit ]
  %.sroa.436.sroa.0.0 = phi i48 [ undef, %bb.g ], [ %.sroa.074.1.extract.trunc, %_RINvMNtCshzWfHUSfYae_4core6resultINtB3_6ResultNtNtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_override14RegionOverrideNtNtBO_6errors21PreferencesParseErrorE11inspect_errNCNCNvMs2_NtBS_6localeNtB3B_17LocalePreferences18from_locale_stricts_00EBU_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 139
  %.sroa.041.0.copyload = load i32, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.545)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 146 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !range !4, !noundef !5
  %.not79 = icmp eq i8 %i.u, -1                   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 147 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !4
  %.not80 = icmp eq i8 %i.w, -1                   ; 2 uses
  %i.x = select i1 %.not79, i1 %.not80, i1 false
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.81 = select i1 %.not80, ptr inttoptr (i64 1 to ptr), ptr %i.v
  %.sroa.047.0 = select i1 %.not79, ptr %.81, ptr %i.t ; 2 uses
  %.sroa.066.0.copyload = load i8, ptr %.sroa.047.0, align 1
  %.sroa.467.0..sroa.065.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.047.0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.545, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.467.0..sroa.065.0..sroa_idx, i64 7, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.043.0 = phi i8 [ %.sroa.066.0.copyload, %bb.j ], [ -1, %bb.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  %_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E3Err0BL_._RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E2Ok0BL_ = select i1 %.sroa.0.4, ptr @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E3Err0BL_, ptr @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E2Ok0BL_
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.a, ptr noundef nonnull align 8 dereferenceable(3) %i.y, i64 3, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i32 %.sroa.041.0.copyload, ptr %i.z, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %.sroa.010.1, ptr %i.aa, align 1
  %.sroa.5.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i16 %.sroa.5.sroa.0.1, ptr %.sroa.5.0..sroa_idx16, align 1
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx16.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i32 %.sroa.5.sroa.4.1, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx16.sroa_idx, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 %.sroa.043.0, ptr %i.ab, align 1
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.545.0..sroa_idx46, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.545, i64 7, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %.sroa.034.0, ptr %i.ac, align 1
  %.sroa.436.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i48 %.sroa.436.sroa.0.0, ptr %.sroa.436.0..sroa_idx37, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.545)
  call void %_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E3Err0BL_._RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E2Ok0BL_(ptr noalias nofree noundef nonnull sret([30 x i8]) align 1 captures(address) dereferenceable(30) %0, ptr noalias nofree noundef nonnull align 1 captures(address) dereferenceable(29) %i.a), !callees !205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB5_17LocalePreferences6extend(ptr noalias nofree noundef captures(none) dereferenceable(29) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca [3 x i8], align 1                 ; 5 uses
  %.sroa.017.0.copyload = load i8, ptr %1, align 1
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.sroa.518.0.copyload = load i8, ptr %.sroa.518.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 1
  %i.c = icmp eq i8 %.sroa.017.0.copyload, 117
  %i.d = icmp eq i8 %.sroa.518.0.copyload, 110
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  %i.e = icmp eq i8 %.sroa.6.0.copyload, 100
  %or.cond5 = select i1 %or.cond, i1 %i.e, i1 false
  br i1 %or.cond5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %0, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@_RNvYNtNtCs8xIf8eOPprX_9writeable3cmp15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs96xUavsWfLi_15icu_locale_core:bb.a

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !368
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !368
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !368
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !368
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !368
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !368
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !368
  br label %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !7, !alias.scope !369, !noalias !370, !noundef !5
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit

bb.h:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !369, !noalias !370, !nonnull !5, !noundef !5 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !369, !noalias !370, !noundef !5 ; 3 uses
  %.not17.i = icmp ugt i64 %.sroa.0.05.i, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.sroa.0.05.i
  %.sroa.45.0.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, 9) %.sroa.0.05.i, i64 %i.af) ; 2 uses
  %.sroa.3.0.i = tail call i64 @llvm.usub.sat.i64(i64 %i.af, i64 range(i64 0, 9) %.sroa.0.05.i)
  %.sroa.02.0.i = select i1 %.not17.i, ptr inttoptr (i64 1 to ptr), ptr %i.ag
  store ptr %.sroa.02.0.i, ptr %0, align 8, !alias.scope !369, !noalias !370, !captures !8
  store i64 %.sroa.3.0.i, ptr %i.ae, align 8, !alias.scope !369, !noalias !370
  %i.ah = call i32 @memcmp(ptr nonnull %i.ad, ptr nonnull readonly %i.a, i64 %.sroa.45.0.i), !noalias !369 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.45.0.i, %.sroa.0.05.i
  %.sroa.013.0.i = select i1 %i.aj, i64 %i.ak, i64 %i.ai
  %i.al = tail call i8 @llvm.scmp.i8.i64(i64 %.sroa.013.0.i, i64 0)
  store i8 %i.al, ptr %i.ab, align 8, !alias.scope !369, !noalias !370
  br label %_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit

_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit: ; preds = %_RNvNtNtCshzWfHUSfYae_4core4char7methods15encode_utf8_raw.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 false
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: nonlazybind
declare i32 @rust_eh_personality(...) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsb_NtB9_6localeNtB2s_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1O_9FormatterE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsb_NtB9_6localeNtB2m_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsb_NtB9_6localeNtB2s_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB2T_3cmp15WriteComparatorE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsb_NtB9_6localeNtB2m_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB2N_3cmp15WriteComparatorE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1O_9FormatterE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1I_9FormatterE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2s_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB2W_3cmp15WriteComparatorE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_NtB9_4dataNtB2m_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB2Q_3cmp15WriteComparatorE0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB11_3cmp15WriteComparatorEB8_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXsa_NtCs96xUavsWfLi_15icu_locale_core6langidNtB6_18LanguageIdentifierNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1b_3cmp15WriteComparatorEB8_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(26), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXsb_NtCs96xUavsWfLi_15icu_locale_core6localeNtB6_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtBY_3cmp15WriteComparatorEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvXs9_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB6_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1q_3cmp15WriteComparatorEBc_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvNtCshzWfHUSfYae_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXs9_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtBX_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB2h_3cmp15WriteComparatorE0INtB7_5FnMutTReEE8call_mutB13_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsb_NtCs96xUavsWfLi_15icu_locale_core6localeNtBX_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtBb_3fmt9FormatterE0INtB7_5FnMutTReEE8call_mutBZ_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsb_NtCs96xUavsWfLi_15icu_locale_core6localeNtBX_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1P_3cmp15WriteComparatorE0INtB7_5FnMutTReEE8call_mutBZ_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtBb_3fmt9FormatterE0INtB7_5FnMutTReEE8call_mutBZ_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvXsd_NtCs96xUavsWfLi_15icu_locale_core4dataNtBX_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB1S_3cmp15WriteComparatorE0INtB7_5FnMutTReEE8call_mutBZ_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvXs9_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtBW_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0INtB7_5FnMutTReEE8call_mutB12_(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCshzWfHUSfYae_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB5_10DataLocale10from_parts(ptr dead_on_unwind noalias nofree noundef writable sret([26 x i8]) align 1 captures(none) dereferenceable(26), i24, i32, i56, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_13ShortBoxSliceNtNtB7_7subtags6SubtagE6removeB7_(ptr noalias nofree noundef dereferenceable(16), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs_NtCs96xUavsWfLi_15icu_locale_core6parserNtB4_14SubtagIteratorNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i64 @_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag13try_from_utf8(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteINtB5_14SlicePartialEqBC_E17equal_same_lengthCs96xUavsWfLi_15icu_locale_core(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs1_NtCshD3lJRhzE0y_7litemap3mapINtB6_7LiteMapNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBQ_5value5ValueINtNtBU_8shortvec13ShortBoxSliceTBM_B1R_EEE3getBM_EBU_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i56 @_RNvXs_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords20regional_subdivisionNtB4_19RegionalSubdivisionINtNtCshzWfHUSfYae_4core7convert7TryFromRNtNtNtNtBe_10extensions7unicode5value5ValueE8try_from(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i56 @_RNvXs_NtNtNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences10extensions7unicode8keywords15region_overrideNtB4_14RegionOverrideINtNtCshzWfHUSfYae_4core7convert7TryFromRNtNtNtNtBe_10extensions7unicode5value5ValueE8try_from(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode11subdivisionNtB2_17SubdivisionSuffix10is_unknown(i32 noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode11subdivisionNtB4_13SubdivisionId11into_subtag(i56) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode10attributesNtB3_10Attributes19for_each_subtag_strNtNtCshzWfHUSfYae_4core7convert10InfallibleNCNvXs9_B3_B1a_NtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode8keywordsNtB3_8Keywords19for_each_subtag_strNtNtCshzWfHUSfYae_4core7convert10InfallibleNCNvXs9_B3_B17_NtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0EB9_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(36), ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagNtB5_8SliceOrd7compareBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode9attribute9AttributeNtB5_8SliceOrd7compareBK_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpTNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBH_5value5ValueENtB5_8SliceOrd7compareBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 512409557603043101), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, 512409557603043101)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v4i64(<4 x i64>) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nonlazybind "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { noinline noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{i8 -1, i8 -128}
!5 = !{}
!6 = !{i8 0, i8 2}
!7 = !{i8 -1, i8 2}
!8 = !{!"address", !"read_provenance"}
!9 = !{i8 0, i8 3}
!10 = distinct !{!10, !"_RNvYNtNtCs8xIf8eOPprX_9writeable3cmp15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs96xUavsWfLi_15icu_locale_core"}
!11 = distinct !{!11, !10, !"_RNvYNtNtCs8xIf8eOPprX_9writeable3cmp15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs96xUavsWfLi_15icu_locale_core: argument 0"}
!12 = distinct !{!12, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str"}
!13 = distinct !{!13, !12, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 0"}
!14 = distinct !{!14, !12, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 1"}
!15 = distinct !{!15, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str"}
!16 = distinct !{!16, !15, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 0"}
!17 = distinct !{!17, !15, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 1"}
!18 = !{!11}
!19 = !{!13}
!20 = !{!13, !11}
!21 = !{!14}
!22 = !{!16}
!23 = !{!17}
!24 = distinct !{!24, !"_RNvYNtNtCs8xIf8eOPprX_9writeable3cmp15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs96xUavsWfLi_15icu_locale_core"}
!25 = distinct !{!25, !24, !"_RNvYNtNtCs8xIf8eOPprX_9writeable3cmp15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write10write_charCs96xUavsWfLi_15icu_locale_core: argument 0"}
!26 = distinct !{!26, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str"}
!27 = distinct !{!27, !26, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 0"}
!28 = distinct !{!28, !26, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 1"}
!29 = distinct !{!29, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str"}
!30 = distinct !{!30, !29, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 0"}
!31 = distinct !{!31, !29, !"_RNvXNtCs8xIf8eOPprX_9writeable3cmpNtB2_15WriteComparatorNtNtCshzWfHUSfYae_4core3fmt5Write9write_str: argument 1"}
!32 = !{!25}
!33 = !{!27}
!34 = !{!27, !25}
!35 = !{!28}
!36 = !{!30}
!37 = !{!31}
!38 = distinct !{!38, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB4S_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5L_3cmp15WriteComparatorE0E0E0B38_EBN_"}
!39 = distinct !{!39, !38, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB4S_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5L_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 2"}
!40 = distinct !{!40, !38, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB4S_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5L_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 1"}
!41 = distinct !{!41, !38, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB4S_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5L_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 0"}
!42 = distinct !{!42, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXs9_NtNtNtB14_10extensions7unicode8keywordsNtB47_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB51_3cmp15WriteComparatorE0E0E0B14_"}
!43 = distinct !{!43, !42, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXs9_NtNtNtB14_10extensions7unicode8keywordsNtB47_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB51_3cmp15WriteComparatorE0E0E0B14_: argument 1"}
!44 = distinct !{!44, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_"}
!45 = distinct !{!45, !44, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_: argument 0"}
!46 = distinct !{!46, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str"}
!47 = distinct !{!47, !46, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str: argument 0"}
!48 = distinct !{!48, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core"}
!49 = distinct !{!49, !48, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!50 = distinct !{!50, !42, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXs9_NtNtNtB14_10extensions7unicode8keywordsNtB47_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB51_3cmp15WriteComparatorE0E0E0B14_: argument 0"}
!51 = !{!41, !40, !39}
!52 = !{!49, !47, !45, !43}
!53 = !{!50, !41}
!54 = !{!41}
!55 = distinct !{!55, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_"}
!56 = distinct !{!56, !55, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_: argument 2"}
!57 = distinct !{!57, !55, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_: argument 1"}
!58 = distinct !{!58, !55, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_: argument 0"}
!59 = distinct !{!59, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsb_NtB14_6localeNtB47_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2g_9FormatterE0E0E0B14_"}
!60 = distinct !{!60, !59, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsb_NtB14_6localeNtB47_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2g_9FormatterE0E0E0B14_: argument 1"}
!61 = distinct !{!61, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_"}
!62 = distinct !{!62, !61, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_: argument 0"}
!63 = distinct !{!63, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str"}
!64 = distinct !{!64, !63, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str: argument 0"}
!65 = distinct !{!65, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core"}
!66 = distinct !{!66, !65, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!67 = distinct !{!67, !59, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsb_NtB14_6localeNtB47_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2g_9FormatterE0E0E0B14_: argument 0"}
!68 = !{!58, !57, !56}
!69 = !{!66, !64, !62, !60}
!70 = !{!67, !58}
!71 = !{!58}
!72 = distinct !{!72, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5j_3cmp15WriteComparatorE0E0E0B38_EBN_"}
!73 = distinct !{!73, !72, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5j_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 2"}
!74 = distinct !{!74, !72, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5j_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 1"}
!75 = distinct !{!75, !72, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsb_NtBN_6localeNtB4S_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5j_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 0"}
!76 = distinct !{!76, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsb_NtB14_6localeNtB47_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB4z_3cmp15WriteComparatorE0E0E0B14_"}
!77 = distinct !{!77, !76, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsb_NtB14_6localeNtB47_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB4z_3cmp15WriteComparatorE0E0E0B14_: argument 1"}
!78 = distinct !{!78, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_"}
!79 = distinct !{!79, !78, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_: argument 0"}
!80 = distinct !{!80, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str"}
!81 = distinct !{!81, !80, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str: argument 0"}
!82 = distinct !{!82, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core"}
!83 = distinct !{!83, !82, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!84 = distinct !{!84, !76, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsb_NtB14_6localeNtB47_6LocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB4z_3cmp15WriteComparatorE0E0E0B14_: argument 0"}
!85 = !{!75, !74, !73}
!86 = !{!83, !81, !79, !77}
!87 = !{!84, !75}
!88 = !{!75}
!89 = distinct !{!89, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_"}
!90 = distinct !{!90, !89, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_: argument 2"}
!91 = distinct !{!91, !89, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_: argument 1"}
!92 = distinct !{!92, !89, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB3x_9FormatterE0E0E0B38_EBN_: argument 0"}
!93 = distinct !{!93, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsd_NtB14_4dataNtB47_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2g_9FormatterE0E0E0B14_"}
!94 = distinct !{!94, !93, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsd_NtB14_4dataNtB47_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2g_9FormatterE0E0E0B14_: argument 1"}
!95 = distinct !{!95, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_"}
!96 = distinct !{!96, !95, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_: argument 0"}
!97 = distinct !{!97, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str"}
!98 = distinct !{!98, !97, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str: argument 0"}
!99 = distinct !{!99, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core"}
!100 = distinct !{!100, !99, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!101 = distinct !{!101, !93, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsd_NtB14_4dataNtB47_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB2g_9FormatterE0E0E0B14_: argument 0"}
!102 = !{!92, !91, !90}
!103 = !{!100, !98, !96, !94}
!104 = !{!101, !92}
!105 = !{!92}
!106 = distinct !{!106, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_"}
!107 = distinct !{!107, !106, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 2"}
!108 = distinct !{!108, !106, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 1"}
!109 = distinct !{!109, !106, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCINvXsd_NtBN_4dataNtB4S_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB5m_3cmp15WriteComparatorE0E0E0B38_EBN_: argument 0"}
!110 = distinct !{!110, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsd_NtB14_4dataNtB47_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB4C_3cmp15WriteComparatorE0E0E0B14_"}
!111 = distinct !{!111, !110, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsd_NtB14_4dataNtB47_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB4C_3cmp15WriteComparatorE0E0E0B14_: argument 1"}
!112 = distinct !{!112, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_"}
!113 = distinct !{!113, !112, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_: argument 0"}
!114 = distinct !{!114, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str"}
!115 = distinct !{!115, !114, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str: argument 0"}
!116 = distinct !{!116, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core"}
!117 = distinct !{!117, !116, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!118 = distinct !{!118, !110, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_3fmt5ErrorENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCINvXsd_NtB14_4dataNtB47_10DataLocaleNtCs8xIf8eOPprX_9writeable9Writeable8write_toNtNtB4C_3cmp15WriteComparatorE0E0E0B14_: argument 0"}
!119 = !{!109, !108, !107}
!120 = !{!117, !115, !113, !111}
!121 = !{!118, !109}
!122 = !{!109}
!123 = distinct !{!123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_"}
!124 = distinct !{!124, !123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_: argument 2"}
!125 = distinct !{!125, !123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_: argument 1"}
!126 = distinct !{!126, !123, !"_RINvYINtNtNtCshzWfHUSfYae_4core5slice4iter4IterNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters3map12map_try_foldRBJ_ReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_BL_BJ_6as_strNCINvNvB1y_12try_for_each4callB35_B38_QNCNvXs9_NtNtNtBN_10extensions7unicode8keywordsNtB51_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B38_EBN_: argument 0"}
!127 = distinct !{!127, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCNvXs9_NtNtNtB14_10extensions7unicode8keywordsNtB4g_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B14_"}
!128 = distinct !{!128, !127, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCNvXs9_NtNtNtB14_10extensions7unicode8keywordsNtB4g_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B14_: argument 1"}
!129 = distinct !{!129, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_"}
!130 = distinct !{!130, !129, !"_RNvYNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB8_6Subtag6as_strINtNtNtCshzWfHUSfYae_4core3ops8function5FnMutTRBN_EE8call_mutBa_: argument 0"}
!131 = distinct !{!131, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str"}
!132 = distinct !{!132, !131, !"_RNvMs1_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6Subtag6as_str: argument 0"}
!133 = distinct !{!133, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core"}
!134 = distinct !{!134, !133, !"_RINvMs_NtCse73H5mFuCta_7tinystr7int_opsNtB5_8Aligned816from_ascii_bytesKj8_ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!135 = distinct !{!135, !127, !"_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldRNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagReuINtNtBa_6result6ResultuNtNtBa_7convert10InfallibleENvMs1_B12_B10_6as_strNCINvNvNtNtNtB8_6traits8iterator8Iterator12try_for_each4callB1O_B1R_QNCNvXs9_NtNtNtB14_10extensions7unicode8keywordsNtB4g_8KeywordsNtCs8xIf8eOPprX_9writeable9Writeable21writeable_length_hint0E0E0B14_: argument 0"}
!136 = !{!126, !125, !124}
!137 = !{!134, !132, !130, !128}
!138 = !{!135, !126}
!139 = !{!126}
!140 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!141 = distinct !{!141, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_"}
!142 = distinct !{!142, !141, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_: argument 0"}
!143 = distinct !{!143, !141, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_: argument 1"}
!144 = distinct !{!144, !"_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode9attributeNtB5_9AttributeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!145 = distinct !{!145, !144, !"_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode9attributeNtB5_9AttributeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!146 = distinct !{!146, !144, !"_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode9attributeNtB5_9AttributeNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!147 = distinct !{!147, !"_RNvXsb_NtCse73H5mFuCta_7tinystr5asciiINtB5_12TinyAsciiStrKj8_ENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpCs96xUavsWfLi_15icu_locale_core"}
!148 = distinct !{!148, !147, !"_RNvXsb_NtCse73H5mFuCta_7tinystr5asciiINtB5_12TinyAsciiStrKj8_ENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpCs96xUavsWfLi_15icu_locale_core: argument 0"}
!149 = distinct !{!149, !147, !"_RNvXsb_NtCse73H5mFuCta_7tinystr5asciiINtB5_12TinyAsciiStrKj8_ENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpCs96xUavsWfLi_15icu_locale_core: argument 1"}
!150 = distinct !{!150, !"_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2l_s_0ECs96xUavsWfLi_15icu_locale_core"}
!151 = distinct !{!151, !150, !"_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2l_s_0ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!152 = distinct !{!152, !150, !"_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2l_s_0ECs96xUavsWfLi_15icu_locale_core: argument 1"}
!153 = distinct !{!153, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_"}
!154 = distinct !{!154, !153, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_: argument 0"}
!155 = distinct !{!155, !153, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_: argument 1"}
!156 = distinct !{!156, !"_RNvXsd_NtCshzWfHUSfYae_4core5tupleTNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBB_5value5ValueENtNtB7_3cmp3Ord3cmpBF_"}
!157 = distinct !{!157, !156, !"_RNvXsd_NtCshzWfHUSfYae_4core5tupleTNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBB_5value5ValueENtNtB7_3cmp3Ord3cmpBF_: argument 0"}
!158 = distinct !{!158, !156, !"_RNvXsd_NtCshzWfHUSfYae_4core5tupleTNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBB_5value5ValueENtNtB7_3cmp3Ord3cmpBF_: argument 1"}
!159 = distinct !{!159, !"_RNvXs8_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!160 = distinct !{!160, !159, !"_RNvXs8_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!161 = distinct !{!161, !159, !"_RNvXs8_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode5valueNtB5_5ValueNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!162 = distinct !{!162, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtB7_7subtags6SubtagENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_"}
!163 = distinct !{!163, !162, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtB7_7subtags6SubtagENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_: argument 0"}
!164 = distinct !{!164, !162, !"_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtB7_7subtags6SubtagENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_: argument 1"}
!165 = distinct !{!165, !"_RNvXsh_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6SubtagNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!166 = distinct !{!166, !165, !"_RNvXsh_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6SubtagNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!167 = distinct !{!167, !165, !"_RNvXsh_NtCs96xUavsWfLi_15icu_locale_core7subtagsNtB5_6SubtagNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!168 = distinct !{!168, !"_RNvXsb_NtCse73H5mFuCta_7tinystr5asciiINtB5_12TinyAsciiStrKj8_ENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpCs96xUavsWfLi_15icu_locale_core"}
!169 = distinct !{!169, !168, !"_RNvXsb_NtCse73H5mFuCta_7tinystr5asciiINtB5_12TinyAsciiStrKj8_ENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpCs96xUavsWfLi_15icu_locale_core: argument 0"}
!170 = distinct !{!170, !168, !"_RNvXsb_NtCse73H5mFuCta_7tinystr5asciiINtB5_12TinyAsciiStrKj8_ENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpCs96xUavsWfLi_15icu_locale_core: argument 1"}
!171 = distinct !{!171, !"_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2l_s_0ECs96xUavsWfLi_15icu_locale_core"}
!172 = distinct !{!172, !171, !"_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2l_s_0ECs96xUavsWfLi_15icu_locale_core: argument 0"}
!173 = distinct !{!173, !171, !"_RINvNtNtCshzWfHUSfYae_4core5slice3cmp13chaining_implNtNtCse73H5mFuCta_7tinystr9asciibyte9AsciiByteNtNtB6_3cmp8OrderingNtNtB6_7convert10InfallibleNCNvXs7_B2_BO_NtB2_8SliceOrd7compare0NCB2l_s_0ECs96xUavsWfLi_15icu_locale_core: argument 1"}
!174 = !{!142}
!175 = !{!143}
!176 = !{!145}
!177 = !{!146}
end_hunk_1
