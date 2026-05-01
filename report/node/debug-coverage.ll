inline.NumInlined: 1792
inline.NumDeleted: 970
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_113SortBlockDataERSt6vectorINS0_13CoverageBlockESaIS3_EE:bb.a
  br i1 %i.ai, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
  %.sroa.0.07.i.i = phi ptr [ %i.av, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i ], [ %i.ah, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS4_SD_EEEEvT_SH_T0_.exit.i ] ; 8 uses
  %.sroa.06.0.copyload = load i32, ptr %.sroa.0.07.i.i, align 4 ; 5 uses
  %.sroa.69.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 4
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa.0.07.i.i.sroa_idx, align 4 ; 3 uses
  %.sroa.812.0..sroa.0.07.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 8
  %.sroa.812.0.copyload = load i32, ptr %.sroa.812.0..sroa.0.07.i.i.sroa_idx, align 4
  %.sroa.0.07.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -12 ; 2 uses
  %i.aj = load i32, ptr %.sroa.0.07.i.i.i, align 4 ; 2 uses
  %i.ak = icmp eq i32 %.sroa.06.0.copyload, %i.aj
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.07.i.i, i64 -8
  %i.am = load i32, ptr %i.al, align 4
  %i.an = icmp sgt i32 %.sroa.69.0.copyload, %i.am
  %i.ao = icmp slt i32 %.sroa.06.0.copyload, %i.aj
  %.0.i6 = select i1 %i.ak, i1 %i.an, i1 %i.ao
  br i1 %.0.i6, label %.lr.ph.i.i13.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_113SortBlockDataERSt6vectorINS0_13CoverageBlockESaIS3_EE:bb.a
  %i.aq = icmp eq i32 %.sroa.06.0.copyload, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.09.i.i14.i, i64 -8
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = icmp sgt i32 %.sroa.69.0.copyload, %i.as
  %i.au = icmp slt i32 %.sroa.06.0.copyload, %i.ap
  %.0.i5 = select i1 %i.aq, i1 %i.at, i1 %i.au
  br i1 %.0.i5, label %.lr.ph.i.i13.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i, !llvm.loop !148

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbRKS4_SD_EEEEvT_T0_.exit.i11.i: ; preds = %.lr.ph.i.i13.i, %.lr.ph.i10.i
  %.sroa.04.0.lcssa.i.i12.i = phi ptr [ %.sroa.0.07.i.i, %.lr.ph.i10.i ], [ %.sroa.0.09.i.i14.i, %.lr.ph.i.i13.i ] ; 3 uses
  store i32 %.sroa.06.0.copyload, ptr %.sroa.04.0.lcssa.i.i12.i, align 4
  %.sroa.69.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.69.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %.sroa.812.0..sroa.04.0.lcssa.i.i12.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.04.0.lcssa.i.i12.i, i64 8
  store i32 %.sroa.812.0.copyload, ptr %.sroa.812.0..sroa.04.0.lcssa.i.i12.i.sroa_idx, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i, i64 12 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %.8.val
  br i1 %i.aw, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2v88internal13CoverageBlockESt6vectorIS4_SaIS4_EEEEPFbRKS4_SB_EEvT_SE_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !150
end_hunk_1
