Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeAnalyzer?download=true
inline.NumInlined: 2442
inline.NumDeleted: 1068
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_:bb.a

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread: ; preds = %bb.c, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  store i32 %i.f, ptr %.tr80, align 4, !tbaa !48
  store i32 %i.g, ptr %.tr7381, align 4, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %.tr80, i64 4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.tr7381, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !48
  %i.r = load i32, ptr %i.p, align 4, !tbaa !48
  store i32 %i.r, ptr %i.o, align 4, !tbaa !48
  store i32 %i.q, ptr %i.p, align 4, !tbaa !48
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70

bb.e:                                             ; preds = %bb.b
  %i.s = icmp sgt i64 %.tr7583, %.tr7684
  %i.t = ptrtoint ptr %.tr7381 to i64             ; 4 uses
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.u = sdiv i64 %.tr7583, 2                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.tr80, i64 %i.u ; 3 uses
  %i.w = sub i64 %i.c, %i.t
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.z = load i32, ptr %i.v, align 4, !tbaa !206  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load i32, ptr %i.aa, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.x, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i ] ; 2 uses
  %.sroa.011.016.i = phi ptr [ %.tr7381, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i ] ; 3 uses
  %i.ac = lshr i64 %.017.i, 1                     ; 4 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.016.i, i64 %i.ac ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !206 ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.z
  br i1 %i.af, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ag = icmp ult i32 %i.z, %i.ae
  br i1 %i.ag, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i: ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !191
  %i.aj = icmp ult i32 %i.ai, %i.ab
  br i1 %i.aj, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.al = xor i64 %i.ac, -1
  %i.am = add nsw i64 %.017.i, %i.al
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %bb.f
  %.sroa.011.1.i = phi ptr [ %i.ak, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i ], [ %.sroa.011.016.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ], [ %.sroa.011.016.i, %bb.f ] ; 3 uses
  %.1.i = phi i64 [ %i.am, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i ], [ %i.ac, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.an = icmp sgt i64 %.1.i, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr7381, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ao = sub i64 %.pre-phi, %i.t
  %i.ap = ashr exact i64 %i.ao, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49: ; preds = %bb.e
  %i.aq = sdiv i64 %.tr7684, 2                    ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %.tr7381, i64 %i.aq ; 3 uses
  %i.as = ptrtoint ptr %.tr80 to i64              ; 3 uses
  %i.at = sub i64 %i.t, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %i.aw = load i32, ptr %i.ar, align 4, !tbaa !206 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51
  %.017.i53 = phi i64 [ %i.au, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.1.i58, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 2 uses
  %.sroa.011.016.i54 = phi ptr [ %.tr80, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i51 ], [ %.sroa.011.1.i57, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.az = lshr i64 %.017.i53, 1                   ; 4 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.016.i54, i64 %i.az ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !206 ; 2 uses
  %i.bc = icmp ult i32 %i.aw, %i.bb
  br i1 %i.bc, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %i.bd = icmp ult i32 %i.bb, %i.aw
  br i1 %i.bd, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !191
  %i.bg = icmp ult i32 %i.ay, %i.bf
  br i1 %i.bg, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bi = xor i64 %i.az, -1
  %i.bj = add nsw i64 %.017.i53, %i.bi
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52
  %.sroa.011.1.i57 = phi ptr [ %.sroa.011.016.i54, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ], [ %i.bh, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i ], [ %.sroa.011.016.i54, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 3 uses
  %.1.i58 = phi i64 [ %i.az, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ], [ %i.bj, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i ], [ %i.az, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52 ] ; 2 uses
  %i.bk = icmp sgt i64 %.1.i58, 0
  br i1 %i.bk, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i52, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !12

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i
  %.pre87 = ptrtoint ptr %.sroa.011.1.i57 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49
  %.pre-phi88 = phi i64 [ %.pre87, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.as, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %.sroa.011.0.lcssa.i50 = phi ptr [ %.sroa.011.1.i57, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr80, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit49 ]
  %i.bl = sub i64 %.pre-phi88, %i.as
  %i.bm = ashr exact i64 %i.bl, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit
  %.sroa.061.0 = phi ptr [ %i.v, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i50, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.ar, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.043 = phi i64 [ %i.ap, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.u, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.bm, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bn = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.061.0, ptr %.tr7381, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %.tr80, ptr %.sroa.061.0, ptr %i.bn, i64 noundef %.0, i64 noundef %.043)
  %i.bo = sub nsw i64 %.tr7583, %.0               ; 2 uses
  %i.bp = sub nsw i64 %.tr7684, %.043             ; 2 uses
  %i.bq = icmp eq i64 %i.bo, 0
  %i.br = icmp eq i64 %i.bp, 0
  %or.cond = or i1 %i.bq, %i.br
  br i1 %or.cond, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70, label %bb.b

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread70: ; preds = %tailrecurse, %bb.a, %bb.d, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.m, 56
  br i1 %min.iters.check139, label %.lr.ph.i.preheader163, label %vector.memcheck140

vector.memcheck140:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0141 = icmp ult ptr %0, %i.s
  %bound1142 = icmp ult ptr %1, %i.r
  %found.conflict143 = and i1 %bound0141, %bound1142
  br i1 %found.conflict143, label %.lr.ph.i.preheader163, label %vector.ph144

vector.ph144:                                     ; preds = %vector.memcheck140
  %n.vec145 = and i64 %i.o, 4611686018427387902   ; 3 uses
  %i.t = shl i64 %n.vec145, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next158, %vector.body146 ] ; 2 uses
  %i.w = shl i64 %index147, 3                     ; 2 uses
  %next.gep148 = getelementptr i8, ptr %1, i64 %i.w ; 2 uses
  %next.gep149 = getelementptr i8, ptr %0, i64 %i.w ; 2 uses
  %wide.vec150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !48, !alias.scope !749, !noalias !750
  %wide.vec153 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !48, !alias.scope !750
  store <4 x i32> %wide.vec153, ptr %next.gep149, align 4, !tbaa !48, !alias.scope !749, !noalias !750
  store <4 x i32> %wide.vec150, ptr %next.gep148, align 4, !tbaa !48, !alias.scope !750
  %index.next158 = add nuw i64 %index147, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next158, %n.vec145
  br i1 %i.x, label %middle.block159, label %vector.body146, !llvm.loop !743

middle.block159:                                  ; preds = %vector.body146
  %cmp.n160 = icmp eq i64 %i.o, %n.vec145
  br i1 %cmp.n160, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.preheader163

.lr.ph.i.preheader163:                            ; preds = %vector.memcheck140, %.lr.ph.i.preheader, %middle.block159
  %.sroa.0.08.i.ph = phi ptr [ %1, %vector.memcheck140 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block159 ]
  %.sroa.04.07.i.ph = phi ptr [ %0, %vector.memcheck140 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block159 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader163, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader163 ] ; 4 uses
  %.sroa.04.07.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.04.07.i.ph, %.lr.ph.i.preheader163 ] ; 4 uses
  %i.y = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !48
  %i.z = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !48
  store i32 %i.z, ptr %.sroa.04.07.i, align 4, !tbaa !48
  store i32 %i.y, ptr %.sroa.0.08.i, align 4, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !48
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !48
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !48
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !48
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !744

bb.d:                                             ; preds = %bb.c
  %i.ag = sub i64 %i.c, %i.g
  %i.ah = getelementptr inbounds i8, ptr %0, i64 %i.ag ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.056 = phi i64 [ %i.f, %bb.d ], [ %.056.be, %.backedge ] ; 7 uses
  %.0 = phi i64 [ %i.i, %bb.d ], [ %.0.be, %.backedge ] ; 14 uses
  %.sroa.026.0 = phi ptr [ %0, %bb.d ], [ %.sroa.026.0.be, %.backedge ] ; 18 uses
  %i.ai = sub nsw i64 %.056, %.0                  ; 9 uses
  %i.aj = icmp slt i64 %.0, %i.ai
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.f
  %i.al = getelementptr [8 x i8], ptr %.sroa.026.0, i64 %.0 ; 7 uses
  %min.iters.check = icmp ult i64 %i.ai, 14
  br i1 %min.iters.check, label %.lr.ph66.preheader164, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph66.preheader
  %i.am = shl i64 %.056, 3                        ; 3 uses
  %3 = shl i64 %.0, 3                             ; 3 uses
  %4 = add i64 %i.am, -4                          ; 2 uses
  %5 = sub i64 %4, %3
  %6 = getelementptr i8, ptr %.sroa.026.0, i64 %5 ; 3 uses
  %7 = getelementptr i8, ptr %.sroa.026.0, i64 %4 ; 3 uses
  %8 = getelementptr i8, ptr %.sroa.026.0, i64 4  ; 3 uses
  %i.an = sub i64 %i.am, %3
  %9 = getelementptr i8, ptr %.sroa.026.0, i64 %i.an ; 3 uses
  %10 = getelementptr i8, ptr %.sroa.026.0, i64 %3
  %i.ao = getelementptr i8, ptr %10, i64 4        ; 3 uses
  %i.ap = getelementptr i8, ptr %.sroa.026.0, i64 %i.am ; 3 uses
  %bound0 = icmp ult ptr %.sroa.026.0, %7
  %bound1 = icmp ult ptr %i.al, %6
  %found.conflict = and i1 %bound0, %bound1
  %bound0106 = icmp ult ptr %.sroa.026.0, %9
  %bound1107 = icmp ult ptr %8, %6
  %found.conflict108 = and i1 %bound0106, %bound1107
  %conflict.rdx = or i1 %found.conflict, %found.conflict108
  %bound0109 = icmp ult ptr %.sroa.026.0, %i.ap
  %bound1110 = icmp ult ptr %i.ao, %6
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx, %found.conflict111
  %bound0113 = icmp ult ptr %i.al, %9
  %bound1114 = icmp ult ptr %8, %7
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  %bound0117 = icmp ult ptr %i.al, %i.ap
  %bound1118 = icmp ult ptr %i.ao, %7
  %found.conflict119 = and i1 %bound0117, %bound1118
  %conflict.rdx120 = or i1 %conflict.rdx116, %found.conflict119
  %bound0121 = icmp ult ptr %8, %i.ap
  %bound1122 = icmp ult ptr %i.ao, %9
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx120, %found.conflict123
  br i1 %conflict.rdx124, label %.lr.ph66.preheader164, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ai, 9223372036854775806     ; 4 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.al, i64 %i.aq
  %i.as = getelementptr i8, ptr %.sroa.026.0, i64 %i.aq ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.at ; 2 uses
  %next.gep125 = getelementptr i8, ptr %.sroa.026.0, i64 %i.at ; 2 uses
  %wide.vec = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !48
  %wide.vec127 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !48
  store <4 x i32> %wide.vec127, ptr %next.gep125, align 4, !tbaa !48
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !48
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %._crit_edge67, label %.lr.ph66.preheader164

.lr.ph66.preheader164:                            ; preds = %vector.memcheck, %.lr.ph66.preheader, %middle.block
  %.01964.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph66.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.sroa.025.063.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph66.preheader ], [ %i.ar, %middle.block ] ; 5 uses
  %.sroa.026.162.ph = phi ptr [ %.sroa.026.0, %vector.memcheck ], [ %.sroa.026.0, %.lr.ph66.preheader ], [ %i.as, %middle.block ] ; 5 uses
  %i.av = sub i64 %.056, %.0
  %i.aw = xor i64 %.01964.ph, -1
  %i.ax = add i64 %.056, %i.aw
  %xtraiter167 = and i64 %i.av, 1
  %lcmp.mod168.not = icmp eq i64 %xtraiter167, 0
  br i1 %lcmp.mod168.not, label %.lr.ph66.prol.loopexit, label %.lr.ph66.prol

.lr.ph66.prol:                                    ; preds = %.lr.ph66.preheader164
  %i.ay = load i32, ptr %.sroa.026.162.ph, align 4, !tbaa !48
  %i.az = load i32, ptr %.sroa.025.063.ph, align 4, !tbaa !48
  store i32 %i.az, ptr %.sroa.026.162.ph, align 4, !tbaa !48
  store i32 %i.ay, ptr %.sroa.025.063.ph, align 4, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !48
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !48
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !48
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !48
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 8
  %i.bg = or disjoint i64 %.01964.ph, 1
  br label %.lr.ph66.prol.loopexit

.lr.ph66.prol.loopexit:                           ; preds = %.lr.ph66.prol, %.lr.ph66.preheader164
  %.lcssa.unr = phi ptr [ poison, %.lr.ph66.preheader164 ], [ %i.be, %.lr.ph66.prol ]
  %.01964.unr = phi i64 [ %.01964.ph, %.lr.ph66.preheader164 ], [ %i.bg, %.lr.ph66.prol ]
  %.sroa.025.063.unr = phi ptr [ %.sroa.025.063.ph, %.lr.ph66.preheader164 ], [ %i.bf, %.lr.ph66.prol ]
  %.sroa.026.162.unr = phi ptr [ %.sroa.026.162.ph, %.lr.ph66.preheader164 ], [ %i.be, %.lr.ph66.prol ]
  %i.bh = icmp eq i64 %i.ax, %.0
  br i1 %i.bh, label %._crit_edge67, label %.lr.ph66

._crit_edge67:                                    ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66, %middle.block, %bb.f
  %.sroa.026.1.lcssa = phi ptr [ %.sroa.026.0, %bb.f ], [ %i.as, %middle.block ], [ %.lcssa.unr, %.lr.ph66.prol.loopexit ], [ %i.bx, %.lr.ph66 ]
  %i.bi = srem i64 %.056, %.0                     ; 2 uses
  %.not21 = icmp eq i64 %i.bi, 0
  br i1 %.not21, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %bb.g

.lr.ph66:                                         ; preds = %.lr.ph66.prol.loopexit, %.lr.ph66
  %.01964 = phi i64 [ %i.bz, %.lr.ph66 ], [ %.01964.unr, %.lr.ph66.prol.loopexit ]
  %.sroa.025.063 = phi ptr [ %i.by, %.lr.ph66 ], [ %.sroa.025.063.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %.sroa.026.162 = phi ptr [ %i.bx, %.lr.ph66 ], [ %.sroa.026.162.unr, %.lr.ph66.prol.loopexit ] ; 6 uses
  %i.bj = load i32, ptr %.sroa.026.162, align 4, !tbaa !48
  %i.bk = load i32, ptr %.sroa.025.063, align 4, !tbaa !48
  store i32 %i.bk, ptr %.sroa.026.162, align 4, !tbaa !48
  store i32 %i.bj, ptr %.sroa.025.063, align 4, !tbaa !48
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !48
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !48
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !48
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !48
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !48
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !48
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !48
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !48
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !48
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !48
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !48
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 16
  %i.bz = add nuw nsw i64 %.01964, 2              ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.bz, %i.ai
  br i1 %exitcond71.not.1, label %._crit_edge67, label %.lr.ph66, !llvm.loop !746

bb.g:                                             ; preds = %._crit_edge67
  %i.ca = sub nsw i64 %.0, %i.bi
  br label %.backedge

bb.h:                                             ; preds = %bb.e
  %i.cb = getelementptr inbounds [8 x i8], ptr %.sroa.026.0, i64 %.056 ; 3 uses
  %i.cc = sub i64 0, %i.ai
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = icmp sgt i64 %.0, 0
  br i1 %i.ce, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.h
  %xtraiter = and i64 %.0, 1
  %i.cf = icmp eq i64 %.0, 1
  br i1 %i.cf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.0, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.060.epil.init = phi ptr [ %i.cb, %.lr.ph.preheader ], [ %i.cy, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.026.259.epil.init = phi ptr [ %i.cd, %.lr.ph.preheader ], [ %i.cx, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod166 = trunc i64 %.0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod166)
  %i.cg = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -8 ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -8 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !48
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !48
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !48
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !48
  %i.ck = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -4 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !48
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !48
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !48
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !48
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.h
  %.sroa.026.2.lcssa = phi ptr [ %i.cd, %bb.h ], [ %.sroa.026.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.026.0, %.lr.ph.epil.preheader ]
  %i.co = srem i64 %.056, %i.ai                   ; 2 uses
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.g
  %.056.be = phi i64 [ %.0, %bb.g ], [ %i.ai, %._crit_edge ]
  %.0.be = phi i64 [ %i.ca, %bb.g ], [ %i.co, %._crit_edge ]
  %.sroa.026.0.be = phi ptr [ %.sroa.026.1.lcssa, %bb.g ], [ %.sroa.026.2.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !747

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.060 = phi ptr [ %i.cb, %.lr.ph.preheader.new ], [ %i.cy, %.lr.ph ] ; 4 uses
  %.sroa.026.259 = phi ptr [ %i.cd, %.lr.ph.preheader.new ], [ %i.cx, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -8 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -8 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !48
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !48
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !48
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !48
  %i.ct = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -4 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !48
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !48
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !48
  %i.cx = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -16 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -16 ; 4 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !48
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !48
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !48
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !48
  %i.db = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -12 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -12 ; 2 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !48
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !48
  store i32 %i.de, ptr %i.db, align 4, !tbaa !48
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !48
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !748

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge67, %.lr.ph.i, %middle.block159, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block159 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge67 ], [ %i.ah, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %.not89 = icmp sgt i64 %3, %6
  %.not5690 = icmp sgt i64 %4, %6
  %or.cond91 = and i1 %.not89, %.not5690
  br i1 %or.cond91, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ax, %tailrecurse ]
  %.tr83.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr85.lcssa = phi i64 [ %3, %bb.a ], [ %i.aw, %tailrecurse ]
  %.tr86.lcssa = phi i64 [ %4, %bb.a ], [ %i.ay, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %.tr.lcssa, ptr %.tr83.lcssa, ptr %2, i64 noundef %.tr85.lcssa, i64 noundef %.tr86.lcssa, ptr noundef %5)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.ay, %tailrecurse ] ; 3 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.aw, %tailrecurse ] ; 3 uses
  %.tr8393 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr92 = phi ptr [ %0, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr8594, %.tr8695
  %i.c = ptrtoint ptr %.tr8393 to i64             ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.e = getelementptr inbounds [8 x i8], ptr %.tr92, i64 %i.d ; 3 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.i = load i32, ptr %i.e, align 4, !tbaa !206  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.k = load i32, ptr %i.j, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i ] ; 2 uses
  %.sroa.011.016.i = phi ptr [ %.tr8393, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i ] ; 3 uses
  %i.l = lshr i64 %.017.i, 1                      ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.016.i, i64 %i.l ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !206  ; 2 uses
  %i.o = icmp ult i32 %i.n, %i.i
  br i1 %i.o, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.p = icmp ult i32 %i.i, %i.n
  br i1 %i.p, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !191
  %i.s = icmp ult i32 %i.r, %i.k
  br i1 %i.s, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.u = xor i64 %i.l, -1
  %i.v = add nsw i64 %.017.i, %i.u
  br label %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i, %bb.c
  %.sroa.011.1.i = phi ptr [ %i.t, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i ], [ %.sroa.011.016.i, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ], [ %.sroa.011.016.i, %bb.c ] ; 3 uses
  %.1.i = phi i64 [ %i.v, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread.i ], [ %i.l, %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.w = icmp sgt i64 %.1.i, 0
  br i1 %i.w, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPSt4pairIjjESt6vectorIS5_SaIS5_EEEEKS5_EEbT_RT0_.exit.thread15.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.011.0.lcssa.i = phi ptr [ %.sroa.011.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8393, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.x = sub i64 %.pre-phi, %i.c
  %i.y = ashr exact i64 %i.x, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60: ; preds = %bb.b
  %i.z = sdiv i64 %.tr8695, 2                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.tr8393, i64 %i.z ; 3 uses
  %i.ab = ptrtoint ptr %.tr92 to i64              ; 3 uses
  %i.ac = sub i64 %i.c, %i.ab
  %i.ad = ashr exact i64 %i.ac, 3                 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !206 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ah = load i32, ptr %i.ag, align 4
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62
  %.017.i64 = phi i64 [ %i.ad, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.1.i69, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 2 uses
  %.sroa.011.016.i65 = phi ptr [ %.tr92, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i62 ], [ %.sroa.011.1.i68, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i ] ; 3 uses
  %i.ai = lshr i64 %.017.i64, 1                   ; 4 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.016.i65, i64 %i.ai ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !206 ; 2 uses
  %i.al = icmp ult i32 %i.af, %i.ak
  br i1 %i.al, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %i.am = icmp ult i32 %i.ak, %i.af
  br i1 %i.am, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i: ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !191
  %i.ap = icmp ult i32 %i.ah, %i.ao
  br i1 %i.ap, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i, label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = xor i64 %i.ai, -1
  %i.as = add nsw i64 %.017.i64, %i.ar
  br label %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i

_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63
  %.sroa.011.1.i68 = phi ptr [ %.sroa.011.016.i65, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ], [ %i.aq, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i ], [ %.sroa.011.016.i65, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 3 uses
  %.1.i69 = phi i64 [ %i.ai, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.i ], [ %i.as, %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread15.i ], [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63 ] ; 2 uses
  %i.at = icmp sgt i64 %.1.i69, 0
  br i1 %i.at, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i63, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !12

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZNK9__gnu_cxx5__ops14_Val_less_iterclIKSt4pairIjjENS_17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEbRT_T0_.exit.thread.i
  %.pre101 = ptrtoint ptr %.sroa.011.1.i68 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi102 = phi i64 [ %.pre101, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.sroa.011.0.lcssa.i61 = phi ptr [ %.sroa.011.1.i68, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr92, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.au = sub i64 %.pre-phi102, %i.ab
  %i.av = ashr exact i64 %i.au, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit
  %.sroa.072.0 = phi ptr [ %i.e, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %.sroa.011.0.lcssa.i61, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.011.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.y, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.z, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_less_valEET_SB_SB_RKT0_T1_.exit ], [ %i.av, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_less_iterEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.aw = sub nsw i64 %.tr8594, %.0               ; 4 uses
  %i.ax = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %.sroa.072.0, ptr %.tr8393, ptr %.sroa.0.0, i64 noundef %i.aw, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr %.tr92, ptr %.sroa.072.0, ptr %i.ax, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.ay = sub nsw i64 %.tr8695, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.aw, %6
  %.not56 = icmp sgt i64 %i.ay, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not36 = icmp eq i64 %4, 0
  br i1 %.not36, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = ashr exact i64 %i.d, 3                   ; 7 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %i.e, 6
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader195, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.g = getelementptr i8, ptr %5, i64 %i.d
  %bound0 = icmp ult ptr %5, %2
  %bound1 = icmp ult ptr %1, %i.g
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader195, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.e, 9223372036854775804      ; 3 uses
  %i.h = and i64 %i.e, 3
  %i.i = shl i64 %n.vec, 3                        ; 2 uses
  %i.j = getelementptr i8, ptr %5, i64 %i.i       ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 3                        ; 3 uses
  %i.m = or disjoint i64 %i.l, 16                 ; 2 uses
  %next.gep = getelementptr i8, ptr %5, i64 %i.l
  %next.gep81 = getelementptr i8, ptr %5, i64 %i.m
  %next.gep82 = getelementptr i8, ptr %1, i64 %i.l
  %next.gep83 = getelementptr i8, ptr %1, i64 %i.m
  %wide.vec = load <4 x i32>, ptr %next.gep82, align 4, !tbaa !48, !alias.scope !773
  %wide.vec85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !48, !alias.scope !773
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !48, !alias.scope !774, !noalias !773
  store <4 x i32> %wide.vec85, ptr %next.gep81, align 4, !tbaa !48, !alias.scope !774, !noalias !773
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !754

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader195

.lr.ph.i.i.i.i.i.preheader195:                    ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.e, %vector.memcheck ], [ %i.e, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %5, %vector.memcheck ], [ %5, %.lr.ph.i.i.i.i.i.preheader ], [ %i.j, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader195, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader195 ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader195 ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader195 ] ; 3 uses
  %i.o = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !48
  store i32 %i.o, ptr %.0811.i.i.i.i.i, align 4, !tbaa !206
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = add nsw i64 %.012.i.i.i.i.i, -1
  %i.v = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !755

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.c
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.c ], [ %i.j, %middle.block ], [ %i.t, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.w = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.x = sub i64 %i.c, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 5 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.i.i.i.i.i37.preheader, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i37.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %xtraiter = and i64 %i.y, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol

.lr.ph.i.i.i.i.i37.prol:                          ; preds = %.lr.ph.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i37.prol
  %.010.i.i.i.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i37.prol ], [ %i.y, %.lr.ph.i.i.i.i.i37.preheader ]
  %.069.i.i.i.i.i.prol = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i37.prol ], [ %2, %.lr.ph.i.i.i.i.i37.preheader ] ; 2 uses
  %.078.i.i.i.i.i.prol = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i37.prol ], [ %1, %.lr.ph.i.i.i.i.i37.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i37.prol ], [ 0, %.lr.ph.i.i.i.i.i37.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !48
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !206
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !48
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !191
  %i.ag = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol, !llvm.loop !756

.lr.ph.i.i.i.i.i37.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i37.prol, %.lr.ph.i.i.i.i.i37.preheader
  %.010.i.i.i.i.i.unr = phi i64 [ %i.y, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i37.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i37.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i37.preheader ], [ %i.aa, %.lr.ph.i.i.i.i.i37.prol ]
  %i.ah = icmp ult i64 %i.y, 4
  br i1 %i.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i37

.lr.ph.i.i.i.i.i37:                               ; preds = %.lr.ph.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i37
  %.010.i.i.i.i.i = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i37 ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i37 ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i37 ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i37.prol.loopexit ] ; 8 uses
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !48
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !206
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !191
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !48
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !206
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !48
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store i32 %i.as, ptr %i.at, align 4, !tbaa !191
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !48
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !206
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !191
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !48
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !206
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !48
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !191
  %i.bg = add nsw i64 %.010.i.i.i.i.i, -4
  %i.bh = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !8

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i37.prol.loopexit, %.lr.ph.i.i.i.i.i37, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.bi = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64
  %i.bj = ptrtoint ptr %5 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 2 uses
  %i.bl = ashr exact i64 %i.bk, 3                 ; 7 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i39.preheader, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i39.preheader:                     ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %min.iters.check97 = icmp ult i64 %i.bl, 6
  br i1 %min.iters.check97, label %.lr.ph.i.i.i.i.i39.preheader193, label %vector.memcheck98

vector.memcheck98:                                ; preds = %.lr.ph.i.i.i.i.i39.preheader
  %i.bn = getelementptr i8, ptr %0, i64 %i.bk
  %bound099 = icmp ult ptr %0, %.08.lcssa.i.i.i.i.i
  %bound1100 = icmp ult ptr %5, %i.bn
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i39.preheader193, label %vector.ph102

vector.ph102:                                     ; preds = %vector.memcheck98
  %n.vec103 = and i64 %i.bl, 9223372036854775804  ; 3 uses
  %i.bo = and i64 %i.bl, 3
  %i.bp = shl i64 %n.vec103, 3                    ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 %i.bp     ; 2 uses
  %i.br = getelementptr i8, ptr %5, i64 %i.bp
  br label %vector.body104

vector.body104:                                   ; preds = %vector.body104, %vector.ph102
  %index105 = phi i64 [ 0, %vector.ph102 ], [ %index.next118, %vector.body104 ] ; 2 uses
  %i.bs = shl i64 %index105, 3                    ; 3 uses
  %i.bt = or disjoint i64 %i.bs, 16               ; 2 uses
  %next.gep106 = getelementptr i8, ptr %0, i64 %i.bs
  %next.gep107 = getelementptr i8, ptr %0, i64 %i.bt
  %next.gep108 = getelementptr i8, ptr %5, i64 %i.bs
  %next.gep109 = getelementptr i8, ptr %5, i64 %i.bt
  %wide.vec110 = load <4 x i32>, ptr %next.gep108, align 4, !tbaa !48, !alias.scope !775
  %wide.vec113 = load <4 x i32>, ptr %next.gep109, align 4, !tbaa !48, !alias.scope !775
  store <4 x i32> %wide.vec110, ptr %next.gep106, align 4, !tbaa !48, !alias.scope !776, !noalias !775
  store <4 x i32> %wide.vec113, ptr %next.gep107, align 4, !tbaa !48, !alias.scope !776, !noalias !775
  %index.next118 = add nuw i64 %index105, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next118, %n.vec103
  br i1 %i.bu, label %middle.block119, label %vector.body104, !llvm.loop !760

middle.block119:                                  ; preds = %vector.body104
  %cmp.n120 = icmp eq i64 %i.bl, %n.vec103
  br i1 %cmp.n120, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, label %.lr.ph.i.i.i.i.i39.preheader193

.lr.ph.i.i.i.i.i39.preheader193:                  ; preds = %vector.memcheck98, %.lr.ph.i.i.i.i.i39.preheader, %middle.block119
  %.012.i.i.i.i.i40.ph = phi i64 [ %i.bl, %vector.memcheck98 ], [ %i.bl, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bo, %middle.block119 ]
  %.0811.i.i.i.i.i41.ph = phi ptr [ %0, %vector.memcheck98 ], [ %0, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.bq, %middle.block119 ]
  %.0910.i.i.i.i.i42.ph = phi ptr [ %5, %vector.memcheck98 ], [ %5, %.lr.ph.i.i.i.i.i39.preheader ], [ %i.br, %middle.block119 ]
  br label %.lr.ph.i.i.i.i.i39

.lr.ph.i.i.i.i.i39:                               ; preds = %.lr.ph.i.i.i.i.i39.preheader193, %.lr.ph.i.i.i.i.i39
  %.012.i.i.i.i.i40 = phi i64 [ %i.cb, %.lr.ph.i.i.i.i.i39 ], [ %.012.i.i.i.i.i40.ph, %.lr.ph.i.i.i.i.i39.preheader193 ] ; 2 uses
  %.0811.i.i.i.i.i41 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i39 ], [ %.0811.i.i.i.i.i41.ph, %.lr.ph.i.i.i.i.i39.preheader193 ] ; 3 uses
  %.0910.i.i.i.i.i42 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i39 ], [ %.0910.i.i.i.i.i42.ph, %.lr.ph.i.i.i.i.i39.preheader193 ] ; 3 uses
  %i.bv = load i32, ptr %.0910.i.i.i.i.i42, align 4, !tbaa !48
  store i32 %i.bv, ptr %.0811.i.i.i.i.i41, align 4, !tbaa !206
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i42, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !48
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i41, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !191
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i42, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i41, i64 8 ; 2 uses
  %i.cb = add nsw i64 %.012.i.i.i.i.i40, -1
  %i.cc = icmp samesign ugt i64 %.012.i.i.i.i.i40, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !761

_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i39, %middle.block119
  %.lcssa78 = phi ptr [ %i.bq, %middle.block119 ], [ %i.ca, %.lr.ph.i.i.i.i.i39 ]
  %.pre65 = ptrtoint ptr %.lcssa78 to i64
  br label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %.pre-phi66 = phi i64 [ %.pre65, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit ], [ %i.w, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ]
  %i.cd = sub i64 %.pre-phi66, %i.w
  %i.ce = getelementptr inbounds i8, ptr %0, i64 %i.cd
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %.not34 = icmp sgt i64 %3, %6
  br i1 %.not34, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not35 = icmp eq i64 %3, 0
  br i1 %.not35, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cf = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cg = ptrtoint ptr %0 to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 7 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i44.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48

.lr.ph.i.i.i.i.i44.preheader:                     ; preds = %bb.f
  %min.iters.check130 = icmp ult i64 %i.ci, 6
  br i1 %min.iters.check130, label %.lr.ph.i.i.i.i.i44.preheader191, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader
  %i.ck = getelementptr i8, ptr %5, i64 %i.ch
  %bound0132 = icmp ult ptr %5, %1
  %bound1133 = icmp ult ptr %0, %i.ck
  %found.conflict134 = and i1 %bound0132, %bound1133
  br i1 %found.conflict134, label %.lr.ph.i.i.i.i.i44.preheader191, label %vector.ph135

vector.ph135:                                     ; preds = %vector.memcheck131
  %n.vec136 = and i64 %i.ci, 9223372036854775804  ; 3 uses
  %i.cl = and i64 %i.ci, 3
  %i.cm = shl i64 %n.vec136, 3                    ; 2 uses
  %i.cn = getelementptr i8, ptr %5, i64 %i.cm     ; 2 uses
  %i.co = getelementptr i8, ptr %0, i64 %i.cm
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next151, %vector.body137 ] ; 2 uses
  %i.cp = shl i64 %index138, 3                    ; 3 uses
  %i.cq = or disjoint i64 %i.cp, 16               ; 2 uses
  %next.gep139 = getelementptr i8, ptr %5, i64 %i.cp
  %next.gep140 = getelementptr i8, ptr %5, i64 %i.cq
  %next.gep141 = getelementptr i8, ptr %0, i64 %i.cp
  %next.gep142 = getelementptr i8, ptr %0, i64 %i.cq
  %wide.vec143 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !48, !alias.scope !777
  %wide.vec146 = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !48, !alias.scope !777
  store <4 x i32> %wide.vec143, ptr %next.gep139, align 4, !tbaa !48, !alias.scope !778, !noalias !777
  store <4 x i32> %wide.vec146, ptr %next.gep140, align 4, !tbaa !48, !alias.scope !778, !noalias !777
  %index.next151 = add nuw i64 %index138, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next151, %n.vec136
  br i1 %i.cr, label %middle.block152, label %vector.body137, !llvm.loop !765

middle.block152:                                  ; preds = %vector.body137
  %cmp.n153 = icmp eq i64 %i.ci, %n.vec136
  br i1 %cmp.n153, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48, label %.lr.ph.i.i.i.i.i44.preheader191

.lr.ph.i.i.i.i.i44.preheader191:                  ; preds = %vector.memcheck131, %.lr.ph.i.i.i.i.i44.preheader, %middle.block152
  %.012.i.i.i.i.i45.ph = phi i64 [ %i.ci, %vector.memcheck131 ], [ %i.ci, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cl, %middle.block152 ]
  %.0811.i.i.i.i.i46.ph = phi ptr [ %5, %vector.memcheck131 ], [ %5, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.cn, %middle.block152 ]
  %.0910.i.i.i.i.i47.ph = phi ptr [ %0, %vector.memcheck131 ], [ %0, %.lr.ph.i.i.i.i.i44.preheader ], [ %i.co, %middle.block152 ]
  br label %.lr.ph.i.i.i.i.i44

.lr.ph.i.i.i.i.i44:                               ; preds = %.lr.ph.i.i.i.i.i44.preheader191, %.lr.ph.i.i.i.i.i44
  %.012.i.i.i.i.i45 = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i44 ], [ %.012.i.i.i.i.i45.ph, %.lr.ph.i.i.i.i.i44.preheader191 ] ; 2 uses
  %.0811.i.i.i.i.i46 = phi ptr [ %i.cx, %.lr.ph.i.i.i.i.i44 ], [ %.0811.i.i.i.i.i46.ph, %.lr.ph.i.i.i.i.i44.preheader191 ] ; 3 uses
  %.0910.i.i.i.i.i47 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i44 ], [ %.0910.i.i.i.i.i47.ph, %.lr.ph.i.i.i.i.i44.preheader191 ] ; 3 uses
  %i.cs = load i32, ptr %.0910.i.i.i.i.i47, align 4, !tbaa !48
  store i32 %i.cs, ptr %.0811.i.i.i.i.i46, align 4, !tbaa !206
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !48
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !191
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 8 ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i45, -1
  %i.cz = icmp samesign ugt i64 %.012.i.i.i.i.i45, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i44, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48, !llvm.loop !766

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48: ; preds = %.lr.ph.i.i.i.i.i44, %middle.block152, %bb.f
  %.08.lcssa.i.i.i.i.i43 = phi ptr [ %5, %bb.f ], [ %i.cn, %middle.block152 ], [ %i.cx, %.lr.ph.i.i.i.i.i44 ] ; 3 uses
  %i.da = ptrtoint ptr %2 to i64                  ; 3 uses
  %i.db = sub i64 %i.da, %i.cf                    ; 2 uses
  %i.dc = ashr exact i64 %i.db, 3                 ; 7 uses
  %i.dd = icmp sgt i64 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.i.i.i.i.i50.preheader, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i50.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48
  %min.iters.check163 = icmp ult i64 %i.dc, 6
  br i1 %min.iters.check163, label %.lr.ph.i.i.i.i.i50.preheader190, label %vector.memcheck164

vector.memcheck164:                               ; preds = %.lr.ph.i.i.i.i.i50.preheader
  %i.de = getelementptr i8, ptr %0, i64 %i.db
  %bound0165 = icmp ult ptr %0, %2
  %bound1166 = icmp ult ptr %1, %i.de
  %found.conflict167 = and i1 %bound0165, %bound1166
  br i1 %found.conflict167, label %.lr.ph.i.i.i.i.i50.preheader190, label %vector.ph168

vector.ph168:                                     ; preds = %vector.memcheck164
  %n.vec169 = and i64 %i.dc, 9223372036854775804  ; 3 uses
  %i.df = and i64 %i.dc, 3
  %i.dg = shl i64 %n.vec169, 3                    ; 2 uses
  %i.dh = getelementptr i8, ptr %0, i64 %i.dg
  %i.di = getelementptr i8, ptr %1, i64 %i.dg
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next184, %vector.body170 ] ; 2 uses
  %i.dj = shl i64 %index171, 3                    ; 3 uses
  %i.dk = or disjoint i64 %i.dj, 16               ; 2 uses
  %next.gep172 = getelementptr i8, ptr %0, i64 %i.dj
  %next.gep173 = getelementptr i8, ptr %0, i64 %i.dk
  %next.gep174 = getelementptr i8, ptr %1, i64 %i.dj
  %next.gep175 = getelementptr i8, ptr %1, i64 %i.dk
  %wide.vec176 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !48, !alias.scope !779
  %wide.vec179 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !48, !alias.scope !779
  store <4 x i32> %wide.vec176, ptr %next.gep172, align 4, !tbaa !48, !alias.scope !780, !noalias !779
  store <4 x i32> %wide.vec179, ptr %next.gep173, align 4, !tbaa !48, !alias.scope !780, !noalias !779
  %index.next184 = add nuw i64 %index171, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next184, %n.vec169
  br i1 %i.dl, label %middle.block185, label %vector.body170, !llvm.loop !770

middle.block185:                                  ; preds = %vector.body170
  %cmp.n186 = icmp eq i64 %i.dc, %n.vec169
  br i1 %cmp.n186, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i.i.i.i.i50.preheader190

.lr.ph.i.i.i.i.i50.preheader190:                  ; preds = %vector.memcheck164, %.lr.ph.i.i.i.i.i50.preheader, %middle.block185
  %.012.i.i.i.i.i51.ph = phi i64 [ %i.dc, %vector.memcheck164 ], [ %i.dc, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.df, %middle.block185 ]
  %.0811.i.i.i.i.i52.ph = phi ptr [ %0, %vector.memcheck164 ], [ %0, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.dh, %middle.block185 ]
  %.0910.i.i.i.i.i53.ph = phi ptr [ %1, %vector.memcheck164 ], [ %1, %.lr.ph.i.i.i.i.i50.preheader ], [ %i.di, %middle.block185 ]
  br label %.lr.ph.i.i.i.i.i50

.lr.ph.i.i.i.i.i50:                               ; preds = %.lr.ph.i.i.i.i.i50.preheader190, %.lr.ph.i.i.i.i.i50
  %.012.i.i.i.i.i51 = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i50 ], [ %.012.i.i.i.i.i51.ph, %.lr.ph.i.i.i.i.i50.preheader190 ] ; 2 uses
  %.0811.i.i.i.i.i52 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i50 ], [ %.0811.i.i.i.i.i52.ph, %.lr.ph.i.i.i.i.i50.preheader190 ] ; 3 uses
  %.0910.i.i.i.i.i53 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i50 ], [ %.0910.i.i.i.i.i53.ph, %.lr.ph.i.i.i.i.i50.preheader190 ] ; 3 uses
  %i.dm = load i32, ptr %.0910.i.i.i.i.i53, align 4, !tbaa !48
  store i32 %i.dm, ptr %.0811.i.i.i.i.i52, align 4, !tbaa !206
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !48
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 4
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !191
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 8
  %i.ds = add nsw i64 %.012.i.i.i.i.i51, -1
  %i.dt = icmp samesign ugt i64 %.012.i.i.i.i.i51, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !771

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i50, %middle.block185, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48
  %i.du = ptrtoint ptr %.08.lcssa.i.i.i.i.i43 to i64
  %i.dv = ptrtoint ptr %5 to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3                 ; 5 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i55.preheader, label %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i55.preheader:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %xtraiter197 = and i64 %i.dx, 3                 ; 2 uses
  %lcmp.mod198.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod198.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol

