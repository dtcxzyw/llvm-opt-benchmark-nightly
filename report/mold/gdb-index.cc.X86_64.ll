Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/gdb-index.cc.X86_64?download=true
inline.NumInlined: 4499
inline.NumDeleted: 1982
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEENS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorISA_SaISA_EEEEZNS9_L19read_address_rangesINS9_6X86_64EEEvRNS9_7ContextIT_EERSE_EUlRSA_E_SA_EEKNS1_16auto_partitionerEE8run_bodyERS4_:bb.a
  %i.or = select i1 %i.op, i1 true, i1 %i.oq
  br i1 %i.or, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit128, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  %.val.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.os, align 8 ; 2 uses
  %i.ot = getelementptr i8, ptr %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %.val1.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ot, align 8
  %i.ou = icmp eq i64 %.val.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.ov = icmp eq i64 %.val.i20.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i21.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ow = select i1 %i.ou, i1 true, i1 %i.ov
  br i1 %i.ow, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit130, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.ox = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.oy = add nsw i64 %.058.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.oz = icmp sgt i64 %.058.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.oz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1205

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dc
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %.pre63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = sub i64 %i.ny, %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.cy
  %.pre-phi64.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.pre63.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.oa, %bb.cy ]
  %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.nx, %bb.cy ] ; 6 uses
  %i.pa = ashr exact i64 %.pre-phi64.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  switch i64 %i.pa, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL19read_address_rangesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_8CompunitESaISB_EEEUlRSB_E_E4callISF_NS1_11feeder_implISG_SB_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSG_OS7_PT0_.exit.i.i.i.i.i [
    i64 3, label %bb.dd
    i64 2, label %bb.df
    i64 1, label %bb.dh
  ]

bb.dd:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.val.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.pb = getelementptr i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val1.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pb, align 8
  %i.pc = icmp eq i64 %.val.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.pd = icmp eq i64 %.val.i22.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i23.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pe = select i1 %i.pc, i1 true, i1 %i.pd
  br i1 %i.pe, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.pf = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.038.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pf, %bb.de ], [ %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.val.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.038.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.pg = getelementptr i8, ptr %.sroa.038.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val1.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pg, align 8
  %i.ph = icmp eq i64 %.val.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.pi = icmp eq i64 %.val.i24.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i25.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.pj = select i1 %i.ph, i1 true, i1 %i.pi
  br i1 %i.pj, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.038.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.pk, %bb.dg ], [ %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.val.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.038.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8 ; 2 uses
  %i.pl = getelementptr i8, ptr %.sroa.038.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.val1.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pl, align 8
  %i.pm = icmp eq i64 %.val.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.pn = icmp eq i64 %.val.i26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.po = select i1 %i.pm, i1 true, i1 %i.pn
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.po, ptr %.sroa.038.2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.nw
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit: ; preds = %bb.cz
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit128: ; preds = %bb.da
  %i.pq = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit130: ; preds = %bb.db
  %i.pr = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit128, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit130, %bb.dh, %bb.df, %bb.dd
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.038.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.df ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dh ], [ %.sroa.038.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dd ], [ %i.pr, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit130 ], [ %i.pp, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit ], [ %i.pq, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.loopexit.split.loop.exit128 ], [ %.sroa.038.057.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %i.ps = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nw
  %.sroa.07.026.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.pt = icmp eq ptr %.sroa.07.026.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nw
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ps, i1 true, i1 %i.pt
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj
  %.sroa.07.029.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.07.026.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.013.028.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn27.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.029.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.07.029.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8 ; 3 uses
  %i.pu = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn27.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.pu, align 8
  %i.pv = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  %i.pw = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.px = select i1 %i.pv, i1 true, i1 %i.pw
  br i1 %i.px, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.013.028.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !557
  %i.py = load i64, ptr %i.pu, align 8, !tbaa !95
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  store i64 %i.py, ptr %i.pz, align 8, !tbaa !558
  %i.qa = getelementptr inbounds nuw i8, ptr %.sroa.013.028.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.028.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qa, %bb.di ] ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.029.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.qb = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nw
  br i1 %i.qb, label %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1206

_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dj, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.1.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dj ] ; 2 uses
  %i.qc = icmp eq ptr %.sroa.013.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.nw
  br i1 %i.qc, label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL19read_address_rangesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_8CompunitESaISB_EEEUlRSB_E_E4callISF_NS1_11feeder_implISG_SB_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSG_OS7_PT0_.exit.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qd = ptrtoint ptr %.sroa.013.2.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.qe = sub i64 %i.qd, %i.nz
  %i.qf = getelementptr inbounds i8, ptr %i.nx, i64 %i.qe
  store ptr %i.qf, ptr %i.nv, align 8, !tbaa !366
  br label %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL19read_address_rangesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_8CompunitESaISB_EEEUlRSB_E_E4callISF_NS1_11feeder_implISG_SB_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSG_OS7_PT0_.exit.i.i.i.i.i

_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL19read_address_rangesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_8CompunitESaISB_EEEUlRSB_E_E4callISF_NS1_11feeder_implISG_SB_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSG_OS7_PT0_.exit.i.i.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPSt4pairImmESt6vectorIS3_SaIS3_EEEENS0_5__ops10_Iter_predISt17reference_wrapperIZZN4moldL19read_address_rangesINSC_6X86_64EEEvRNSC_7ContextIT_EERS5_INSC_8CompunitESaISJ_EEENKUlRSJ_E_clESN_EUlS3_E_EEEESG_SG_SG_T0_.exit.i.i.i.i.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.qg = add i64 %.044.i.i.i.i.i, 1              ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.qg, %.0.val
  br i1 %.not.i.i.i.i.i, label %_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS8_SaIS8_EEEEZNS7_L19read_address_rangesINS7_6X86_64EEEvRNS7_7ContextIT_EERSC_EUlRS8_E_S8_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultISH_JDpT0_EE4typeEOSH_DpOSV_.exit, label %bb.b, !llvm.loop !1207

