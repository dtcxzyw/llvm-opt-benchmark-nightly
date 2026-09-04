Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_locale_core-413afa2d20942937.icu_locale_core.6a0ef9680380a242-cgu.3?download=true
inline.NumInlined: 135
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCshzWfHUSfYae_4core5slice20copy_from_slice_implhECs96xUavsWfLi_15icu_locale_core:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E2Ok0BL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([30 x i8]) align 1 captures(none) dereferenceable(30) initializes((0, 30)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.a, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 29, i1 false)
  store i8 0, ptr %0, align 1
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNcNtINtNtCshzWfHUSfYae_4core6result6ResultNtNtNtCs96xUavsWfLi_15icu_locale_core11preferences6locale17LocalePreferencesBF_E3Err0BL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([30 x i8]) align 1 captures(none) dereferenceable(30) initializes((0, 30)) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.a, ptr noundef nonnull align 1 dereferenceable(29) %1, i64 29, i1 false)
  store i8 1, ptr %0, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicodeNtB2_7Unicode9total_cmp(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52) %0, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(52) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.c = load i8, ptr %i.a, align 1, !range !4, !alias.scope !174, !noalias !175, !noundef !5
  %i.d = icmp ne i8 %i.c, -1                      ; 3 uses
  %i.e = zext i1 %i.d to i8
  %i.f = load i8, ptr %i.b, align 1, !range !4, !alias.scope !175, !noalias !174, !noundef !5
  %i.g = icmp eq i8 %i.f, -1                      ; 3 uses
  %not..i = xor i1 %i.g, true                     ; 2 uses
  %.neg.i = sext i1 %not..i to i8
  %i.h = add nsw i8 %.neg.i, %i.e
  %i.i = xor i1 %i.d, %i.g
  br i1 %i.i, label %bb.b, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %i.j = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode9attribute9AttributeNtB5_8SliceOrd7compareBK_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 2)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.l = load i8, ptr %i.k, align 1, !range !4, !alias.scope !174, !noalias !175, !noundef !5 ; 3 uses
  %.not.i = icmp eq i8 %i.l, -1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.n = load i8, ptr %i.m, align 1, !range !4, !alias.scope !175, !noalias !174, !noundef !5 ; 4 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not6.i = icmp eq i8 %i.n, -1
  br i1 %.not6.i, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.not4.i = icmp ne i8 %i.n, -1
  %..i = sext i1 %.not4.i to i8
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.h, label %.loopexit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 38
  %.val15.i.1.i.i.i = load i8, ptr %i.p, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.1.i.i.i = load i8, ptr %i.q, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.r = icmp eq i8 %.val15.i.1.i.i.i, %.val16.i.1.i.i.i
  br i1 %i.r, label %bb.i, label %.loopexit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 39
  %.val15.i.2.i.i.i = load i8, ptr %i.s, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.2.i.i.i = load i8, ptr %i.t, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.u = icmp eq i8 %.val15.i.2.i.i.i, %.val16.i.2.i.i.i
  br i1 %i.u, label %bb.j, label %.loopexit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val15.i.3.i.i.i = load i8, ptr %i.v, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.3.i.i.i = load i8, ptr %i.w, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.x = icmp eq i8 %.val15.i.3.i.i.i, %.val16.i.3.i.i.i
  br i1 %i.x, label %bb.k, label %.loopexit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 41
  %.val15.i.4.i.i.i = load i8, ptr %i.y, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.4.i.i.i = load i8, ptr %i.z, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.aa = icmp eq i8 %.val15.i.4.i.i.i, %.val16.i.4.i.i.i
  br i1 %i.aa, label %bb.l, label %.loopexit.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 42
  %.val15.i.5.i.i.i = load i8, ptr %i.ab, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.5.i.i.i = load i8, ptr %i.ac, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.ad = icmp eq i8 %.val15.i.5.i.i.i, %.val16.i.5.i.i.i
  br i1 %i.ad, label %bb.m, label %.loopexit.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 43
  %.val15.i.6.i.i.i = load i8, ptr %i.ae, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.6.i.i.i = load i8, ptr %i.af, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.ag = icmp eq i8 %.val15.i.6.i.i.i, %.val16.i.6.i.i.i
  br i1 %i.ag, label %bb.n, label %.loopexit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.val15.i.7.i.i.i = load i8, ptr %i.ah, align 1, !range !182, !alias.scope !183, !noalias !184, !noundef !5 ; 2 uses
  %.val16.i.7.i.i.i = load i8, ptr %i.ai, align 1, !range !182, !alias.scope !184, !noalias !183, !noundef !5 ; 2 uses
  %i.aj = icmp eq i8 %.val15.i.7.i.i.i, %.val16.i.7.i.i.i
  br i1 %i.aj, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.val15.i.lcssa.i.i.i = phi i8 [ %i.l, %bb.g ], [ %.val15.i.1.i.i.i, %bb.h ], [ %.val15.i.2.i.i.i, %bb.i ], [ %.val15.i.3.i.i.i, %bb.j ], [ %.val15.i.4.i.i.i, %bb.k ], [ %.val15.i.5.i.i.i, %bb.l ], [ %.val15.i.6.i.i.i, %bb.m ], [ %.val15.i.7.i.i.i, %bb.n ]
  %.val16.i.lcssa.i.i.i = phi i8 [ %i.n, %bb.g ], [ %.val16.i.1.i.i.i, %bb.h ], [ %.val16.i.2.i.i.i, %bb.i ], [ %.val16.i.3.i.i.i, %bb.j ], [ %.val16.i.4.i.i.i, %bb.k ], [ %.val16.i.5.i.i.i, %bb.l ], [ %.val16.i.6.i.i.i, %bb.m ], [ %.val16.i.7.i.i.i, %bb.n ]
  %i.ak = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i, i8 %.val16.i.lcssa.i.i.i)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit: ; preds = %bb.a, %bb.c, %bb.f, %.loopexit.i.i.i.i
  %.sroa.0.0.i = phi i8 [ %i.j, %bb.c ], [ %i.ak, %.loopexit.i.i.i.i ], [ %i.h, %bb.a ], [ %..i, %bb.f ] ; 2 uses
  %i.al = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.al, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread: ; preds = %bb.n, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.am = load i8, ptr %0, align 1, !range !4, !alias.scope !185, !noalias !186, !noundef !5
  %i.an = icmp ne i8 %i.am, -1                    ; 3 uses
  %i.ao = zext i1 %i.an to i8
  %i.ap = load i8, ptr %1, align 1, !range !4, !alias.scope !186, !noalias !185, !noundef !5
  %i.aq = icmp eq i8 %i.ap, -1                    ; 3 uses
  %not..i3 = xor i1 %i.aq, true                   ; 2 uses
  %.neg.i4 = sext i1 %not..i3 to i8
  %i.ar = add nsw i8 %.neg.i4, %i.ao
  %i.as = xor i1 %i.an, %i.aq
  br i1 %i.as, label %bb.o, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.o:                                             ; preds = %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread
  br i1 %i.an, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %not..i3)
  %i.at = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpTNtNtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3key3KeyNtNtBH_5value5ValueENtB5_8SliceOrd7compareBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %0, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(36) %1, i64 noundef 2)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.q:                                             ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.aq)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.av = load i8, ptr %i.au, align 1, !range !4, !alias.scope !185, !noalias !186, !noundef !5 ; 3 uses
  %.not.i6 = icmp eq i8 %i.av, -1
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !range !4, !alias.scope !186, !noalias !185, !noundef !5 ; 4 uses
  br i1 %.not.i6, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not6.i7 = icmp eq i8 %i.ax, -1
  br i1 %.not6.i7, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %.not4.i8 = icmp ne i8 %i.ax, -1
  %..i9 = sext i1 %.not4.i8 to i8
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.t:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.ay = icmp eq i8 %i.av, %i.ax
  br i1 %i.ay, label %bb.u, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.val4.i.i = load i8, ptr %i.az, align 1, !alias.scope !189, !noalias !190 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2
  %.val2.i.i = load i8, ptr %i.ba, align 1, !alias.scope !190, !noalias !189 ; 2 uses
  %i.bb = icmp eq i8 %.val2.i.i, %.val4.i.i
  br i1 %i.bb, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i

