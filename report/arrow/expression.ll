inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a
  br i1 %i.ce, label %bb.h, label %".lr.ph._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit_crit_edge"

bb.h:                                             ; preds = %.lr.ph
  %i.cf = getelementptr i8, ptr %.sroa.057.0102, i64 16
  %i.cg = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cf), !inline_history !295
  br i1 %i.cg, label %bb.i, label %"._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplit_crit_edge"

bb.i:                                             ; preds = %bb.h
  %i.ch = getelementptr i8, ptr %.sroa.057.0102, i64 32
  %i.ci = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch), !inline_history !295
  br i1 %i.ci, label %bb.j, label %"._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit_crit_edge"

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr i8, ptr %.sroa.057.0102, i64 48
  %i.ck = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cj), !inline_history !295
  br i1 %i.ck, label %bb.k, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplitsplit"

end_hunk_0
begin_hunk_1_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplitsplit": ; preds = %bb.j
  %.sroa.057.0102.lcssa149 = phi ptr [ %.sroa.057.0102, %bb.j ]
  %scevgep146 = getelementptr i8, ptr %.sroa.057.0102.lcssa149, i64 48
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit"

"._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit_crit_edge": ; preds = %bb.i
  %.sroa.057.0102.lcssa148 = phi ptr [ %.sroa.057.0102, %bb.i ]
  %scevgep145 = getelementptr i8, ptr %.sroa.057.0102.lcssa148, i64 32
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplitsplit", %"._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit_crit_edge"
  %.sroa.08.0.in.i.sroa.speculated.ph.ph.ph = phi ptr [ %scevgep145, %"._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplit_crit_edge" ], [ %scevgep146, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplitsplitsplit" ]
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplit"

"._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplit_crit_edge": ; preds = %bb.h
  %.sroa.057.0102.lcssa147 = phi ptr [ %.sroa.057.0102, %bb.h ]
  %scevgep144 = getelementptr i8, ptr %.sroa.057.0102.lcssa147, i64 16
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplit"

end_hunk_1
begin_hunk_2_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit"

".lr.ph._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit_crit_edge": ; preds = %.lr.ph
  %.sroa.057.0102.lcssa.a = phi ptr [ %.sroa.057.0102, %.lr.ph ]
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplit", %".lr.ph._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit_crit_edge"
  %.sroa.08.0.in.i.sroa.speculated.ph = phi ptr [ %.sroa.057.0102.lcssa.a, %".lr.ph._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit_crit_edge" ], [ %.sroa.08.0.in.i.sroa.speculated.ph.ph, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexitsplit" ]
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops12_Iter_negateIZNKS4_13IsSatisfiableEvE3$_0EEET_SF_SF_T0_St26random_access_iterator_tag.exit.loopexit", %bb.p, %._crit_edge, %bb.l, %bb.n
end_hunk_2
begin_hunk_3_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a
  br i1 %i.dg, label %".lr.ph.i._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit_crit_edge", label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.dh = getelementptr i8, ptr %.sroa.016.033.i, i64 16
  %i.di = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dh), !inline_history !297
  br i1 %i.di, label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplitsplit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dj = getelementptr i8, ptr %.sroa.016.033.i, i64 32
  %i.dk = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj), !inline_history !297
  br i1 %i.dk, label %"._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit_crit_edge", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr i8, ptr %.sroa.016.033.i, i64 48
  %i.dm = tail call noundef zeroext i1 @_ZNK5arrow7compute10Expression13IsSatisfiableEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dl), !inline_history !297
  br i1 %i.dm, label %"._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplit_crit_edge", label %bb.t

end_hunk_3
begin_hunk_4_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplitsplit": ; preds = %bb.q
  %.sroa.016.033.i.lcssa138 = phi ptr [ %.sroa.016.033.i, %bb.q ]
  %scevgep137 = getelementptr i8, ptr %.sroa.016.033.i.lcssa138, i64 16
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit"

