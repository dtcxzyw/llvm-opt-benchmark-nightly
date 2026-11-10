Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.05?download=true
inline.NumInlined: 190
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1k_4gpos7pairpos11PairPosRuleENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB1k_:bb.a

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #16
          to label %.noexc27.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27.i:                                       ; preds = %bb.ab
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.h, %bb.ab
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  %i.dh = mul nuw nsw i64 %1, 368
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %i.a, i64 %i.dh, i1 false), !alias.scope !540, !noalias !583
  resume { ptr, i32 } %lpad.loopexit.split-lp78

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.05.09.i = phi i64 [ %i.dk, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.g ] ; 3 uses
  %i.di = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %.sroa.05.09.i
  %i.dj = getelementptr inbounds nuw [368 x i8], ptr %i.a, i64 %.sroa.05.09.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(368) %i.dj, ptr noundef nonnull align 8 dereferenceable(368) %i.di, i64 368, i1 false), !alias.scope !540
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1d_4gpos7pairpos11PairPosRuleENvYB18_NtNtBa_3cmp10PartialOrd2ltEB1d_(ptr noundef nonnull align 8 %i.a, ptr noundef %i.dj)
  %i.dk = add nuw nsw i64 %.sroa.05.09.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond.not.i, label %.loopexit4.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1x_4gpos7pairpos11PairPosRuleENvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1x_.exit: ; preds = %bb.a, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1f_20sort_unstable_by_keyTmmENCNCNvB1h_16get_lang_systemss1_00E0EB1j_(ptr noalias nofree noundef nonnull captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [384 x i8], align 8               ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1s_20sort_unstable_by_keyTmmENCNCNvB1u_16get_lang_systemss1_00E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 11 uses
  %i.e = icmp samesign ugt i64 %1, 15
  br i1 %i.e, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %1, 7
  br i1 %i.f, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %1 ; 5 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB19_20sort_unstable_by_keyTmmENCNCNvB1b_16get_lang_systemss1_00E0EB1d_(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.g), !alias.scope !597
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB19_20sort_unstable_by_keyTmmENCNCNvB1b_16get_lang_systemss1_00E0EB1d_(ptr noundef readonly %i.h, ptr noundef %i.i), !alias.scope !597
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1g_20sort_unstable_by_keyTmmENCNCNvB1i_16get_lang_systemss1_00E0EB1k_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noundef nonnull %i.a), !noalias !595
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB19_20sort_unstable_by_keyTmmENCNCNvB1b_16get_lang_systemss1_00E0EB1d_(ptr noundef nonnull readonly %i.j, ptr noundef nonnull %i.l), !alias.scope !597
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB19_20sort_unstable_by_keyTmmENCNCNvB1b_16get_lang_systemss1_00E0EB1d_(ptr noundef readonly %i.m, ptr noundef %i.n), !alias.scope !597
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1g_20sort_unstable_by_keyTmmENCNCNvB1i_16get_lang_systemss1_00E0EB1k_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef 8, ptr noundef nonnull %i.k), !noalias !595
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB19_20sort_unstable_by_keyTmmENCNCNvB1b_16get_lang_systemss1_00E0EB1d_(ptr noundef nonnull %0, ptr noundef nonnull %i.a), !alias.scope !597
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB19_20sort_unstable_by_keyTmmENCNCNvB1b_16get_lang_systemss1_00E0EB1d_(ptr noundef %i.o, ptr noundef %i.p), !alias.scope !597
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.q = load i64, ptr %0, align 1, !alias.scope !595
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !596
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d
  %i.t = load i64, ptr %i.r, align 1, !alias.scope !595
  store i64 %i.t, ptr %i.s, align 8, !alias.scope !596
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i = phi i64 [ 8, %bb.f ], [ 4, %bb.g ], [ 1, %bb.h ] ; 4 uses
  %i.u = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.v = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.v, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.i, %bb.i
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.d ; 10 uses
  %i.y = icmp samesign ult i64 %.sroa.0.0.i, %i.u
  br i1 %i.y, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.1.i
  %.sroa.05.019.1.i = phi i64 [ %i.bq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 4 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.05.019.1.i
  %.idx63 = shl nuw nsw i64 %.sroa.05.019.1.i, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx63 ; 4 uses
  %i.ab = load i64, ptr %i.z, align 1, !alias.scope !595
  %.sroa.06.0.copyload.i.fr.1.i = freeze i64 %i.ab ; 4 uses
  store i64 %.sroa.06.0.copyload.i.fr.1.i, ptr %i.aa, align 8, !alias.scope !596
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -8 ; 5 uses
  %i.ad = trunc i64 %.sroa.06.0.copyload.i.fr.1.i to i32 ; 4 uses
  %i.ae = lshr i64 %.sroa.06.0.copyload.i.fr.1.i, 32
  %i.af = trunc nuw i64 %i.ae to i32              ; 6 uses
  %.val15.i.1.i = load i32, ptr %i.ac, align 8, !alias.scope !596 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.aa, i64 -4
  %.val16.i.1.i = load i32, ptr %i.ag, align 4, !alias.scope !596 ; 2 uses
  switch i32 %i.ad, label %bb.k [
    i32 1414284868, label %bb.l
    i32 1953261156, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.1.i
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.1.i
  %i.ah = call i32 @llvm.bswap.i32(i32 %i.ad)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.lr.ph.1.i
  %.sroa.0.0.i.i.i.1.i = phi i32 [ %i.ah, %bb.k ], [ 1, %bb.j ], [ 0, %.lr.ph.1.i ] ; 2 uses
  switch i32 %i.af, label %bb.n [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i
    i32 1953261156, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i

bb.n:                                             ; preds = %bb.l
  %i.ai = call i32 @llvm.bswap.i32(i32 %i.af)
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i: ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.01.0.i.i.i.1.i = phi i32 [ %i.ai, %bb.n ], [ 1, %bb.m ], [ 0, %bb.l ]
  switch i32 %.val15.i.1.i, label %bb.p [
    i32 1414284868, label %bb.q
    i32 1953261156, label %bb.o
  ]

bb.o:                                             ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i
  br label %bb.q

bb.p:                                             ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i
  %i.aj = call i32 @llvm.bswap.i32(i32 %.val15.i.1.i)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i
  %.sroa.0.0.i8.i.i.1.i = phi i32 [ %i.aj, %bb.p ], [ 1, %bb.o ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.1.i ] ; 2 uses
  switch i32 %.val16.i.1.i, label %bb.s [
    i32 1414284868, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.1.i
    i32 1953261156, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  br label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.1.i

bb.s:                                             ; preds = %bb.q
  %i.ak = call i32 @llvm.bswap.i32(i32 %.val16.i.1.i)
  br label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.1.i

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.1.i: ; preds = %bb.s, %bb.r, %bb.q
  %.sroa.01.0.i9.i.i.1.i = phi i32 [ %i.ak, %bb.s ], [ 1, %bb.r ], [ 0, %bb.q ]
  %i.al = icmp eq i32 %.sroa.0.0.i.i.i.1.i, %.sroa.0.0.i8.i.i.1.i
  %i.am = icmp ult i32 %.sroa.0.0.i.i.i.1.i, %.sroa.0.0.i8.i.i.1.i
  %i.an = icmp ult i32 %.sroa.01.0.i.i.i.1.i, %.sroa.01.0.i9.i.i.1.i
  %.sroa.0.0.i11.i.i.1.i = select i1 %i.al, i1 %i.an, i1 %i.am
  br i1 %.sroa.0.0.i11.i.i.1.i, label %bb.t, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.1.i

bb.t:                                             ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.1.i
  %i.ao = call i32 @llvm.bswap.i32(i32 %i.ad)     ; 2 uses
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.af)     ; 3 uses
  %i.aq = load i64, ptr %i.ac, align 8, !alias.scope !596
  store i64 %i.aq, ptr %i.aa, align 8, !alias.scope !596
  %i.ar = icmp eq i64 %.sroa.05.019.1.i, 1        ; 3 uses
  switch i32 %i.ad, label %.split.1.i.preheader [
    i32 1414284868, label %.split.us.1.i.preheader
    i32 1953261156, label %.split.us6.1.i.preheader
  ]

.split.us6.1.i.preheader:                         ; preds = %bb.t
  br i1 %i.ar, label %.split5.us.1.i, label %.lr.ph52

.split.us.1.i.preheader:                          ; preds = %bb.t
  br i1 %i.ar, label %.split5.us.1.i, label %.lr.ph56

.split.1.i.preheader:                             ; preds = %bb.t
  br i1 %i.ar, label %.split5.us.1.i, label %.lr.ph60

.split.us6.1.i:                                   ; preds = %bb.ab
  %i.as = load i64, ptr %i.au, align 1, !alias.scope !596
  store i64 %i.as, ptr %.sroa.0.0.i26.us8.1.i51, align 1, !alias.scope !596
  %i.at = icmp eq ptr %i.au, %i.x
  br i1 %i.at, label %.split5.us.1.i, label %.lr.ph52

.lr.ph52:                                         ; preds = %.split.us6.1.i.preheader, %.split.us6.1.i
  %.sroa.0.0.i26.us8.1.i51 = phi ptr [ %i.au, %.split.us6.1.i ], [ %i.ac, %.split.us6.1.i.preheader ] ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.i26.us8.1.i51, i64 -8 ; 4 uses
  %.val11.i.us9.1.i = load i32, ptr %i.au, align 1, !alias.scope !596 ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.0.0.i26.us8.1.i51, i64 -4
  %.val12.i.us10.1.i = load i32, ptr %i.av, align 1, !alias.scope !596 ; 2 uses
  switch i32 %i.af, label %bb.v [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i
    i32 1953261156, label %bb.u
  ]

bb.u:                                             ; preds = %.lr.ph52
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i

bb.v:                                             ; preds = %.lr.ph52
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i: ; preds = %bb.v, %bb.u, %.lr.ph52
  %.sroa.01.0.i.i19.i.us13.1.i = phi i32 [ %i.ap, %bb.v ], [ 1, %bb.u ], [ 0, %.lr.ph52 ]
  switch i32 %.val11.i.us9.1.i, label %bb.x [
    i32 1414284868, label %bb.y
    i32 1953261156, label %bb.w
  ]

bb.w:                                             ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i
  br label %bb.y

bb.x:                                             ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i
  %i.aw = call i32 @llvm.bswap.i32(i32 %.val11.i.us9.1.i)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i
  %.sroa.0.0.i8.i20.i.us14.1.i = phi i32 [ %i.aw, %bb.x ], [ 1, %bb.w ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.1.i ] ; 2 uses
  switch i32 %.val12.i.us10.1.i, label %bb.aa [
    i32 1414284868, label %bb.ab
    i32 1953261156, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.ax = call i32 @llvm.bswap.i32(i32 %.val12.i.us10.1.i)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %.sroa.01.0.i9.i21.i.us15.1.i = phi i32 [ %i.ax, %bb.aa ], [ 1, %bb.z ], [ 0, %bb.y ]
  %i.ay = icmp eq i32 %.sroa.0.0.i8.i20.i.us14.1.i, 1
  %i.az = icmp ugt i32 %.sroa.0.0.i8.i20.i.us14.1.i, 1
  %i.ba = icmp ult i32 %.sroa.01.0.i.i19.i.us13.1.i, %.sroa.01.0.i9.i21.i.us15.1.i
  %.sroa.0.0.i11.i22.i.us16.1.i = select i1 %i.ay, i1 %i.ba, i1 %i.az
  br i1 %.sroa.0.0.i11.i22.i.us16.1.i, label %.split.us6.1.i, label %.split5.us.1.i

.split.us.1.i:                                    ; preds = %bb.ag
  %i.bb = load i64, ptr %i.bd, align 1, !alias.scope !596
  store i64 %i.bb, ptr %.sroa.0.0.i26.us.1.i55, align 1, !alias.scope !596
  %i.bc = icmp eq ptr %i.bd, %i.x
  br i1 %i.bc, label %.split5.us.1.i, label %.lr.ph56

.lr.ph56:                                         ; preds = %.split.us.1.i.preheader, %.split.us.1.i
  %.sroa.0.0.i26.us.1.i55 = phi ptr [ %i.bd, %.split.us.1.i ], [ %i.ac, %.split.us.1.i.preheader ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %.sroa.0.0.i26.us.1.i55, i64 -8 ; 4 uses
  %.val11.i.us.1.i = load i32, ptr %i.bd, align 1, !alias.scope !596 ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.0.0.i26.us.1.i55, i64 -4
  %.val12.i.us.1.i = load i32, ptr %i.be, align 1, !alias.scope !596 ; 2 uses
  switch i32 %i.af, label %bb.ad [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i
    i32 1953261156, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph56
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i

bb.ad:                                            ; preds = %.lr.ph56
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i: ; preds = %bb.ad, %bb.ac, %.lr.ph56
  %.sroa.01.0.i.i19.i.us.1.i = phi i32 [ %i.ap, %bb.ad ], [ 1, %bb.ac ], [ 0, %.lr.ph56 ]
  %switch.selectcmp.case1.i = icmp ne i32 %.val11.i.us.1.i, 1414284868
  %switch.selectcmp.case2.i = icmp ne i32 %.val11.i.us.1.i, 0
  %switch.selectcmp.not.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  switch i32 %.val12.i.us.1.i, label %bb.af [
    i32 1414284868, label %bb.ag
    i32 1953261156, label %bb.ae
  ]

bb.ae:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i
  br label %bb.ag

bb.af:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i
  %i.bf = call i32 @llvm.bswap.i32(i32 %.val12.i.us.1.i)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i
  %.sroa.01.0.i9.i21.i.us.1.i = phi i32 [ %i.bf, %bb.af ], [ 1, %bb.ae ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.1.i ]
  %i.bg = icmp ult i32 %.sroa.01.0.i.i19.i.us.1.i, %.sroa.01.0.i9.i21.i.us.1.i
  %.sroa.0.0.i11.i22.i.us.1.i = select i1 %switch.selectcmp.not.i, i1 true, i1 %i.bg
  br i1 %.sroa.0.0.i11.i22.i.us.1.i, label %.split.us.1.i, label %.split5.us.1.i

.split.1.i:                                       ; preds = %bb.ao
  %i.bh = load i64, ptr %i.bj, align 1, !alias.scope !596
  store i64 %i.bh, ptr %.sroa.0.0.i26.1.i59, align 1, !alias.scope !596
  %i.bi = icmp eq ptr %i.bj, %i.x
  br i1 %i.bi, label %.split5.us.1.i, label %.lr.ph60

.lr.ph60:                                         ; preds = %.split.1.i.preheader, %.split.1.i
  %.sroa.0.0.i26.1.i59 = phi ptr [ %i.bj, %.split.1.i ], [ %i.ac, %.split.1.i.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0.i26.1.i59, i64 -8 ; 4 uses
  %.val11.i.1.i = load i32, ptr %i.bj, align 1, !alias.scope !596 ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.0.0.i26.1.i59, i64 -4
  %.val12.i.1.i = load i32, ptr %i.bk, align 1, !alias.scope !596 ; 2 uses
  switch i32 %i.af, label %bb.ai [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i
    i32 1953261156, label %bb.ah
  ]

bb.ah:                                            ; preds = %.lr.ph60
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i

bb.ai:                                            ; preds = %.lr.ph60
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i: ; preds = %bb.ai, %bb.ah, %.lr.ph60
  %.sroa.01.0.i.i19.i.1.i = phi i32 [ %i.ap, %bb.ai ], [ 1, %bb.ah ], [ 0, %.lr.ph60 ]
  switch i32 %.val11.i.1.i, label %bb.ak [
    i32 1414284868, label %bb.al
    i32 1953261156, label %bb.aj
  ]

bb.aj:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i
  br label %bb.al

bb.ak:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i
  %i.bl = call i32 @llvm.bswap.i32(i32 %.val11.i.1.i)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i
  %.sroa.0.0.i8.i20.i.1.i = phi i32 [ %i.bl, %bb.ak ], [ 1, %bb.aj ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.1.i ] ; 2 uses
  switch i32 %.val12.i.1.i, label %bb.an [
    i32 1414284868, label %bb.ao
    i32 1953261156, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.bm = call i32 @llvm.bswap.i32(i32 %.val12.i.1.i)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.sroa.01.0.i9.i21.i.1.i = phi i32 [ %i.bm, %bb.an ], [ 1, %bb.am ], [ 0, %bb.al ]
  %i.bn = icmp eq i32 %i.ao, %.sroa.0.0.i8.i20.i.1.i
  %i.bo = icmp ult i32 %i.ao, %.sroa.0.0.i8.i20.i.1.i
  %i.bp = icmp ult i32 %.sroa.01.0.i.i19.i.1.i, %.sroa.01.0.i9.i21.i.1.i
  %.sroa.0.0.i11.i22.i.1.i = select i1 %i.bn, i1 %i.bp, i1 %i.bo
  br i1 %.sroa.0.0.i11.i22.i.1.i, label %.split.1.i, label %.split5.us.1.i

.split5.us.1.i:                                   ; preds = %.split.us6.1.i, %bb.ab, %.split.us.1.i, %bb.ag, %.split.1.i, %bb.ao, %.split.us6.1.i.preheader, %.split.us.1.i.preheader, %.split.1.i.preheader
  %.us-phi.1.i = phi ptr [ %i.x, %.split.us.1.i.preheader ], [ %i.x, %.split.us6.1.i.preheader ], [ %.sroa.0.0.i26.1.i59, %bb.ao ], [ %i.x, %.split.1.i.preheader ], [ %.sroa.0.0.i26.us.1.i55, %bb.ag ], [ %i.x, %.split.1.i ], [ %i.x, %.split.us.1.i ], [ %.sroa.0.0.i26.us8.1.i51, %bb.ab ], [ %i.x, %.split.us6.1.i ]
  store i64 %.sroa.06.0.copyload.i.fr.1.i, ptr %.us-phi.1.i, align 1, !alias.scope !596, !noalias !598
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.1.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.1.i: ; preds = %.split5.us.1.i, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.1.i
  %i.bq = add nuw nsw i64 %.sroa.05.019.1.i, 1    ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.bq, %i.u
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.1.i, %.loopexit.i
  invoke fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1g_20sort_unstable_by_keyTmmENCNCNvB1i_16get_lang_systemss1_00E0EB1k_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noundef nonnull %0)
          to label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1s_20sort_unstable_by_keyTmmENCNCNvB1u_16get_lang_systemss1_00E0EB1w_.exit unwind label %bb.ap

bb.ap:                                            ; preds = %.loopexit.1.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = shl nuw nsw i64 %1, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 8 %i.a, i64 %i.bs, i1 false), !alias.scope !597, !noalias !599
  resume { ptr, i32 } %i.br

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.i
  %.sroa.05.019.i = phi i64 [ %i.dk, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.i ], [ %.sroa.0.0.i, %bb.i ] ; 4 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.05.019.i
  %.idx = shl nuw nsw i64 %.sroa.05.019.i, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 4 uses
  %i.bv = load i64, ptr %i.bt, align 1, !alias.scope !595
  %.sroa.06.0.copyload.i.fr.i = freeze i64 %i.bv  ; 4 uses
  store i64 %.sroa.06.0.copyload.i.fr.i, ptr %i.bu, align 8, !alias.scope !596
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -8 ; 5 uses
  %i.bx = trunc i64 %.sroa.06.0.copyload.i.fr.i to i32 ; 4 uses
  %i.by = lshr i64 %.sroa.06.0.copyload.i.fr.i, 32
  %i.bz = trunc nuw i64 %i.by to i32              ; 6 uses
  %.val15.i.i = load i32, ptr %i.bw, align 8, !alias.scope !596 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bu, i64 -4
  %.val16.i.i = load i32, ptr %i.ca, align 4, !alias.scope !596 ; 2 uses
  switch i32 %i.bx, label %bb.as [
    i32 1414284868, label %bb.aq
    i32 1953261156, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.as, %bb.ar, %.lr.ph.i
  %.sroa.0.0.i.i.i.i = phi i32 [ %i.cb, %bb.as ], [ 1, %bb.ar ], [ 0, %.lr.ph.i ] ; 2 uses
  switch i32 %i.bz, label %bb.au [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i
    i32 1953261156, label %bb.at
  ]

bb.ar:                                            ; preds = %.lr.ph.i
  br label %bb.aq

bb.as:                                            ; preds = %.lr.ph.i
  %i.cb = call i32 @llvm.bswap.i32(i32 %i.bx)
  br label %bb.aq

bb.at:                                            ; preds = %bb.aq
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i

bb.au:                                            ; preds = %bb.aq
  %i.cc = call i32 @llvm.bswap.i32(i32 %i.bz)
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i: ; preds = %bb.au, %bb.at, %bb.aq
  %.sroa.01.0.i.i.i.i = phi i32 [ %i.cc, %bb.au ], [ 1, %bb.at ], [ 0, %bb.aq ]
  switch i32 %.val15.i.i, label %bb.ax [
    i32 1414284868, label %bb.av
    i32 1953261156, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.ax, %bb.aw, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i
  %.sroa.0.0.i8.i.i.i = phi i32 [ %i.cd, %bb.ax ], [ 1, %bb.aw ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i ] ; 2 uses
  switch i32 %.val16.i.i, label %bb.az [
    i32 1414284868, label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.i
    i32 1953261156, label %bb.ay
  ]

bb.aw:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i
  br label %bb.av

bb.ax:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i.i.i
  %i.cd = call i32 @llvm.bswap.i32(i32 %.val15.i.i)
  br label %bb.av

bb.ay:                                            ; preds = %bb.av
  br label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.i

bb.az:                                            ; preds = %bb.av
  %i.ce = call i32 @llvm.bswap.i32(i32 %.val16.i.i)
  br label %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.i

_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.i: ; preds = %bb.az, %bb.ay, %bb.av
  %.sroa.01.0.i9.i.i.i = phi i32 [ %i.ce, %bb.az ], [ 1, %bb.ay ], [ 0, %bb.av ]
  %i.cf = icmp eq i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i8.i.i.i
  %i.cg = icmp ult i32 %.sroa.0.0.i.i.i.i, %.sroa.0.0.i8.i.i.i
  %i.ch = icmp ult i32 %.sroa.01.0.i.i.i.i, %.sroa.01.0.i9.i.i.i
  %.sroa.0.0.i11.i.i.i = select i1 %i.cf, i1 %i.ch, i1 %i.cg
  br i1 %.sroa.0.0.i11.i.i.i, label %bb.ba, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.i

bb.ba:                                            ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.i
  %i.ci = call i32 @llvm.bswap.i32(i32 %i.bx)     ; 2 uses
  %i.cj = call i32 @llvm.bswap.i32(i32 %i.bz)     ; 3 uses
  %i.ck = load i64, ptr %i.bw, align 8, !alias.scope !596
  store i64 %i.ck, ptr %i.bu, align 8, !alias.scope !596
  %i.cl = icmp eq i64 %.sroa.05.019.i, 1          ; 3 uses
  switch i32 %i.bx, label %.split.i.preheader [
    i32 1414284868, label %.split.us.i.preheader
    i32 1953261156, label %.split.us6.i.preheader
  ]

.split.us6.i.preheader:                           ; preds = %bb.ba
  br i1 %i.cl, label %.split5.us.i, label %.lr.ph

.split.us.i.preheader:                            ; preds = %bb.ba
  br i1 %i.cl, label %.split5.us.i, label %.lr.ph44

.split.i.preheader:                               ; preds = %bb.ba
  br i1 %i.cl, label %.split5.us.i, label %.lr.ph48

.split.us.i:                                      ; preds = %bb.bf
  %i.cm = load i64, ptr %i.co, align 1, !alias.scope !596
  store i64 %i.cm, ptr %.sroa.0.0.i26.us.i43, align 1, !alias.scope !596
  %i.cn = icmp eq ptr %i.co, %i.a
  br i1 %i.cn, label %.split5.us.i, label %.lr.ph44

.lr.ph44:                                         ; preds = %.split.us.i.preheader, %.split.us.i
  %.sroa.0.0.i26.us.i43 = phi ptr [ %i.co, %.split.us.i ], [ %i.bw, %.split.us.i.preheader ] ; 4 uses
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i26.us.i43, i64 -8 ; 4 uses
  %.val11.i.us.i = load i32, ptr %i.co, align 1, !alias.scope !596 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0.0.i26.us.i43, i64 -4
  %.val12.i.us.i = load i32, ptr %i.cp, align 1, !alias.scope !596 ; 2 uses
  switch i32 %i.bz, label %bb.bc [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i
    i32 1953261156, label %bb.bb
  ]

bb.bb:                                            ; preds = %.lr.ph44
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i

bb.bc:                                            ; preds = %.lr.ph44
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i: ; preds = %bb.bc, %bb.bb, %.lr.ph44
  %.sroa.01.0.i.i19.i.us.i = phi i32 [ %i.cj, %bb.bc ], [ 1, %bb.bb ], [ 0, %.lr.ph44 ]
  %switch.selectcmp.case140.i = icmp ne i32 %.val11.i.us.i, 1414284868
  %switch.selectcmp.case241.i = icmp ne i32 %.val11.i.us.i, 0
  %switch.selectcmp42.not.i = and i1 %switch.selectcmp.case140.i, %switch.selectcmp.case241.i
  switch i32 %.val12.i.us.i, label %bb.be [
    i32 1414284868, label %bb.bf
    i32 1953261156, label %bb.bd
  ]

bb.bd:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i
  br label %bb.bf

bb.be:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i
  %i.cq = call i32 @llvm.bswap.i32(i32 %.val12.i.us.i)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i
  %.sroa.01.0.i9.i21.i.us.i = phi i32 [ %i.cq, %bb.be ], [ 1, %bb.bd ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us.i ]
  %i.cr = icmp ult i32 %.sroa.01.0.i.i19.i.us.i, %.sroa.01.0.i9.i21.i.us.i
  %.sroa.0.0.i11.i22.i.us.i = select i1 %switch.selectcmp42.not.i, i1 true, i1 %i.cr
  br i1 %.sroa.0.0.i11.i22.i.us.i, label %.split.us.i, label %.split5.us.i

.split.us6.i:                                     ; preds = %bb.bn
  %i.cs = load i64, ptr %i.cu, align 1, !alias.scope !596
  store i64 %i.cs, ptr %.sroa.0.0.i26.us8.i41, align 1, !alias.scope !596
  %i.ct = icmp eq ptr %i.cu, %i.a
  br i1 %i.ct, label %.split5.us.i, label %.lr.ph

.lr.ph:                                           ; preds = %.split.us6.i.preheader, %.split.us6.i
  %.sroa.0.0.i26.us8.i41 = phi ptr [ %i.cu, %.split.us6.i ], [ %i.bw, %.split.us6.i.preheader ] ; 4 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.0.i26.us8.i41, i64 -8 ; 4 uses
  %.val11.i.us9.i = load i32, ptr %i.cu, align 1, !alias.scope !596 ; 2 uses
  %i.cv = getelementptr i8, ptr %.sroa.0.0.i26.us8.i41, i64 -4
  %.val12.i.us10.i = load i32, ptr %i.cv, align 1, !alias.scope !596 ; 2 uses
  switch i32 %i.bz, label %bb.bh [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i
    i32 1953261156, label %bb.bg
  ]

bb.bg:                                            ; preds = %.lr.ph
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i

bb.bh:                                            ; preds = %.lr.ph
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i: ; preds = %bb.bh, %bb.bg, %.lr.ph
  %.sroa.01.0.i.i19.i.us13.i = phi i32 [ %i.cj, %bb.bh ], [ 1, %bb.bg ], [ 0, %.lr.ph ]
  switch i32 %.val11.i.us9.i, label %bb.bj [
    i32 1414284868, label %bb.bk
    i32 1953261156, label %bb.bi
  ]

bb.bi:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i
  br label %bb.bk

bb.bj:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i
  %i.cw = call i32 @llvm.bswap.i32(i32 %.val11.i.us9.i)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i
  %.sroa.0.0.i8.i20.i.us14.i = phi i32 [ %i.cw, %bb.bj ], [ 1, %bb.bi ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.us12.i ] ; 2 uses
  switch i32 %.val12.i.us10.i, label %bb.bm [
    i32 1414284868, label %bb.bn
    i32 1953261156, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.cx = call i32 @llvm.bswap.i32(i32 %.val12.i.us10.i)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk
  %.sroa.01.0.i9.i21.i.us15.i = phi i32 [ %i.cx, %bb.bm ], [ 1, %bb.bl ], [ 0, %bb.bk ]
  %i.cy = icmp eq i32 %.sroa.0.0.i8.i20.i.us14.i, 1
  %i.cz = icmp ugt i32 %.sroa.0.0.i8.i20.i.us14.i, 1
  %i.da = icmp ult i32 %.sroa.01.0.i.i19.i.us13.i, %.sroa.01.0.i9.i21.i.us15.i
  %.sroa.0.0.i11.i22.i.us16.i = select i1 %i.cy, i1 %i.da, i1 %i.cz
  br i1 %.sroa.0.0.i11.i22.i.us16.i, label %.split.us6.i, label %.split5.us.i

.split.i:                                         ; preds = %bb.bv
  %i.db = load i64, ptr %i.dd, align 1, !alias.scope !596
  store i64 %i.db, ptr %.sroa.0.0.i26.i47, align 1, !alias.scope !596
  %i.dc = icmp eq ptr %i.dd, %i.a
  br i1 %i.dc, label %.split5.us.i, label %.lr.ph48

.lr.ph48:                                         ; preds = %.split.i.preheader, %.split.i
  %.sroa.0.0.i26.i47 = phi ptr [ %i.dd, %.split.i ], [ %i.bw, %.split.i.preheader ] ; 4 uses
  %i.dd = getelementptr inbounds i8, ptr %.sroa.0.0.i26.i47, i64 -8 ; 4 uses
  %.val11.i.i = load i32, ptr %i.dd, align 1, !alias.scope !596 ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.0.0.i26.i47, i64 -4
  %.val12.i.i = load i32, ptr %i.de, align 1, !alias.scope !596 ; 2 uses
  switch i32 %i.bz, label %bb.bp [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i
    i32 1953261156, label %bb.bo
  ]

bb.bo:                                            ; preds = %.lr.ph48
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i

bb.bp:                                            ; preds = %.lr.ph48
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i: ; preds = %bb.bp, %bb.bo, %.lr.ph48
  %.sroa.01.0.i.i19.i.i = phi i32 [ %i.cj, %bb.bp ], [ 1, %bb.bo ], [ 0, %.lr.ph48 ]
  switch i32 %.val11.i.i, label %bb.bs [
    i32 1414284868, label %bb.bq
    i32 1953261156, label %bb.br
  ]

bb.bq:                                            ; preds = %bb.bs, %bb.br, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i
  %.sroa.0.0.i8.i20.i.i = phi i32 [ %i.df, %bb.bs ], [ 1, %bb.br ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i ] ; 2 uses
  switch i32 %.val12.i.i, label %bb.bu [
    i32 1414284868, label %bb.bv
    i32 1953261156, label %bb.bt
  ]

bb.br:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i
  br label %bb.bq

bb.bs:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i.i
  %i.df = call i32 @llvm.bswap.i32(i32 %.val11.i.i)
  br label %bb.bq

bb.bt:                                            ; preds = %bb.bq
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.dg = call i32 @llvm.bswap.i32(i32 %.val12.i.i)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %bb.bq
  %.sroa.01.0.i9.i21.i.i = phi i32 [ %i.dg, %bb.bu ], [ 1, %bb.bt ], [ 0, %bb.bq ]
  %i.dh = icmp eq i32 %i.ci, %.sroa.0.0.i8.i20.i.i
  %i.di = icmp ult i32 %i.ci, %.sroa.0.0.i8.i20.i.i
  %i.dj = icmp ult i32 %.sroa.01.0.i.i19.i.i, %.sroa.01.0.i9.i21.i.i
  %.sroa.0.0.i11.i22.i.i = select i1 %i.dh, i1 %i.dj, i1 %i.di
  br i1 %.sroa.0.0.i11.i22.i.i, label %.split.i, label %.split5.us.i

.split5.us.i:                                     ; preds = %.split.us6.i, %bb.bn, %.split.us.i, %bb.bf, %.split.i, %bb.bv, %.split.us6.i.preheader, %.split.us.i.preheader, %.split.i.preheader
  %.us-phi.i = phi ptr [ %i.a, %.split.us6.i.preheader ], [ %i.a, %.split.us.i.preheader ], [ %i.a, %.split.i.preheader ], [ %.sroa.0.0.i26.i47, %bb.bv ], [ %.sroa.0.0.i26.us.i43, %bb.bf ], [ %i.a, %.split.i ], [ %i.a, %.split.us.i ], [ %.sroa.0.0.i26.us8.i41, %bb.bn ], [ %i.a, %.split.us6.i ]
  store i64 %.sroa.06.0.copyload.i.fr.i, ptr %.us-phi.i, align 1, !alias.scope !596, !noalias !598
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit.i: ; preds = %.split5.us.i, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i.i
  %i.dk = add nuw nsw i64 %.sroa.05.019.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dk, %i.d
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1s_20sort_unstable_by_keyTmmENCNCNvB1u_16get_lang_systemss1_00E0EB1w_.exit: ; preds = %bb.a, %.loopexit.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort18small_sort_generalNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB1f_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1h_16get_lang_systemss2_0E0EB1j_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2688 x i8], align 8              ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  %i.b = icmp samesign ult i64 %1, 2
  br i1 %i.b, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB1s_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1u_16get_lang_systemss2_0E0EB1w_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %1, 32
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 6 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.d ; 3 uses
  %i.g = getelementptr [56 x i8], ptr %i.a, i64 %i.d ; 6 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB19_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1b_16get_lang_systemss2_0E0EB1d_(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.a)
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB19_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1b_16get_lang_systemss2_0E0EB1d_(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false), !alias.scope !647
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !alias.scope !647
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.d
  br i1 %i.i, label %.lr.ph.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.g
  %i.j = icmp samesign ult i64 %.sroa.0.0.i, %i.h
  br i1 %i.j, label %.lr.ph.1.i, label %.loopexit.1.i

.lr.ph.1.i:                                       ; preds = %.loopexit.i, %.lr.ph.1.i
  %.sroa.05.08.1.i = phi i64 [ %i.m, %.lr.ph.1.i ], [ %.sroa.0.0.i, %.loopexit.i ] ; 3 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.f, i64 %.sroa.05.08.1.i
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.05.08.1.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.k, i64 56, i1 false), !alias.scope !647
  call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB18_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1a_16get_lang_systemss2_0E0EB1c_(ptr noundef %i.g, ptr noundef %i.l), !noalias !645
  %i.m = add nuw nsw i64 %.sroa.05.08.1.i, 1      ; 2 uses
  %exitcond.1.not.i = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.1.not.i, label %.loopexit.1.i, label %.lr.ph.1.i

.loopexit.1.i:                                    ; preds = %.lr.ph.1.i, %.loopexit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !648)
  %i.n = add nsw i64 %1, -1                       ; 2 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.a, i64 %i.n
  %i.q = getelementptr i8, ptr %i.g, i64 -56
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i
  %i.r = getelementptr i8, ptr %i.cb, i64 56      ; 2 uses
  %i.s = getelementptr i8, ptr %i.ca, i64 56
  %i.t = and i64 %1, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.ay, label %bb.ax

.lr.ph.i.i:                                       ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i, %.loopexit.1.i
  %.sroa.0.010.i.i = phi ptr [ %i.ax, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ %0, %.loopexit.1.i ] ; 2 uses
  %.sroa.04.09.i.i = phi i64 [ %i.v, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ 0, %.loopexit.1.i ]
  %.sroa.06.08.i.i = phi ptr [ %.sroa.sel4.idx.sroa.sel.idx.sroa.sel, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ %i.a, %.loopexit.1.i ] ; 5 uses
  %.sroa.011.07.i.i = phi ptr [ %.sroa.sel.idx.sroa.sel.idx.sroa.sel, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ %i.g, %.loopexit.1.i ] ; 5 uses
  %.sroa.015.06.i.i = phi ptr [ %i.cb, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ %i.q, %.loopexit.1.i ] ; 5 uses
  %.sroa.017.05.i.i = phi ptr [ %i.ca, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ %i.p, %.loopexit.1.i ] ; 5 uses
  %.sroa.019.04.i.i = phi ptr [ %i.cc, %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common7Feature20sort_unstable_by_keyTmINtNtB7_6option6OptionTmmEEENCNvBz_16get_lang_systemss2_0E0BB_.exit46.i.i ], [ %i.o, %.loopexit.1.i ] ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.04.09.i.i, 1      ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !649)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !652)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 48
  %.sroa.07.0.copyload.i.i.i.i.i = load i32, ptr %i.w, align 8, !alias.scope !653 ; 2 uses
  switch i32 %.sroa.07.0.copyload.i.i.i.i.i, label %bb.j [
    i32 1414284868, label %bb.h
    i32 1953261156, label %bb.i
  ]

bb.h:                                             ; preds = %bb.j, %bb.i, %.lr.ph.i.i
  %.sroa.0.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.j ], [ 1, %bb.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !653, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.07.i.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !653, !noundef !5
  %.not.i.i.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i.i.i, label %_RNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss2_0B5_.exit.i.i.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i
  br label %bb.h

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.ab = call i32 @llvm.bswap.i32(i32 %.sroa.07.0.copyload.i.i.i.i.i)
  br label %bb.h

bb.k:                                             ; preds = %bb.h
  %.sroa.05.0.copyload.i.i.i.i.i = load i32, ptr %i.y, align 1, !noalias !654 ; 2 uses
  switch i32 %.sroa.05.0.copyload.i.i.i.i.i, label %bb.n [
    i32 1414284868, label %bb.l
    i32 1953261156, label %bb.m
  ]

bb.l:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.03.0.i.i.i.i.i = phi i32 [ %i.ad, %bb.n ], [ 1, %bb.m ], [ 0, %bb.k ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %.sroa.06.0.copyload.i.i.i.i.i = load i32, ptr %i.ac, align 1, !noalias !654 ; 2 uses
  switch i32 %.sroa.06.0.copyload.i.i.i.i.i, label %bb.p [
    i32 1414284868, label %_RNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss2_0B5_.exit.i.i.i
    i32 1953261156, label %bb.o
  ]

bb.m:                                             ; preds = %bb.k
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.ad = call i32 @llvm.bswap.i32(i32 %.sroa.05.0.copyload.i.i.i.i.i)
  br label %bb.l

bb.o:                                             ; preds = %bb.l
  br label %_RNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss2_0B5_.exit.i.i.i

bb.p:                                             ; preds = %bb.l
  %i.ae = call i32 @llvm.bswap.i32(i32 %.sroa.06.0.copyload.i.i.i.i.i)
  br label %_RNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss2_0B5_.exit.i.i.i

_RNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss2_0B5_.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.l, %bb.h
  %.sroa.6.0.i.i.i.i.i = phi i32 [ undef, %bb.h ], [ %i.ae, %bb.p ], [ 1, %bb.o ], [ 0, %bb.l ]
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB1m_20sort_unstable_by_keyTmmENCNCNvB1o_16get_lang_systemss1_00E0EB1q_:bb.a

bb.z:                                             ; preds = %bb.x
  %i.ac = tail call i32 @llvm.bswap.i32(i32 %.val12.i.us10)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.sroa.01.0.i9.i21.i.us15 = phi i32 [ %i.ac, %bb.z ], [ 1, %bb.y ], [ 0, %bb.x ]
  %i.ad = icmp eq i32 %.sroa.0.0.i8.i20.i.us14, 1
  %i.ae = icmp ugt i32 %.sroa.0.0.i8.i20.i.us14, 1
  %i.af = icmp ult i32 %.sroa.01.0.i.i19.i.us13, %.sroa.01.0.i9.i21.i.us15
  %.sroa.0.0.i11.i22.i.us16 = select i1 %i.ad, i1 %i.af, i1 %i.ae
  br i1 %.sroa.0.0.i11.i22.i.us16, label %.split.us6, label %.split5.us

.split:                                           ; preds = %bb.ai
  %i.ag = load i64, ptr %i.ai, align 1
  store i64 %i.ag, ptr %.sroa.0.0.i43, align 1
  %i.ah = icmp eq ptr %i.ai, %0
  br i1 %i.ah, label %.split5.us, label %.lr.ph44

.lr.ph44:                                         ; preds = %.split.preheader, %.split
  %.sroa.0.0.i43 = phi ptr [ %i.ai, %.split ], [ %i.d, %.split.preheader ] ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.sroa.0.0.i43, i64 -8 ; 4 uses
  %.val11.i = load i32, ptr %i.ai, align 1        ; 2 uses
  %i.aj = getelementptr i8, ptr %.sroa.0.0.i43, i64 -4
  %.val12.i = load i32, ptr %i.aj, align 1        ; 2 uses
  switch i32 %.sroa.0.sroa.5.0.extract.trunc.i, label %bb.ac [
    i32 1414284868, label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i
    i32 1953261156, label %bb.ab
  ]

bb.ab:                                            ; preds = %.lr.ph44
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i

bb.ac:                                            ; preds = %.lr.ph44
  br label %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i

_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i: ; preds = %bb.ac, %bb.ab, %.lr.ph44
  %.sroa.01.0.i.i19.i = phi i32 [ %i.o, %bb.ac ], [ 1, %bb.ab ], [ 0, %.lr.ph44 ]
  switch i32 %.val11.i, label %bb.af [
    i32 1414284868, label %bb.ad
    i32 1953261156, label %bb.ae
  ]

bb.ad:                                            ; preds = %bb.af, %bb.ae, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i
  %.sroa.0.0.i8.i20.i = phi i32 [ %i.ak, %bb.af ], [ 1, %bb.ae ], [ 0, %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i ] ; 2 uses
  switch i32 %.val12.i, label %bb.ah [
    i32 1414284868, label %bb.ai
    i32 1953261156, label %bb.ag
  ]

bb.ae:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i
  br label %bb.ad

bb.af:                                            ; preds = %_RNCNCNvNtCs5JazJsyow1H_14otl_normalizer6common16get_lang_systemss1_00B7_.exit.i18.i
  %i.ak = tail call i32 @llvm.bswap.i32(i32 %.val11.i)
  br label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ad
  %i.al = tail call i32 @llvm.bswap.i32(i32 %.val12.i)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ad
  %.sroa.01.0.i9.i21.i = phi i32 [ %i.al, %bb.ah ], [ 1, %bb.ag ], [ 0, %bb.ad ]
  %i.am = icmp eq i32 %i.n, %.sroa.0.0.i8.i20.i
  %i.an = icmp ult i32 %i.n, %.sroa.0.0.i8.i20.i
  %i.ao = icmp ult i32 %.sroa.01.0.i.i19.i, %.sroa.01.0.i9.i21.i
  %.sroa.0.0.i11.i22.i = select i1 %i.am, i1 %i.ao, i1 %i.an
  br i1 %.sroa.0.0.i11.i22.i, label %.split, label %.split5.us

.split5.us:                                       ; preds = %.split.us6, %bb.aa, %bb.s, %.split.us, %.split, %bb.ai, %.split.us6.preheader, %.split.us.preheader, %.split.preheader
  %.us-phi = phi ptr [ %0, %.split.us ], [ %0, %.split.us6.preheader ], [ %0, %.split.preheader ], [ %.sroa.0.0.i43, %bb.ai ], [ %0, %.split.us.preheader ], [ %0, %.split ], [ %.sroa.0.0.i.us39, %bb.s ], [ %.sroa.0.0.i.us836, %bb.aa ], [ %0, %.split.us6 ]
  store i64 %.sroa.06.0.copyload.i.fr, ptr %.us-phi, align 1, !noalias !704
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystemNCINvMB8_SB18_20sort_unstable_by_keyTmmENCNCNvB1a_16get_lang_systemss1_00E0EB1c_.exit: ; preds = %_RNCINvMNtCsf3Ta7LF998c_4core5sliceSNtNtCs5JazJsyow1H_14otl_normalizer6common14LanguageSystem20sort_unstable_by_keyTmmENCNCNvBz_16get_lang_systemss1_00E0BB_.exit.i, %.split5.us
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.0.020, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ap, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(readwrite, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB1m_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1o_16get_lang_systemss2_0E0EB1q_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #5 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.d, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCs5JazJsyow1H_14otl_normalizer6common7FeatureNCINvMB8_SB18_20sort_unstable_by_keyTmINtNtBa_6option6OptionTmmEEENCNvB1a_16get_lang_systemss2_0E0EB1c_(ptr noundef %0, ptr noundef %.sroa.0.05)
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 56 ; 2 uses
  %.not = icmp eq ptr %i.d, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB1m_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 captures(address) %0, i64 noundef range(i64 0, 4611686018427387904) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ %i.c, %.lr.ph.preheader ] ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -2 ; 3 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !noundef !5 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !noundef !5 ; 2 uses
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i16 %.val10.i, ptr %.sroa.0.05, align 2
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge10, label %.lr.ph9

.preheader:                                       ; preds = %.lr.ph9
  store i16 %.val8.i, ptr %.sroa.0.0.i8, align 2
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge10, label %.lr.ph9

.lr.ph9:                                          ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i8 = phi ptr [ %i.h, %.preheader ], [ %i.d, %.preheader.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -2 ; 3 uses
  %.val8.i = load i16, ptr %i.h, align 2, !noundef !5 ; 2 uses
  %i.i = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.i, label %.preheader, label %._crit_edge10

._crit_edge10:                                    ; preds = %.preheader, %.lr.ph9, %.preheader.preheader
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %.preheader.preheader ], [ %0, %.preheader ], [ %.sroa.0.0.i8, %.lr.ph9 ]
  store i16 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 2, !noalias !709
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %.lr.ph, %._crit_edge10
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1m_7sort_byNCINvXs1o_NtNtNtB33_11collections5btree3mapINtB3Q_8BTreeMapB1n_B2a_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1m_E9from_iterINtNtNtB4T_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6K_7NameMap9from_fonts_0EE0E0EB6M_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [30 x i8], align 2          ; 4 uses
  %i.a = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.a, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1
  %.not4 = icmp samesign eq i64 %2, %1
  br i1 %.not4, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %2
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit, %bb.c
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit
  %.sroa.0.05 = phi ptr [ %i.j, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit ], [ %i.c, %.lr.ph.preheader ] ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -32 ; 4 uses
  %.val9.i = load i16, ptr %.sroa.0.05, align 2, !noundef !5 ; 3 uses
  %.val10.i = load i16, ptr %i.d, align 2, !noundef !5
  %i.e = icmp ult i16 %.val9.i, %.val10.i
  br i1 %i.e, label %bb.d, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.4.0..sroa_idx.i, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.f = icmp eq ptr %i.d, %0
  br i1 %i.f, label %._crit_edge11, label %.lr.ph10

bb.e:                                             ; preds = %.lr.ph10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i8, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.g = icmp eq ptr %i.h, %0
  br i1 %i.g, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %bb.e
  %.sroa.0.0.i8 = phi ptr [ %i.h, %bb.e ], [ %i.d, %bb.d ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -32 ; 4 uses
  %.val8.i = load i16, ptr %i.h, align 2, !noundef !5
  %i.i = icmp ult i16 %.val9.i, %.val8.i
  br i1 %i.i, label %bb.e, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.e, %.lr.ph10, %bb.d
  %.sroa.0.0.i.lcssa = phi ptr [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.0.i8, %.lr.ph10 ] ; 2 uses
  store i16 %.val9.i, ptr %.sroa.0.0.i.lcssa, align 8, !noalias !714
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !714
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit: ; preds = %.lr.ph, %._crit_edge11
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.j, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB1s_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB1g_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 8 uses
  %i.e = icmp samesign ugt i64 %1, 7
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.d ; 2 uses
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB19_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noundef %0, ptr noundef %2)
  tail call fastcc void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort12sort4_stableINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB19_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noundef %i.f, ptr noundef %i.g)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.h = sub nuw nsw i64 %1, %i.d                 ; 2 uses
  %i.i = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.i, label %.noexc31, label %.loopexit35

.loopexit35:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit, %bb.g
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.d
  %i.k = getelementptr [24 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.l = icmp samesign ult i64 %.sroa.0.0, %i.h
  br i1 %i.l, label %.noexc31.1, label %.loopexit35.1

.noexc31.1:                                       ; preds = %.loopexit35, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.1
  %.sroa.05.042.1 = phi i64 [ %i.aa, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.1 ], [ %.sroa.0.0, %.loopexit35 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %.sroa.05.042.1
  %.idx122 = mul nuw nsw i64 %.sroa.05.042.1, 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx122 ; 10 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val11.i.1 = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %.val12.i.1 = load i64, ptr %i.p, align 8, !noundef !5 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 -16
  %.val13.i.1 = load ptr, ptr %i.q, align 8, !nonnull !5, !noundef !5
  %i.r = getelementptr i8, ptr %i.n, i64 -8
  %.val14.i.1 = load i64, ptr %i.r, align 8, !noundef !5
  %i.s = tail call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val11.i.1, i64 noundef %.val12.i.1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val13.i.1, i64 noundef %.val14.i.1) ; 2 uses
  %.not.i.i.i28.1 = icmp ne i8 %i.s, -2
  %i.t = icmp slt i8 %i.s, 0
  %.sroa.0.0.i.i.i29.1 = and i1 %.not.i.i.i28.1, %i.t
  br i1 %.sroa.0.0.i.i.i29.1, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.1

bb.h:                                             ; preds = %.noexc31.1
  %.sroa.013.0.copyload.i.1 = load i64, ptr %i.n, align 8 ; 2 uses
  %.sroa.0.0.i30.1111 = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i30.1111, i64 24, i1 false)
  %i.u = icmp eq i64 %.sroa.05.042.1, 1
  br i1 %i.u, label %._crit_edge116, label %.lr.ph115

bb.i:                                             ; preds = %bb.j
  %.sroa.0.0.i30.1 = getelementptr inbounds i8, ptr %.sroa.0.0.i30.1113, i64 -24 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i30.1113, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i30.1, i64 24, i1 false)
  %i.v = icmp eq ptr %.sroa.0.0.i30.1, %i.k
  br i1 %i.v, label %._crit_edge116, label %.lr.ph115

.lr.ph115:                                        ; preds = %bb.h, %bb.i
  %.sroa.0.0.i30.1113 = phi ptr [ %.sroa.0.0.i30.1, %bb.i ], [ %.sroa.0.0.i30.1111, %bb.h ] ; 6 uses
  %.sroa.5.0.i.1112 = phi ptr [ %.sroa.0.0.i30.1113, %bb.i ], [ %i.n, %bb.h ] ; 4 uses
  %i.w = getelementptr i8, ptr %.sroa.5.0.i.1112, i64 -40
  %.val9.i.1 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.x = getelementptr i8, ptr %.sroa.5.0.i.1112, i64 -32
  %.val10.i.1 = load i64, ptr %i.x, align 8, !noundef !5
  %i.y = invoke noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val11.i.1, i64 noundef %.val12.i.1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val9.i.1, i64 noundef %.val10.i.1)
          to label %bb.j unwind label %.loopexit.split-lp56 ; 2 uses

bb.j:                                             ; preds = %.lr.ph115
  %.not.i.i15.i.1 = icmp ne i8 %i.y, -2
  %i.z = icmp slt i8 %i.y, 0
  %.sroa.0.0.i.i16.i.1 = and i1 %.not.i.i15.i.1, %i.z
  br i1 %.sroa.0.0.i.i16.i.1, label %bb.i, label %._crit_edge116

._crit_edge116:                                   ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.5.0.i.1.lcssa = phi ptr [ %i.n, %bb.h ], [ %.sroa.0.0.i30.1113, %bb.i ], [ %.sroa.5.0.i.1112, %bb.j ] ; 2 uses
  %.sroa.0.0.i30.lcssa.1 = phi ptr [ %i.k, %bb.h ], [ %i.k, %bb.i ], [ %.sroa.0.0.i30.1113, %bb.j ]
  store i64 %.sroa.013.0.copyload.i.1, ptr %.sroa.0.0.i30.lcssa.1, align 8, !noalias !735
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -16
  store ptr %.val11.i.1, ptr %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !735
  %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds i8, ptr %.sroa.5.0.i.1.lcssa, i64 -8
  store i64 %.val12.i.1, ptr %.sroa.6.0..sroa.0.0.lcssa.sroa_idx.i.1, align 8, !noalias !735
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.1: ; preds = %._crit_edge116, %.noexc31.1
  %i.aa = add nuw nsw i64 %.sroa.05.042.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.aa, %i.h
  br i1 %exitcond.1.not, label %.loopexit35.1, label %.noexc31.1

.loopexit35.1:                                    ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.1, %.loopexit35
  %i.ab = add nsw i64 %1, -1                      ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ab
  %i.ae = getelementptr i8, ptr %i.k, i64 -24
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc26
  %i.af = getelementptr i8, ptr %i.be, i64 24     ; 2 uses
  %i.ag = getelementptr i8, ptr %i.bd, i64 24
  %i.ah = and i64 %1, 1
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %.noexc26, %.loopexit35.1
  %.sroa.0.010.i = phi ptr [ %i.av, %.noexc26 ], [ %0, %.loopexit35.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.aj, %.noexc26 ], [ 0, %.loopexit35.1 ]
  %.sroa.06.08.i = phi ptr [ %i.ay, %.noexc26 ], [ %2, %.loopexit35.1 ] ; 4 uses
  %.sroa.011.07.i = phi ptr [ %i.ba, %.noexc26 ], [ %i.k, %.loopexit35.1 ] ; 4 uses
  %.sroa.015.06.i = phi ptr [ %i.be, %.noexc26 ], [ %i.ae, %.loopexit35.1 ] ; 4 uses
  %.sroa.017.05.i = phi ptr [ %i.bd, %.noexc26 ], [ %i.ad, %.loopexit35.1 ] ; 4 uses
  %.sroa.019.04.i = phi ptr [ %i.bf, %.noexc26 ], [ %i.ac, %.loopexit35.1 ] ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %i.ak = getelementptr i8, ptr %.sroa.011.07.i, i64 8
  %.sroa.011.0.val.i = load ptr, ptr %i.ak, align 8, !alias.scope !736, !nonnull !5, !noundef !5
  %i.al = getelementptr i8, ptr %.sroa.011.07.i, i64 16
  %.sroa.011.0.val22.i = load i64, ptr %i.al, align 8, !alias.scope !736, !noundef !5
  %i.am = getelementptr i8, ptr %.sroa.06.08.i, i64 8
  %.sroa.06.0.val.i = load ptr, ptr %i.am, align 8, !alias.scope !736, !nonnull !5, !noundef !5
  %i.an = getelementptr i8, ptr %.sroa.06.08.i, i64 16
  %.sroa.06.0.val23.i = load i64, ptr %i.an, align 8, !alias.scope !736, !noundef !5
  %i.ao = invoke noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.sroa.011.0.val.i, i64 noundef %.sroa.011.0.val22.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.sroa.06.0.val.i, i64 noundef %.sroa.06.0.val23.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.lr.ph.i
  %.not.i.i.i = icmp ne i8 %i.ao, -2
  %i.ap = icmp slt i8 %i.ao, 0
  %.sroa.0.0.i.i.i = and i1 %.not.i.i.i, %i.ap    ; 3 uses
  %..i21.i = select i1 %.sroa.0.0.i.i.i, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(24) %..i21.i, i64 24, i1 false), !noalias !737
  %i.aq = getelementptr i8, ptr %.sroa.017.05.i, i64 8
  %.sroa.017.0.val.i = load ptr, ptr %i.aq, align 8, !alias.scope !736, !nonnull !5, !noundef !5
  %i.ar = getelementptr i8, ptr %.sroa.017.05.i, i64 16
  %.sroa.017.0.val24.i = load i64, ptr %i.ar, align 8, !alias.scope !736, !noundef !5
  %i.as = getelementptr i8, ptr %.sroa.015.06.i, i64 8
  %.sroa.015.0.val.i = load ptr, ptr %i.as, align 8, !alias.scope !736, !nonnull !5, !noundef !5
  %i.at = getelementptr i8, ptr %.sroa.015.06.i, i64 16
  %.sroa.015.0.val25.i = load i64, ptr %i.at, align 8, !alias.scope !736, !noundef !5
  %i.au = invoke noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.sroa.017.0.val.i, i64 noundef %.sroa.017.0.val24.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.sroa.015.0.val.i, i64 noundef %.sroa.015.0.val25.i)
          to label %.noexc26 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc26:                                         ; preds = %.noexc
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 24 ; 2 uses
  %i.aw = xor i1 %.sroa.0.0.i.i.i, true
  %i.ax = zext i1 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %.sroa.06.08.i, i64 %i.ax ; 5 uses
  %i.az = zext i1 %.sroa.0.0.i.i.i to i64
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %.sroa.011.07.i, i64 %i.az ; 4 uses
  %.not.i.i26.i = icmp ne i8 %i.au, -2
  %i.bb = icmp slt i8 %i.au, 0
  %.sroa.0.0.i.i27.i = and i1 %.not.i.i26.i, %i.bb ; 3 uses
  %..i.i = select i1 %.sroa.0.0.i.i27.i, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.bc = xor i1 %.sroa.0.0.i.i27.i, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(24) %..i.i, i64 24, i1 false), !noalias !738
  %.neg.i.i = sext i1 %i.bc to i64
  %i.bd = getelementptr [24 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %.sroa.0.0.i.i27.i to i64
  %i.be = getelementptr [24 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -24
  %exitcond.not.i = icmp eq i64 %i.aj, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.bg = icmp ult ptr %i.ay, %i.af               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.bg, ptr %i.ay, ptr %i.ba
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB1s_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer:bb.a
_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB1g_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit
  %.sroa.05.052 = phi i64 [ %i.dy, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.05.052
  %.idx = shl nuw nsw i64 %.sroa.05.052, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 3 uses
  %i.dr = load i16, ptr %i.dp, align 2            ; 4 uses
  store i16 %i.dr, ptr %i.dq, align 2
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 -2 ; 2 uses
  %.val10.i = load i16, ptr %i.ds, align 2, !noundef !5 ; 2 uses
  %i.dt = icmp ult i16 %i.dr, %.val10.i
  br i1 %i.dt, label %.preheader.preheader, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

.preheader.preheader:                             ; preds = %.lr.ph
  store i16 %.val10.i, ptr %i.dq, align 2
  %i.du = icmp eq i64 %.sroa.05.052, 1
  br i1 %i.du, label %._crit_edge, label %.lr.ph74

.preheader:                                       ; preds = %.lr.ph74
  store i16 %.val8.i44, ptr %.sroa.0.0.i4373, align 2
  %i.dv = icmp eq ptr %i.dw, %2
  br i1 %i.dv, label %._crit_edge, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader.preheader, %.preheader
  %.sroa.0.0.i4373 = phi ptr [ %i.dw, %.preheader ], [ %i.ds, %.preheader.preheader ] ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.0.i4373, i64 -2 ; 3 uses
  %.val8.i44 = load i16, ptr %i.dw, align 2, !noundef !5 ; 2 uses
  %i.dx = icmp ult i16 %i.dr, %.val8.i44
  br i1 %i.dx, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %.lr.ph74, %.preheader.preheader
  %.sroa.0.0.i43.lcssa = phi ptr [ %2, %.preheader.preheader ], [ %2, %.preheader ], [ %.sroa.0.0.i4373, %.lr.ph74 ]
  store i16 %i.dr, ptr %.sroa.0.0.i43.lcssa, align 2, !noalias !757
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB18_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dy = add nuw nsw i64 %.sroa.05.052, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB39_11collections5btree3mapINtB3W_8BTreeMapB1t_B2g_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4Z_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6Q_7NameMap9from_fonts_0EE0E0EB6S_(ptr noalias nofree noundef nonnull align 8 captures(none) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 captures(address) %2, i64 noundef range(i64 0, 288230376151711744) %3, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i = alloca [30 x i8], align 2          ; 8 uses
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4N_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6E_7NameMap9from_fonts_0EE0E0EB6G_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %1, 16
  %i.c = icmp samesign ult i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = lshr i64 %1, 1                           ; 10 uses
  %i.e = icmp samesign ugt i64 %1, 7
  br i1 %i.e, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val8.i = load i16, ptr %i.f, align 8, !noundef !5
  %.val9.i = load i16, ptr %0, align 8, !noundef !5
  %i.g = icmp ult i16 %.val8.i, %.val9.i          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val6.i = load i16, ptr %i.h, align 8, !noundef !5
  %.val7.i = load i16, ptr %i.i, align 8, !noundef !5
  %i.j = icmp ult i16 %.val6.i, %.val7.i          ; 2 uses
  %i.k = zext i1 %i.g to i64
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.k ; 3 uses
  %i.m = xor i1 %i.g, true
  %i.n = zext i1 %i.m to i64
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.n ; 4 uses
  %i.p = select i1 %i.j, i64 3, i64 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p ; 4 uses
  %i.r = select i1 %i.j, i64 2, i64 3
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.r ; 3 uses
  %.val4.i = load i16, ptr %i.q, align 8, !noundef !5
  %.val5.i = load i16, ptr %i.l, align 8, !noundef !5
  %i.t = icmp ult i16 %.val4.i, %.val5.i          ; 3 uses
  %.val2.i = load i16, ptr %i.s, align 8, !noundef !5
  %.val3.i = load i16, ptr %i.o, align 8, !noundef !5
  %i.u = icmp ult i16 %.val2.i, %.val3.i          ; 3 uses
  %i.v = select i1 %i.t, ptr %i.q, ptr %i.l, !unpredictable !5
  %i.w = select i1 %i.u, ptr %i.o, ptr %i.s, !unpredictable !5
  %i.x = select i1 %i.u, ptr %i.q, ptr %i.o, !unpredictable !5
  %i.y = select i1 %i.t, ptr %i.l, ptr %i.x, !unpredictable !5 ; 3 uses
  %i.z = select i1 %i.t, ptr %i.o, ptr %i.q, !unpredictable !5
  %i.aa = select i1 %i.u, ptr %i.s, ptr %i.z, !unpredictable !5 ; 3 uses
  %.val.i = load i16, ptr %i.aa, align 8, !noundef !5
  %.val1.i = load i16, ptr %i.y, align 8, !noundef !5
  %i.ab = icmp ult i16 %.val.i, %.val1.i          ; 2 uses
  %i.ac = select i1 %i.ab, ptr %i.aa, ptr %i.y, !unpredictable !5
  %i.ad = select i1 %i.ab, ptr %i.y, ptr %i.aa, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 32, i1 false)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d ; 8 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %.val8.i26 = load i16, ptr %i.aj, align 8, !noundef !5
  %.val9.i27 = load i16, ptr %i.ah, align 8, !noundef !5
  %i.ak = icmp ult i16 %.val8.i26, %.val9.i27     ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  %.val6.i28 = load i16, ptr %i.al, align 8, !noundef !5
  %.val7.i29 = load i16, ptr %i.am, align 8, !noundef !5
  %i.an = icmp ult i16 %.val6.i28, %.val7.i29     ; 2 uses
  %i.ao = zext i1 %i.ak to i64
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ao ; 3 uses
  %i.aq = xor i1 %i.ak, true
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.ar ; 4 uses
  %i.at = select i1 %i.an, i64 3, i64 2
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.at ; 4 uses
  %i.av = select i1 %i.an, i64 2, i64 3
  %i.aw = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %i.av ; 3 uses
  %.val4.i30 = load i16, ptr %i.au, align 8, !noundef !5
  %.val5.i31 = load i16, ptr %i.ap, align 8, !noundef !5
  %i.ax = icmp ult i16 %.val4.i30, %.val5.i31     ; 3 uses
  %.val2.i32 = load i16, ptr %i.aw, align 8, !noundef !5
  %.val3.i33 = load i16, ptr %i.as, align 8, !noundef !5
  %i.ay = icmp ult i16 %.val2.i32, %.val3.i33     ; 3 uses
  %i.az = select i1 %i.ax, ptr %i.au, ptr %i.ap, !unpredictable !5
  %i.ba = select i1 %i.ay, ptr %i.as, ptr %i.aw, !unpredictable !5
  %i.bb = select i1 %i.ay, ptr %i.au, ptr %i.as, !unpredictable !5
  %i.bc = select i1 %i.ax, ptr %i.ap, ptr %i.bb, !unpredictable !5 ; 3 uses
  %i.bd = select i1 %i.ax, ptr %i.as, ptr %i.au, !unpredictable !5
  %i.be = select i1 %i.ay, ptr %i.aw, ptr %i.bd, !unpredictable !5 ; 3 uses
  %.val.i34 = load i16, ptr %i.be, align 8, !noundef !5
  %.val1.i35 = load i16, ptr %i.bc, align 8, !noundef !5
  %i.bf = icmp ult i16 %.val.i34, %.val1.i35      ; 2 uses
  %i.bg = select i1 %i.bf, ptr %i.be, ptr %i.bc, !unpredictable !5
  %i.bh = select i1 %i.bf, ptr %i.bc, ptr %i.be, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.az, i64 32, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bg, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.bl, i64 32, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 4 uses
  %i.bn = sub nuw nsw i64 %1, %i.d                ; 2 uses
  %i.bo = icmp samesign ult i64 %.sroa.0.0, %i.d
  br i1 %i.bo, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit, %bb.g
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.d
  %i.bq = getelementptr [32 x i8], ptr %2, i64 %i.d ; 6 uses
  %i.br = icmp samesign ult i64 %.sroa.0.0, %i.bn
  br i1 %i.br, label %.lr.ph.1, label %.loopexit.1

.lr.ph.1:                                         ; preds = %.loopexit, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit.1
  %.sroa.05.046.1 = phi i64 [ %i.cb, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit.1 ], [ %.sroa.0.0, %.loopexit ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %.sroa.05.046.1 ; 2 uses
  %.idx78 = shl nuw nsw i64 %.sroa.05.046.1, 5
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx78 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bs, i64 32, i1 false)
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32 ; 3 uses
  %.val9.i36.1 = load i16, ptr %i.bt, align 8, !noundef !5 ; 3 uses
  %.val10.i.1 = load i16, ptr %i.bu, align 8, !noundef !5
  %i.bv = icmp ult i16 %.val9.i36.1, %.val10.i.1
  br i1 %i.bv, label %bb.h, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit.1

bb.h:                                             ; preds = %.lr.ph.1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %i.bw, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bu, i64 32, i1 false)
  %i.bx = icmp eq i64 %.sroa.05.046.1, 1
  br i1 %i.bx, label %._crit_edge74, label %.lr.ph73

bb.i:                                             ; preds = %.lr.ph73
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i37.171, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, i64 32, i1 false)
  %i.by = icmp eq ptr %i.bz, %i.bq
  br i1 %i.by, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.h, %bb.i
  %.sroa.0.0.i37.171 = phi ptr [ %i.bz, %bb.i ], [ %i.bu, %bb.h ] ; 3 uses
  %i.bz = getelementptr inbounds i8, ptr %.sroa.0.0.i37.171, i64 -32 ; 4 uses
  %.val8.i38.1 = load i16, ptr %i.bz, align 2, !noundef !5
  %i.ca = icmp ult i16 %.val9.i36.1, %.val8.i38.1
  br i1 %i.ca, label %bb.i, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.i, %.lr.ph73, %bb.h
  %.sroa.0.0.i37.lcssa.1 = phi ptr [ %i.bq, %bb.h ], [ %i.bq, %bb.i ], [ %.sroa.0.0.i37.171, %.lr.ph73 ] ; 2 uses
  store i16 %.val9.i36.1, ptr %.sroa.0.0.i37.lcssa.1, align 8, !noalias !778
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa.1, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i.1, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit.1

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit.1: ; preds = %._crit_edge74, %.lr.ph.1
  %i.cb = add nuw nsw i64 %.sroa.05.046.1, 1      ; 2 uses
  %exitcond.1.not = icmp eq i64 %i.cb, %i.bn
  br i1 %exitcond.1.not, label %.loopexit.1, label %.lr.ph.1

.loopexit.1:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit.1, %.loopexit
  %i.cc = add nsw i64 %1, -1                      ; 2 uses
  %i.cd = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.cc
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.cc
  %i.cf = getelementptr i8, ptr %i.bq, i64 -32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.cg = getelementptr i8, ptr %i.cv, i64 32     ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cu, i64 32
  %i.ci = and i64 %1, 1
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.k, label %bb.j

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.loopexit.1
  %.sroa.0.010.i = phi ptr [ %i.cr, %.lr.ph.i ], [ %0, %.loopexit.1 ] ; 2 uses
  %.sroa.04.09.i = phi i64 [ %i.ck, %.lr.ph.i ], [ 0, %.loopexit.1 ]
  %.sroa.06.08.i = phi ptr [ %i.cq, %.lr.ph.i ], [ %2, %.loopexit.1 ] ; 3 uses
  %.sroa.011.07.i = phi ptr [ %i.co, %.lr.ph.i ], [ %i.bq, %.loopexit.1 ] ; 3 uses
  %.sroa.015.06.i = phi ptr [ %i.cv, %.lr.ph.i ], [ %i.cf, %.loopexit.1 ] ; 3 uses
  %.sroa.017.05.i = phi ptr [ %i.cu, %.lr.ph.i ], [ %i.ce, %.loopexit.1 ] ; 3 uses
  %.sroa.019.04.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cd, %.loopexit.1 ] ; 2 uses
  %i.ck = add nuw nsw i64 %.sroa.04.09.i, 1       ; 2 uses
  %.sroa.011.0.val.i = load i16, ptr %.sroa.011.07.i, align 2, !alias.scope !779, !noundef !5
  %.sroa.06.0.val.i = load i16, ptr %.sroa.06.08.i, align 2, !alias.scope !779, !noundef !5
  %i.cl = icmp ult i16 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.cl, ptr %.sroa.011.07.i, ptr %.sroa.06.08.i
  %i.cm = xor i1 %i.cl, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.010.i, ptr noundef nonnull align 8 dereferenceable(32) %..i21.i, i64 32, i1 false), !noalias !780
  %i.cn = zext i1 %i.cl to i64
  %i.co = getelementptr inbounds nuw [32 x i8], ptr %.sroa.011.07.i, i64 %i.cn ; 4 uses
  %i.cp = zext i1 %i.cm to i64
  %i.cq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.08.i, i64 %i.cp ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 32 ; 2 uses
  %.sroa.017.0.val.i = load i16, ptr %.sroa.017.05.i, align 2, !alias.scope !779, !noundef !5
  %.sroa.015.0.val.i = load i16, ptr %.sroa.015.06.i, align 2, !alias.scope !779, !noundef !5
  %i.cs = icmp ult i16 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.cs, ptr %.sroa.015.06.i, ptr %.sroa.017.05.i
  %i.ct = xor i1 %i.cs, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.04.i, ptr noundef nonnull align 8 dereferenceable(32) %..i.i, i64 32, i1 false), !noalias !781
  %.neg.i.i = sext i1 %i.ct to i64
  %i.cu = getelementptr [32 x i8], ptr %.sroa.017.05.i, i64 %.neg.i.i ; 2 uses
  %.neg13.i.i = sext i1 %i.cs to i64
  %i.cv = getelementptr [32 x i8], ptr %.sroa.015.06.i, i64 %.neg13.i.i ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.sroa.019.04.i, i64 -32
  %exitcond.not.i = icmp eq i64 %i.ck, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.j:                                             ; preds = %._crit_edge.i
  %i.cx = icmp ult ptr %i.cq, %i.cg               ; 3 uses
  %.sroa.06.0..sroa.011.0.i = select i1 %i.cx, ptr %i.cq, ptr %i.co
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.0..sroa.011.0.i, i64 32, i1 false)
  %i.cy = zext i1 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [32 x i8], ptr %i.cq, i64 %i.cy
  %i.da = xor i1 %i.cx, true
  %i.db = zext i1 %i.da to i64
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %i.co, i64 %i.db
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.sroa.011.1.i = phi ptr [ %i.co, %._crit_edge.i ], [ %i.dc, %bb.j ]
  %.sroa.06.1.i = phi ptr [ %i.cq, %._crit_edge.i ], [ %i.cz, %bb.j ]
  %i.dd = icmp ne ptr %.sroa.06.1.i, %i.cg
  %i.de = icmp ne ptr %.sroa.011.1.i, %i.ch
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !8
  br i1 %or.cond.i, label %bb.l, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4N_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6E_7NameMap9from_fonts_0EE0E0EB6G_.exit, !prof !8

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #16
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.df = landingpad { ptr, i32 }
          cleanup
  %i.dg = shl nuw nsw i64 %1, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %0, ptr nonnull align 8 %2, i64 %i.dg, i1 false), !noalias !782
  resume { ptr, i32 } %i.df

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort19bidirectional_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB2X_11collections5btree3mapINtB3K_8BTreeMapB1h_B24_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB4N_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6E_7NameMap9from_fonts_0EE0E0EB6G_.exit: ; preds = %bb.k, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit
  %.sroa.05.046 = phi i64 [ %i.dq, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit ], [ %.sroa.0.0, %bb.g ] ; 4 uses
  %i.dh = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.05.046 ; 2 uses
  %.idx = shl nuw nsw i64 %.sroa.05.046, 5
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dh, i64 32, i1 false)
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -32 ; 3 uses
  %.val9.i36 = load i16, ptr %i.di, align 8, !noundef !5 ; 3 uses
  %.val10.i = load i16, ptr %i.dj, align 8, !noundef !5
  %i.dk = icmp ult i16 %.val9.i36, %.val10.i
  br i1 %i.dk, label %bb.n, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, ptr noundef nonnull align 2 dereferenceable(30) %i.dl, i64 30, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.di, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, i64 32, i1 false)
  %i.dm = icmp eq i64 %.sroa.05.046, 1
  br i1 %i.dm, label %._crit_edge, label %.lr.ph68