_ZN3tbb6detail2d06invokeIRKNS0_2d225parallel_for_body_wrapperIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS8_SaIS8_EEEEZNS7_L19read_address_rangesINS7_6X86_64EEEvRNS7_7ContextIT_EERSC_EUlRS8_E_S8_EEJRNS0_2d113blocked_rangeImEEEEENSt13invoke_resultISH_JDpT0_EE4typeEOSH_DpOSV_.exit: ; preds = %_ZN3tbb6detail2d235parallel_for_each_operator_selectorIZN4moldL19read_address_rangesINS3_6X86_64EEEvRNS3_7ContextIT_EERSt6vectorINS3_8CompunitESaISB_EEEUlRSB_E_E4callISF_NS1_11feeder_implISG_SB_EEEEDTcmclsr3tbb6detailE6invokefp_clsr3stdE7forwardIS7_Efp0_EEcvv_EERKSG_OS7_PT0_.exit.i.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold14find_cu_abbrevINS_6X86_64ENS_14CuHdrDwarf2_32IS1_EEEEPhRNS_7ContextIT_EEPS4_RKT0_(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(11) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1215
  %.not = icmp eq i8 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.d = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA39_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(39) @.str.22)
  %i.e = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKhEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.promoted.i = load ptr, ptr %1, align 8, !tbaa !211
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %.promoted.i, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.06.i = phi i64 [ 0, %bb.c ], [ %i.n, %bb.d ]
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.o, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !211
  %i.h = load i8, ptr %i.f, align 1, !tbaa !47    ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i32
  %i.k = and i32 %.0.i, 255                       ; 2 uses
  %i.l = shl i32 %i.j, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = or i64 %.06.i, %i.m                      ; 2 uses
  %i.o = add nuw nsw i32 %i.k, 7
  %.not.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %bb.d, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !545
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  %.0.copyload.i = load i32, ptr %i.r, align 1
  %i.s = zext i32 %.0.copyload.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %_ZN4mold9read_ulebEPPh.exit
  %i.u = phi ptr [ %i.t, %_ZN4mold9read_ulebEPPh.exit ], [ %.be103, %.loopexit.backedge ] ; 2 uses
  %.06.i20 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.06.i20.be, %.loopexit.backedge ]
  %.0.i21 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.0.i21.be, %.loopexit.backedge ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  %i.w = load i8, ptr %i.u, align 1, !tbaa !47    ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i32
  %i.z = and i32 %.0.i21, 255                     ; 2 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = zext i32 %i.aa to i64
  %i.ac = or i64 %.06.i20, %i.ab                  ; 3 uses
  %i.ad = add nuw nsw i32 %i.z, 7
  %.not.i22 = icmp sgt i8 %i.w, -1
  br i1 %.not.i22, label %_ZN4mold9read_ulebEPPh.exit23, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_ZN4mold9read_ulebEPPh.exit43, %.loopexit
  %.be103 = phi ptr [ %i.v, %.loopexit ], [ %i.bt, %_ZN4mold9read_ulebEPPh.exit43 ]
  %.06.i20.be = phi i64 [ %i.ac, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit43 ]
  %.0.i21.be = phi i32 [ %i.ad, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit43 ]
  br label %.loopexit, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit23:                    ; preds = %.loopexit
  %i.ae = icmp eq i64 %i.ac, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.af = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 1 dereferenceable(44) @.str.23)
  %i.ag = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA43_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.af, ptr noundef nonnull align 1 dereferenceable(43) @.str.24) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #27
  unreachable

bb.f:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit23
  %i.ah = icmp eq i64 %i.ac, %i.n
  br i1 %i.ah, label %bb.g, label %.preheader57

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi ptr [ %i.v, %bb.g ], [ %i.aj, %bb.h ] ; 3 uses
  %.06.i25 = phi i64 [ 0, %bb.g ], [ %i.aq, %bb.h ]
  %.0.i26 = phi i32 [ 0, %bb.g ], [ %i.ar, %bb.h ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !47  ; 2 uses
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i32
  %i.an = and i32 %.0.i26, 255                    ; 2 uses
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = or i64 %.06.i25, %i.ap                  ; 3 uses
  %i.ar = add nuw nsw i32 %i.an, 7
  %.not.i27 = icmp sgt i8 %i.ak, -1
  br i1 %.not.i27, label %_ZN4mold9read_ulebEPPh.exit28, label %bb.h, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit28:                    ; preds = %bb.h
  store i64 %i.aq, ptr %i.a, align 8, !tbaa !95
  switch i64 %i.aq, label %bb.i [
    i64 74, label %bb.k
    i64 17, label %bb.k
  ]

bb.i:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.as = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA42_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 1 dereferenceable(42) @.str.25)
  %i.at = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA49_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.as, ptr noundef nonnull align 1 dereferenceable(49) @.str.26) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !554
  %i.bb = and i32 %i.ba, -75
  %i.bc = or disjoint i32 %i.bb, 8
  store i32 %i.bc, ptr %i.az, align 8, !tbaa !555
  %i.bd = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRmEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.at, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %5) #27
  unreachable