_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.u, %bb.t
  %.val15.i.lcssa.i.i.i.i = phi i8 [ %i.av, %bb.t ], [ %.val2.i.i, %bb.u ] ; 2 uses
  %.val16.i.lcssa.i.i.i.i = phi i8 [ %i.ax, %bb.t ], [ %.val4.i.i, %bb.u ] ; 2 uses
  %i.bc = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i.i, i8 %.val16.i.lcssa.i.i.i.i)
  %2 = icmp eq i8 %.val15.i.lcssa.i.i.i.i, %.val16.i.lcssa.i.i.i.i
  br i1 %2, label %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i: ; preds = %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.bf = load i8, ptr %i.bd, align 1, !range !4, !alias.scope !195, !noalias !196, !noundef !5
  %i.bg = icmp ne i8 %i.bf, -1                    ; 3 uses
  %i.bh = zext i1 %i.bg to i8
  %i.bi = load i8, ptr %i.be, align 1, !range !4, !alias.scope !196, !noalias !195, !noundef !5
  %i.bj = icmp eq i8 %i.bi, -1                    ; 3 uses
  %not..i.i.i.i = xor i1 %i.bj, true              ; 2 uses
  %.neg.i.i.i.i = sext i1 %not..i.i.i.i to i8
  %i.bk = add nsw i8 %.neg.i.i.i.i, %i.bh
  %i.bl = xor i1 %i.bg, %i.bj
  br i1 %i.bl, label %bb.v, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.v:                                             ; preds = %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i
  br i1 %i.bg, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %not..i.i.i.i)
  %i.bm = tail call noundef i8 @_RNvXs7_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCs96xUavsWfLi_15icu_locale_core7subtags6SubtagNtB5_8SliceOrd7compareBG_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.bd, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.be, i64 noundef 2)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.x:                                             ; preds = %bb.v
  tail call void @llvm.assume(i1 %i.bj)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !range !4, !alias.scope !195, !noalias !196, !noundef !5 ; 3 uses
  %.not.i.i.i.i = icmp eq i8 %i.bo, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bq = load i8, ptr %i.bp, align 1, !range !4, !alias.scope !196, !noalias !195, !noundef !5 ; 4 uses
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not6.i.i.i.i = icmp eq i8 %i.bq, -1
  br i1 %.not6.i.i.i.i, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %bb.aa