.lr.ph.i.i.i.i.i55.prol:                          ; preds = %.lr.ph.i.i.i.i.i55.preheader, %.lr.ph.i.i.i.i.i55.prol
  %.010.i.i.i.i.i56.prol = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i55.prol ], [ %i.dx, %.lr.ph.i.i.i.i.i55.preheader ]
  %.069.i.i.i.i.i57.prol = phi ptr [ %i.ea, %.lr.ph.i.i.i.i.i55.prol ], [ %2, %.lr.ph.i.i.i.i.i55.preheader ] ; 2 uses
  %.078.i.i.i.i.i58.prol = phi ptr [ %i.dz, %.lr.ph.i.i.i.i.i55.prol ], [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i55.preheader ] ; 2 uses
  %prol.iter199 = phi i64 [ %prol.iter199.next, %.lr.ph.i.i.i.i.i55.prol ], [ 0, %.lr.ph.i.i.i.i.i55.preheader ]
  %i.dz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58.prol, i64 -8 ; 3 uses
  %i.ea = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57.prol, i64 -8 ; 4 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !48
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !206
  %i.ec = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58.prol, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !48
  %i.ee = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57.prol, i64 -4
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !191
  %i.ef = add nsw i64 %.010.i.i.i.i.i56.prol, -1  ; 2 uses
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !772

