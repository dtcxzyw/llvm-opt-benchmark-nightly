Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/output-chunks.cc.X86_64?download=true
inline.NumInlined: 10657
inline.NumDeleted: 4361
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 85
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_SK_ST_ST_T1_:bb.a
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.08.i = phi i64 [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.03.07.i = phi ptr [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.03.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.q = lshr i64 %.08.i, 1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.03.07.i, i64 %i.q ; 2 uses
  %.val2.i.i = load ptr, ptr %i.r, align 8, !tbaa !343
  %i.s = getelementptr i8, ptr %.val2.i.i, i64 40
  %.val2.val.i.i = load i64, ptr %i.s, align 8, !tbaa !294
  %i.t = icmp ult i64 %.val2.val.i.i, %.val.val.i ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.08.i, %i.v
  %.sroa.03.1.i = select i1 %i.t, ptr %i.u, ptr %.sroa.03.07.i ; 3 uses
  %.1.i = select i1 %i.t, i64 %i.w, i64 %i.q      ; 2 uses
  %i.x = icmp sgt i64 %.1.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit, !llvm.loop !1466

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.03.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit ], [ %i.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.03.0.lcssa.i = phi ptr [ %.sroa.03.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.j
  %i.z = ashr exact i64 %i.y, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit57: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr8695, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.tr8392, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %.tr91 to i64              ; 3 uses
  %i.ad = sub i64 %i.j, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.val53 = load ptr, ptr %i.ab, align 8
  %i.ag = getelementptr i8, ptr %.val53, i64 40
  %.val.val.i62 = load i64, ptr %i.ag, align 8, !tbaa !294
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61
  %.08.i64 = phi i64 [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61 ], [ %.1.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %.sroa.03.07.i65 = phi ptr [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i61 ], [ %.sroa.03.1.i68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %i.ah = lshr i64 %.08.i64, 1                    ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.sroa.03.07.i65, i64 %i.ah ; 2 uses
  %.val3.i.i = load ptr, ptr %i.ai, align 8, !tbaa !343
  %i.aj = getelementptr i8, ptr %.val3.i.i, i64 40
  %.val3.val.i.i = load i64, ptr %i.aj, align 8, !tbaa !294
  %i.ak = icmp ult i64 %.val.val.i62, %.val3.val.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = xor i64 %i.ah, -1
  %i.an = add nsw i64 %.08.i64, %i.am
  %.sroa.03.1.i68 = select i1 %i.ak, ptr %.sroa.03.07.i65, ptr %i.al ; 3 uses
  %.1.i69 = select i1 %i.ak, i64 %i.ah, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i69, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit, !llvm.loop !1467

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %.pre99 = ptrtoint ptr %.sroa.03.1.i68 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit57
  %.pre-phi100 = phi i64 [ %.pre99, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %.sroa.03.0.lcssa.i60 = phi ptr [ %.sroa.03.1.i68, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit.loopexit ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit57 ]
  %i.ap = sub i64 %.pre-phi100, %i.ac
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit
  %.sroa.072.0 = phi ptr [ %i.l, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ], [ %.sroa.03.0.lcssa.i60, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.03.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.z, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.k, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit ] ; 2 uses
  %i.ar = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %.sroa.072.0, ptr %.tr8392, ptr %.sroa.0.0) ; 2 uses
  tail call fastcc void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_SK_ST_ST_T1_(ptr %.tr91, ptr %.sroa.072.0, ptr %i.ar, i64 noundef %.0, i64 noundef %.050)
  %i.as = sub nsw i64 %.tr8594, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr8695, %.050             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check164, label %.lr.ph.i.preheader180, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep158 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.s
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec166, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.w = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !343, !alias.scope !1468, !noalias !1471
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !343, !alias.scope !1468, !noalias !1471
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !343, !alias.scope !1471
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !343, !alias.scope !1471
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !343, !alias.scope !1468, !noalias !1471
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !343, !alias.scope !1468, !noalias !1471
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !343, !alias.scope !1471
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !343, !alias.scope !1471
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !1473

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.07.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.06.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.06.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.06.i, align 8, !tbaa !343
  %i.ab = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !343
  store ptr %i.ab, ptr %.sroa.04.06.i, align 8, !tbaa !343
  store ptr %i.aa, ptr %.sroa.0.07.i, align 8, !tbaa !343
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %1
  br i1 %i.ae, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !1474

bb.d:                                             ; preds = %bb.c
  %i.af = sub i64 %i.c, %i.g
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ah = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ai = icmp slt i64 %.084, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %.084, 1
  br i1 %i.aj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.041.0, align 8, !tbaa !343
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.al, i64 %gepdiff, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !343
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp sgt i64 %i.ah, 0
  br i1 %i.ao, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ap = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.aq = shl i64 %.0, 3
  %i.ar = sub i64 %.0, %.084
  %i.as = shl i64 %i.ar, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.as
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.aq
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 4 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %.sroa.041.0, i64 %i.at ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.aw ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.sroa.041.0, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !343, !alias.scope !1475, !noalias !1478
  %wide.load129 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !343, !alias.scope !1475, !noalias !1478
  %i.ay = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !343, !alias.scope !1478
  %wide.load131 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !343, !alias.scope !1478
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !343, !alias.scope !1475, !noalias !1478
  store <2 x ptr> %wide.load131, ptr %i.ax, align 8, !tbaa !343, !alias.scope !1475, !noalias !1478
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !343, !alias.scope !1478
  store <2 x ptr> %wide.load129, ptr %i.ay, align 8, !tbaa !343, !alias.scope !1478
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1480

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.038.096.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %.sroa.041.195.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %i.ba = sub i64 %.0, %.084
  %xtraiter189 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.bf, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.038.096.prol = phi ptr [ %i.be, %.lr.ph99.prol ], [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.041.195.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.bb = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !343
  %i.bc = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !343
  store ptr %i.bc, ptr %.sroa.041.195.prol, align 8, !tbaa !343
  store ptr %i.bb, ptr %.sroa.038.096.prol, align 8, !tbaa !343
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.bf = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !1481

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.bf, %.lr.ph99.prol ]
  %.sroa.038.096.unr = phi ptr [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.041.195.unr = phi ptr [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %i.bg = sub i64 %.02897.ph, %.0
  %i.bh = add i64 %i.bg, %.084
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.av, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.by, %.lr.ph99 ]
  %i.bj = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bj, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.ca, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.bz, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bk = load ptr, ptr %.sroa.041.195, align 8, !tbaa !343
  %i.bl = load ptr, ptr %.sroa.038.096, align 8, !tbaa !343
  store ptr %i.bl, ptr %.sroa.041.195, align 8, !tbaa !343
  store ptr %i.bk, ptr %.sroa.038.096, align 8, !tbaa !343
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !343
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !343
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !343
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !343
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !343
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !343
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !343
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !343
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !343
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !343
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !343
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !343
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.ca = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.ca, %i.ah
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !1482

bb.h:                                             ; preds = %._crit_edge100
  %i.cb = sub nsw i64 %.084, %i.bj
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ah, 1
  %i.cd = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !343
  %.idx = shl nsw i64 %.0, 3
  %i.cg = add nsw i64 %.idx, -8                   ; 3 uses
  %i.ch = ashr exact i64 %i.cg, 3                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !351

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nsw i64 0, %i.ch
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %.sroa.041.0, i64 %i.cg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %.sroa.041.0, align 8, !tbaa !343
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !343
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.cf, ptr %.sroa.041.0, align 8, !tbaa !343
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.cn = sub i64 0, %i.ah
  %i.co = getelementptr [8 x i8], ptr %i.cd, i64 %i.cn ; 6 uses
  %i.cp = icmp sgt i64 %.084, 0
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check140 = icmp ult i64 %.084, 6
  br i1 %min.iters.check140, label %.lr.ph.preheader182, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.preheader
  %i.cq = sub i64 %.0, %.084
  %i.cr = shl i64 %i.cq, 3
  %scevgep135 = getelementptr i8, ptr %.sroa.041.0, i64 %i.cr
  %bound0136 = icmp ult ptr %.sroa.041.0, %i.cd
  %bound1137 = icmp ult ptr %scevgep135, %i.co
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.preheader182, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cs = mul i64 %n.vec142, -8                   ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cd, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.co, i64 %i.cs
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.cv = mul i64 %index144, -8                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.cd, i64 %i.cv ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.co, i64 %i.cv ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !343, !alias.scope !1483, !noalias !1486
  %wide.load148 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !343, !alias.scope !1483, !noalias !1486
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !343, !alias.scope !1486
  %wide.load150 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !343, !alias.scope !1486
  store <2 x ptr> %wide.load149, ptr %i.cw, align 8, !tbaa !343, !alias.scope !1483, !noalias !1486
  store <2 x ptr> %wide.load150, ptr %i.cx, align 8, !tbaa !343, !alias.scope !1483, !noalias !1486
  store <2 x ptr> %wide.load147, ptr %i.cy, align 8, !tbaa !343, !alias.scope !1486
  store <2 x ptr> %wide.load148, ptr %i.cz, align 8, !tbaa !343, !alias.scope !1486
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.da, label %middle.block152, label %vector.body143, !llvm.loop !1488

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %.084, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.preheader182

.lr.ph.preheader182:                              ; preds = %vector.memcheck134, %.lr.ph.preheader, %middle.block152
  %.02794.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.preheader ], [ %n.vec142, %middle.block152 ] ; 3 uses
  %.sroa.0.093.ph = phi ptr [ %i.cd, %vector.memcheck134 ], [ %i.cd, %.lr.ph.preheader ], [ %i.ct, %middle.block152 ] ; 2 uses
  %.sroa.041.292.ph = phi ptr [ %i.co, %vector.memcheck134 ], [ %i.co, %.lr.ph.preheader ], [ %i.cu, %middle.block152 ] ; 2 uses
  %xtraiter = and i64 %.084, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader182, %.lr.ph.prol
  %.02794.prol = phi i64 [ %i.df, %.lr.ph.prol ], [ %.02794.ph, %.lr.ph.preheader182 ]
  %.sroa.0.093.prol = phi ptr [ %i.dc, %.lr.ph.prol ], [ %.sroa.0.093.ph, %.lr.ph.preheader182 ]
  %.sroa.041.292.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.041.292.ph, %.lr.ph.preheader182 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader182 ]
  %i.db = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 4 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !343
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !343
  store ptr %i.de, ptr %i.db, align 8, !tbaa !343
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !343
  %i.df = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !1489

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader182
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader182 ], [ %i.df, %.lr.ph.prol ]
  %.sroa.0.093.unr = phi ptr [ %.sroa.0.093.ph, %.lr.ph.preheader182 ], [ %i.dc, %.lr.ph.prol ]
  %.sroa.041.292.unr = phi ptr [ %.sroa.041.292.ph, %.lr.ph.preheader182 ], [ %i.db, %.lr.ph.prol ]
  %i.dg = sub nsw i64 %.02794.ph, %.084
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block152, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.co, %bb.n ], [ %.sroa.041.0, %middle.block152 ], [ %.sroa.041.0, %.lr.ph ], [ %.sroa.041.0, %.lr.ph.prol.loopexit ]
  %i.di = srem i64 %.0, %i.ah                     ; 2 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.cb, %bb.h ], [ %i.di, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ah, %._crit_edge ]
  br label %bb.e, !llvm.loop !1490

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dz, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dw, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !343
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !343
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !343
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !343
  %i.dn = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !343
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !343
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !343
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !343
  %i.dr = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !343
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !343
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !343
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !343
  %i.dv = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !343
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !343
  store ptr %i.dy, ptr %i.dv, align 8, !tbaa !343
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !343
  %i.dz = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dz, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !1491

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ag, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.ag, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.ag, %._crit_edge100 ], [ %i.ag, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress nounwind
define internal fastcc void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_SK_ST_ST_T1_ST_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef range(i64 -9223372036854775808, 4611686018427387903) %6) unnamed_addr #2 {
bb.a:
  %.not101 = icmp sgt i64 %3, %6
  %.not63102 = icmp sgt i64 %4, %6
  %or.cond103 = and i1 %.not101, %.not63102
  br i1 %or.cond103, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr94.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %3, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr97.lcssa = phi i64 [ %4, %bb.a ], [ %i.am, %tailrecurse ]
  tail call fastcc void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEEvSK_SK_SK_ST_ST_T1_T2_(ptr %.tr.lcssa, ptr %.tr94.lcssa, ptr %2, i64 noundef %.tr96.lcssa, i64 noundef %.tr97.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr97107 = phi i64 [ %4, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr96106 = phi i64 [ %3, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 3 uses
  %.tr94105 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr104 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr96106, %.tr97107
  %i.c = ptrtoint ptr %.tr94105 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr96106, 2                    ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr104, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_L11create_phdrIS4_EES8_INS2_7ElfPhdrIT_EESaISL_EERNS2_7ContextISK_EEEUlS6_E3_EEDaRSK_RT0_EUlOSK_OST_E_EEESK_SK_SK_RKST_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.val = load ptr, ptr %i.e, align 8
  %i.i = getelementptr i8, ptr %.val, i64 40
  %.val.val.i = load i64, ptr %i.i, align 8, !tbaa !294
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
end_hunk_0
begin_hunk_1_@_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold14VerneedSectionINS3_6X86_64EE9constructERNS3_7ContextIS5_EEEUlPNS3_6SymbolIS5_EEE_EEDaRT_RT0_ENKUlOSE_OSG_E_clIRKSC_RSC_EEbSI_SJ_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i4: ; preds = %bb.j
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #34 ; 2 uses
  store ptr %i.at, ptr %i.ak, align 8, !tbaa !328, !alias.scope !2288
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !294, !alias.scope !2288
  br label %._crit_edge.i.i.i.i.i.i.i.i3

._crit_edge.i.i.i.i.i.i.i.i3:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i4, %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRKS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit
  %i.au = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i4 ], [ %i.al, %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRKS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSF_DpOSG_.exit ] ; 3 uses
  switch i64 %i.ao, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i3
  %i.av = load i8, ptr %i.am, align 1, !tbaa !294
  store i8 %i.av, ptr %i.au, align 1, !tbaa !294
  br label %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit

bb.m:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr align 1 %i.am, i64 %i.ao, i1 false)
  br label %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit

_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i3, %bb.l, %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 %i.ao, ptr %i.aw, align 8, !tbaa !387, !alias.scope !2288
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 0, ptr %i.ax, align 1, !tbaa !294
  %i.ay = load i64, ptr %i.x, align 8, !tbaa !387 ; 3 uses
  %i.az = load i64, ptr %i.aw, align 8, !tbaa !387 ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.az, i64 %i.ay) ; 2 uses
  %i.ba = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.ba, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit
  %i.bb = load ptr, ptr %i.ak, align 8, !tbaa !328
  %i.bc = load ptr, ptr %i.l, align 8, !tbaa !328
  %i.bd = call i32 @memcmp(ptr noundef %i.bc, ptr noundef %i.bb, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #15 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i.i.i, label %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i.i.i

_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.be = icmp slt i32 %i.bd, 0
  br label %_ZSt8__invokeIRNSt6ranges4lessEJSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEESA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit

_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %_ZSt8__invokeB5cxx11IRZN4mold14VerneedSectionINS0_6X86_64EE9constructERNS0_7ContextIS2_EEEUlPNS0_6SymbolIS2_EEE_JRS9_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSE_DpOSF_.exit
  %i.bf = sub i64 %i.ay, %i.az
  %i.bg = icmp eq i64 %i.ay, %i.az
  %i.bh = icmp slt i64 %i.bf, 0
  br i1 %i.bg, label %bb.n, label %_ZSt8__invokeIRNSt6ranges4lessEJSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEESA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit

bb.n:                                             ; preds = %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i.i.i
  %i.bi = load i16, ptr %3, align 8, !tbaa !2229
  %i.bj = load i16, ptr %4, align 8, !tbaa !2229
  %i.bk = icmp ult i16 %i.bi, %i.bj
  br label %_ZSt8__invokeIRNSt6ranges4lessEJSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEESA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit

_ZSt8__invokeIRNSt6ranges4lessEJSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEESA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit: ; preds = %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i.i.i, %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i.i.i, %bb.n
  %.sroa.06.0.i.i.i.i.i = phi i1 [ %i.bk, %bb.n ], [ %i.bh, %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.i.i.i.i.i ], [ %i.be, %_ZNKSt8__detail10_Synth3wayclINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEDaRKT_RKT0_QrqXltfp_fp0_RNS_18__boolean_testableEXltfp0_fp_RNS_18__boolean_testableEE.exit.thread.i.i.i.i.i ]
  %i.bl = load ptr, ptr %i.ak, align 8, !tbaa !328 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.al
  br i1 %i.bm, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZSt8__invokeIRNSt6ranges4lessEJSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEESA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit
  %i.bn = icmp ult i64 %i.az, 16
  call void @llvm.assume(i1 %i.bn)
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZSt8__invokeIRNSt6ranges4lessEJSt5tupleIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEESA_EENSt15__invoke_resultIT_JDpT0_EE4typeEOSC_DpOSD_.exit
  %i.bo = load i64, ptr %i.al, align 8, !tbaa !294
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #31
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.bq = load ptr, ptr %i.l, align 8, !tbaa !328 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.m
  br i1 %i.br, label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit
  %i.bs = load i64, ptr %i.m, align 8, !tbaa !294
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #31
  br label %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit7

_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit7: ; preds = %_ZNSt11_Tuple_implILm0EJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEtEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i1 %.sroa.06.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check164 = icmp ult i64 %i.m, 104
  br i1 %min.iters.check164, label %.lr.ph.i.preheader180, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep158 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.s
  %bound0160 = icmp ult ptr %0, %scevgep159
  %bound1161 = icmp ult ptr %1, %scevgep158
  %found.conflict162 = and i1 %bound0160, %bound1161
  br i1 %found.conflict162, label %.lr.ph.i.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck157
  %n.vec166 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec166, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next175, %vector.body167 ] ; 2 uses
  %i.w = shl i64 %index168, 3                     ; 2 uses
  %next.gep169 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep170 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep170, i64 16 ; 2 uses
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !511, !alias.scope !2289, !noalias !2292
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !511, !alias.scope !2289, !noalias !2292
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !511, !alias.scope !2292
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !511, !alias.scope !2292
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !511, !alias.scope !2289, !noalias !2292
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !511, !alias.scope !2289, !noalias !2292
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !511, !alias.scope !2292
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !511, !alias.scope !2292
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !2294

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.07.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.06.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.06.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.06.i, align 8, !tbaa !511
  %i.ab = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !511
  store ptr %i.ab, ptr %.sroa.04.06.i, align 8, !tbaa !511
  store ptr %i.aa, ptr %.sroa.0.07.i, align 8, !tbaa !511
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %1
  br i1 %i.ae, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !2295

