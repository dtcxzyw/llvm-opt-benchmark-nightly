inline.NumInlined: 7294
inline.NumDeleted: 3038
begin_hunk_0_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_SH_T0_SI_T1_T2_":bb.a
; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_T0_"(ptr %0, ptr readnone captures(address) %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::compute::Expression", align 8 ; 8 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit20, label %.preheader

end_hunk_0
begin_hunk_1_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_T0_":bb.a
  br i1 %i.b, label %.loopexit20, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5arrow7compute10ExpressionD2Ev.exit
  %.sroa.0.025 = phi ptr [ %.sroa.0.023, %.lr.ph ], [ %.sroa.0.0, %_ZN5arrow7compute10ExpressionD2Ev.exit ] ; 11 uses
  %.pn24 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.025, %_ZN5arrow7compute10ExpressionD2Ev.exit ] ; 3 uses
  %i.f = load ptr, ptr %.sroa.0.025, align 8, !tbaa !63 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
end_hunk_1
begin_hunk_2_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_T0_":bb.a

bb.p:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZZN5arrow7compute12CanonicalizeENS3_10ExpressionEPNS3_11ExecContextEENK3$_1clES4_E3$_0EclINS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEESG_EEbT_T0_.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %3 = load ptr, ptr %.sroa.0.025, align 8, !tbaa !63 ; 2 uses
  store ptr %3, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds nuw i8, ptr %.pn24, i64 24 ; 2 uses
  %i.br = load ptr, ptr %4, align 8, !tbaa !79
  store ptr null, ptr %4, align 8, !tbaa !79
  store ptr %i.br, ptr %i.c, align 8, !tbaa !79
  store ptr null, ptr %.sroa.0.025, align 8, !tbaa !63
  br label %bb.q

bb.q:                                             ; preds = %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i, %bb.p
  %i.bs = phi ptr [ %3, %bb.p ], [ %.pre.i, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i ] ; 5 uses
  %.sroa.013.0.i = phi ptr [ %.sroa.0.025, %bb.p ], [ %.sroa.0.0.i, %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i ] ; 5 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.013.0.i, i64 -16 ; 5 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, null
end_hunk_2
begin_hunk_3_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_T0_":bb.a
  br label %_ZN5arrow7compute10ExpressionaSEOS1_.exit.i

_ZN5arrow7compute10ExpressionaSEOS1_.exit.i:      ; preds = %bb.y, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.u, %bb.s
  %.pre.i = load ptr, ptr %2, align 8, !tbaa !63
  br label %bb.q, !llvm.loop !1679

bb.z:                                             ; preds = %.noexc2.i, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i9.i.i.i, %.noexc.i, %_ZNK5arrow7compute10Expression7literalEv.exit.i.i.i.i.i
end_hunk_3
begin_hunk_4_@"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5arrow7compute10ExpressionESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZZNS3_12CanonicalizeES4_PNS3_11ExecContextEENK3$_1clES4_E3$_0EEEvT_SH_T0_":bb.a

bb.aa:                                            ; preds = %bb.r
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !79
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.bs, ptr %.sroa.013.0.i, align 8, !tbaa !78
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i, i64 8 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !79 ; 8 uses
end_hunk_4