bb.o:                                             ; preds = %.lr.ph68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.i3767, ptr noundef nonnull align 8 dereferenceable(32) %i.do, i64 32, i1 false)
  %i.dn = icmp eq ptr %i.do, %2
  br i1 %i.dn, label %._crit_edge, label %.lr.ph68

.lr.ph68:                                         ; preds = %bb.n, %bb.o
  %.sroa.0.0.i3767 = phi ptr [ %i.do, %bb.o ], [ %i.dj, %bb.n ] ; 3 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.0.i3767, i64 -32 ; 4 uses
  %.val8.i38 = load i16, ptr %i.do, align 2, !noundef !5
  %i.dp = icmp ult i16 %.val9.i36, %.val8.i38
  br i1 %i.dp, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %.lr.ph68, %bb.n
  %.sroa.0.0.i37.lcssa = phi ptr [ %2, %bb.n ], [ %2, %bb.o ], [ %.sroa.0.0.i3767, %.lr.ph68 ] ; 2 uses
  store i16 %.val9.i36, ptr %.sroa.0.0.i37.lcssa, align 8, !noalias !778
  %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i37.lcssa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.0..sroa.0.0.lcssa.sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.5.i, i64 30, i1 false), !noalias !778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared9smallsort11insert_tailTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB2P_11collections5btree3mapINtB3C_8BTreeMapB19_B1W_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB4F_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6w_7NameMap9from_fonts_0EE0E0EB6y_.exit: ; preds = %._crit_edge, %.lr.ph
  %i.dq = add nuw nsw i64 %.sroa.05.046, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.dq, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i8 -1, 2) i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i16, ptr %i.c, align 8, !noundef !5 ; 2 uses
  %i.e = tail call i8 @llvm.scmp.i8.i16(i16 %i.b, i16 %i.d)
  %i.f = icmp eq i16 %i.b, %i.d
  br i1 %i.f, label %bb.b, label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.g, -2
  %i.h = load i64, ptr %1, align 8, !range !9, !noundef !5 ; 2 uses
  %.not11 = icmp eq i64 %i.h, -2                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit: ; preds = %.loopexit.i11.i, %._crit_edge.i14.i, %bb.k, %bb.j, %.loopexit.i.i, %._crit_edge.i.i, %bb.f, %bb.a
  %.sroa.0.0 = phi i8 [ %i.e, %bb.a ], [ %i.s, %bb.f ], [ %i.af, %.loopexit.i.i ], [ %i.au, %bb.k ], [ %i.ao, %bb.j ], [ %i.ae, %._crit_edge.i.i ], [ %i.bg, %._crit_edge.i14.i ], [ %i.bh, %.loopexit.i11.i ] ; 2 uses
  %i.i = icmp eq i8 %.sroa.0.0, 0
  br i1 %i.i, label %bb.e, label %bb.aj