.preheader57:                                     ; preds = %bb.f, %.preheader57
  %i.be = phi ptr [ %i.bf, %.preheader57 ], [ %i.v, %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 1
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !47
  %.not.i32 = icmp sgt i8 %i.bg, -1
  br i1 %.not.i32, label %_ZN4mold9read_ulebEPPh.exit33, label %.preheader57, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit33:                    ; preds = %.preheader57
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  br label %_ZN4mold9read_ulebEPPh.exit48

_ZN4mold9read_ulebEPPh.exit48:                    ; preds = %_ZN4mold9read_ulebEPPh.exit48.backedge, %_ZN4mold9read_ulebEPPh.exit33
  %i.bi = phi ptr [ %i.bh, %_ZN4mold9read_ulebEPPh.exit33 ], [ %.be, %_ZN4mold9read_ulebEPPh.exit48.backedge ] ; 2 uses
  %.06.i35 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit33 ], [ %.06.i35.be, %_ZN4mold9read_ulebEPPh.exit48.backedge ]
  %.0.i36 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit33 ], [ %.0.i36.be, %_ZN4mold9read_ulebEPPh.exit48.backedge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !47  ; 2 uses
  %i.bl = and i8 %i.bk, 127
  %i.bm = zext nneg i8 %i.bl to i32
  %i.bn = and i32 %.0.i36, 255                    ; 2 uses
  %i.bo = shl i32 %i.bm, %i.bn
  %i.bp = sext i32 %i.bo to i64
  %i.bq = or i64 %.06.i35, %i.bp                  ; 2 uses
  %i.br = add nuw nsw i32 %i.bn, 7
  %.not.i37 = icmp sgt i8 %i.bk, -1
  br i1 %.not.i37, label %_ZN4mold9read_ulebEPPh.exit38, label %_ZN4mold9read_ulebEPPh.exit48.backedge

_ZN4mold9read_ulebEPPh.exit48.backedge:           ; preds = %.preheader, %_ZN4mold9read_ulebEPPh.exit48, %bb.j
  %.be = phi ptr [ %i.bj, %_ZN4mold9read_ulebEPPh.exit48 ], [ %i.bt, %bb.j ], [ %i.cf, %.preheader ]
  %.06.i35.be = phi i64 [ %i.bq, %_ZN4mold9read_ulebEPPh.exit48 ], [ 0, %bb.j ], [ 0, %.preheader ]
  %.0.i36.be = phi i32 [ %i.br, %_ZN4mold9read_ulebEPPh.exit48 ], [ 0, %bb.j ], [ 0, %.preheader ]
  br label %_ZN4mold9read_ulebEPPh.exit48, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit38:                    ; preds = %_ZN4mold9read_ulebEPPh.exit48, %_ZN4mold9read_ulebEPPh.exit38
  %i.bs = phi ptr [ %i.bt, %_ZN4mold9read_ulebEPPh.exit38 ], [ %i.bj, %_ZN4mold9read_ulebEPPh.exit48 ] ; 2 uses
  %.06.i40 = phi i64 [ %i.ca, %_ZN4mold9read_ulebEPPh.exit38 ], [ 0, %_ZN4mold9read_ulebEPPh.exit48 ]
  %.0.i41 = phi i32 [ %i.cb, %_ZN4mold9read_ulebEPPh.exit38 ], [ 0, %_ZN4mold9read_ulebEPPh.exit48 ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 4 uses
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !47  ; 2 uses
  %i.bv = and i8 %i.bu, 127
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = and i32 %.0.i41, 255                    ; 2 uses
  %i.by = shl i32 %i.bw, %i.bx
  %i.bz = sext i32 %i.by to i64
  %i.ca = or i64 %.06.i40, %i.bz                  ; 3 uses
  %i.cb = add nuw nsw i32 %i.bx, 7
  %.not.i42 = icmp sgt i8 %i.bu, -1
  br i1 %.not.i42, label %_ZN4mold9read_ulebEPPh.exit43, label %_ZN4mold9read_ulebEPPh.exit38, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit43:                    ; preds = %_ZN4mold9read_ulebEPPh.exit38
  %i.cc = or i64 %i.ca, %i.bq
  %or.cond3 = icmp eq i64 %i.cc, 0
  br i1 %or.cond3, label %.loopexit.backedge, label %bb.j

bb.j:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit43
  %i.cd = icmp eq i64 %i.ca, 33
  br i1 %i.cd, label %.preheader, label %_ZN4mold9read_ulebEPPh.exit48.backedge

.preheader:                                       ; preds = %bb.j, %.preheader
  %i.ce = phi ptr [ %i.cf, %.preheader ], [ %i.bt, %bb.j ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 2 uses
  %i.cg = load i8, ptr %i.ce, align 1, !tbaa !47
  %.not.i47 = icmp sgt i8 %i.cg, -1
  br i1 %.not.i47, label %_ZN4mold9read_ulebEPPh.exit48.backedge, label %.preheader, !llvm.loop !28

bb.k:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit28, %_ZN4mold9read_ulebEPPh.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  ret ptr %i.ch
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZN4mold11read_scalarINS_6X86_64ENS_7IntegerIjLb1ELi4EEEEEmRNS_7ContextIT_EEPPhm(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !95
  switch i64 %2, label %bb.l [
    i64 25, label %_ZN4mold9read_ulebEPPh.exit
    i64 11, label %bb.b
    i64 12, label %bb.b
    i64 37, label %bb.b
    i64 41, label %bb.b
    i64 17, label %bb.b
    i64 5, label %bb.c
    i64 38, label %bb.c
    i64 42, label %bb.c
    i64 18, label %bb.c
    i64 39, label %bb.d
    i64 43, label %bb.d
    i64 6, label %bb.e
    i64 40, label %bb.e
    i64 44, label %bb.e
    i64 19, label %bb.e
    i64 7, label %bb.f
    i64 20, label %bb.f
    i64 14, label %bb.g
    i64 23, label %bb.g
    i64 31, label %bb.g
    i64 1, label %bb.h
    i64 16, label %bb.h
    i64 26, label %bb.i
    i64 27, label %bb.i
    i64 15, label %bb.i
    i64 21, label %bb.i
    i64 34, label %bb.i
    i64 35, label %bb.i
    i64 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %1, align 8, !tbaa !211
  %i.d = load i8, ptr %i.b, align 1, !tbaa !47
  %i.e = zext i8 %i.d to i64
  br label %_ZN4mold9read_ulebEPPh.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i = load i16, ptr %i.f, align 1
  %i.g = zext i16 %.0.copyload.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.h, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !211    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i16, ptr %i.j, align 1
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = load i8, ptr %i.i, align 1, !tbaa !47
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store ptr %i.q, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i23 = load i32, ptr %i.r, align 1
  %i.s = zext i32 %.0.copyload.i23 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.t, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i24 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %1, align 8, !tbaa !211
end_hunk_0
begin_hunk_1_@_ZN4mold5FatalINS_6X86_64EElsIRA43_KcEERS2_OT_:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(43) %1) #13
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(43) %1, i64 noundef %i.b) #13 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA42_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(42) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %1) #13
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(42) %1, i64 noundef %i.b) #13 ; 0 uses
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorISt4pairImmESaIS1_EE12emplace_backIJRN4mold7IntegerImLb1ELi8EEES8_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(8) %1, ptr noundef nonnull align 1 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !366  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.copyload.i.i.i = load i64, ptr %1, align 1
  store i64 %.0.copyload.i.i.i, ptr %i.b, align 8, !tbaa !557
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.0.copyload.i3.i.i = load i64, ptr %2, align 1
  store i64 %.0.copyload.i3.i.i, ptr %i.e, align 8, !tbaa !558
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.f, ptr %i.a, align 8, !tbaa !366
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !138    ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775792
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #27
  unreachable

_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 4                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 576460752303423487)
  %i.p = select i1 %i.n, i64 576460752303423487, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 4
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #26 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.j ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %1, align 1
  store i64 %.0.copyload.i.i.i.i, ptr %i.s, align 8, !tbaa !557
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.0.copyload.i3.i.i.i = load i64, ptr %2, align 1
  store i64 %.0.copyload.i3.i.i.i, ptr %i.t, align 8, !tbaa !558
  %.not10.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.r, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i.i ], [ %i.g, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !alias.scope !1242
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.r, %_ZNKSt6vectorISt4pairImmESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.v, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 16
  %.not.i24.i = icmp eq ptr %i.g, null
  br i1 %.not.i24.i, label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRN4mold7IntegerImLb1ELi8EEES8_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.z) #25
  br label %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRN4mold7IntegerImLb1ELi8EEES8_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRN4mold7IntegerImLb1ELi8EEES8_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit23.i, %bb.e
  store ptr %i.r, ptr %0, align 8, !tbaa !138
  store ptr %i.w, ptr %i.a, align 8, !tbaa !366
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.p
  store ptr %i.aa, ptr %i.c, align 8, !tbaa !130
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRN4mold7IntegerImLb1ELi8EEES8_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  %i.ab = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt4pairImmESaIS1_EE17_M_realloc_insertIJRN4mold7IntegerImLb1ELi8EEES8_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit ], [ %i.b, %bb.b ]
  ret ptr %i.ab
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold14find_cu_abbrevINS_6X86_64ENS_14CuHdrDwarf5_32IS1_EEEEPhRNS_7ContextIT_EEPS4_RKT0_(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %5 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 7 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1244
  %.not = icmp eq i8 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.d = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA39_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(39) @.str.22)
  %i.e = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKhEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 6 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1245
  switch i8 %i.g, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.d
    i8 5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %1, align 8, !tbaa !211
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 1 dereferenceable(35) @.str.28) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !554
  %i.r = and i32 %i.q, -75
  %i.s = or disjoint i32 %i.r, 8
  store i32 %i.s, ptr %i.p, align 8, !tbaa !555
  %i.t = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKhEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #27
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.promoted.i = load ptr, ptr %1, align 8, !tbaa !211
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %.promoted.i, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %.06.i = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.g ]
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.ad, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !211
  %i.w = load i8, ptr %i.u, align 1, !tbaa !47    ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i32
  %i.z = and i32 %.0.i, 255                       ; 2 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = or i64 %.06.i, %i.ab                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.z, 7
  %.not.i = icmp sgt i8 %i.w, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %bb.g, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 14144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !545
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload.i = load i32, ptr %i.ag, align 1
  %i.ah = zext i32 %.0.copyload.i to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ah
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %_ZN4mold9read_ulebEPPh.exit
  %i.aj = phi ptr [ %i.ai, %_ZN4mold9read_ulebEPPh.exit ], [ %.be107, %.loopexit.backedge ] ; 2 uses
  %.06.i24 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.06.i24.be, %.loopexit.backedge ]
  %.0.i25 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.0.i25.be, %.loopexit.backedge ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1 ; 3 uses
  %i.al = load i8, ptr %i.aj, align 1, !tbaa !47  ; 2 uses
  %i.am = and i8 %i.al, 127
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = and i32 %.0.i25, 255                    ; 2 uses
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = or i64 %.06.i24, %i.aq                  ; 3 uses
  %i.as = add nuw nsw i32 %i.ao, 7
  %.not.i26 = icmp sgt i8 %i.al, -1
  br i1 %.not.i26, label %_ZN4mold9read_ulebEPPh.exit27, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_ZN4mold9read_ulebEPPh.exit47, %.loopexit
  %.be107 = phi ptr [ %i.ak, %.loopexit ], [ %i.ci, %_ZN4mold9read_ulebEPPh.exit47 ]
  %.06.i24.be = phi i64 [ %i.ar, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit47 ]
  %.0.i25.be = phi i32 [ %i.as, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit47 ]
  br label %.loopexit, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit27:                    ; preds = %.loopexit
  %i.at = icmp eq i64 %i.ar, 0
  br i1 %i.at, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.au = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 1 dereferenceable(44) @.str.23)
  %i.av = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA43_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.au, ptr noundef nonnull align 1 dereferenceable(43) @.str.24) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %5) #27
  unreachable