bb.z:                                             ; preds = %bb.x
  %.not4.i.i.i.i = icmp ne i8 %i.bq, -1
  %..i.i.i.i = sext i1 %.not4.i.i.i.i to i8
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

bb.aa:                                            ; preds = %bb.y
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.br = icmp eq i8 %i.bo, %i.bq
  br i1 %i.br, label %bb.ab, label %.loopexit.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 5
  %.val15.i.1.i.i.i.i.i.i = load i8, ptr %i.bs, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.1.i.i.i.i.i.i = load i8, ptr %i.bt, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.bu = icmp eq i8 %.val15.i.1.i.i.i.i.i.i, %.val16.i.1.i.i.i.i.i.i
  br i1 %i.bu, label %bb.ac, label %.loopexit.i.i.i.i.i.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 6
  %.val15.i.2.i.i.i.i.i.i = load i8, ptr %i.bv, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.2.i.i.i.i.i.i = load i8, ptr %i.bw, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.bx = icmp eq i8 %.val15.i.2.i.i.i.i.i.i, %.val16.i.2.i.i.i.i.i.i
  br i1 %i.bx, label %bb.ad, label %.loopexit.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 7
  %.val15.i.3.i.i.i.i.i.i = load i8, ptr %i.by, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.3.i.i.i.i.i.i = load i8, ptr %i.bz, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.ca = icmp eq i8 %.val15.i.3.i.i.i.i.i.i, %.val16.i.3.i.i.i.i.i.i
  br i1 %i.ca, label %bb.ae, label %.loopexit.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15.i.4.i.i.i.i.i.i = load i8, ptr %i.cb, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.4.i.i.i.i.i.i = load i8, ptr %i.cc, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.cd = icmp eq i8 %.val15.i.4.i.i.i.i.i.i, %.val16.i.4.i.i.i.i.i.i
  br i1 %i.cd, label %bb.af, label %.loopexit.i.i.i.i.i.i.i

