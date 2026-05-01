inline.NumInlined: 1424
inline.NumDeleted: 734
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i
  %.sroa.0.08.i = phi ptr [ %i.aq, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 6 uses
  %i.f = load ptr, ptr %.sroa.0.08.i, align 8, !tbaa !60 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %2 = load ptr, ptr %i.g, align 8, !tbaa !62     ; 3 uses
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 16
  %i.h = load ptr, ptr %3, align 8, !tbaa !111
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.08.i, i8 0, i64 24, i1 false)
  %i.i = ptrtoint ptr %2 to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  br label %_ZNSt6vectorIiSaIiEEaSEOS1_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = icmp slt i64 %i.q, %i.k
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 %i.q
  %i.t = select i1 %i.r, ptr %i.s, ptr %2         ; 2 uses
  %.not22.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, %i.t
  br i1 %.not22.i.i.i.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_:bb.a
_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.thread18.i.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclISt6vectorIiSaIiEENS_17__normal_iteratorIPS5_S3_IS5_SaIS5_EEEEEEbRT_T0_.exit.i.i, %bb.c
  %i.aj = load ptr, ptr %.sroa.014.0.i.i, align 8, !tbaa !60 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.014.0.i.i, i64 16 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !111
  store ptr %i.f, ptr %.sroa.014.0.i.i, align 8, !tbaa !60
  store ptr %2, ptr %i.ak, align 8, !tbaa !62
  store ptr %i.h, ptr %i.al, align 8, !tbaa !111
  %.not.i.i.i.i.i1.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i1.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt6vectorIiSaIiEES2_IS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, label %bb.f

end_hunk_2