.lr.ph.i.i.i.i.i55.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i55.prol, %.lr.ph.i.i.i.i.i55.preheader
  %.010.i.i.i.i.i56.unr = phi i64 [ %i.dx, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.i55.prol ]
  %.069.i.i.i.i.i57.unr = phi ptr [ %2, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i55.prol ]
  %.078.i.i.i.i.i58.unr = phi ptr [ %.08.lcssa.i.i.i.i.i43, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.dz, %.lr.ph.i.i.i.i.i55.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i55.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.i55.prol ]
  %i.eg = icmp ult i64 %i.dx, 4
  br i1 %i.eg, label %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, label %.lr.ph.i.i.i.i.i55

.lr.ph.i.i.i.i.i55:                               ; preds = %.lr.ph.i.i.i.i.i55.prol.loopexit, %.lr.ph.i.i.i.i.i55
  %.010.i.i.i.i.i56 = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i55 ], [ %.010.i.i.i.i.i56.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i57 = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i55 ], [ %.069.i.i.i.i.i57.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i58 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i55 ], [ %.078.i.i.i.i.i58.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ] ; 8 uses
  %i.eh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -8
  %i.ei = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -8
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !48
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !206
  %i.ek = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !48
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !191
  %i.en = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -16
  %i.eo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -16
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !48
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !206
  %i.eq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !48
  %i.es = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -12
  store i32 %i.er, ptr %i.es, align 4, !tbaa !191
  %i.et = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -24
  %i.eu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -24
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !48
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !206
  %i.ew = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -20
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !48
  %i.ey = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -20
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !191
  %i.ez = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -32 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -32 ; 3 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !48
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !206
  %i.fc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !48
  %i.fe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -28
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !191
  %i.ff = add nsw i64 %.010.i.i.i.i.i56, -4
  %i.fg = icmp sgt i64 %.010.i.i.i.i.i56, 4
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !8