bb.i:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit27
  %i.aw = icmp eq i64 %i.ar, %i.ac
  br i1 %i.aw, label %bb.j, label %.preheader61

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.ax = phi ptr [ %i.ak, %bb.j ], [ %i.ay, %bb.k ] ; 3 uses
  %.06.i29 = phi i64 [ 0, %bb.j ], [ %i.bf, %bb.k ]
  %.0.i30 = phi i32 [ 0, %bb.j ], [ %i.bg, %bb.k ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !47  ; 2 uses
  %i.ba = and i8 %i.az, 127
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = and i32 %.0.i30, 255                    ; 2 uses
  %i.bd = shl i32 %i.bb, %i.bc
  %i.be = sext i32 %i.bd to i64
  %i.bf = or i64 %.06.i29, %i.be                  ; 3 uses
  %i.bg = add nuw nsw i32 %i.bc, 7
  %.not.i31 = icmp sgt i8 %i.az, -1
  br i1 %.not.i31, label %_ZN4mold9read_ulebEPPh.exit32, label %bb.k, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit32:                    ; preds = %bb.k
  store i64 %i.bf, ptr %i.a, align 8, !tbaa !95
  switch i64 %i.bf, label %bb.l [
    i64 74, label %bb.n
    i64 17, label %bb.n
  ]

bb.l:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.bh = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA42_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 1 dereferenceable(42) @.str.25)
  %i.bi = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA49_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bh, ptr noundef nonnull align 1 dereferenceable(49) @.str.26) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !53
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !554
  %i.bq = and i32 %i.bp, -75
  %i.br = or disjoint i32 %i.bq, 8
  store i32 %i.br, ptr %i.bo, align 8, !tbaa !555
  %i.bs = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRmEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bi, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #27
  unreachable

.preheader61:                                     ; preds = %bb.i, %.preheader61
  %i.bt = phi ptr [ %i.bu, %.preheader61 ], [ %i.ak, %bb.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !47
  %.not.i36 = icmp sgt i8 %i.bv, -1
  br i1 %.not.i36, label %_ZN4mold9read_ulebEPPh.exit37, label %.preheader61, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit37:                    ; preds = %.preheader61
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  br label %_ZN4mold9read_ulebEPPh.exit52

_ZN4mold9read_ulebEPPh.exit52:                    ; preds = %_ZN4mold9read_ulebEPPh.exit52.backedge, %_ZN4mold9read_ulebEPPh.exit37
  %i.bx = phi ptr [ %i.bw, %_ZN4mold9read_ulebEPPh.exit37 ], [ %.be, %_ZN4mold9read_ulebEPPh.exit52.backedge ] ; 2 uses
  %.06.i39 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit37 ], [ %.06.i39.be, %_ZN4mold9read_ulebEPPh.exit52.backedge ]
  %.0.i40 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit37 ], [ %.0.i40.be, %_ZN4mold9read_ulebEPPh.exit52.backedge ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !47  ; 2 uses
  %i.ca = and i8 %i.bz, 127
  %i.cb = zext nneg i8 %i.ca to i32
  %i.cc = and i32 %.0.i40, 255                    ; 2 uses
  %i.cd = shl i32 %i.cb, %i.cc
  %i.ce = sext i32 %i.cd to i64
  %i.cf = or i64 %.06.i39, %i.ce                  ; 2 uses
  %i.cg = add nuw nsw i32 %i.cc, 7
  %.not.i41 = icmp sgt i8 %i.bz, -1
  br i1 %.not.i41, label %_ZN4mold9read_ulebEPPh.exit42, label %_ZN4mold9read_ulebEPPh.exit52.backedge

_ZN4mold9read_ulebEPPh.exit52.backedge:           ; preds = %.preheader, %_ZN4mold9read_ulebEPPh.exit52, %bb.m
  %.be = phi ptr [ %i.by, %_ZN4mold9read_ulebEPPh.exit52 ], [ %i.ci, %bb.m ], [ %i.cu, %.preheader ]
  %.06.i39.be = phi i64 [ %i.cf, %_ZN4mold9read_ulebEPPh.exit52 ], [ 0, %bb.m ], [ 0, %.preheader ]
  %.0.i40.be = phi i32 [ %i.cg, %_ZN4mold9read_ulebEPPh.exit52 ], [ 0, %bb.m ], [ 0, %.preheader ]
  br label %_ZN4mold9read_ulebEPPh.exit52, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit42:                    ; preds = %_ZN4mold9read_ulebEPPh.exit52, %_ZN4mold9read_ulebEPPh.exit42
  %i.ch = phi ptr [ %i.ci, %_ZN4mold9read_ulebEPPh.exit42 ], [ %i.by, %_ZN4mold9read_ulebEPPh.exit52 ] ; 2 uses
  %.06.i44 = phi i64 [ %i.cp, %_ZN4mold9read_ulebEPPh.exit42 ], [ 0, %_ZN4mold9read_ulebEPPh.exit52 ]
  %.0.i45 = phi i32 [ %i.cq, %_ZN4mold9read_ulebEPPh.exit42 ], [ 0, %_ZN4mold9read_ulebEPPh.exit52 ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 4 uses
  %i.cj = load i8, ptr %i.ch, align 1, !tbaa !47  ; 2 uses
  %i.ck = and i8 %i.cj, 127
  %i.cl = zext nneg i8 %i.ck to i32
  %i.cm = and i32 %.0.i45, 255                    ; 2 uses
  %i.cn = shl i32 %i.cl, %i.cm
  %i.co = sext i32 %i.cn to i64
  %i.cp = or i64 %.06.i44, %i.co                  ; 3 uses
  %i.cq = add nuw nsw i32 %i.cm, 7
  %.not.i46 = icmp sgt i8 %i.cj, -1
  br i1 %.not.i46, label %_ZN4mold9read_ulebEPPh.exit47, label %_ZN4mold9read_ulebEPPh.exit42, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit47:                    ; preds = %_ZN4mold9read_ulebEPPh.exit42
  %i.cr = or i64 %i.cp, %i.cf
  %or.cond3 = icmp eq i64 %i.cr, 0
  br i1 %or.cond3, label %.loopexit.backedge, label %bb.m

bb.m:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit47
  %i.cs = icmp eq i64 %i.cp, 33
  br i1 %i.cs, label %.preheader, label %_ZN4mold9read_ulebEPPh.exit52.backedge

.preheader:                                       ; preds = %bb.m, %.preheader
  %i.ct = phi ptr [ %i.cu, %.preheader ], [ %i.ci, %bb.m ] ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !47
  %.not.i51 = icmp sgt i8 %i.cv, -1
  br i1 %.not.i51, label %_ZN4mold9read_ulebEPPh.exit52.backedge, label %.preheader, !llvm.loop !28

bb.n:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit32, %_ZN4mold9read_ulebEPPh.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  ret ptr %i.cw
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %0, ptr noundef nonnull align 1 dereferenceable(35) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(35) %1) #13
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(35) %1, i64 noundef %i.b) #13 ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold14find_cu_abbrevINS_6X86_64ENS_14CuHdrDwarf2_64IS1_EEEEPhRNS_7ContextIT_EEPS4_RKT0_(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(23) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 22 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1247
  %.not = icmp eq i8 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.d = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA39_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(39) @.str.22)
  %i.e = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKhEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %.promoted.i = load ptr, ptr %1, align 8, !tbaa !211
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.f = phi ptr [ %.promoted.i, %bb.c ], [ %i.g, %bb.d ] ; 2 uses
  %.06.i = phi i64 [ 0, %bb.c ], [ %i.n, %bb.d ]
  %.0.i = phi i32 [ 0, %bb.c ], [ %i.o, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !211
  %i.h = load i8, ptr %i.f, align 1, !tbaa !47    ; 2 uses
  %i.i = and i8 %i.h, 127
  %i.j = zext nneg i8 %i.i to i32
  %i.k = and i32 %.0.i, 255                       ; 2 uses
  %i.l = shl i32 %i.j, %i.k
  %i.m = sext i32 %i.l to i64
  %i.n = or i64 %.06.i, %i.m                      ; 2 uses
  %i.o = add nuw nsw i32 %i.k, 7
  %.not.i = icmp sgt i8 %i.h, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %bb.d, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !545
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 14
  %.0.copyload.i = load i64, ptr %i.r, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %.0.copyload.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %_ZN4mold9read_ulebEPPh.exit
  %i.t = phi ptr [ %i.s, %_ZN4mold9read_ulebEPPh.exit ], [ %.be103, %.loopexit.backedge ] ; 2 uses
  %.06.i20 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.06.i20.be, %.loopexit.backedge ]
  %.0.i21 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.0.i21.be, %.loopexit.backedge ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.t, align 1, !tbaa !47    ; 2 uses
  %i.w = and i8 %i.v, 127
  %i.x = zext nneg i8 %i.w to i32
  %i.y = and i32 %.0.i21, 255                     ; 2 uses
  %i.z = shl i32 %i.x, %i.y
  %i.aa = zext i32 %i.z to i64
  %i.ab = or i64 %.06.i20, %i.aa                  ; 3 uses
  %i.ac = add nuw nsw i32 %i.y, 7
  %.not.i22 = icmp sgt i8 %i.v, -1
  br i1 %.not.i22, label %_ZN4mold9read_ulebEPPh.exit23, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_ZN4mold9read_ulebEPPh.exit43, %.loopexit
  %.be103 = phi ptr [ %i.u, %.loopexit ], [ %i.bs, %_ZN4mold9read_ulebEPPh.exit43 ]
  %.06.i20.be = phi i64 [ %i.ab, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit43 ]
  %.0.i21.be = phi i32 [ %i.ac, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit43 ]
  br label %.loopexit, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit23:                    ; preds = %.loopexit
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.ae = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 1 dereferenceable(44) @.str.23)
  %i.af = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA43_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ae, ptr noundef nonnull align 1 dereferenceable(43) @.str.24) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #27
  unreachable