"._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit_crit_edge": ; preds = %bb.r
  %.sroa.016.033.i.lcssa139 = phi ptr [ %.sroa.016.033.i, %bb.r ]
  %scevgep136 = getelementptr i8, ptr %.sroa.016.033.i.lcssa139, i64 32
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit": ; preds = %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplitsplit", %"._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit_crit_edge"
  %.sroa.08.0.in.i.i.sroa.speculated.i.ph.ph.ph = phi ptr [ %scevgep136, %"._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplit_crit_edge" ], [ %scevgep137, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplitsplitsplit" ]
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplit"

"._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplit_crit_edge": ; preds = %bb.s
  %.sroa.016.033.i.lcssa140 = phi ptr [ %.sroa.016.033.i, %bb.s ]
  %scevgep = getelementptr i8, ptr %.sroa.016.033.i.lcssa140, i64 48
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplit"

end_hunk_4
begin_hunk_5_@_ZNK5arrow7compute10Expression13IsSatisfiableEv:bb.a
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit"

".lr.ph.i._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit_crit_edge": ; preds = %.lr.ph.i
  %.sroa.016.033.i.lcssa.a = phi ptr [ %.sroa.016.033.i, %.lr.ph.i ]
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit": ; preds = %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplit", %".lr.ph.i._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit_crit_edge"
  %.sroa.08.0.in.i.i.sroa.speculated.i.ph = phi ptr [ %.sroa.016.033.i.lcssa.a, %".lr.ph.i._ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit_crit_edge" ], [ %.sroa.08.0.in.i.i.sroa.speculated.i.ph.ph, %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexitsplit" ]
  br label %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit"

"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit": ; preds = %"_ZSt7none_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZNKS4_13IsSatisfiableEvE3$_1EbT_SC_T0_.exit.loopexit", %._crit_edge.i, %bb.u, %bb.w, %bb.y
end_hunk_5
begin_hunk_6_@_ZN5arrow7compute12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorINS0_10ExpressionESaIS3_EEPNS0_16KnownFieldValuesE:bb.a
  br i1 %i.n, label %".noexc._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit_crit_edge", label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.o = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i, i64 16
  %i.p = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12FilterVectorINS2_7compute10ExpressionEZNS5_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS6_SaIS6_EEPNS5_16KnownFieldValuesEE3$_0EES8_IT_SaISF_EESH_OT0_EUlRKS6_E_EclINS_17__normal_iteratorIPS6_SA_EEEEbSF_"(ptr nonnull readonly align 8 dereferenceable(8) %4, ptr nonnull %i.o)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit

end_hunk_6
begin_hunk_7_@_ZN5arrow7compute12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorINS0_10ExpressionESaIS3_EEPNS0_16KnownFieldValuesE:bb.a
  br i1 %i.p, label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplitsplit", label %bb.c

bb.c:                                             ; preds = %.noexc4
  %i.q = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i, i64 32
  %i.r = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12FilterVectorINS2_7compute10ExpressionEZNS5_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS6_SaIS6_EEPNS5_16KnownFieldValuesEE3$_0EES8_IT_SaISF_EESH_OT0_EUlRKS6_E_EclINS_17__normal_iteratorIPS6_SA_EEEEbSF_"(ptr nonnull readonly align 8 dereferenceable(8) %4, ptr nonnull %i.q)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit

end_hunk_7
begin_hunk_8_@_ZN5arrow7compute12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorINS0_10ExpressionESaIS3_EEPNS0_16KnownFieldValuesE:bb.a
  br i1 %i.r, label %".noexc5._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit_crit_edge", label %bb.d

bb.d:                                             ; preds = %.noexc5
  %i.s = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i, i64 48
  %i.t = invoke fastcc noundef zeroext i1 @"_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12FilterVectorINS2_7compute10ExpressionEZNS5_12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorIS6_SaIS6_EEPNS5_16KnownFieldValuesEE3$_0EES8_IT_SaISF_EESH_OT0_EUlRKS6_E_EclINS_17__normal_iteratorIPS6_SA_EEEEbSF_"(ptr nonnull readonly align 8 dereferenceable(8) %4, ptr nonnull %i.s)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit

end_hunk_8
begin_hunk_9_@_ZN5arrow7compute12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorINS0_10ExpressionESaIS3_EEPNS0_16KnownFieldValuesE:bb.a
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplitsplit": ; preds = %.noexc4
  %.sroa.032.042.i.i.i.i.i.lcssa53 = phi ptr [ %.sroa.032.042.i.i.i.i.i, %.noexc4 ]
  %scevgep51 = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i.lcssa53, i64 16
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit"

".noexc5._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit_crit_edge": ; preds = %.noexc5
  %.sroa.032.042.i.i.i.i.i.lcssa54 = phi ptr [ %.sroa.032.042.i.i.i.i.i, %.noexc5 ]
  %scevgep50 = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i.lcssa54, i64 32
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplitsplit", %".noexc5._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit_crit_edge"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.ph.ph.ph = phi ptr [ %scevgep50, %".noexc5._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplit_crit_edge" ], [ %scevgep51, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplitsplitsplit" ]
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplit"

".noexc6._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplit_crit_edge": ; preds = %.noexc6
  %.sroa.032.042.i.i.i.i.i.lcssa55 = phi ptr [ %.sroa.032.042.i.i.i.i.i, %.noexc6 ]
  %scevgep = getelementptr i8, ptr %.sroa.032.042.i.i.i.i.i.lcssa55, i64 48
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplit"

end_hunk_9
begin_hunk_10_@_ZN5arrow7compute12_GLOBAL__N_123ExtractKnownFieldValuesEPSt6vectorINS0_10ExpressionESaIS3_EEPNS0_16KnownFieldValuesE:bb.a
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit"

".noexc._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit_crit_edge": ; preds = %.noexc
  %.sroa.032.042.i.i.i.i.i.lcssa52 = phi ptr [ %.sroa.032.042.i.i.i.i.i, %.noexc ]
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplit", %".noexc._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit_crit_edge"
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.ph = phi ptr [ %.sroa.032.042.i.i.i.i.i.lcssa52, %".noexc._ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit_crit_edge" ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.ph.ph, %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexitsplit" ]
  br label %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i"

"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i": ; preds = %"_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops10_Iter_predIZNS2_8internal12FilterVectorIS4_ZNS3_12_GLOBAL__N_123ExtractKnownFieldValuesEPS8_PNS3_16KnownFieldValuesEE3$_0EES6_IT_SaISJ_EESL_OT0_EUlRKS4_E_EEESJ_SJ_SJ_SM_.exit.i.i.i.loopexit", %.noexc9, %.noexc8, %.noexc7
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN5arrow8FieldRefESaIS1_EEC2ERKS3_:bb.a
          to label %_ZSt10_ConstructIN5arrow8FieldRefEJRKS1_EEvPT_DpOT0_.exit.i unwind label %bb.d, !inline_history !1077

bb.d:                                             ; preds = %.lr.ph.i
  %.013.i.lcssa = phi ptr [ %.013.i, %.lr.ph.i ]  ; 2 uses
  %i.r = landingpad { ptr, i32 }
          catch ptr null
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN5arrow8FieldRefESaIS1_EEC2ERKS3_:bb.a
  br i1 %i.aa, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow8FieldRefESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E.exit.loopexit, label %.lr.ph.i, !llvm.loop !1080

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %lsr.iv26 = phi i64 [ %lsr.iv, %.lr.ph.i.i.i.preheader ], [ %lsr.iv.next27, %.lr.ph.i.i.i ]
  %.05.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.j, %.lr.ph.i.i.i.preheader ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.05.i.i.i), !inline_history !1081
  %i.ab = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
end_hunk_12
begin_hunk_13_@_ZSt16__do_uninit_copyIPKN5arrow8FieldRefEPS1_ET0_T_S6_S5_:bb.a
          to label %bb.d unwind label %bb.b, !inline_history !1084

bb.b:                                             ; preds = %.lr.ph
  %.016.lcssa = phi ptr [ %.016, %.lr.ph ]        ; 2 uses
  %i.b = landingpad { ptr, i32 }
          catch ptr null
end_hunk_13
begin_hunk_14_@_ZSt16__do_uninit_copyIPKN5arrow8FieldRefEPS1_ET0_T_S6_S5_:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %lsr.iv26 = phi i64 [ %lsr.iv, %.lr.ph.i.i.preheader ], [ %lsr.iv.next27, %.lr.ph.i.i ]
  %.05.i.i = phi ptr [ %i.k, %.lr.ph.i.i ], [ %2, %.lr.ph.i.i.preheader ] ; 2 uses
  call void @_ZSt10destroy_atIN5arrow8FieldRefEEvPT_(ptr noundef %.05.i.i), !inline_history !1087
  %i.k = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag:bb.a

_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i87: ; preds = %bb.am, %bb.al, %.lr.ph.i.i.i.i82
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i84, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i83, i64 16 ; 4 uses
  %i.et = icmp eq ptr %i.er, %3
  br i1 %i.et, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit89, label %.lr.ph.i.i.i.i82, !llvm.loop !1105

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEPS4_S4_ET0_T_SD_SC_RSaIT1_E.exit89: ; preds = %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i87
  %.lcssa157 = phi ptr [ %i.es, %_ZSt10_ConstructIN5arrow7compute10ExpressionEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i87 ]
  %i.eu = icmp eq ptr %1, %i.i
  br i1 %i.eu, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow7compute10ExpressionES3_SaIS2_EET0_T_S6_S5_RT1_.exit94, label %.lr.ph.i.i.i.i.i90.preheader
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i.i90:                               ; preds = %.lr.ph.i.i.i.i.i90.preheader, %.lr.ph.i.i.i.i.i90
  %lsr.iv196 = phi i64 [ 0, %.lr.ph.i.i.i.i.i90.preheader ], [ %lsr.iv.next197, %.lr.ph.i.i.i.i.i90 ] ; 3 uses
  %scevgep201.a = getelementptr i8, ptr %1, i64 %lsr.iv196 ; 4 uses
  %scevgep198 = getelementptr i8, ptr %i.es, i64 %lsr.iv196 ; 2 uses
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 8
  store ptr null, ptr %scevgep199, align 8, !tbaa !79
  %i.ev = load <2 x ptr>, ptr %scevgep201.a, align 8, !tbaa !94
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN5arrow7compute10ExpressionESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag:bb.a
  %lsr.iv.next197 = add i64 %lsr.iv196, 16        ; 2 uses
  %scevgep203 = getelementptr i8, ptr %scevgep201.a, i64 16
  %i.ew = icmp eq ptr %scevgep203, %i.i
  %scevgep200 = getelementptr i8, ptr %i.es, i64 %lsr.iv.next197
  br i1 %i.ew, label %_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow7compute10ExpressionES3_SaIS2_EET0_T_S6_S5_RT1_.exit94.loopexit, label %.lr.ph.i.i.i.i.i90, !llvm.loop !1127

_ZSt34__uninitialized_move_if_noexcept_aIPN5arrow7compute10ExpressionES3_SaIS2_EET0_T_S6_S5_RT1_.exit94.loopexit: ; preds = %.lr.ph.i.i.i.i.i90
end_hunk_17
begin_hunk_18_@_ZN5arrow8internal7ToCharsImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  br i1 %i.bs, label %.lr.ph.backedge, label %bb.y, !prof !87

bb.y:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27
  %.lcssa147 = phi i64 [ %i.br, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ]
  %.lcssa146 = phi ptr [ %i.bf, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i.i27 ] ; 5 uses
  br i1 %i.p, label %.lr.ph.preheader.i.i.i38, label %._crit_edge.i.i.i29

.lr.ph.preheader.i.i.i38:                         ; preds = %bb.y
  %i.bt = add i32 %.0.i.i.i28, -2
  br label %.lr.ph.i9.i.i39

.lr.ph.i9.i.i39:                                  ; preds = %.lr.ph.i9.i.i39, %.lr.ph.preheader.i.i.i38
end_hunk_18
begin_hunk_19_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %.thread, %bb.bc
  %.133 = phi i64 [ %.023, %.thread ], [ %i.cz, %bb.bc ] ; 2 uses
  %.12532 = phi ptr [ %.024, %.thread ], [ %i.da, %bb.bc ] ; 3 uses
  %i.cx = load i8, ptr %.12532, align 1, !tbaa !86
  %i.cy = icmp eq i8 %i.cx, 48
end_hunk_19
begin_hunk_20_@_ZN5arrow8internal31StringToSignedIntConverterMixinINS_9Int32TypeEE7ConvertERKS2_PKcmPi:bb.a
  br i1 %.not, label %.critedgesplit, label %bb.bb, !llvm.loop !1272

.critedgesplit:                                   ; preds = %bb.bc
  br label %.critedge

..critedge_crit_edge:                             ; preds = %bb.bb
  %.133.lcssa = phi i64 [ %.133, %bb.bb ]
  %.12532.lcssa = phi ptr [ %.12532, %bb.bb ]
  br label %.critedge

.critedge:                                        ; preds = %.critedgesplit, %..critedge_crit_edge
  %.125.lcssa = phi ptr [ %.12532.lcssa, %..critedge_crit_edge ], [ %scevgep, %.critedgesplit ]
  %.1.lcssa = phi i64 [ %.133.lcssa, %..critedge_crit_edge ], [ 0, %.critedgesplit ]
  %i.db = call noundef zeroext i1 @_ZN5arrow8internal13ParseUnsignedEPKcmPj(ptr noundef nonnull %.125.lcssa, i64 noundef %.1.lcssa, ptr noundef nonnull %i.a)
  br i1 %i.db, label %bb.bd, label %_ZN5arrow8internal8ParseHexIjEEbPKcmPT_.exit.thread, !prof !290

end_hunk_20
begin_hunk_21_@"_ZZN5arrow7compute13FoldConstantsENS0_10ExpressionEENK3$_0clES1_z":bb.a

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i
  %lsr.iv = phi i64 [ %lsr.iv.next, %bb.g ], [ %i.ab, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.048.091.i.i.i.i = phi ptr [ %i.an, %bb.g ], [ %i.s, %.lr.ph.preheader.i.i.i.i ] ; 13 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.048.091.i.i.i.i, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexitsplit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit.i.i.i.i"
end_hunk_21
begin_hunk_22_@"_ZZN5arrow7compute13FoldConstantsENS0_10ExpressionEENK3$_0clES1_z":bb.a
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit.i.i.i.i._ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit_crit_edge": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit.i.i.i.i"
  %.sroa.048.091.i.i.i.i.lcssa34.a = phi ptr [ %.sroa.048.091.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit.i.i.i.i" ]
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit": ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexitsplit", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit.i.i.i.i._ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit_crit_edge"
  %.sroa.048.091.i.i.i.i.lcssa = phi ptr [ %.sroa.048.091.i.i.i.i.lcssa34.a, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit.i.i.i.i._ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit_crit_edge" ], [ %.sroa.048.091.i.i.i.i.lcssa33, %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexitsplit" ]
  br label %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit"

"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit": ; preds = %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit.split.loop.exit", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit.split.loop.exit267", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit.split.loop.exit269", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit.split.loop.exit271", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit.split.loop.exit273", %"_ZSt6all_ofIN9__gnu_cxx17__normal_iteratorIPKN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEEZZNS3_13FoldConstantsES4_ENK3$_0clES4_zEUlRS5_E_EbT_SE_T0_.exit.loopexit.split.loop.exit275", %bb.h, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit35.i.i.i.i", %bb.j, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit40.i.i.i.i", %bb.l, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZZN5arrow7compute13FoldConstantsENS3_10ExpressionEENK3$_0clES4_zEUlRKS4_E_EclINS_17__normal_iteratorIPS6_St6vectorIS4_SaIS4_EEEEEEbT_.exit45.i.i.i.i"
end_hunk_22
begin_hunk_23_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_T2_":bb.a
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPN5arrow7compute10ExpressionEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZZNS1_12CanonicalizeES2_PNS1_11ExecContextEENK3$_1clES2_E3$_0EEEvT_SH_T0_SI_T1_T2_.exit.loopexit147", label %.lr.ph.i, !llvm.loop !1672

.critedge.i:                                      ; preds = %.lr.ph.i
  %.032.i.lcssa = phi ptr [ %.032.i, %.lr.ph.i ]
  %i.ce = ptrtoint ptr %.lcssa155 to i64
  %i.cf = ptrtoint ptr %.032.i.lcssa to i64
end_hunk_23
begin_hunk_24_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_T2_":bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i.i
  %lsr.iv163 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %lsr.iv.next164, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i.i ] ; 3 uses
  %lsr.iv161 = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %lsr.iv.next162, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i.i ]
  %scevgep165 = getelementptr i8, ptr %.sroa.0.031.i, i64 %lsr.iv163 ; 2 uses
  %scevgep167 = getelementptr i8, ptr %.032.i, i64 %lsr.iv163 ; 2 uses
  %scevgep166 = getelementptr i8, ptr %scevgep165, i64 8
  %i.ck = load <2 x ptr>, ptr %scevgep167, align 8, !tbaa !94
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep167, i8 0, i64 16, i1 false)
end_hunk_24
begin_hunk_25_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_T2_":bb.a
  br i1 %i.fw, label %bb.av, label %bb.bj