_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i55, %.lr.ph.i.i.i.i.i55.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.i.i55.prol.loopexit ], [ %i.fa, %.lr.ph.i.i.i.i.i55 ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit ], [ %i.da, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit ]
  %i.fh = sub i64 %.pre-phi, %i.da
  %i.fi = getelementptr inbounds i8, ptr %2, i64 %i.fh
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.fj = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.b, %bb.g, %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.sroa.032.0 = phi ptr [ %i.ce, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.fj, %bb.g ], [ %i.fi, %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %0, %bb.b ], [ %2, %bb.e ]
  ret ptr %.sroa.032.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN4llvm12function_refIFiPcmEE11callback_fnIZNS_lsIJjmEEERNS_11raw_ostreamES7_NS_13format_objectIJDpT_EEEEUlS1_mE_EEilS1_m(i64 noundef %0, ptr noundef %1, i64 noundef %2) #0 comdat align 2 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !782, !nonnull !98, !align !140 ; 3 uses
  %i.c = and i64 %2, 4294967295
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !48
  %i.h = load i64, ptr %i.e, align 8, !tbaa !28
  %i.i = tail call noundef i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %1, i64 noundef %i.c, ptr noundef %i.d, i32 noundef %i.g, i64 noundef %i.h) #22
  ret i32 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESG_IJEEEEESt17_Rb_tree_iteratorIS5_ESt23_Rb_tree_const_iteratorIS5_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #25 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !132
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i32, ptr %i.d, align 4, !tbaa !48
  store i32 %i.e, ptr %i.b, align 8, !tbaa !176
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  %i.g = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %i.b) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0        ; 2 uses
  %i.i = extractvalue { ptr, ptr } %i.g, 1        ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp ne ptr %i.h, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.k
  br i1 %or.cond.i.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.b, align 8, !tbaa !48
  %i.n = load i32, ptr %i.l, align 4, !tbaa !48
  %i.o = icmp ult i32 %i.m, %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b
  %i.p = phi i1 [ %i.o, %bb.c ], [ true, %bb.b ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j) #22
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !94
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !94
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_Auto_nodeD2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !154  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !207
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #23
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i: ; preds = %bb.e, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #23
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i
  %.sroa.09.013 = phi ptr [ %i.a, %.thread ], [ %i.h, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS5_E.exit.i ]
  ret ptr %.sroa.09.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS5_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !94
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !130  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48
  %i.i = load i32, ptr %2, align 4, !tbaa !48
  %i.j = icmp ult i32 %i.h, %i.i
  br i1 %i.j, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i = load ptr, ptr %i.k, align 8, !tbaa !130 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.l = load i32, ptr %2, align 4, !tbaa !48     ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %bb.e ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.n = load i32, ptr %i.m, align 4, !tbaa !48   ; 2 uses
  %i.o = icmp ult i32 %i.l, %i.n                  ; 2 uses
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !130 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !783

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !93
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #26 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !48
  %.pre82 = load i32, ptr %2, align 4, !tbaa !48
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp ult i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !48     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !48   ; 2 uses
  %i.z = icmp ult i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !130 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !48
  %i.ag = icmp ult i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !784
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !130 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !48 ; 2 uses
  %i.an = icmp ult i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !130 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !783

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #26 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !48
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp ult i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !130 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #26 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !48
  %i.az = icmp ult i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !784
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !130 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !48 ; 2 uses
  %i.bg = icmp ult i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !130 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !783

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !93
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #26 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !48
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp ult i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !153  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !154    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not23 = icmp ult i64 %i.l, %1
  br i1 %.not23, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4llvm15BitcodeAnalyzer14PerRecordStatsEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4llvm15BitcodeAnalyzer14PerRecordStatsEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !153
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.307) #24
  unreachable

_ZNKSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #25 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i64 16, i1 false), !tbaa.struct !789, !alias.scope !790
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !788

_ZNSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i30 = icmp eq ptr %i.c, null
  br i1 %.not.i30, label %_ZNSt12_Vector_baseIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !207
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #23
  br label %_ZNSt12_Vector_baseIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !154
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ad, ptr %i.h, align 8, !tbaa !207
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN4llvm15BitcodeAnalyzer14PerRecordStatsEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN4llvm15BitcodeAnalyzer14PerRecordStatsESaIS2_EE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind allocsize(0) }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0) }

!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!20}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !47}
!2 = distinct !{!2, !47}
!3 = distinct !{null, null, null, null, null, null, null, null}
!4 = distinct !{!4, !47}
!5 = distinct !{null, null, null, null, null, null, null, null, null}
!6 = distinct !{!6, !47}
!7 = distinct !{!7, !47}
!8 = distinct !{!8, !47}
!9 = distinct !{!9, !47}
!10 = distinct !{!10, !47}
!11 = distinct !{!11, !47}
!12 = distinct !{!12, !47}
!13 = !{i32 8, !"PIC Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!16 = !{!"Simple C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!"__libc_errno", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"any pointer", !17, i64 0}
!22 = !{!"p1 omnipotent char", !21, i64 0}
!23 = !{!"long", !17, i64 0}
!24 = !{!"_ZTSN4llvm9StringRefE", !22, i64 0, !23, i64 8}
!25 = !{!24, !23, i64 8}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!27 = !{!26, !22, i64 0}
!28 = !{!23, !23, i64 0}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !23, i64 8, !17, i64 16}
!30 = !{!29, !22, i64 0}
!31 = !{!17, !17, i64 0}
!32 = !{!29, !23, i64 8}
!33 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !17, i64 0}
!34 = !{!"bool", !17, i64 0}
!35 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !17, i64 0}
!36 = !{!"_ZTSN4llvm11raw_ostreamE", !33, i64 8, !22, i64 16, !22, i64 24, !22, i64 32, !34, i64 40, !35, i64 44}
!37 = !{!36, !22, i64 24}
!38 = !{!36, !22, i64 32}
!39 = !{!24, !22, i64 0}
!40 = !{!"_ZTSN4llvm8ArrayRefIhEE", !22, i64 0, !23, i64 8}
!41 = !{!"_ZTSN4llvm21SimpleBitstreamCursorE", !40, i64 0, !23, i64 16, !23, i64 24, !18, i64 32}
!42 = !{!41, !18, i64 32}
!43 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !21, i64 0}
!44 = !{!"_ZTSN4llvm5ErrorE", !43, i64 0}
!45 = !{!44, !43, i64 0}
!46 = !{!43, !43, i64 0}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!18, !18, i64 0}
!49 = !{!"vtable pointer", !16, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!"p1 _ZTSSt10shared_ptrIN4llvm13BitCodeAbbrevEE", !21, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE17_Vector_impl_dataE", !51, i64 0, !51, i64 8, !51, i64 16}
!53 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE12_Vector_implE", !52, i64 0}
!54 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE", !53, i64 0}
!55 = !{!"_ZTSSt6vectorISt10shared_ptrIN4llvm13BitCodeAbbrevEESaIS3_EE", !54, i64 0}
!56 = !{!"_ZTSN4llvm15SmallVectorBaseIjEE", !21, i64 0, !18, i64 8, !18, i64 12}
!57 = !{!"_ZTSN4llvm25SmallVectorTemplateCommonINS_15BitstreamCursor5BlockEvEE", !56, i64 0}
!58 = !{!"_ZTSN4llvm23SmallVectorTemplateBaseINS_15BitstreamCursor5BlockELb0EEE", !57, i64 0}
!59 = !{!"_ZTSN4llvm15SmallVectorImplINS_15BitstreamCursor5BlockEEE", !58, i64 0}
!60 = !{!"_ZTSN4llvm18SmallVectorStorageINS_15BitstreamCursor5BlockELj8EEE", !17, i64 0}
!61 = !{!"_ZTSN4llvm11SmallVectorINS_15BitstreamCursor5BlockELj8EEE", !59, i64 0, !60, i64 16}
!62 = !{!"p1 _ZTSN4llvm18BitstreamBlockInfoE", !21, i64 0}
!63 = !{!"_ZTSN4llvm15BitstreamCursorE", !41, i64 0, !18, i64 36, !55, i64 40, !61, i64 64, !62, i64 336}
!64 = !{!63, !18, i64 36}
!65 = !{!56, !21, i64 0}
!66 = !{!56, !18, i64 8}
!67 = !{!56, !18, i64 12}
!68 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm15BitstreamCursorEE", !17, i64 0, !34, i64 344}
!69 = !{!68, !34, i64 344}
!70 = !{!"p1 _ZTSN4llvm18BitstreamBlockInfo9BlockInfoE", !21, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseIN4llvm18BitstreamBlockInfo9BlockInfoESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!"_ZTSNSt12_Vector_baseIN4llvm18BitstreamBlockInfo9BlockInfoESaIS2_EE12_Vector_implE", !71, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIN4llvm18BitstreamBlockInfo9BlockInfoESaIS2_EE", !72, i64 0}
!74 = !{!"_ZTSSt6vectorIN4llvm18BitstreamBlockInfo9BlockInfoESaIS2_EE", !73, i64 0}
!75 = !{!"_ZTSN4llvm18BitstreamBlockInfoE", !74, i64 0}
!76 = !{!"_ZTSN4llvm17CurStreamTypeTypeE", !17, i64 0}
!77 = !{!"_ZTSSt17_Optional_payloadIN4llvm15BitstreamCursorELb1ELb0ELb0EE", !68, i64 0}
!78 = !{!"_ZTSSt17_Optional_payloadIN4llvm15BitstreamCursorELb0ELb0ELb0EE", !77, i64 0}
!79 = !{!"_ZTSSt14_Optional_baseIN4llvm15BitstreamCursorELb0ELb0EE", !78, i64 0}
!80 = !{!"_ZTSSt8optionalIN4llvm15BitstreamCursorEE", !79, i64 0}
!81 = !{!"_ZTSSt4lessIjE"}
!82 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !81, i64 0}
!83 = !{!"_ZTSSt14_Rb_tree_color", !17, i64 0}
!84 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !21, i64 0}
!85 = !{!"_ZTSSt18_Rb_tree_node_base", !83, i64 0, !84, i64 8, !84, i64 16, !84, i64 24}
!86 = !{!"_ZTSSt15_Rb_tree_header", !85, i64 0, !23, i64 32}
!87 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE13_Rb_tree_implIS9_Lb1EEE", !82, i64 0, !86, i64 8}
!88 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN4llvm15BitcodeAnalyzer15PerBlockIDStatsEESt10_Select1stIS5_ESt4lessIjESaIS5_EE", !87, i64 0}
!89 = !{!"_ZTSSt3mapIjN4llvm15BitcodeAnalyzer15PerBlockIDStatsESt4lessIjESaISt4pairIKjS2_EEE", !88, i64 0}
!90 = !{!"_ZTSN4llvm15BitcodeAnalyzerE", !63, i64 0, !75, i64 344, !76, i64 368, !80, i64 376, !18, i64 728, !89, i64 736}
!91 = !{!90, !18, i64 728}
!92 = !{!86, !84, i64 8}
!93 = !{!86, !84, i64 16}
!94 = !{!86, !23, i64 32}
!95 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm9StringRefEE", !17, i64 0, !34, i64 16}
!96 = !{!95, !34, i64 16}
!97 = !{i8 0, i8 2}
!98 = !{}
!99 = !{!22, !22, i64 0}
!100 = !{!63, !62, i64 336}
!101 = !{!76, !76, i64 0}
!102 = !{i64 0, i64 8, !99, i64 8, i64 8, !28, i64 16, i64 8, !28, i64 24, i64 8, !28, i64 32, i64 4, !48}
!103 = !{!52, !51, i64 8}
!104 = !{!52, !51, i64 0}
!105 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!106 = !{!51, !51, i64 0}
!107 = !{!52, !51, i64 16}
!108 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0}
!109 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !108, i64 0}
!110 = !{!109, !108, i64 0}
!111 = !{!21, !21, i64 0}
!112 = !{!"_ZTSSt22_Optional_payload_baseIN4llvm18BitstreamBlockInfoEE", !17, i64 0, !34, i64 24}
!113 = !{!112, !34, i64 24}
!114 = !{!71, !70, i64 0}
!115 = !{!71, !70, i64 8}
!116 = !{!71, !70, i64 16}
!117 = !{!70, !70, i64 0}
!118 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !18, i64 8, !18, i64 12}
!119 = !{!118, !18, i64 8}
!120 = !{!118, !18, i64 12}
!121 = !{!41, !23, i64 24}
!122 = !{!41, !23, i64 16}
!123 = !{!36, !33, i64 8}
!124 = !{!36, !34, i64 40}
!125 = !{!36, !35, i64 44}
!126 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"p1 _ZTSN4llvm13format_objectIJmmEEE", !21, i64 0}
!129 = !{!128, !128, i64 0}
!130 = !{!84, !84, i64 0}
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!545 = !{!523}
!546 = !{!525}
!547 = !{!142, !142, i64 0}
!548 = !{!"_ZTSSt4pairIjNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !18, i64 0, !29, i64 8}
!549 = !{!548, !18, i64 0}
!550 = distinct !{!550, i1 true, !"_ZN4llvm15BitstreamCursor8ReadCodeEv"}
!551 = distinct !{!551, !550, !"_ZN4llvm15BitstreamCursor8ReadCodeEv: argument 0"}
!552 = distinct !{!552, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!553 = distinct !{!553, !552, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!554 = distinct !{!554, i1 true, !"_ZN4llvm8ExpectedIjE9takeErrorEv"}
!555 = distinct !{!555, !554, !"_ZN4llvm8ExpectedIjE9takeErrorEv: argument 0"}
!556 = distinct !{!556, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!557 = distinct !{!557, !556, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!558 = !{!551}
!559 = !{!553}
!560 = !{!555}
!561 = !{!557}
!562 = distinct !{!562, i1 true, !"_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_"}
!563 = distinct !{!563, !562, !"_ZN4llvm17createStringErrorIJEEENS_5ErrorESt4errcPKcDpRKT_: argument 0"}
!564 = distinct !{!564, i1 true, !"_ZN4llvm17createStringErrorESt10error_codePKc"}
!565 = distinct !{!565, !564, !"_ZN4llvm17createStringErrorESt10error_codePKc: argument 0"}
!566 = distinct !{!566, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!567 = distinct !{!567, !566, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!568 = !{!565, !563}
!569 = !{!567}
!570 = distinct !{!570, i1 true, !"_ZN4llvm17createStringErrorESt10error_codePKc"}
!571 = distinct !{!571, !570, !"_ZN4llvm17createStringErrorESt10error_codePKc: argument 0"}
!572 = !{!571}
!573 = distinct !{!573, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!574 = distinct !{!574, !573, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!575 = distinct !{!575, i1 true, !"_ZN4llvm17createStringErrorIJjjEEENS_5ErrorESt10error_codePKcDpRKT_"}
!576 = distinct !{!576, !575, !"_ZN4llvm17createStringErrorIJjjEEENS_5ErrorESt10error_codePKcDpRKT_: argument 0"}
!577 = distinct !{!577, i1 true, !"_ZN4llvm6formatIJjjEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!578 = distinct !{!578, !577, !"_ZN4llvm6formatIJjjEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!579 = distinct !{!579, i1 true, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_"}
!580 = distinct !{!580, !579, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_: argument 0"}
!581 = distinct !{!581, i1 true, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!582 = distinct !{!582, !581, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!583 = distinct !{!583, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!584 = distinct !{!584, !583, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!585 = !{!574}
!586 = !{!576}
!587 = !{!578, !576}
!588 = !{!202, !202, i64 0}
!589 = !{!582, !580, !576}
!590 = !{!584}
!591 = distinct !{!591, i1 true, !"_ZN4llvm17createStringErrorIJmmEEENS_5ErrorESt10error_codePKcDpRKT_"}
!592 = distinct !{!592, !591, !"_ZN4llvm17createStringErrorIJmmEEENS_5ErrorESt10error_codePKcDpRKT_: argument 0"}
!593 = distinct !{!593, i1 true, !"_ZN4llvm6formatIJmmEEENS_13format_objectIJDpT_EEEPKcDpRKS2_"}
!594 = distinct !{!594, !593, !"_ZN4llvm6formatIJmmEEENS_13format_objectIJDpT_EEEPKcDpRKS2_: argument 0"}
!595 = distinct !{!595, i1 true, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_"}
!596 = distinct !{!596, !595, !"_ZN4llvm10make_errorINS_11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEEENS_5ErrorEDpOT0_: argument 0"}
!597 = distinct !{!597, i1 true, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!598 = distinct !{!598, !597, !"_ZSt11make_uniqueIN4llvm11StringErrorEJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt10error_codebEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!599 = distinct !{!599, !47}
!600 = !{!40, !23, i64 8}
!601 = !{!592}
!602 = !{!594, !592}
!603 = !{!596}
!604 = !{!598, !596, !592}
!605 = !{!596, !592}
!606 = !{!"_ZTSZN4llvmlsIJmmEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !128, i64 0}
!607 = !{!606, !128, i64 0}
!608 = !{!"_ZTSSt11_Tuple_implILm0EJmmEE", !193, i64 0, !169, i64 8}
!609 = !{!"_ZTSSt5tupleIJmmEE", !608, i64 0}
!610 = !{!"_ZTSN4llvm13format_objectIJmmEEE", !22, i64 0, !609, i64 8}
!611 = !{!610, !22, i64 0}
!612 = !{!"_ZTSZN4llvmlsIJjjEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !202, i64 0}
!613 = !{!612, !202, i64 0}
!614 = !{!"_ZTSSt10_Head_baseILm1EjLb0EE", !18, i64 0}
!615 = !{!"_ZTSSt11_Tuple_implILm1EJjEE", !614, i64 0}
!616 = !{!"_ZTSSt11_Tuple_implILm0EJjjEE", !615, i64 0, !194, i64 4}
!617 = !{!"_ZTSSt5tupleIJjjEE", !616, i64 0}
!618 = !{!"_ZTSN4llvm13format_objectIJjjEEE", !22, i64 0, !617, i64 8}
!619 = !{!618, !22, i64 0}
!620 = distinct !{null}
!621 = distinct !{null, null, null, null, null, null, null, null, null, null}
!622 = distinct !{!622, !47}
!623 = distinct !{!623, !47}
!624 = distinct !{!624, !47}
!625 = distinct !{null, null, null, null, null, null}
!626 = distinct !{null, null, null, null, null, null, null, null, null}
!627 = distinct !{!627, !47}
!628 = distinct !{null, null, null, null, null, null}
!629 = distinct !{!629, !47}
!630 = distinct !{null, null, null, null, null, null, null, null, null}
!631 = distinct !{!631, !47}
!632 = distinct !{!632, !47}
!633 = distinct !{!633, !47}
!634 = distinct !{null, null, null, null, null, null, null}
!635 = !{!143, !142, i64 0}
!636 = !{!143, !142, i64 8}
!637 = !{!143, !142, i64 16}
!638 = !{!"_ZTSZN4llvmlsIJmdmEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !174, i64 0}
!639 = !{!638, !174, i64 0}
!640 = !{!"_ZTSZN4llvmlsIJddmEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !187, i64 0}
!641 = !{!640, !187, i64 0}
!642 = distinct !{null, null, null, null, null, null, null, null, null}
!643 = distinct !{null, null, null, null, null, null, null, null, null}
!644 = !{!"_ZTSZN4llvmlsIJdEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !182, i64 0}
!645 = !{!644, !182, i64 0}
!646 = distinct !{!646, !47}
!647 = distinct !{!647, !163}
!648 = distinct !{!648, !47}
!649 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!650 = distinct !{!650, !47}
!651 = distinct !{!651, !163}
!652 = distinct !{!652, i1 false, !"LVerDomain"}
!653 = distinct !{!653, !652}
!654 = distinct !{!654, !652}
!655 = distinct !{!655, !47, !188, !189}
!656 = distinct !{!656, !47, !188}
!657 = distinct !{!657, !47}
!658 = distinct !{!658, i1 false, !"LVerDomain"}
!659 = distinct !{!659, !658}
!660 = distinct !{!660, !658}
!661 = distinct !{!661, !47, !188, !189}
!662 = distinct !{!662, !47, !188}
!663 = distinct !{!663, i1 false, !"LVerDomain"}
!664 = distinct !{!664, !663}
!665 = distinct !{!665, !663}
!666 = distinct !{!666, !47, !188, !189}
!667 = distinct !{!667, !47, !188}
!668 = distinct !{!668, !163}
!669 = distinct !{!669, !47}
!670 = distinct !{!670, !163}
!671 = !{!653}
!672 = !{!654}
!673 = !{!659}
!674 = !{!660}
!675 = !{!664}
!676 = !{!665}
!677 = distinct !{!677, !47}
!678 = distinct !{!678, !163}
!679 = distinct !{!679, !163}
!680 = distinct !{!680, !47}
!681 = distinct !{!681, i1 false, !"LVerDomain"}
!682 = distinct !{!682, !681}
!683 = distinct !{!683, !681}
!684 = distinct !{!684, !47, !188, !189}
!685 = distinct !{!685, !47, !188}
!686 = distinct !{!686, i1 false, !"LVerDomain"}
!687 = distinct !{!687, !686}
!688 = distinct !{!688, !686}
!689 = distinct !{!689, !47, !188, !189}
!690 = distinct !{!690, !47, !188}
!691 = distinct !{!691, !47}
!692 = distinct !{!692, i1 false, !"LVerDomain"}
!693 = distinct !{!693, !692}
!694 = distinct !{!694, !692}
!695 = distinct !{!695, !47, !188, !189}
!696 = distinct !{!696, !47, !188}
!697 = distinct !{!697, i1 false, !"LVerDomain"}
!698 = distinct !{!698, !697}
!699 = distinct !{!699, !697}
!700 = distinct !{!700, !47, !188, !189}
!701 = distinct !{!701, !47, !188}
!702 = !{!682}
!703 = !{!683}
!704 = !{!687}
!705 = !{!688}
!706 = !{!693}
!707 = !{!694}
!708 = !{!698}
!709 = !{!699}
!710 = distinct !{!710, !47}
!711 = distinct !{!711, i1 false, !"LVerDomain"}
!712 = distinct !{!712, !711}
!713 = distinct !{!713, !711}
!714 = distinct !{!714, !47, !188, !189}
!715 = distinct !{!715, !47, !188}
!716 = distinct !{!716, i1 false, !"LVerDomain"}
!717 = distinct !{!717, !716}
!718 = distinct !{!718, !716}
!719 = distinct !{!719, !47, !188, !189}
!720 = distinct !{!720, !47, !188}
!721 = distinct !{!721, !47}
!722 = distinct !{!722, i1 false, !"LVerDomain"}
!723 = distinct !{!723, !722}
!724 = distinct !{!724, !722}
!725 = distinct !{!725, !47, !188, !189}
!726 = distinct !{!726, !47, !188}
!727 = distinct !{!727, i1 false, !"LVerDomain"}
!728 = distinct !{!728, !727}
!729 = distinct !{!729, !727}
!730 = distinct !{!730, !47, !188, !189}
!731 = distinct !{!731, !47, !188}
!732 = !{!712}
!733 = !{!713}
!734 = !{!717}
!735 = !{!718}
!736 = !{!723}
!737 = !{!724}
!738 = !{!728}
!739 = !{!729}
!740 = distinct !{!740, i1 false, !"LVerDomain"}
!741 = distinct !{!741, !740}
!742 = distinct !{!742, !740}
!743 = distinct !{!743, !47, !188, !189}
!744 = distinct !{!744, !47, !188}
!745 = distinct !{!745, !47, !188, !189}
!746 = distinct !{!746, !47, !188}
!747 = distinct !{!747, !47}
!748 = distinct !{!748, !47}
!749 = !{!741}
!750 = !{!742}
!751 = distinct !{!751, i1 false, !"LVerDomain"}
!752 = distinct !{!752, !751}
!753 = distinct !{!753, !751}
!754 = distinct !{!754, !47, !188, !189}
!755 = distinct !{!755, !47, !188}
!756 = distinct !{!756, !163}
!757 = distinct !{!757, i1 false, !"LVerDomain"}
!758 = distinct !{!758, !757}
!759 = distinct !{!759, !757}
!760 = distinct !{!760, !47, !188, !189}
!761 = distinct !{!761, !47, !188}
!762 = distinct !{!762, i1 false, !"LVerDomain"}
!763 = distinct !{!763, !762}
!764 = distinct !{!764, !762}
!765 = distinct !{!765, !47, !188, !189}
!766 = distinct !{!766, !47, !188}
!767 = distinct !{!767, i1 false, !"LVerDomain"}
!768 = distinct !{!768, !767}
!769 = distinct !{!769, !767}
!770 = distinct !{!770, !47, !188, !189}
!771 = distinct !{!771, !47, !188}
!772 = distinct !{!772, !163}
!773 = !{!752}
!774 = !{!753}
!775 = !{!758}
!776 = !{!759}
!777 = !{!763}
!778 = !{!764}
!779 = !{!768}
!780 = !{!769}
!781 = !{!"_ZTSZN4llvmlsIJjmEEERNS_11raw_ostreamES2_NS_13format_objectIJDpT_EEEEUlPcmE_", !199, i64 0}
!782 = !{!781, !199, i64 0}
!783 = distinct !{!783, !47}
!784 = !{!85, !84, i64 24}
!785 = distinct !{!785, i1 true, !"_ZSt19__relocate_object_aIN4llvm15BitcodeAnalyzer14PerRecordStatsES2_SaIS2_EEvPT_PT0_RT1_"}
!786 = distinct !{!786, !785, !"_ZSt19__relocate_object_aIN4llvm15BitcodeAnalyzer14PerRecordStatsES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!787 = distinct !{!787, !785, !"_ZSt19__relocate_object_aIN4llvm15BitcodeAnalyzer14PerRecordStatsES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!788 = distinct !{!788, !47}
!789 = !{i64 0, i64 4, !48, i64 4, i64 4, !48, i64 8, i64 8, !28}
!790 = !{!787, !786}
end_hunk_1