bb.f:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit23
  %i.ag = icmp eq i64 %i.ab, %i.n
  br i1 %i.ag, label %bb.g, label %.preheader57

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %i.ah = phi ptr [ %i.u, %bb.g ], [ %i.ai, %bb.h ] ; 3 uses
  %.06.i25 = phi i64 [ 0, %bb.g ], [ %i.ap, %bb.h ]
  %.0.i26 = phi i32 [ 0, %bb.g ], [ %i.aq, %bb.h ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ah, align 1, !tbaa !47  ; 2 uses
  %i.ak = and i8 %i.aj, 127
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = and i32 %.0.i26, 255                    ; 2 uses
  %i.an = shl i32 %i.al, %i.am
  %i.ao = sext i32 %i.an to i64
  %i.ap = or i64 %.06.i25, %i.ao                  ; 3 uses
  %i.aq = add nuw nsw i32 %i.am, 7
  %.not.i27 = icmp sgt i8 %i.aj, -1
  br i1 %.not.i27, label %_ZN4mold9read_ulebEPPh.exit28, label %bb.h, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit28:                    ; preds = %bb.h
  store i64 %i.ap, ptr %i.a, align 8, !tbaa !95
  switch i64 %i.ap, label %bb.i [
    i64 74, label %bb.k
    i64 17, label %bb.k
  ]

bb.i:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.ar = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA42_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 1 dereferenceable(42) @.str.25)
  %i.as = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA49_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ar, ptr noundef nonnull align 1 dereferenceable(49) @.str.26) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !53
  %i.av = getelementptr i8, ptr %i.au, i64 -24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !554
  %i.ba = and i32 %i.az, -75
  %i.bb = or disjoint i32 %i.ba, 8
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !555
  %i.bc = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRmEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.as, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %5) #27
  unreachable