bb.c:                                             ; preds = %bb.b
  br i1 %.not11, label %bb.aj, label %bb.f

bb.d:                                             ; preds = %bb.b
  br i1 %.not11, label %bb.e, label %bb.aj

bb.e:                                             ; preds = %bb.d, %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load i16, ptr %i.j, align 8, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = load i16, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = tail call i8 @llvm.scmp.i8.i16(i16 %i.k, i16 %i.m)
  %i.o = icmp eq i16 %i.k, %i.m
  br i1 %i.o, label %bb.n, label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit40

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.p = icmp eq i64 %i.g, -1                     ; 3 uses
  %i.q = zext i1 %i.p to i8
  %i.r = icmp eq i64 %i.h, -1                     ; 4 uses
  %.neg.i = sext i1 %i.r to i8
  %i.s = add nsw i8 %.neg.i, %i.q
  %i.t = xor i1 %i.p, %i.r
  br i1 %i.t, label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.p, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.r)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !801, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !802, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !802, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804)
  %i.ac = tail call i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %i.x, i64 range(i64 0, 2305843009213693952) %i.ab) ; 2 uses
  %.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ad = add nuw nsw i64 %.sroa.01.013.i.i, 1    ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.ac
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.i, %bb.h
  %i.ae = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %i.x, i64 range(i64 0, 2305843009213693952) %i.ab)
  br label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %i.af = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i32(i32 %.val10.i.i, i32 %.val11.i.i)
  br label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.i
  %.sroa.01.013.i.i = phi i64 [ %i.ad, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.sroa.01.013.i.i
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.01.013.i.i
  %.val10.i.i = load i32, ptr %i.ag, align 4, !alias.scope !803, !noalias !805, !noundef !5 ; 2 uses
  %.val11.i.i = load i32, ptr %i.ah, align 4, !alias.scope !804, !noalias !805, !noundef !5 ; 2 uses
  %i.ai = icmp eq i32 %.val10.i.i, %.val11.i.i
  br i1 %i.ai, label %bb.i, label %.loopexit.i.i

bb.j:                                             ; preds = %bb.g
  %i.aj = xor i1 %i.r, true
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i16, ptr %i.ak, align 8, !alias.scope !801, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i16, ptr %i.am, align 8, !alias.scope !802, !noundef !5 ; 2 uses
  %i.ao = tail call i8 @llvm.ucmp.i8.i16(i16 %i.al, i16 %i.an)
  %i.ap = icmp eq i16 %i.al, %i.an
  br i1 %i.ap, label %bb.k, label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ar = load i16, ptr %i.aq, align 2, !alias.scope !801, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.at = load i16, ptr %i.as, align 2, !alias.scope !802, !noundef !5 ; 2 uses
  %i.au = tail call i8 @llvm.ucmp.i8.i16(i16 %i.ar, i16 %i.at)
  %i.av = icmp eq i16 %i.ar, %i.at
  br i1 %i.av, label %bb.l, label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !801, !nonnull !5, !noundef !5
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !801, !noundef !5 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !802, !nonnull !5, !noundef !5
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !802, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  %i.be = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %i.az, i64 range(i64 0, -9223372036854775808) %i.bd) ; 2 uses
  %.not.i6.i = icmp eq i64 %i.be, 0
  br i1 %.not.i6.i, label %._crit_edge.i14.i, label %.lr.ph.i7.i