bb.av:                                            ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclIPS4_NS_17__normal_iteratorISB_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i"
  %.lcssa150 = phi ptr [ %scevgep173, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclIPS4_NS_17__normal_iteratorISB_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i" ] ; 2 uses
  %.lcssa = phi ptr [ %lsr.iv171, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclIPS4_NS_17__normal_iteratorISB_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i" ]
  %.0.i.lcssa = phi ptr [ %.0.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclIPS4_NS_17__normal_iteratorISB_St6vectorIS4_SaIS4_EEEEEEbT_T0_.exit.i" ] ; 2 uses
end_hunk_25
begin_hunk_26_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_T2_":bb.a
  br i1 %i.go, label %bb.bc, label %.outer, !llvm.loop !1676

bb.bc:                                            ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i45
  %.0.i.lcssa.lcssa = phi ptr [ %.0.i.lcssa, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i45 ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.lcssa.lcssa, i64 16
  %i.gq = ptrtoint ptr %i.gp to i64
end_hunk_26
begin_hunk_27_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_T2_":bb.a

.lr.ph.i.i.i.i.i21.i.preheader:                   ; preds = %bb.bc
  %i.gv = add nsw i64 %i.gt, 1
  %scevgep176.a = getelementptr i8, ptr %.sroa.0.0.i.ph, i64 -24 ; 2 uses
  br label %.lr.ph.i.i.i.i.i21.i

.lr.ph.i.i.i.i.i21.i:                             ; preds = %.lr.ph.i.i.i.i.i21.i.preheader, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i29.i
  %lsr.iv179 = phi i64 [ %lsr.iv177, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %lsr.iv.next180, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i29.i ] ; 4 uses
  %lsr.iv174 = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i21.i.preheader ], [ %lsr.iv.next175, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i.i.i.i.i29.i ]
  %scevgep184 = getelementptr i8, ptr %.0.i.ph, i64 %lsr.iv179 ; 2 uses
  %scevgep182 = getelementptr i8, ptr %scevgep176.a, i64 %lsr.iv179
  %scevgep183 = getelementptr i8, ptr %scevgep182, i64 -8
  %scevgep181 = getelementptr i8, ptr %scevgep176.a, i64 %lsr.iv179
end_hunk_27