bb.d:                                             ; preds = %bb.c
  %i.af = sub i64 %i.c, %i.g
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %i.af ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.041.0 = phi ptr [ %0, %bb.d ], [ %.sroa.041.0.be, %.backedge ] ; 22 uses
  %.084 = phi i64 [ %i.i, %bb.d ], [ %.084.be, %.backedge ] ; 18 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 11 uses
  %i.ah = sub nsw i64 %.0, %.084                  ; 10 uses
  %i.ai = icmp slt i64 %.084, %i.ah
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = icmp eq i64 %.084, 1
  br i1 %i.aj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.041.0, align 8, !tbaa !511
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.al, i64 %gepdiff, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !511
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp sgt i64 %i.ah, 0
  br i1 %i.ao, label %.lr.ph99.preheader, label %._crit_edge100

.lr.ph99.preheader:                               ; preds = %bb.g
  %i.ap = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.084 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ah, 6
  br i1 %min.iters.check, label %.lr.ph99.preheader181, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph99.preheader
  %i.aq = shl i64 %.0, 3
  %i.ar = sub i64 %.0, %.084
  %i.as = shl i64 %i.ar, 3
  %scevgep = getelementptr i8, ptr %.sroa.041.0, i64 %i.as
  %scevgep127 = getelementptr i8, ptr %.sroa.041.0, i64 %i.aq
  %bound0 = icmp ult ptr %.sroa.041.0, %scevgep127
  %bound1 = icmp ult ptr %i.ap, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph99.preheader181, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ah, 9223372036854775804     ; 4 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %.sroa.041.0, i64 %i.at ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ap, i64 %i.aw ; 3 uses
  %next.gep128 = getelementptr i8, ptr %.sroa.041.0, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %next.gep128, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !511, !alias.scope !2296, !noalias !2299
  %wide.load129 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !511, !alias.scope !2296, !noalias !2299
  %i.ay = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !511, !alias.scope !2299
  %wide.load131 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !511, !alias.scope !2299
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !511, !alias.scope !2296, !noalias !2299
  store <2 x ptr> %wide.load131, ptr %i.ax, align 8, !tbaa !511, !alias.scope !2296, !noalias !2299
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !511, !alias.scope !2299
  store <2 x ptr> %wide.load129, ptr %i.ay, align 8, !tbaa !511, !alias.scope !2299
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !2301

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %._crit_edge100, label %.lr.ph99.preheader181