.preheader57:                                     ; preds = %bb.f, %.preheader57
  %i.bd = phi ptr [ %i.be, %.preheader57 ], [ %i.u, %bb.f ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !47
  %.not.i32 = icmp sgt i8 %i.bf, -1
  br i1 %.not.i32, label %_ZN4mold9read_ulebEPPh.exit33, label %.preheader57, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit33:                    ; preds = %.preheader57
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  br label %_ZN4mold9read_ulebEPPh.exit48

_ZN4mold9read_ulebEPPh.exit48:                    ; preds = %_ZN4mold9read_ulebEPPh.exit48.backedge, %_ZN4mold9read_ulebEPPh.exit33
  %i.bh = phi ptr [ %i.bg, %_ZN4mold9read_ulebEPPh.exit33 ], [ %.be, %_ZN4mold9read_ulebEPPh.exit48.backedge ] ; 2 uses
  %.06.i35 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit33 ], [ %.06.i35.be, %_ZN4mold9read_ulebEPPh.exit48.backedge ]
  %.0.i36 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit33 ], [ %.0.i36.be, %_ZN4mold9read_ulebEPPh.exit48.backedge ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !47  ; 2 uses
  %i.bk = and i8 %i.bj, 127
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = and i32 %.0.i36, 255                    ; 2 uses
  %i.bn = shl i32 %i.bl, %i.bm
  %i.bo = sext i32 %i.bn to i64
  %i.bp = or i64 %.06.i35, %i.bo                  ; 2 uses
  %i.bq = add nuw nsw i32 %i.bm, 7
  %.not.i37 = icmp sgt i8 %i.bj, -1
  br i1 %.not.i37, label %_ZN4mold9read_ulebEPPh.exit38, label %_ZN4mold9read_ulebEPPh.exit48.backedge

_ZN4mold9read_ulebEPPh.exit48.backedge:           ; preds = %.preheader, %_ZN4mold9read_ulebEPPh.exit48, %bb.j
  %.be = phi ptr [ %i.bi, %_ZN4mold9read_ulebEPPh.exit48 ], [ %i.bs, %bb.j ], [ %i.ce, %.preheader ]
  %.06.i35.be = phi i64 [ %i.bp, %_ZN4mold9read_ulebEPPh.exit48 ], [ 0, %bb.j ], [ 0, %.preheader ]
  %.0.i36.be = phi i32 [ %i.bq, %_ZN4mold9read_ulebEPPh.exit48 ], [ 0, %bb.j ], [ 0, %.preheader ]
  br label %_ZN4mold9read_ulebEPPh.exit48, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit38:                    ; preds = %_ZN4mold9read_ulebEPPh.exit48, %_ZN4mold9read_ulebEPPh.exit38
  %i.br = phi ptr [ %i.bs, %_ZN4mold9read_ulebEPPh.exit38 ], [ %i.bi, %_ZN4mold9read_ulebEPPh.exit48 ] ; 2 uses
  %.06.i40 = phi i64 [ %i.bz, %_ZN4mold9read_ulebEPPh.exit38 ], [ 0, %_ZN4mold9read_ulebEPPh.exit48 ]
  %.0.i41 = phi i32 [ %i.ca, %_ZN4mold9read_ulebEPPh.exit38 ], [ 0, %_ZN4mold9read_ulebEPPh.exit48 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 1 ; 4 uses
  %i.bt = load i8, ptr %i.br, align 1, !tbaa !47  ; 2 uses
  %i.bu = and i8 %i.bt, 127
  %i.bv = zext nneg i8 %i.bu to i32
  %i.bw = and i32 %.0.i41, 255                    ; 2 uses
  %i.bx = shl i32 %i.bv, %i.bw
  %i.by = sext i32 %i.bx to i64
  %i.bz = or i64 %.06.i40, %i.by                  ; 3 uses
  %i.ca = add nuw nsw i32 %i.bw, 7
  %.not.i42 = icmp sgt i8 %i.bt, -1
  br i1 %.not.i42, label %_ZN4mold9read_ulebEPPh.exit43, label %_ZN4mold9read_ulebEPPh.exit38, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit43:                    ; preds = %_ZN4mold9read_ulebEPPh.exit38
  %i.cb = or i64 %i.bz, %i.bp
  %or.cond3 = icmp eq i64 %i.cb, 0
  br i1 %or.cond3, label %.loopexit.backedge, label %bb.j

bb.j:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit43
  %i.cc = icmp eq i64 %i.bz, 33
  br i1 %i.cc, label %.preheader, label %_ZN4mold9read_ulebEPPh.exit48.backedge

.preheader:                                       ; preds = %bb.j, %.preheader
  %i.cd = phi ptr [ %i.ce, %.preheader ], [ %i.bs, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !47
  %.not.i47 = icmp sgt i8 %i.cf, -1
  br i1 %.not.i47, label %_ZN4mold9read_ulebEPPh.exit48.backedge, label %.preheader, !llvm.loop !28

bb.k:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit28, %_ZN4mold9read_ulebEPPh.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  ret ptr %i.cg
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef i64 @_ZN4mold11read_scalarINS_6X86_64ENS_7IntegerImLb1ELi8EEEEEmRNS_7ContextIT_EEPPhm(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !95
  switch i64 %2, label %bb.l [
    i64 25, label %_ZN4mold9read_ulebEPPh.exit
    i64 11, label %bb.b
    i64 12, label %bb.b
    i64 37, label %bb.b
    i64 41, label %bb.b
    i64 17, label %bb.b
    i64 5, label %bb.c
    i64 38, label %bb.c
    i64 42, label %bb.c
    i64 18, label %bb.c
    i64 39, label %bb.d
    i64 43, label %bb.d
    i64 6, label %bb.e
    i64 40, label %bb.e
    i64 44, label %bb.e
    i64 19, label %bb.e
    i64 7, label %bb.f
    i64 20, label %bb.f
    i64 14, label %bb.g
    i64 23, label %bb.g
    i64 31, label %bb.g
    i64 1, label %bb.h
    i64 16, label %bb.h
    i64 26, label %bb.i
    i64 27, label %bb.i
    i64 15, label %bb.i
    i64 21, label %bb.i
    i64 34, label %bb.i
    i64 35, label %bb.i
    i64 8, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store ptr %i.c, ptr %1, align 8, !tbaa !211
  %i.d = load i8, ptr %i.b, align 1, !tbaa !47
  %i.e = zext i8 %i.d to i64
  br label %_ZN4mold9read_ulebEPPh.exit

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i = load i16, ptr %i.f, align 1
  %i.g = zext i16 %.0.copyload.i to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.h, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.d:                                             ; preds = %bb.a, %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !211    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.k = load i16, ptr %i.j, align 1
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = load i8, ptr %i.i, align 1, !tbaa !47
  %i.o = zext i8 %i.n to i64
  %i.p = or disjoint i64 %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store ptr %i.q, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.r = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i23 = load i32, ptr %i.r, align 1
  %i.s = zext i32 %.0.copyload.i23 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.t, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.f:                                             ; preds = %bb.a, %bb.a
  %i.u = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i24 = load i64, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.g:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.w = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i25 = load i64, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.h:                                             ; preds = %bb.a, %bb.a
  %i.y = load ptr, ptr %1, align 8, !tbaa !211    ; 2 uses
  %.0.copyload.i26 = load i64, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr %i.z, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.i:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %.promoted.i = load ptr, ptr %1, align 8, !tbaa !211
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.aa = phi ptr [ %.promoted.i, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.06.i = phi i64 [ 0, %bb.i ], [ %i.ai, %bb.j ]
  %.0.i = phi i32 [ 0, %bb.i ], [ %i.aj, %bb.j ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  store ptr %i.ab, ptr %1, align 8, !tbaa !211
  %i.ac = load i8, ptr %i.aa, align 1, !tbaa !47  ; 2 uses
  %i.ad = and i8 %i.ac, 127
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = and i32 %.0.i, 255                      ; 2 uses
  %i.ag = shl i32 %i.ae, %i.af
  %i.ah = sext i32 %i.ag to i64
  %i.ai = or i64 %.06.i, %i.ah                    ; 2 uses
  %i.aj = add nuw nsw i32 %i.af, 7
  %.not.i = icmp sgt i8 %i.ac, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %bb.j, !llvm.loop !28

bb.k:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr %1, align 8, !tbaa !211   ; 2 uses
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #28
  %i.am = getelementptr i8, ptr %i.ak, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 1
  store ptr %i.an, ptr %1, align 8, !tbaa !211
  br label %_ZN4mold9read_ulebEPPh.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.ao = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA43_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(43) @.str.27) ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !53
  %i.ar = getelementptr i8, ptr %i.aq, i64 -24
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !554
  %i.aw = and i32 %i.av, -75
  %i.ax = or disjoint i32 %i.aw, 8
  store i32 %i.ax, ptr %i.au, align 8, !tbaa !555
  %i.ay = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRmEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #27
  unreachable

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %bb.j, %bb.a, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.k ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.p, %bb.d ], [ %i.s, %bb.e ], [ %.0.copyload.i24, %bb.f ], [ %.0.copyload.i25, %bb.g ], [ %.0.copyload.i26, %bb.h ], [ 0, %bb.a ], [ %i.ai, %bb.j ]
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN4mold14find_cu_abbrevINS_6X86_64ENS_14CuHdrDwarf5_64IS1_EEEEPhRNS_7ContextIT_EEPS4_RKT0_(ptr noundef nonnull align 8 dereferenceable(14448) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(24) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %4 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %5 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %"class.mold::Fatal", align 8       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !1249
  %.not = icmp eq i8 %i.c, 8
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.d = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA39_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %3, ptr noundef nonnull align 1 dereferenceable(39) @.str.22)
  %i.e = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKhEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.b) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %3) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 14 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !1250
  switch i8 %i.g, label %bb.e [
    i8 1, label %bb.f
    i8 3, label %bb.f
    i8 4, label %bb.d
    i8 5, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.h = load ptr, ptr %1, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %1, align 8, !tbaa !211
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.j = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA35_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %4, ptr noundef nonnull align 1 dereferenceable(35) @.str.28) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !53
  %i.m = getelementptr i8, ptr %i.l, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !554
  %i.r = and i32 %i.q, -75
  %i.s = or disjoint i32 %i.r, 8
  store i32 %i.s, ptr %i.p, align 8, !tbaa !555
  %i.t = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRKhEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.f) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %4) #27
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.d
  %.promoted.i = load ptr, ptr %1, align 8, !tbaa !211
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ %.promoted.i, %bb.f ], [ %i.v, %bb.g ] ; 2 uses
  %.06.i = phi i64 [ 0, %bb.f ], [ %i.ac, %bb.g ]
  %.0.i = phi i32 [ 0, %bb.f ], [ %i.ad, %bb.g ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  store ptr %i.v, ptr %1, align 8, !tbaa !211
  %i.w = load i8, ptr %i.u, align 1, !tbaa !47    ; 2 uses
  %i.x = and i8 %i.w, 127
  %i.y = zext nneg i8 %i.x to i32
  %i.z = and i32 %.0.i, 255                       ; 2 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = or i64 %.06.i, %i.ab                    ; 2 uses
  %i.ad = add nuw nsw i32 %i.z, 7
  %.not.i = icmp sgt i8 %i.w, -1
  br i1 %.not.i, label %_ZN4mold9read_ulebEPPh.exit, label %bb.g, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit:                      ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 14144
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !545
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.0.copyload.i = load i64, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %.0.copyload.i
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %_ZN4mold9read_ulebEPPh.exit
  %i.ai = phi ptr [ %i.ah, %_ZN4mold9read_ulebEPPh.exit ], [ %.be107, %.loopexit.backedge ] ; 2 uses
  %.06.i24 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.06.i24.be, %.loopexit.backedge ]
  %.0.i25 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit ], [ %.0.i25.be, %.loopexit.backedge ]
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 3 uses
  %i.ak = load i8, ptr %i.ai, align 1, !tbaa !47  ; 2 uses
  %i.al = and i8 %i.ak, 127
  %i.am = zext nneg i8 %i.al to i32
  %i.an = and i32 %.0.i25, 255                    ; 2 uses
  %i.ao = shl i32 %i.am, %i.an
  %i.ap = zext i32 %i.ao to i64
  %i.aq = or i64 %.06.i24, %i.ap                  ; 3 uses
  %i.ar = add nuw nsw i32 %i.an, 7
  %.not.i26 = icmp sgt i8 %i.ak, -1
  br i1 %.not.i26, label %_ZN4mold9read_ulebEPPh.exit27, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_ZN4mold9read_ulebEPPh.exit47, %.loopexit
  %.be107 = phi ptr [ %i.aj, %.loopexit ], [ %i.ch, %_ZN4mold9read_ulebEPPh.exit47 ]
  %.06.i24.be = phi i64 [ %i.aq, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit47 ]
  %.0.i25.be = phi i32 [ %i.ar, %.loopexit ], [ 0, %_ZN4mold9read_ulebEPPh.exit47 ]
  br label %.loopexit, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit27:                    ; preds = %.loopexit
  %i.as = icmp eq i64 %i.aq, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.at = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA44_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %5, ptr noundef nonnull align 1 dereferenceable(44) @.str.23)
  %i.au = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA43_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.at, ptr noundef nonnull align 1 dereferenceable(43) @.str.24) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %5) #27
  unreachable