bb.m:                                             ; preds = %.lr.ph.i7.i
  %i.bf = add nuw nsw i64 %.sroa.01.013.i8.i, 1   ; 2 uses
  %exitcond.not.i13.i = icmp eq i64 %i.bf, %i.be
  br i1 %exitcond.not.i13.i, label %._crit_edge.i14.i, label %.lr.ph.i7.i

._crit_edge.i14.i:                                ; preds = %bb.m, %bb.l
  %i.bg = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, -9223372036854775808) %i.az, i64 range(i64 0, -9223372036854775808) %i.bd)
  br label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

.loopexit.i11.i:                                  ; preds = %.lr.ph.i7.i
  %i.bh = tail call noundef range(i8 -1, 2) i8 @llvm.scmp.i8.i8(i8 %.val10.i9.i, i8 %.val11.i10.i)
  br label %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit

.lr.ph.i7.i:                                      ; preds = %bb.l, %bb.m
  %.sroa.01.013.i8.i = phi i64 [ %i.bf, %bb.m ], [ 0, %bb.l ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.01.013.i8.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.sroa.01.013.i8.i
  %.val10.i9.i = load i8, ptr %i.bi, align 1, !alias.scope !806, !noalias !805, !noundef !5 ; 2 uses
  %.val11.i10.i = load i8, ptr %i.bj, align 1, !alias.scope !807, !noalias !805, !noundef !5 ; 2 uses
  %i.bk = icmp eq i8 %.val10.i9.i, %.val11.i10.i
  br i1 %i.bk, label %bb.m, label %.loopexit.i11.i

bb.n:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bn = load i64, ptr %i.bm, align 8, !range !9, !noundef !5 ; 2 uses
  %.not13 = icmp eq i64 %i.bn, -2
  %i.bo = load i64, ptr %i.bl, align 8, !range !9, !noundef !5 ; 2 uses
  %.not14 = icmp eq i64 %i.bo, -2                 ; 2 uses
  br i1 %.not13, label %bb.p, label %bb.o

_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit40: ; preds = %.loopexit.i11.i29, %._crit_edge.i14.i31, %bb.w, %bb.v, %.loopexit.i.i37, %._crit_edge.i.i39, %bb.r, %bb.e
  %.sroa.0.1 = phi i8 [ %i.n, %bb.e ], [ %i.cb, %bb.r ], [ %i.co, %.loopexit.i.i37 ], [ %i.dd, %bb.w ], [ %i.cx, %bb.v ], [ %i.cn, %._crit_edge.i.i39 ], [ %i.dp, %._crit_edge.i14.i31 ], [ %i.dq, %.loopexit.i11.i29 ] ; 2 uses
  %i.bp = icmp eq i8 %.sroa.0.1, 0
  br i1 %i.bp, label %bb.q, label %bb.aj

bb.o:                                             ; preds = %bb.n
  br i1 %.not14, label %bb.aj, label %bb.r

bb.p:                                             ; preds = %bb.n
  br i1 %.not14, label %bb.q, label %bb.aj

bb.q:                                             ; preds = %bb.p, %_RNvXsw_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_14DeviceOrDeltasNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp.exit40
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bs = load i16, ptr %i.br, align 8, !noundef !5 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bv = load i16, ptr %i.bu, align 8, !noundef !5 ; 2 uses
  %i.bw = tail call i8 @llvm.scmp.i8.i16(i16 %i.bs, i16 %i.bv)
  %i.bx = icmp eq i16 %i.bs, %i.bv
  br i1 %i.bx, label %bb.z, label %bb.aa

bb.r:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.by = icmp eq i64 %i.bn, -1                   ; 3 uses
  %i.bz = zext i1 %i.by to i8
end_hunk_2