.lr.ph99.preheader181:                            ; preds = %vector.memcheck, %.lr.ph99.preheader, %middle.block
  %.02897.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph99.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.038.096.ph = phi ptr [ %i.ap, %vector.memcheck ], [ %i.ap, %.lr.ph99.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %.sroa.041.195.ph = phi ptr [ %.sroa.041.0, %vector.memcheck ], [ %.sroa.041.0, %.lr.ph99.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %i.ba = sub i64 %.0, %.084
  %xtraiter189 = and i64 %i.ba, 3                 ; 2 uses
  %lcmp.mod190.not = icmp eq i64 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol

.lr.ph99.prol:                                    ; preds = %.lr.ph99.preheader181, %.lr.ph99.prol
  %.02897.prol = phi i64 [ %i.bf, %.lr.ph99.prol ], [ %.02897.ph, %.lr.ph99.preheader181 ]
  %.sroa.038.096.prol = phi ptr [ %i.be, %.lr.ph99.prol ], [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %.sroa.041.195.prol = phi ptr [ %i.bd, %.lr.ph99.prol ], [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ] ; 3 uses
  %prol.iter191 = phi i64 [ %prol.iter191.next, %.lr.ph99.prol ], [ 0, %.lr.ph99.preheader181 ]
  %i.bb = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !511
  %i.bc = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !511
  store ptr %i.bc, ptr %.sroa.041.195.prol, align 8, !tbaa !511
  store ptr %i.bb, ptr %.sroa.038.096.prol, align 8, !tbaa !511
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.bf = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !2302

.lr.ph99.prol.loopexit:                           ; preds = %.lr.ph99.prol, %.lr.ph99.preheader181
  %.lcssa.unr = phi ptr [ poison, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %.02897.unr = phi i64 [ %.02897.ph, %.lr.ph99.preheader181 ], [ %i.bf, %.lr.ph99.prol ]
  %.sroa.038.096.unr = phi ptr [ %.sroa.038.096.ph, %.lr.ph99.preheader181 ], [ %i.be, %.lr.ph99.prol ]
  %.sroa.041.195.unr = phi ptr [ %.sroa.041.195.ph, %.lr.ph99.preheader181 ], [ %i.bd, %.lr.ph99.prol ]
  %i.bg = sub i64 %.02897.ph, %.0
  %i.bh = add i64 %i.bg, %.084
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99, %middle.block, %bb.g
  %.sroa.041.1.lcssa = phi ptr [ %.sroa.041.0, %bb.g ], [ %i.av, %middle.block ], [ %.lcssa.unr, %.lr.ph99.prol.loopexit ], [ %i.by, %.lr.ph99 ]
  %i.bj = srem i64 %.0, %.084                     ; 2 uses
  %.not31 = icmp eq i64 %i.bj, 0
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.ca, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.bz, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bk = load ptr, ptr %.sroa.041.195, align 8, !tbaa !511
  %i.bl = load ptr, ptr %.sroa.038.096, align 8, !tbaa !511
  store ptr %i.bl, ptr %.sroa.041.195, align 8, !tbaa !511
  store ptr %i.bk, ptr %.sroa.038.096, align 8, !tbaa !511
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !511
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !511
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !511
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !511
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !511
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !511
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !511
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !511
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !511
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !511
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !511
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !511
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.ca = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.ca, %i.ah
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !2303

bb.h:                                             ; preds = %._crit_edge100
  %i.cb = sub nsw i64 %.084, %i.bj
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ah, 1
  %i.cd = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !511
  %.idx = shl nsw i64 %.0, 3
  %i.cg = add nsw i64 %.idx, -8                   ; 3 uses
  %i.ch = ashr exact i64 %i.cg, 3                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !351

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nsw i64 0, %i.ch
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %.sroa.041.0, i64 %i.cg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %.sroa.041.0, align 8, !tbaa !511
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !511
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.cf, ptr %.sroa.041.0, align 8, !tbaa !511
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.n:                                             ; preds = %bb.i
  %i.cn = sub i64 0, %i.ah
  %i.co = getelementptr [8 x i8], ptr %i.cd, i64 %i.cn ; 6 uses
  %i.cp = icmp sgt i64 %.084, 0
  br i1 %i.cp, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %min.iters.check140 = icmp ult i64 %.084, 6
  br i1 %min.iters.check140, label %.lr.ph.preheader182, label %vector.memcheck134

vector.memcheck134:                               ; preds = %.lr.ph.preheader
  %i.cq = sub i64 %.0, %.084
  %i.cr = shl i64 %i.cq, 3
  %scevgep135 = getelementptr i8, ptr %.sroa.041.0, i64 %i.cr
  %bound0136 = icmp ult ptr %.sroa.041.0, %i.cd
  %bound1137 = icmp ult ptr %scevgep135, %i.co
  %found.conflict138 = and i1 %bound0136, %bound1137
  br i1 %found.conflict138, label %.lr.ph.preheader182, label %vector.ph141

vector.ph141:                                     ; preds = %vector.memcheck134
  %n.vec142 = and i64 %.084, 9223372036854775804  ; 4 uses
  %i.cs = mul i64 %n.vec142, -8                   ; 2 uses
  %i.ct = getelementptr i8, ptr %i.cd, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.co, i64 %i.cs
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next151, %vector.body143 ] ; 2 uses
  %i.cv = mul i64 %index144, -8                   ; 2 uses
  %next.gep145 = getelementptr i8, ptr %i.cd, i64 %i.cv ; 2 uses
  %next.gep146 = getelementptr i8, ptr %i.co, i64 %i.cv ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %next.gep146, i64 -16 ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %next.gep146, i64 -32 ; 2 uses
  %wide.load147 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !511, !alias.scope !2304, !noalias !2307
  %wide.load148 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !511, !alias.scope !2304, !noalias !2307
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !511, !alias.scope !2307
  %wide.load150 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !511, !alias.scope !2307
  store <2 x ptr> %wide.load149, ptr %i.cw, align 8, !tbaa !511, !alias.scope !2304, !noalias !2307
  store <2 x ptr> %wide.load150, ptr %i.cx, align 8, !tbaa !511, !alias.scope !2304, !noalias !2307
  store <2 x ptr> %wide.load147, ptr %i.cy, align 8, !tbaa !511, !alias.scope !2307
  store <2 x ptr> %wide.load148, ptr %i.cz, align 8, !tbaa !511, !alias.scope !2307
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.da, label %middle.block152, label %vector.body143, !llvm.loop !2309

middle.block152:                                  ; preds = %vector.body143
  %cmp.n153 = icmp eq i64 %.084, %n.vec142
  br i1 %cmp.n153, label %._crit_edge, label %.lr.ph.preheader182

.lr.ph.preheader182:                              ; preds = %vector.memcheck134, %.lr.ph.preheader, %middle.block152
  %.02794.ph = phi i64 [ 0, %vector.memcheck134 ], [ 0, %.lr.ph.preheader ], [ %n.vec142, %middle.block152 ] ; 3 uses
  %.sroa.0.093.ph = phi ptr [ %i.cd, %vector.memcheck134 ], [ %i.cd, %.lr.ph.preheader ], [ %i.ct, %middle.block152 ] ; 2 uses
  %.sroa.041.292.ph = phi ptr [ %i.co, %vector.memcheck134 ], [ %i.co, %.lr.ph.preheader ], [ %i.cu, %middle.block152 ] ; 2 uses
  %xtraiter = and i64 %.084, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader182, %.lr.ph.prol
  %.02794.prol = phi i64 [ %i.df, %.lr.ph.prol ], [ %.02794.ph, %.lr.ph.preheader182 ]
  %.sroa.0.093.prol = phi ptr [ %i.dc, %.lr.ph.prol ], [ %.sroa.0.093.ph, %.lr.ph.preheader182 ]
  %.sroa.041.292.prol = phi ptr [ %i.db, %.lr.ph.prol ], [ %.sroa.041.292.ph, %.lr.ph.preheader182 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader182 ]
  %i.db = getelementptr inbounds i8, ptr %.sroa.041.292.prol, i64 -8 ; 4 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.093.prol, i64 -8 ; 4 uses
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !511
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !511
  store ptr %i.de, ptr %i.db, align 8, !tbaa !511
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !511
  %i.df = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2310

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader182
  %.02794.unr = phi i64 [ %.02794.ph, %.lr.ph.preheader182 ], [ %i.df, %.lr.ph.prol ]
  %.sroa.0.093.unr = phi ptr [ %.sroa.0.093.ph, %.lr.ph.preheader182 ], [ %i.dc, %.lr.ph.prol ]
  %.sroa.041.292.unr = phi ptr [ %.sroa.041.292.ph, %.lr.ph.preheader182 ], [ %i.db, %.lr.ph.prol ]
  %i.dg = sub nsw i64 %.02794.ph, %.084
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block152, %bb.n
  %.sroa.041.2.lcssa = phi ptr [ %i.co, %bb.n ], [ %.sroa.041.0, %middle.block152 ], [ %.sroa.041.0, %.lr.ph ], [ %.sroa.041.0, %.lr.ph.prol.loopexit ]
  %i.di = srem i64 %.0, %i.ah                     ; 2 uses
  %.not = icmp eq i64 %i.di, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.cb, %bb.h ], [ %i.di, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ah, %._crit_edge ]
  br label %bb.e, !llvm.loop !2311

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dz, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dw, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !511
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !511
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !511
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !511
  %i.dn = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !511
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !511
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !511
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !511
  %i.dr = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !511
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !511
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !511
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !511
  %i.dv = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !511
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !511
  store ptr %i.dy, ptr %i.dv, align 8, !tbaa !511
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !511
  %i.dz = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dz, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !2312

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ag, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.ag, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.ag, %._crit_edge100 ], [ %i.ag, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SO_SQ_SQ_T1_SQ_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.995") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %8 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter.999", align 8 ; 5 uses
  %9 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val.1007", align 8 ; 5 uses
  %.not = icmp sgt i64 %3, %6
  %.not63 = icmp sgt i64 %4, %6
  %or.cond = and i1 %.not, %.not63
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEEvSO_SO_SO_SQ_SQ_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.995") align 8 %7)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.a = icmp sgt i64 %3, %4
  %.sroa.020.0.copyload = load ptr, ptr %7, align 8, !tbaa !2206 ; 2 uses
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.221.0..sroa_idx, align 8, !tbaa !427 ; 2 uses
  br i1 %i.a, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.b = sdiv i64 %3, 2                           ; 2 uses
  %i.c = getelementptr inbounds [8 x i8], ptr %0, i64 %i.b ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store ptr %.sroa.020.0.copyload, ptr %9, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %.sroa.221.0.copyload, ptr %i.d, align 8
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_14VerneedSectionIS4_E9constructERNS2_7ContextIS4_EEEUlS6_E_EEDaRT_RT0_EUlOSO_OSQ_E_EEESO_SO_SO_RKSQ_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.016.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %1, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.016.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i, i64 %i.j ; 2 uses
  %i.l = call noundef zeroext i1 @_ZZNSt6ranges8__detail16__make_comp_projINS_4lessEZN4mold14VerneedSectionINS3_6X86_64EE9constructERNS3_7ContextIS5_EEEUlPNS3_6SymbolIS5_EEE_EEDaRT_RT0_ENKUlOSE_OSG_E_clIRSC_RKSC_EEbSI_SJ_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = xor i64 %i.j, -1
  %i.o = add nsw i64 %.016.i, %i.n
end_hunk_1