bb.i:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit27
  %i.av = icmp eq i64 %i.aq, %i.ac
  br i1 %i.av, label %bb.j, label %.preheader61

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %i.aw = phi ptr [ %i.aj, %bb.j ], [ %i.ax, %bb.k ] ; 3 uses
  %.06.i29 = phi i64 [ 0, %bb.j ], [ %i.be, %bb.k ]
  %.0.i30 = phi i32 [ 0, %bb.j ], [ %i.bf, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !47  ; 2 uses
  %i.az = and i8 %i.ay, 127
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = and i32 %.0.i30, 255                    ; 2 uses
  %i.bc = shl i32 %i.ba, %i.bb
  %i.bd = sext i32 %i.bc to i64
  %i.be = or i64 %.06.i29, %i.bd                  ; 3 uses
  %i.bf = add nuw nsw i32 %i.bb, 7
  %.not.i31 = icmp sgt i8 %i.ay, -1
  br i1 %.not.i31, label %_ZN4mold9read_ulebEPPh.exit32, label %bb.k, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit32:                    ; preds = %bb.k
  store i64 %i.be, ptr %i.a, align 8, !tbaa !95
  switch i64 %i.be, label %bb.l [
    i64 74, label %bb.n
    i64 17, label %bb.n
  ]

bb.l:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @_ZN4mold5FatalINS_6X86_64EEC1ERNS_7ContextIS1_EE(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  %i.bg = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA42_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %6, ptr noundef nonnull align 1 dereferenceable(42) @.str.25)
  %i.bh = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRA49_KcEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bg, ptr noundef nonnull align 1 dereferenceable(49) @.str.26) ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !53
  %i.bk = getelementptr i8, ptr %i.bj, i64 -24
  %i.bl = load i64, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !554
  %i.bp = and i32 %i.bo, -75
  %i.bq = or disjoint i32 %i.bp, 8
  store i32 %i.bq, ptr %i.bn, align 8, !tbaa !555
  %i.br = call noundef nonnull align 8 dereferenceable(408) ptr @_ZN4mold5FatalINS_6X86_64EElsIRmEERS2_OT_(ptr noundef nonnull align 8 dereferenceable(408) %i.bh, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  call void @_ZN4mold5FatalINS_6X86_64EED1Ev(ptr noundef nonnull align 8 dead_on_return(408) dereferenceable(408) %6) #27
  unreachable

.preheader61:                                     ; preds = %bb.i, %.preheader61
  %i.bs = phi ptr [ %i.bt, %.preheader61 ], [ %i.aj, %bb.i ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bs, align 1, !tbaa !47
  %.not.i36 = icmp sgt i8 %i.bu, -1
  br i1 %.not.i36, label %_ZN4mold9read_ulebEPPh.exit37, label %.preheader61, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit37:                    ; preds = %.preheader61
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  br label %_ZN4mold9read_ulebEPPh.exit52

_ZN4mold9read_ulebEPPh.exit52:                    ; preds = %_ZN4mold9read_ulebEPPh.exit52.backedge, %_ZN4mold9read_ulebEPPh.exit37
  %i.bw = phi ptr [ %i.bv, %_ZN4mold9read_ulebEPPh.exit37 ], [ %.be, %_ZN4mold9read_ulebEPPh.exit52.backedge ] ; 2 uses
  %.06.i39 = phi i64 [ 0, %_ZN4mold9read_ulebEPPh.exit37 ], [ %.06.i39.be, %_ZN4mold9read_ulebEPPh.exit52.backedge ]
  %.0.i40 = phi i32 [ 0, %_ZN4mold9read_ulebEPPh.exit37 ], [ %.0.i40.be, %_ZN4mold9read_ulebEPPh.exit52.backedge ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1 ; 2 uses
  %i.by = load i8, ptr %i.bw, align 1, !tbaa !47  ; 2 uses
  %i.bz = and i8 %i.by, 127
  %i.ca = zext nneg i8 %i.bz to i32
  %i.cb = and i32 %.0.i40, 255                    ; 2 uses
  %i.cc = shl i32 %i.ca, %i.cb
  %i.cd = sext i32 %i.cc to i64
  %i.ce = or i64 %.06.i39, %i.cd                  ; 2 uses
  %i.cf = add nuw nsw i32 %i.cb, 7
  %.not.i41 = icmp sgt i8 %i.by, -1
  br i1 %.not.i41, label %_ZN4mold9read_ulebEPPh.exit42, label %_ZN4mold9read_ulebEPPh.exit52.backedge

_ZN4mold9read_ulebEPPh.exit52.backedge:           ; preds = %.preheader, %_ZN4mold9read_ulebEPPh.exit52, %bb.m
  %.be = phi ptr [ %i.bx, %_ZN4mold9read_ulebEPPh.exit52 ], [ %i.ch, %bb.m ], [ %i.ct, %.preheader ]
  %.06.i39.be = phi i64 [ %i.ce, %_ZN4mold9read_ulebEPPh.exit52 ], [ 0, %bb.m ], [ 0, %.preheader ]
  %.0.i40.be = phi i32 [ %i.cf, %_ZN4mold9read_ulebEPPh.exit52 ], [ 0, %bb.m ], [ 0, %.preheader ]
  br label %_ZN4mold9read_ulebEPPh.exit52, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit42:                    ; preds = %_ZN4mold9read_ulebEPPh.exit52, %_ZN4mold9read_ulebEPPh.exit42
  %i.cg = phi ptr [ %i.ch, %_ZN4mold9read_ulebEPPh.exit42 ], [ %i.bx, %_ZN4mold9read_ulebEPPh.exit52 ] ; 2 uses
  %.06.i44 = phi i64 [ %i.co, %_ZN4mold9read_ulebEPPh.exit42 ], [ 0, %_ZN4mold9read_ulebEPPh.exit52 ]
  %.0.i45 = phi i32 [ %i.cp, %_ZN4mold9read_ulebEPPh.exit42 ], [ 0, %_ZN4mold9read_ulebEPPh.exit52 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 1 ; 4 uses
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !47  ; 2 uses
  %i.cj = and i8 %i.ci, 127
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = and i32 %.0.i45, 255                    ; 2 uses
  %i.cm = shl i32 %i.ck, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = or i64 %.06.i44, %i.cn                  ; 3 uses
  %i.cp = add nuw nsw i32 %i.cl, 7
  %.not.i46 = icmp sgt i8 %i.ci, -1
  br i1 %.not.i46, label %_ZN4mold9read_ulebEPPh.exit47, label %_ZN4mold9read_ulebEPPh.exit42, !llvm.loop !28

_ZN4mold9read_ulebEPPh.exit47:                    ; preds = %_ZN4mold9read_ulebEPPh.exit42
  %i.cq = or i64 %i.co, %i.ce
  %or.cond3 = icmp eq i64 %i.cq, 0
  br i1 %or.cond3, label %.loopexit.backedge, label %bb.m

bb.m:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit47
  %i.cr = icmp eq i64 %i.co, 33
  br i1 %i.cr, label %.preheader, label %_ZN4mold9read_ulebEPPh.exit52.backedge

.preheader:                                       ; preds = %bb.m, %.preheader
  %i.cs = phi ptr [ %i.ct, %.preheader ], [ %i.ch, %bb.m ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1 ; 2 uses
  %i.cu = load i8, ptr %i.cs, align 1, !tbaa !47
  %.not.i51 = icmp sgt i8 %i.cu, -1
  br i1 %.not.i51, label %_ZN4mold9read_ulebEPPh.exit52.backedge, label %.preheader, !llvm.loop !28

bb.n:                                             ; preds = %_ZN4mold9read_ulebEPPh.exit32, %_ZN4mold9read_ulebEPPh.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  ret ptr %i.cv
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::wait_context_vertex", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d2::for_each_root_task.630", align 64 ; 10 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !74
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.e, align 8, !tbaa !91
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.b, align 4, !tbaa !47
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #13
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_RNS0_2d118task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d119wait_context_vertexE, i64 16), ptr %3, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.g, align 8, !tbaa !119
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.j, align 64, !tbaa !126
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %1, ptr %i.k, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %3, ptr %i.l, align 16, !tbaa !359
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %5, ptr %i.m, align 8, !tbaa !361
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %2, ptr %i.n, align 32, !tbaa !194
  %i.o = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = ptrtoint ptr %i.g to i64
  call void @_ZN3tbb6detail2r114notify_waitersEm(i64 noundef %i.p) #13
  br label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i: ; preds = %bb.c, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_S6_St26random_access_iterator_tagEE, i64 16), ptr %4, align 64, !tbaa !53
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_RNS0_2d118task_group_contextE.exit

_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_RNS0_2d118task_group_contextE.exit: ; preds = %bb.a, %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i
  %i.q = load atomic i8, ptr %i.c monotonic, align 1
  %i.r = icmp eq i8 %i.q, -1
  br i1 %i.r, label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_RNS0_2d118task_group_contextE.exit
  call void @_ZN3tbb6detail2r17destroyERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #13
  br label %_ZN3tbb6detail2d118task_group_contextD2Ev.exit

_ZN3tbb6detail2d118task_group_contextD2Ev.exit:   ; preds = %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_RNS0_2d118task_group_contextE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_S6_St26random_access_iterator_tagED0Ev(ptr noundef nonnull align 64 dereferenceable(105) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZdlPvmSt11align_val_t(ptr noundef nonnull %0, i64 noundef 128, i64 noundef 64) #25
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local noundef ptr @_ZN3tbb6detail2d218for_each_root_taskIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_S6_St26random_access_iterator_tagE7executeERNS0_2d114execution_dataE(ptr noundef nonnull align 64 dereferenceable(105) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
end_hunk_1