bb.af:                                            ; preds = %bb.ae
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 9
  %.val15.i.5.i.i.i.i.i.i = load i8, ptr %i.ce, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.5.i.i.i.i.i.i = load i8, ptr %i.cf, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.cg = icmp eq i8 %.val15.i.5.i.i.i.i.i.i, %.val16.i.5.i.i.i.i.i.i
  br i1 %i.cg, label %bb.ag, label %.loopexit.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 10
  %.val15.i.6.i.i.i.i.i.i = load i8, ptr %i.ch, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.6.i.i.i.i.i.i = load i8, ptr %i.ci, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.cj = icmp eq i8 %.val15.i.6.i.i.i.i.i.i, %.val16.i.6.i.i.i.i.i.i
  br i1 %i.cj, label %bb.ah, label %.loopexit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 11
  %.val15.i.7.i.i.i.i.i.i = load i8, ptr %i.ck, align 1, !range !182, !alias.scope !203, !noalias !204, !noundef !5 ; 2 uses
  %.val16.i.7.i.i.i.i.i.i = load i8, ptr %i.cl, align 1, !range !182, !alias.scope !204, !noalias !203, !noundef !5 ; 2 uses
  %i.cm = icmp eq i8 %.val15.i.7.i.i.i.i.i.i, %.val16.i.7.i.i.i.i.i.i
  br i1 %i.cm, label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit, label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.val15.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.bo, %bb.aa ], [ %.val15.i.1.i.i.i.i.i.i, %bb.ab ], [ %.val15.i.2.i.i.i.i.i.i, %bb.ac ], [ %.val15.i.3.i.i.i.i.i.i, %bb.ad ], [ %.val15.i.4.i.i.i.i.i.i, %bb.ae ], [ %.val15.i.5.i.i.i.i.i.i, %bb.af ], [ %.val15.i.6.i.i.i.i.i.i, %bb.ag ], [ %.val15.i.7.i.i.i.i.i.i, %bb.ah ]
  %.val16.i.lcssa.i.i.i.i.i.i = phi i8 [ %i.bq, %bb.aa ], [ %.val16.i.1.i.i.i.i.i.i, %bb.ab ], [ %.val16.i.2.i.i.i.i.i.i, %bb.ac ], [ %.val16.i.3.i.i.i.i.i.i, %bb.ad ], [ %.val16.i.4.i.i.i.i.i.i, %bb.ae ], [ %.val16.i.5.i.i.i.i.i.i, %bb.af ], [ %.val16.i.6.i.i.i.i.i.i, %bb.ag ], [ %.val16.i.7.i.i.i.i.i.i, %bb.ah ]
  %i.cn = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8 %.val15.i.lcssa.i.i.i.i.i.i, i8 %.val16.i.lcssa.i.i.i.i.i.i)
  br label %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit

_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerTNtNtNtNtB7_10extensions7unicode3key3KeyNtNtB1g_5value5ValueEENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit: ; preds = %bb.e, %.loopexit.i.i.i.i.i.i.i, %bb.ah, %bb.z, %bb.y, %bb.w, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i, %bb.s, %bb.r, %bb.p, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.ah ], [ %.sroa.0.0.i, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit ], [ %i.at, %bb.p ], [ 1, %bb.r ], [ %i.ar, %_RNvXsc_NtCs96xUavsWfLi_15icu_locale_core8shortvecINtB5_18ShortBoxSliceInnerNtNtNtNtB7_10extensions7unicode9attribute9AttributeENtNtCshzWfHUSfYae_4core3cmp3Ord3cmpB7_.exit.thread ], [ %..i9, %bb.s ], [ %i.bc, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.i.i ], [ %i.bm, %bb.w ], [ 1, %bb.y ], [ %i.bk, %_RNvXse_NtNtNtCs96xUavsWfLi_15icu_locale_core10extensions7unicode3keyNtB5_3KeyNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp.exit.thread.i.i ], [ %..i.i.i.i, %bb.z ], [ %i.cn, %.loopexit.i.i.i.i.i.i.i ], [ 1, %bb.e ]
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
end_hunk_0
