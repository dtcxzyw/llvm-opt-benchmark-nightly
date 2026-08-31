Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 108
loop-unroll.NumUnrolled: 182
begin_hunk_0_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8695 = phi i64 [ %4, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 4 uses
  %.tr8594 = phi i64 [ %3, %.lr.ph ], [ %i.aw, %tailrecurse ] ; 4 uses
  %.tr8392 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr91 = phi ptr [ %0, %.lr.ph ], [ %i.av, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8695, %.tr8594
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !1718, !nonnull !457, !align !458
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.tr8392, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %.tr91, i64 %i.g
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 1
  %.0.copyload.i2.i.i.i.i.i = load i64, ptr %i.i, align 1
  %i.j = icmp ult i64 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(24) %.tr91, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.tr91, ptr noundef nonnull align 1 dereferenceable(24) %.tr8392, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.tr8392, ptr noundef nonnull align 1 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr8594, %.tr8695
  %i.l = ptrtoint ptr %.tr8392 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr8594, 2                     ; 2 uses
  %i.n = getelementptr inbounds [24 x i8], ptr %.tr91, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.q = udiv exact i64 %i.o, 24
  %i.r = load i64, ptr %.sroa.222.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.n, i64 %i.r
  %.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.s, align 1
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.q, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.t = lshr i64 %.017.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.sroa.012.016.i, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.r
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.v, align 1
  %i.w = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.y = xor i64 %i.t, -1
  %i.z = add nsw i64 %.017.i, %i.y
  %.sroa.012.1.i = select i1 %i.w, ptr %i.x, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.w, i64 %i.z, i64 %i.t      ; 2 uses
  %i.aa = icmp sgt i64 %.1.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, !llvm.loop !1720

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %.tr8392, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.ab = sub i64 %.pre-phi, %i.l
  %i.ac = sdiv exact i64 %i.ab, 24
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit56: ; preds = %bb.e
  %i.ad = sdiv i64 %.tr8695, 2                    ; 2 uses
  %i.ae = getelementptr inbounds [24 x i8], ptr %.tr8392, i64 %i.ad ; 2 uses
  %i.af = ptrtoint ptr %.tr91 to i64              ; 3 uses
  %i.ag = sub i64 %i.l, %i.af                     ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit56
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.ai = udiv exact i64 %i.ag, 24
  %i.aj = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  %.0.copyload.i.i.i.i.i.i.i61 = load i64, ptr %i.ak, align 1
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60
  %.017.i63 = phi i64 [ %i.ai, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.1.i69, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62 ] ; 2 uses
  %.sroa.012.016.i64 = phi ptr [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.sroa.012.1.i68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62 ] ; 2 uses
  %i.al = lshr i64 %.017.i63, 1                   ; 3 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %.sroa.012.016.i64, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj
  %.0.copyload.i2.i.i.i.i.i.i67 = load i64, ptr %i.an, align 1
  %i.ao = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i61, %.0.copyload.i2.i.i.i.i.i.i67 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.aq = xor i64 %i.al, -1
  %i.ar = add nsw i64 %.017.i63, %i.aq
  %.sroa.012.1.i68 = select i1 %i.ao, ptr %.sroa.012.016.i64, ptr %i.ap ; 3 uses
  %.1.i69 = select i1 %i.ao, i64 %i.al, i64 %i.ar ; 2 uses
  %i.as = icmp sgt i64 %.1.i69, 0
  br i1 %i.as, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, !llvm.loop !1721

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i62
  %.pre99 = ptrtoint ptr %.sroa.012.1.i68 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit56
  %.pre-phi100 = phi i64 [ %.pre99, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %i.af, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %.sroa.012.0.lcssa.i59 = phi ptr [ %.sroa.012.1.i68, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %.tr91, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit56 ]
  %i.at = sub i64 %.pre-phi100, %i.af
  %i.au = sdiv exact i64 %i.at, 24
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit
  %.sroa.072.0 = phi ptr [ %i.n, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %.sroa.012.0.lcssa.i59, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %i.ae, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.ac, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ], [ %i.au, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit ] ; 2 uses
  %i.av = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS3_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %.sroa.072.0, ptr %.tr8392, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_(ptr %.tr91, ptr %.sroa.072.0, ptr %i.av, i64 noundef %.0, i64 noundef %.050, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %5)
  %i.aw = sub nsw i64 %.tr8594, %.0               ; 2 uses
  %i.ax = sub nsw i64 %.tr8695, %.050             ; 2 uses
  %i.ay = icmp eq i64 %i.aw, 0
  %i.az = icmp eq i64 %i.ax, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS3_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEEEET_SB_SB_SB_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.mold::ElfRel", align 1     ; 12 uses
  %4 = alloca %"struct.mold::ElfRel", align 1     ; 12 uses
  %5 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %6 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %7 = alloca %"struct.mold::ElfRel", align 1     ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.04.06.i, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.04.06.i, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.07.i, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.0.07.i, ptr noundef nonnull align 1 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24
  %i.n = icmp eq ptr %i.l, %1
  br i1 %i.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, label %.lr.ph.i, !llvm.loop !1722

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 %i.c, %i.g
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.040.0 = phi ptr [ %0, %bb.d ], [ %.sroa.040.0.be, %.backedge ] ; 16 uses
  %.083 = phi i64 [ %i.i, %bb.d ], [ %.083.be, %.backedge ] ; 13 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 9 uses
  %i.q = sub nsw i64 %.0, %.083                   ; 9 uses
  %i.r = icmp slt i64 %.083, %i.q
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %.083, 1
  br i1 %i.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %6, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.0, i64 24, i1 false), !tbaa.struct !1506
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 24
  %.idx85 = mul nsw i64 %.0, 24                   ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.040.0, i64 %.idx85
  %gepdiff = add nsw i64 %.idx85, -24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %.sroa.040.0, ptr nonnull align 1 %i.t, i64 %gepdiff, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.v, ptr noundef nonnull align 1 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i64 %i.q, 0
  br i1 %i.w, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.g
  %i.x = getelementptr inbounds [24 x i8], ptr %.sroa.040.0, i64 %.083 ; 2 uses
  %.neg = add i64 %.083, 1
  %xtraiter131 = and i64 %i.q, 1
  %i.y = icmp eq i64 %.0, %.neg
  br i1 %i.y, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter135 = and i64 %i.q, 9223372036854775806
  br label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %._crit_edge99, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %.sroa.037.095.epil.init = phi ptr [ %i.x, %.lr.ph98.preheader ], [ %i.ae, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.040.194.epil.init = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod134 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod134)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.194.epil.init, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.194.epil.init, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.037.095.epil.init, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.037.095.epil.init, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.040.194.epil.init, i64 24
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %.lr.ph98.epil.preheader, %._crit_edge99.loopexit.unr-lcssa, %bb.g
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.0, %bb.g ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ], [ %i.z, %.lr.ph98.epil.preheader ]
  %i.aa = srem i64 %.0, %.083                     ; 2 uses
  %.not30 = icmp eq i64 %i.aa, 0
  br i1 %.not30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, label %bb.h

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %.sroa.037.095 = phi ptr [ %i.x, %.lr.ph98.preheader.new ], [ %i.ae, %.lr.ph98 ] ; 4 uses
  %.sroa.040.194 = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader.new ], [ %i.ad, %.lr.ph98 ] ; 4 uses
  %niter136 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter136.next.1, %.lr.ph98 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.194, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.194, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.037.095, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.037.095, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(24) %i.ab, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ac, ptr noundef nonnull align 1 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 48 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 48 ; 2 uses
  %niter136.next.1 = add i64 %niter136, 2         ; 2 uses
  %niter136.ncmp.1 = icmp eq i64 %niter136.next.1, %unroll_iter135
  br i1 %niter136.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98, !llvm.loop !1723

bb.h:                                             ; preds = %._crit_edge99
  %i.af = sub nsw i64 %.083, %i.aa
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %i.q, 1
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ah = getelementptr inbounds [24 x i8], ptr %.sroa.040.0, i64 %.0
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %7, ptr noundef nonnull align 1 dereferenceable(24) %i.ai, i64 24, i1 false), !tbaa.struct !1506
  %.idx = mul nsw i64 %.0, 24
  %i.aj = add nsw i64 %.idx, -24                  ; 2 uses
  %i.ak = icmp sgt i64 %.0, 2
  br i1 %i.ak, label %bb.k, label %bb.l, !prof !1349

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %.sroa.040.0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit

bb.l:                                             ; preds = %bb.j
  %i.am = icmp eq i64 %i.aj, 24
  br i1 %i.am, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ai, ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.0, i64 24, i1 false), !tbaa.struct !1506
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.040.0, ptr noundef nonnull align 1 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit

bb.n:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds [24 x i8], ptr %.sroa.040.0, i64 %.0 ; 3 uses
  %i.ao = sub i64 0, %i.q
  %i.ap = getelementptr inbounds [24 x i8], ptr %i.an, i64 %i.ao ; 3 uses
  %i.aq = icmp sgt i64 %.083, 0
  br i1 %i.aq, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.083, 1
  %i.ar = icmp eq i64 %.083, 1
  br i1 %i.ar, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.083, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.092.epil.init = phi ptr [ %i.an, %.lr.ph.preheader ], [ %i.ay, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.040.291.epil.init = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod130 = trunc i64 %.083 to i1
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.as = getelementptr inbounds i8, ptr %.sroa.040.291.epil.init, i64 -24 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.092.epil.init, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) %i.as, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.as, ptr noundef nonnull align 1 dereferenceable(24) %i.at, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.at, ptr noundef nonnull align 1 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.sroa.040.2.lcssa = phi ptr [ %i.ap, %bb.n ], [ %.sroa.040.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.040.0, %.lr.ph.epil.preheader ]
  %i.au = srem i64 %.0, %i.q                      ; 2 uses
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.040.0.be = phi ptr [ %.sroa.040.1.lcssa, %bb.h ], [ %.sroa.040.2.lcssa, %._crit_edge ]
  %.083.be = phi i64 [ %i.af, %bb.h ], [ %i.au, %._crit_edge ]
  %.0.be = phi i64 [ %.083, %bb.h ], [ %i.q, %._crit_edge ]
  br label %bb.e, !llvm.loop !1724

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.092 = phi ptr [ %i.an, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 2 uses
  %.sroa.040.291 = phi ptr [ %i.ap, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.av = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -24 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) %i.av, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.av, ptr noundef nonnull align 1 dereferenceable(24) %i.aw, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.aw, ptr noundef nonnull align 1 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ax = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -48 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %3, ptr noundef nonnull align 1 dereferenceable(24) %i.ax, i64 24, i1 false), !tbaa.struct !1506
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ax, ptr noundef nonnull align 1 dereferenceable(24) %i.ay, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ay, ptr noundef nonnull align 1 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !1506
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1725

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit: ; preds = %._crit_edge, %._crit_edge99, %.lr.ph.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit, %bb.b, %bb.a
  %.sroa.023.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit ], [ %i.p, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES9_ET0_T_SB_SA_.exit ], [ %1, %.lr.ph.i ], [ %i.p, %._crit_edge99 ], [ %i.p, %._crit_edge ]
  ret ptr %.sroa.023.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS6_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_SL_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %.not101 = icmp sgt i64 %3, %6
  %.not63102 = icmp sgt i64 %4, %6
  %or.cond103 = and i1 %.not101, %.not63102
  br i1 %or.cond103, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.an, %tailrecurse ]
  %.tr94.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr96.lcssa = phi i64 [ %3, %bb.a ], [ %i.am, %tailrecurse ]
  %.tr97.lcssa = phi i64 [ %4, %bb.a ], [ %i.ao, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElS6_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_T2_(ptr %.tr.lcssa, ptr %.tr94.lcssa, ptr %2, i64 noundef %.tr96.lcssa, i64 noundef %.tr97.lcssa, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr97107 = phi i64 [ %4, %.lr.ph ], [ %i.ao, %tailrecurse ] ; 3 uses
  %.tr96106 = phi i64 [ %3, %.lr.ph ], [ %i.am, %tailrecurse ] ; 3 uses
  %.tr94105 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr104 = phi ptr [ %0, %.lr.ph ], [ %i.an, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr96106, %.tr97107
  %i.c = ptrtoint ptr %.tr94105 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr96106, 2                    ; 2 uses
  %i.e = getelementptr inbounds [24 x i8], ptr %.tr104, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c                       ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.h = udiv exact i64 %i.f, 24
  %i.i = load i64, ptr %.sroa.221.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  %.0.copyload.i2.i.i.i.i.i.i = load i64, ptr %i.j, align 1
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr94105, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.k = lshr i64 %.017.i, 1                      ; 3 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.sroa.012.016.i, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 %i.i
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.m, align 1
  %i.n = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i, %.0.copyload.i2.i.i.i.i.i.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.p = xor i64 %i.k, -1
  %i.q = add nsw i64 %.017.i, %i.p
  %.sroa.012.1.i = select i1 %i.n, ptr %i.o, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.n, i64 %i.q, i64 %i.k      ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, !llvm.loop !1720

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit ], [ %.tr94105, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.s = sub i64 %.pre-phi, %i.c
  %i.t = sdiv exact i64 %i.s, 24
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit67: ; preds = %bb.b
  %i.u = sdiv i64 %.tr97107, 2                    ; 2 uses
  %i.v = getelementptr inbounds [24 x i8], ptr %.tr94105, i64 %i.u ; 2 uses
  %i.w = ptrtoint ptr %.tr104 to i64              ; 3 uses
  %i.x = sub i64 %i.c, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit67
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.z = udiv exact i64 %i.x, 24
  %i.aa = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.v, i64 %i.aa
  %.0.copyload.i.i.i.i.i.i.i72 = load i64, ptr %i.ab, align 1
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71
  %.017.i74 = phi i64 [ %i.z, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.1.i80, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73 ] ; 2 uses
  %.sroa.012.016.i75 = phi ptr [ %.tr104, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.sroa.012.1.i79, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73 ] ; 2 uses
  %i.ac = lshr i64 %.017.i74, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %.sroa.012.016.i75, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.aa
  %.0.copyload.i2.i.i.i.i.i.i78 = load i64, ptr %i.ae, align 1
  %i.af = icmp ult i64 %.0.copyload.i.i.i.i.i.i.i72, %.0.copyload.i2.i.i.i.i.i.i78 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = xor i64 %i.ac, -1
  %i.ai = add nsw i64 %.017.i74, %i.ah
  %.sroa.012.1.i79 = select i1 %i.af, ptr %.sroa.012.016.i75, ptr %i.ag ; 3 uses
  %.1.i80 = select i1 %i.af, i64 %i.ac, i64 %i.ai ; 2 uses
  %i.aj = icmp sgt i64 %.1.i80, 0
  br i1 %i.aj, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit, !llvm.loop !1721

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEES5_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSC_4lessEMS5_NS2_7IntegerImLb1ELi8EEEEEDaRT_RT0_EUlOSJ_OSL_E_EEESJ_SJ_SJ_RKSL_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN4mold6ElfRelINS2_6X86_64EEESt4spanIS5_Lm18446744073709551615EEEElEvRT_T0_St26random_access_iterator_tag.exit.i73
end_hunk_0
begin_hunk_1_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8493 = phi i64 [ %4, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr8392 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr8190 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8493, %.tr8392
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !3729, !nonnull !457, !align !458
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.tr8190, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %.tr89, i64 %i.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !450
  %i.k = load i64, ptr %i.i, align 8, !tbaa !450
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.tr89, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr89, ptr noundef nonnull align 8 dereferenceable(16) %.tr8190, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr8190, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr8392, %.tr8493
  %i.n = ptrtoint ptr %.tr8190 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr8392, 2                     ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %.tr89, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.t = load i64, ptr %.sroa.222.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr8190, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !450
  %i.aa = icmp slt i64 %i.z, %i.v                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = xor i64 %i.w, -1
  %i.ad = add nsw i64 %.017.i, %i.ac
  %.sroa.012.1.i = select i1 %i.aa, ptr %i.ab, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ad, i64 %i.w    ; 2 uses
  %i.ae = icmp sgt i64 %.1.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3731

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %.tr8190, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %i.af = sub i64 %.pre-phi, %i.n
  %i.ag = ashr exact i64 %i.af, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56: ; preds = %bb.e
  %i.ah = sdiv i64 %.tr8493, 2                    ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %.tr8190, i64 %i.ah ; 2 uses
  %i.aj = ptrtoint ptr %.tr89 to i64              ; 3 uses
  %i.ak = sub i64 %i.n, %i.aj
  %i.al = ashr exact i64 %i.ak, 4                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.an = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60
  %.017.i62 = phi i64 [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %.sroa.012.016.i63 = phi ptr [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.sroa.012.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %i.aq = lshr i64 %.017.i62, 1                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i63, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.an
  %i.at = load i64, ptr %i.as, align 8, !tbaa !450
  %i.au = icmp slt i64 %i.ap, %i.at               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = xor i64 %i.aq, -1
  %i.ax = add nsw i64 %.017.i62, %i.aw
  %.sroa.012.1.i66 = select i1 %i.au, ptr %.sroa.012.016.i63, ptr %i.av ; 3 uses
  %.1.i67 = select i1 %i.au, i64 %i.aq, i64 %i.ax ; 2 uses
  %i.ay = icmp sgt i64 %.1.i67, 0
  br i1 %i.ay, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3732

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61
  %.pre97 = ptrtoint ptr %.sroa.012.1.i66 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %i.aj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56 ]
  %.sroa.012.0.lcssa.i59 = phi ptr [ %.sroa.012.1.i66, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56 ]
  %i.az = sub i64 %.pre-phi98, %i.aj
  %i.ba = ashr exact i64 %i.az, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit
  %.sroa.070.0 = phi ptr [ %i.p, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %.sroa.012.0.lcssa.i59, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.ag, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %i.ah, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.o, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %i.ba, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %i.bb = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS3_6X86_64EEEvRNS3_7ContextIT_EEE5EntrySt6vectorISA_SaISA_EEEEEES7_S7_S7_S7_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8190, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_(ptr %.tr89, ptr %.sroa.070.0, ptr %i.bb, i64 noundef %.0, i64 noundef %.050, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1771") align 8 %5)
  %i.bc = sub nsw i64 %.tr8392, %.0               ; 2 uses
  %i.bd = sub nsw i64 %.tr8493, %.050             ; 2 uses
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = icmp eq i64 %i.bd, 0
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS3_6X86_64EEEvRNS3_7ContextIT_EEE5EntrySt6vectorISA_SaISA_EEEEEES7_S7_S7_S7_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %struct.Entry, align 8              ; 12 uses
  %4 = alloca %struct.Entry, align 8              ; 12 uses
  %5 = alloca %struct.Entry, align 8              ; 4 uses
  %6 = alloca %struct.Entry, align 8              ; 4 uses
  %7 = alloca %struct.Entry, align 8              ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.06.i, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.06.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.n = icmp eq ptr %i.l, %1
  br i1 %i.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %.lr.ph.i, !llvm.loop !3733

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 %i.c, %i.g
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.040.0 = phi ptr [ %0, %bb.d ], [ %.sroa.040.0.be, %.backedge ] ; 15 uses
  %.083 = phi i64 [ %i.i, %bb.d ], [ %.083.be, %.backedge ] ; 13 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %i.q = sub nsw i64 %.0, %.083                   ; 9 uses
  %i.r = icmp slt i64 %.083, %i.q
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %.083, 1
  br i1 %i.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, i64 16, i1 false), !tbaa.struct !3718
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 16
  %.idx85 = shl nsw i64 %.0, 4                    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.040.0, i64 %.idx85
  %gepdiff = add nsw i64 %.idx85, -16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.040.0, ptr nonnull align 8 %i.t, i64 %gepdiff, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i64 %i.q, 0
  br i1 %i.w, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.g
  %i.x = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.083 ; 2 uses
  %.neg = add i64 %.083, 1
  %xtraiter132 = and i64 %i.q, 1
  %i.y = icmp eq i64 %.0, %.neg
  br i1 %i.y, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter136 = and i64 %i.q, 9223372036854775806
  br label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %._crit_edge99, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %.sroa.037.095.epil.init = phi ptr [ %i.x, %.lr.ph98.preheader ], [ %i.ae, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.040.194.epil.init = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod135 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194.epil.init, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095.epil.init, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.040.194.epil.init, i64 16
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %.lr.ph98.epil.preheader, %._crit_edge99.loopexit.unr-lcssa, %bb.g
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.0, %bb.g ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ], [ %i.z, %.lr.ph98.epil.preheader ]
  %i.aa = srem i64 %.0, %.083                     ; 2 uses
  %.not30 = icmp eq i64 %i.aa, 0
  br i1 %.not30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.h

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %.sroa.037.095 = phi ptr [ %i.x, %.lr.ph98.preheader.new ], [ %i.ae, %.lr.ph98 ] ; 4 uses
  %.sroa.040.194 = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader.new ], [ %i.ad, %.lr.ph98 ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter137.next.1, %.lr.ph98 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 32 ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98, !llvm.loop !3734

bb.h:                                             ; preds = %._crit_edge99
  %i.af = sub nsw i64 %.083, %i.aa
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %i.q, 1
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.0 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !3718
  %.idx = shl nsw i64 %.0, 4
  %i.aj = add nsw i64 %.idx, -16                  ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.l, !prof !1349

bb.k:                                             ; preds = %bb.j
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %.sroa.040.0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.aj, 16
  br i1 %i.ao, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, i64 16, i1 false), !tbaa.struct !3718
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.n:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.0 ; 3 uses
  %i.aq = sub i64 0, %i.q
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = icmp sgt i64 %.083, 0
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.083, 1
  %i.at = icmp eq i64 %.083, 1
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.083, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.092.epil.init = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.040.291.epil.init = phi ptr [ %i.ar, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod131 = trunc i64 %.083 to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.au = getelementptr inbounds i8, ptr %.sroa.040.291.epil.init, i64 -16 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.092.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.sroa.040.2.lcssa = phi ptr [ %i.ar, %bb.n ], [ %.sroa.040.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.040.0, %.lr.ph.epil.preheader ]
  %i.aw = srem i64 %.0, %i.q                      ; 2 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.040.0.be = phi ptr [ %.sroa.040.1.lcssa, %bb.h ], [ %.sroa.040.2.lcssa, %._crit_edge ]
  %.083.be = phi i64 [ %i.af, %bb.h ], [ %i.aw, %._crit_edge ]
  %.0.be = phi i64 [ %.083, %bb.h ], [ %i.q, %._crit_edge ]
  br label %bb.e, !llvm.loop !3735

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.092 = phi ptr [ %i.ap, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.sroa.040.291 = phi ptr [ %i.ar, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ax = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.az = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3736

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit: ; preds = %._crit_edge, %._crit_edge99, %.lr.ph.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, %bb.b, %bb.a
  %.sroa.023.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit ], [ %i.p, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit ], [ %1, %.lr.ph.i ], [ %i.p, %._crit_edge99 ], [ %i.p, %._crit_edge ]
  ret ptr %.sroa.023.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_SN_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1771") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not63100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not63100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ar, %tailrecurse ]
  %.tr92.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr94.lcssa = phi i64 [ %3, %bb.a ], [ %i.aq, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %4, %bb.a ], [ %i.as, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_T2_(ptr %.tr.lcssa, ptr %.tr92.lcssa, ptr %2, i64 noundef %.tr94.lcssa, i64 noundef %.tr95.lcssa, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1771") align 8 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr95105 = phi i64 [ %4, %.lr.ph ], [ %i.as, %tailrecurse ] ; 3 uses
  %.tr94104 = phi i64 [ %3, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr92103 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr94104, %.tr95105
  %i.c = ptrtoint ptr %.tr92103 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr94104, 2                    ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.i = load i64, ptr %.sroa.221.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr92103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.l = lshr i64 %.017.i, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !450
  %i.p = icmp slt i64 %i.o, %i.k                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = xor i64 %i.l, -1
  %i.s = add nsw i64 %.017.i, %i.r
  %.sroa.012.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.l      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3731

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %.tr92103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.c
  %i.v = ashr exact i64 %i.u, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit67: ; preds = %bb.b
  %i.w = sdiv i64 %.tr95105, 2                    ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.tr92103, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr102 to i64              ; 3 uses
  %i.z = sub i64 %i.c, %i.y
  %i.aa = ashr exact i64 %i.z, 4                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit67
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.ac = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71
  %.017.i73 = phi i64 [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.1.i78, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72 ] ; 2 uses
  %.sroa.012.016.i74 = phi ptr [ %.tr102, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.sroa.012.1.i77, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72 ] ; 2 uses
  %i.af = lshr i64 %.017.i73, 1                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i74, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ac
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !450
  %i.aj = icmp slt i64 %i.ae, %i.ai               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = xor i64 %i.af, -1
  %i.am = add nsw i64 %.017.i73, %i.al
  %.sroa.012.1.i77 = select i1 %i.aj, ptr %.sroa.012.016.i74, ptr %i.ak ; 3 uses
  %.1.i78 = select i1 %i.aj, i64 %i.af, i64 %i.am ; 2 uses
  %i.an = icmp sgt i64 %.1.i78, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3732
end_hunk_1
begin_hunk_2_@_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8493 = phi i64 [ %4, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr8392 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr8190 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 8 uses
  %.tr89 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr8493, %.tr8392
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !3748, !nonnull !457, !align !458
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.tr8190, i64 %i.g
  %i.i = getelementptr inbounds i8, ptr %.tr89, i64 %i.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !450
  %i.k = load i64, ptr %i.i, align 8, !tbaa !450
  %i.l = icmp slt i64 %i.j, %i.k
  br i1 %i.l, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.tr89, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr89, ptr noundef nonnull align 8 dereferenceable(16) %.tr8190, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.tr8190, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr8392, %.tr8493
  %i.n = ptrtoint ptr %.tr8190 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr8392, 2                     ; 2 uses
  %i.p = getelementptr inbounds [16 x i8], ptr %.tr89, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 4                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.sroa.222.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.t = load i64, ptr %.sroa.222.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.p, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr8190, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.w = lshr i64 %.017.i, 1                      ; 3 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.t
  %i.z = load i64, ptr %i.y, align 8, !tbaa !450
  %i.aa = icmp slt i64 %i.z, %i.v                 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = xor i64 %i.w, -1
  %i.ad = add nsw i64 %.017.i, %i.ac
  %.sroa.012.1.i = select i1 %i.aa, ptr %i.ab, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.aa, i64 %i.ad, i64 %i.w    ; 2 uses
  %i.ae = icmp sgt i64 %.1.i, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3750

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %.tr8190, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %i.af = sub i64 %.pre-phi, %i.n
  %i.ag = ashr exact i64 %i.af, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56: ; preds = %bb.e
  %i.ah = sdiv i64 %.tr8493, 2                    ; 2 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %.tr8190, i64 %i.ah ; 2 uses
  %i.aj = ptrtoint ptr %.tr89 to i64              ; 3 uses
  %i.ak = sub i64 %i.n, %i.aj
  %i.al = ashr exact i64 %i.ak, 4                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.an = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.ai, i64 %i.an
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60
  %.017.i62 = phi i64 [ %i.al, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.1.i67, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %.sroa.012.016.i63 = phi ptr [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i60 ], [ %.sroa.012.1.i66, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61 ] ; 2 uses
  %i.aq = lshr i64 %.017.i62, 1                   ; 3 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i63, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.an
  %i.at = load i64, ptr %i.as, align 8, !tbaa !450
  %i.au = icmp slt i64 %i.ap, %i.at               ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = xor i64 %i.aq, -1
  %i.ax = add nsw i64 %.017.i62, %i.aw
  %.sroa.012.1.i66 = select i1 %i.au, ptr %.sroa.012.016.i63, ptr %i.av ; 3 uses
  %.1.i67 = select i1 %i.au, i64 %i.aq, i64 %i.ax ; 2 uses
  %i.ay = icmp sgt i64 %.1.i67, 0
  br i1 %i.ay, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3751

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i61
  %.pre97 = ptrtoint ptr %.sroa.012.1.i66 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56
  %.pre-phi98 = phi i64 [ %.pre97, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %i.aj, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56 ]
  %.sroa.012.0.lcssa.i59 = phi ptr [ %.sroa.012.1.i66, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %.tr89, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit56 ]
  %i.az = sub i64 %.pre-phi98, %i.aj
  %i.ba = ashr exact i64 %i.az, 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit
  %.sroa.070.0 = phi ptr [ %i.p, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %.sroa.012.0.lcssa.i59, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %.050 = phi i64 [ %i.ag, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %i.ah, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.o, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ], [ %i.ba, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit ] ; 2 uses
  %i.bb = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS3_6X86_64EEEvRNS3_7ContextIT_EEE5EntrySt6vectorISA_SaISA_EEEEEES7_S7_S7_S7_St26random_access_iterator_tag(ptr %.sroa.070.0, ptr %.tr8190, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_(ptr %.tr89, ptr %.sroa.070.0, ptr %i.bb, i64 noundef %.0, i64 noundef %.050, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1778") align 8 %5)
  %i.bc = sub nsw i64 %.tr8392, %.0               ; 2 uses
  %i.bd = sub nsw i64 %.tr8493, %.050             ; 2 uses
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = icmp eq i64 %i.bd, 0
  %or.cond = or i1 %i.be, %i.bf
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS3_6X86_64EEEvRNS3_7ContextIT_EEE5EntrySt6vectorISA_SaISA_EEEEEES7_S7_S7_S7_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %struct.Entry.602, align 8          ; 12 uses
  %4 = alloca %struct.Entry.602, align 8          ; 12 uses
  %5 = alloca %struct.Entry.602, align 8          ; 4 uses
  %6 = alloca %struct.Entry.602, align 8          ; 4 uses
  %7 = alloca %struct.Entry.602, align 8          ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 4                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 4                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.06.i, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.06.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.07.i, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %i.n = icmp eq ptr %i.l, %1
  br i1 %i.n, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %.lr.ph.i, !llvm.loop !3752

bb.d:                                             ; preds = %bb.c
  %i.o = sub i64 %i.c, %i.g
  %i.p = getelementptr inbounds i8, ptr %0, i64 %i.o ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.sroa.040.0 = phi ptr [ %0, %bb.d ], [ %.sroa.040.0.be, %.backedge ] ; 15 uses
  %.083 = phi i64 [ %i.i, %bb.d ], [ %.083.be, %.backedge ] ; 13 uses
  %.0 = phi i64 [ %i.f, %bb.d ], [ %.0.be, %.backedge ] ; 8 uses
  %i.q = sub nsw i64 %.0, %.083                   ; 9 uses
  %i.r = icmp slt i64 %.083, %i.q
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = icmp eq i64 %.083, 1
  br i1 %i.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, i64 16, i1 false), !tbaa.struct !3718
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.0, i64 16
  %.idx85 = shl nsw i64 %.0, 4                    ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.sroa.040.0, i64 %.idx85
  %gepdiff = add nsw i64 %.idx85, -16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.040.0, ptr nonnull align 8 %i.t, i64 %gepdiff, i1 false)
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = icmp sgt i64 %i.q, 0
  br i1 %i.w, label %.lr.ph98.preheader, label %._crit_edge99

.lr.ph98.preheader:                               ; preds = %bb.g
  %i.x = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.083 ; 2 uses
  %.neg = add i64 %.083, 1
  %xtraiter132 = and i64 %i.q, 1
  %i.y = icmp eq i64 %.0, %.neg
  br i1 %i.y, label %.lr.ph98.epil.preheader, label %.lr.ph98.preheader.new

.lr.ph98.preheader.new:                           ; preds = %.lr.ph98.preheader
  %unroll_iter136 = and i64 %i.q, 9223372036854775806
  br label %.lr.ph98

._crit_edge99.loopexit.unr-lcssa:                 ; preds = %.lr.ph98
  %lcmp.mod133.not = icmp eq i64 %xtraiter132, 0
  br i1 %lcmp.mod133.not, label %._crit_edge99, label %.lr.ph98.epil.preheader

.lr.ph98.epil.preheader:                          ; preds = %._crit_edge99.loopexit.unr-lcssa, %.lr.ph98.preheader
  %.sroa.037.095.epil.init = phi ptr [ %i.x, %.lr.ph98.preheader ], [ %i.ae, %._crit_edge99.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.040.194.epil.init = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod135 = trunc i64 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod135)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194.epil.init, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095.epil.init, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095.epil.init, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.040.194.epil.init, i64 16
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %.lr.ph98.epil.preheader, %._crit_edge99.loopexit.unr-lcssa, %bb.g
  %.sroa.040.1.lcssa = phi ptr [ %.sroa.040.0, %bb.g ], [ %i.ad, %._crit_edge99.loopexit.unr-lcssa ], [ %i.z, %.lr.ph98.epil.preheader ]
  %i.aa = srem i64 %.0, %.083                     ; 2 uses
  %.not30 = icmp eq i64 %i.aa, 0
  br i1 %.not30, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %bb.h

.lr.ph98:                                         ; preds = %.lr.ph98, %.lr.ph98.preheader.new
  %.sroa.037.095 = phi ptr [ %i.x, %.lr.ph98.preheader.new ], [ %i.ae, %.lr.ph98 ] ; 4 uses
  %.sroa.040.194 = phi ptr [ %.sroa.040.0, %.lr.ph98.preheader.new ], [ %i.ad, %.lr.ph98 ] ; 4 uses
  %niter137 = phi i64 [ 0, %.lr.ph98.preheader.new ], [ %niter137.next.1, %.lr.ph98 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.194, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.037.095, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.040.194, i64 32 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.037.095, i64 32 ; 2 uses
  %niter137.next.1 = add i64 %niter137, 2         ; 2 uses
  %niter137.ncmp.1 = icmp eq i64 %niter137.next.1, %unroll_iter136
  br i1 %niter137.ncmp.1, label %._crit_edge99.loopexit.unr-lcssa, label %.lr.ph98, !llvm.loop !3753

bb.h:                                             ; preds = %._crit_edge99
  %i.af = sub nsw i64 %.083, %i.aa
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %i.q, 1
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ah = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.0 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !3718
  %.idx = shl nsw i64 %.0, 4
  %i.aj = add nsw i64 %.idx, -16                  ; 3 uses
  %i.ak = ashr exact i64 %i.aj, 4                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 1
  br i1 %i.al, label %bb.k, label %bb.l, !prof !1349

bb.k:                                             ; preds = %bb.j
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [16 x i8], ptr %i.ah, i64 %i.am
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr nonnull align 8 %.sroa.040.0, i64 %i.aj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.aj, 16
  br i1 %i.ao, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, i64 16, i1 false), !tbaa.struct !3718
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit: ; preds = %bb.k, %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.040.0, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit

bb.n:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds [16 x i8], ptr %.sroa.040.0, i64 %.0 ; 3 uses
  %i.aq = sub i64 0, %i.q
  %i.ar = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.aq ; 3 uses
  %i.as = icmp sgt i64 %.083, 0
  br i1 %i.as, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.n
  %xtraiter = and i64 %.083, 1
  %i.at = icmp eq i64 %.083, 1
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.083, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.0.092.epil.init = phi ptr [ %i.ap, %.lr.ph.preheader ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ]
  %.sroa.040.291.epil.init = phi ptr [ %i.ar, %.lr.ph.preheader ], [ %i.az, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod131 = trunc i64 %.083 to i1
  tail call void @llvm.assume(i1 %lcmp.mod131)
  %i.au = getelementptr inbounds i8, ptr %.sroa.040.291.epil.init, i64 -16 ; 2 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.0.092.epil.init, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.n
  %.sroa.040.2.lcssa = phi ptr [ %i.ar, %bb.n ], [ %.sroa.040.0, %._crit_edge.loopexit.unr-lcssa ], [ %.sroa.040.0, %.lr.ph.epil.preheader ]
  %i.aw = srem i64 %.0, %i.q                      ; 2 uses
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.040.0.be = phi ptr [ %.sroa.040.1.lcssa, %bb.h ], [ %.sroa.040.2.lcssa, %._crit_edge ]
  %.083.be = phi i64 [ %i.af, %bb.h ], [ %i.aw, %._crit_edge ]
  %.0.be = phi i64 [ %.083, %bb.h ], [ %i.q, %._crit_edge ]
  br label %bb.e, !llvm.loop !3754

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.092 = phi ptr [ %i.ap, %.lr.ph.preheader.new ], [ %i.ba, %.lr.ph ] ; 2 uses
  %.sroa.040.291 = phi ptr [ %i.ar, %.lr.ph.preheader.new ], [ %i.az, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ax = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.az = getelementptr inbounds i8, ptr %.sroa.040.291, i64 -32 ; 4 uses
  %i.ba = getelementptr inbounds i8, ptr %.sroa.0.092, i64 -32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.az, i64 16, i1 false), !tbaa.struct !3718
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !3718
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !3755

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit: ; preds = %._crit_edge, %._crit_edge99, %.lr.ph.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit, %bb.b, %bb.a
  %.sroa.023.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.p, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit ], [ %i.p, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit ], [ %1, %.lr.ph.i ], [ %i.p, %._crit_edge99 ], [ %i.p, %._crit_edge ]
  ret ptr %.sroa.023.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_SN_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1778") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %.not99 = icmp sgt i64 %3, %6
  %.not63100 = icmp sgt i64 %4, %6
  %or.cond101 = and i1 %.not99, %.not63100
  br i1 %or.cond101, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.a = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ar, %tailrecurse ]
  %.tr92.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr94.lcssa = phi i64 [ %3, %bb.a ], [ %i.aq, %tailrecurse ]
  %.tr95.lcssa = phi i64 [ %4, %bb.a ], [ %i.as, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElSA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_S6_SN_SN_T1_T2_(ptr %.tr.lcssa, ptr %.tr92.lcssa, ptr %2, i64 noundef %.tr94.lcssa, i64 noundef %.tr95.lcssa, ptr noundef %5, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1778") align 8 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr95105 = phi i64 [ %4, %.lr.ph ], [ %i.as, %tailrecurse ] ; 3 uses
  %.tr94104 = phi i64 [ %3, %.lr.ph ], [ %i.aq, %tailrecurse ] ; 3 uses
  %.tr92103 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr102 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 5 uses
  %i.b = icmp sgt i64 %.tr94104, %.tr95105
  %i.c = ptrtoint ptr %.tr92103 to i64            ; 4 uses
  br i1 %i.b, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit67

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.d = sdiv i64 %.tr94104, 2                    ; 2 uses
  %i.e = getelementptr inbounds [16 x i8], ptr %.tr102, i64 %i.d ; 2 uses
  %i.f = sub i64 %i.a, %i.c
  %i.g = ashr exact i64 %i.f, 4                   ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.sroa.221.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.i = load i64, ptr %.sroa.221.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i
  %i.k = load i64, ptr %i.j, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.017.i = phi i64 [ %i.g, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.tr92103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.l = lshr i64 %.017.i, 1                      ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !450
  %i.p = icmp slt i64 %i.o, %i.k                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = xor i64 %i.l, -1
  %i.s = add nsw i64 %.017.i, %i.r
  %.sroa.012.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.l      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3750

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %i.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Iter_comp_valIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit ], [ %.tr92103, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.c
  %i.v = ashr exact i64 %i.u, 4
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit67: ; preds = %bb.b
  %i.w = sdiv i64 %.tr95105, 2                    ; 2 uses
  %i.x = getelementptr inbounds [16 x i8], ptr %.tr92103, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr102 to i64              ; 3 uses
  %i.z = sub i64 %i.c, %i.y
  %i.aa = ashr exact i64 %i.z, 4                  ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit67
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !752
  %i.ac = load i64, ptr %.sroa.2.0.copyload, align 8, !tbaa !22 ; 2 uses
  %i.ad = getelementptr inbounds i8, ptr %i.x, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !450
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71
  %.017.i73 = phi i64 [ %i.aa, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.1.i78, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72 ] ; 2 uses
  %.sroa.012.016.i74 = phi ptr [ %.tr102, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.lr.ph.i71 ], [ %.sroa.012.1.i77, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72 ] ; 2 uses
  %i.af = lshr i64 %.017.i73, 1                   ; 3 uses
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %.sroa.012.016.i74, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.ac
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !450
  %i.aj = icmp slt i64 %i.ae, %i.ai               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = xor i64 %i.af, -1
  %i.am = add nsw i64 %.017.i73, %i.al
  %.sroa.012.1.i77 = select i1 %i.aj, ptr %.sroa.012.016.i74, ptr %i.ak ; 3 uses
  %.1.i78 = select i1 %i.aj, i64 %i.af, i64 %i.am ; 2 uses
  %i.an = icmp sgt i64 %.1.i78, 0
  br i1 %i.an, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElEvRS6_T0_St26random_access_iterator_tag.exit.i72, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEES9_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEES6_S6_S6_RKSN_T1_.exit.loopexit, !llvm.loop !3751
end_hunk_2
begin_hunk_3_@_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES6_NS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_28sort_output_sections_regularIS4_EEvRNS2_7ContextIT_EEEUlS6_E1_EEDaRSK_RT0_EUlOSK_OSP_E_EEESK_SK_SK_RKSP_T1_:bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, label %._crit_edge

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph, %bb.e
  %.018 = phi i64 [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.1, %bb.e ] ; 2 uses
  %.sroa.013.017 = phi ptr [ %0, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph ], [ %.sroa.013.1, %bb.e ] ; 3 uses
  %i.j = lshr i64 %.018, 1                        ; 4 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.013.017, i64 %i.j ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.l = load ptr, ptr %2, align 8, !tbaa !490, !noalias !3965
  call void @_ZZN4mold28sort_output_sections_regularINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_5ChunkIS1_EEE1_clES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1821") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !490, !noalias !3970
  call void @_ZZN4mold28sort_output_sections_regularINS_6X86_64EEEvRNS_7ContextIT_EEENKUlPNS_5ChunkIS1_EEE1_clES8_(ptr dead_on_unwind nonnull writable sret(%"class.std::tuple.1821") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.m)
  %i.n = load i32, ptr %i.f, align 8, !tbaa !1109 ; 2 uses
  %i.o = load i32, ptr %i.g, align 8, !tbaa !1109 ; 2 uses
  %i.p = icmp eq i32 %i.n, %i.o
  %i.q = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit

bb.b:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.r = load i64, ptr %i.h, align 8, !tbaa !450  ; 2 uses
  %i.s = load i64, ptr %i.i, align 8, !tbaa !450  ; 2 uses
  %i.t = icmp eq i64 %i.r, %i.s
  %i.u = icmp slt i64 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit

bb.c:                                             ; preds = %bb.b
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %5, align 8, !tbaa !450 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %6, align 8, !tbaa !450 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !487
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !487
  %i.w = call i32 @memcmp(ptr noundef %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, ptr noundef %.sroa.2.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i) #16 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %i.y = sub i64 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i
  %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.y, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i.i.i.i.i to i32
  br label %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i

_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0.i4.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.z = icmp slt i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %i.z, label %bb.e, label %bb.d

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %bb.b
  %.sroa.06.0.i.i.i.i.i.i.i = phi i1 [ %i.q, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %i.u, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br i1 %.sroa.06.0.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ab = xor i64 %i.j, -1
  %i.ac = add nsw i64 %.018, %i.ab
  br label %bb.e

bb.e:                                             ; preds = %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit, %bb.d
  %.sroa.013.1 = phi ptr [ %.sroa.013.017, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit ], [ %i.aa, %bb.d ], [ %.sroa.013.017, %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.1 = phi i64 [ %i.j, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINS2_4lessEZN4mold28sort_output_sections_regularINS6_6X86_64EEEvRNS6_7ContextIT_EEEUlPNS6_5ChunkIS8_EEE1_EEDaRSA_RT0_EUlOSA_OSI_E_EclIKSF_NS_17__normal_iteratorIPSF_St6vectorISF_SaISF_EEEEEEbSH_SI_.exit ], [ %i.ac, %bb.d ], [ %i.j, %_ZSt11__tuple_cmpISt15strong_orderingSt5tupleIJilSt17basic_string_viewIcSt11char_traitsIcEEEES6_Lm2ETpTnmJEET_RKT0_RKT1_St16integer_sequenceImJXT2_EXspT3_EEE.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ad = icmp sgt i64 %.1, 0
  br i1 %i.ad, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %._crit_edge, !llvm.loop !3975

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.sroa.013.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.013.1, %bb.e ]
  ret ptr %.sroa.013.0.lcssa
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
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !490, !alias.scope !3976, !noalias !3979
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !490, !alias.scope !3976, !noalias !3979
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !490, !alias.scope !3979
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !490, !alias.scope !3979
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !490, !alias.scope !3976, !noalias !3979
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !490, !alias.scope !3976, !noalias !3979
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !490, !alias.scope !3979
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !490, !alias.scope !3979
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !3981

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
  %i.aa = load ptr, ptr %.sroa.04.06.i, align 8, !tbaa !490
  %i.ab = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !490
  store ptr %i.ab, ptr %.sroa.04.06.i, align 8, !tbaa !490
  store ptr %i.aa, ptr %.sroa.0.07.i, align 8, !tbaa !490
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %1
  br i1 %i.ae, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !3982

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
  %i.ak = load ptr, ptr %.sroa.041.0, align 8, !tbaa !490
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.al, i64 %gepdiff, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !490
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
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !490, !alias.scope !3983, !noalias !3986
  %wide.load129 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !490, !alias.scope !3983, !noalias !3986
  %i.ay = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !490, !alias.scope !3986
  %wide.load131 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !490, !alias.scope !3986
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !490, !alias.scope !3983, !noalias !3986
  store <2 x ptr> %wide.load131, ptr %i.ax, align 8, !tbaa !490, !alias.scope !3983, !noalias !3986
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !490, !alias.scope !3986
  store <2 x ptr> %wide.load129, ptr %i.ay, align 8, !tbaa !490, !alias.scope !3986
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !3988

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
  %i.bb = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !490
  %i.bc = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !490
  store ptr %i.bc, ptr %.sroa.041.195.prol, align 8, !tbaa !490
  store ptr %i.bb, ptr %.sroa.038.096.prol, align 8, !tbaa !490
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.bf = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !3989

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
  %i.bk = load ptr, ptr %.sroa.041.195, align 8, !tbaa !490
  %i.bl = load ptr, ptr %.sroa.038.096, align 8, !tbaa !490
  store ptr %i.bl, ptr %.sroa.041.195, align 8, !tbaa !490
  store ptr %i.bk, ptr %.sroa.038.096, align 8, !tbaa !490
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !490
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !490
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !490
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !490
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !490
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !490
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !490
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !490
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !490
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !490
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !490
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !490
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.ca = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.ca, %i.ah
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !3990

bb.h:                                             ; preds = %._crit_edge100
  %i.cb = sub nsw i64 %.084, %i.bj
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ah, 1
  %i.cd = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !490
  %.idx = shl nsw i64 %.0, 3
  %i.cg = add nsw i64 %.idx, -8                   ; 3 uses
  %i.ch = ashr exact i64 %i.cg, 3                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !1349

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nsw i64 0, %i.ch
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %.sroa.041.0, i64 %i.cg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %.sroa.041.0, align 8, !tbaa !490
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !490
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.cf, ptr %.sroa.041.0, align 8, !tbaa !490
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
  %wide.load147 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !490, !alias.scope !3991, !noalias !3994
  %wide.load148 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !490, !alias.scope !3991, !noalias !3994
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !490, !alias.scope !3994
  %wide.load150 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !490, !alias.scope !3994
  store <2 x ptr> %wide.load149, ptr %i.cw, align 8, !tbaa !490, !alias.scope !3991, !noalias !3994
  store <2 x ptr> %wide.load150, ptr %i.cx, align 8, !tbaa !490, !alias.scope !3991, !noalias !3994
  store <2 x ptr> %wide.load147, ptr %i.cy, align 8, !tbaa !490, !alias.scope !3994
  store <2 x ptr> %wide.load148, ptr %i.cz, align 8, !tbaa !490, !alias.scope !3994
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.da, label %middle.block152, label %vector.body143, !llvm.loop !3996

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
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !490
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !490
  store ptr %i.de, ptr %i.db, align 8, !tbaa !490
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !490
  %i.df = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !3997

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
  br label %bb.e, !llvm.loop !3998

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dz, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dw, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !490
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !490
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !490
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !490
  %i.dn = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !490
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !490
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !490
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !490
  %i.dr = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !490
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !490
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !490
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !490
  %i.dv = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !490
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !490
  store ptr %i.dy, ptr %i.dv, align 8, !tbaa !490
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !490
  %i.dz = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dz, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !3999

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ag, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.ag, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.ag, %._crit_edge100 ], [ %i.ag, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_28sort_output_sections_regularIS4_EEvRNS2_7ContextIT_EEEUlS6_E1_EEDaRSK_RT0_EUlOSK_OSP_E_EEEvSK_SK_SK_SP_SP_T1_SP_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1816") align 8 %7) local_unnamed_addr #2 comdat {
bb.a:
  %.not91 = icmp sgt i64 %3, %6
  %.not6392 = icmp sgt i64 %4, %6
  %or.cond93 = and i1 %.not91, %.not6392
  br i1 %or.cond93, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.j

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ae, %tailrecurse ] ; 5 uses
  %.tr84.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ] ; 6 uses
  %.tr86.lcssa = phi i64 [ %3, %bb.a ], [ %i.ad, %tailrecurse ]
  %.tr87.lcssa = phi i64 [ %4, %bb.a ], [ %i.af, %tailrecurse ]
  %.not.i = icmp sgt i64 %.tr86.lcssa, %.tr87.lcssa
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %tailrecurse._crit_edge
  %i.a = ptrtoint ptr %.tr84.lcssa to i64
  %i.b = ptrtoint ptr %.tr.lcssa to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = icmp sgt i64 %i.c, 8
  br i1 %i.d, label %bb.c, label %bb.d, !prof !1349

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %.tr.lcssa, i64 %i.c, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i64 %i.c, 8
  br i1 %i.e, label %bb.e, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.f = load ptr, ptr %.tr.lcssa, align 8, !tbaa !490
  store ptr %i.f, ptr %5, align 8, !tbaa !490
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.g = getelementptr inbounds i8, ptr %5, i64 %i.c
  tail call void @_ZSt21__move_merge_adaptiveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS0_28sort_output_sections_regularIS2_EEvRNS0_7ContextIT_EEEUlS4_E1_EEDaRSK_RT0_EUlOSK_OSP_E_EEEvSK_SK_SP_SP_T1_T2_(ptr noundef %5, ptr noundef %i.g, ptr %.tr84.lcssa, ptr %2, ptr %.tr.lcssa, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.1816") align 8 %7)
  br label %_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEZNS2_28sort_output_sections_regularIS4_EEvRNS2_7ContextIT_EEEUlS6_E1_EEDaRSK_RT0_EUlOSK_OSP_E_EEEvSK_SK_SK_SP_SP_T1_T2_.exit
end_hunk_3
begin_hunk_4_@_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_E_St8identityEEDaRSI_RT0_EUlTyOSI_E_EEESI_SI_SI_SO_St26random_access_iterator_tag:bb.a
  %i.gj = icmp eq i16 %i.gi, 0
  br i1 %i.gj, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35.thread, label %.loopexit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35.thread: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i33, %bb.u, %bb.v, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.049.1, i64 8
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge._crit_edge107, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35.thread
  %i.gl = phi i8 [ %i.fh, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35.thread ], [ %.pre110, %._crit_edge._crit_edge107 ]
  %.sroa.049.2 = phi ptr [ %i.gk, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35.thread ], [ %.sroa.049.0.lcssa, %._crit_edge._crit_edge107 ] ; 3 uses
  %i.gm = load ptr, ptr %.sroa.049.2, align 8, !tbaa !425 ; 5 uses
  %i.gn = trunc nuw i8 %i.gl to i1
  br i1 %i.gn, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.go = load ptr, ptr @_ZN4mold20discarded_comdat_symINS_6X86_64EEE, align 8, !tbaa !425
  %i.gp = icmp eq ptr %i.gm, %i.go
  br i1 %i.gp, label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !801
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sext i32 %i.gr to i64
  %i.gu = shl nsw i64 %i.gt, 2
  %i.gv = add nsw i64 %i.gu, %i.gs
  %i.gw = inttoptr i64 %i.gv to ptr
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !413
  %i.ha = sext i32 %i.gz to i64
  %i.hb = load ptr, ptr %i.gx, align 8, !tbaa !1062
  %i.hc = getelementptr inbounds nuw [24 x i8], ptr %i.hb, i64 %i.ha
  br label %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i37

_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i37: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i38 = phi ptr [ %i.hc, %bb.y ], [ @_ZZNK4mold6SymbolINS_6X86_64EE4esymEvE5empty, %bb.x ]
  %i.hd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i38, i64 4
  %i.he = load i8, ptr %i.hd, align 1
  %i.hf = icmp ult i8 %i.he, 16
  br i1 %i.hf, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread, label %.loopexit

bb.z:                                             ; preds = %bb.w
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  %i.hh = load atomic i8, ptr %i.hg monotonic, align 1
  %i.hi = icmp eq i8 %i.hh, 2
  br i1 %i.hi, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hj = load atomic i8, ptr %i.hg monotonic, align 1
  %i.hk = icmp eq i8 %i.hj, 1
  br i1 %i.hk, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39

_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39: ; preds = %bb.aa
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gm, i64 28
  %i.hm = load i16, ptr %i.hl, align 4, !tbaa !424
  %i.hn = icmp eq i16 %i.hm, 0
  br i1 %i.hn, label %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread, label %.loopexit

_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread: ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i37, %bb.z, %bb.aa, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit19.us
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.049.093.us, i64 8
  br label %.loopexit

.loopexit.loopexit.split.loop.exit129:            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit23.us
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.049.093.us, i64 16
  br label %.loopexit

.loopexit.loopexit.split.loop.exit131:            ; preds = %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i25.us
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.049.093.us, i64 24
  br label %.loopexit

.loopexit.loopexit118.split.loop.exit:            ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit23.thread69
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.049.093, i64 16
  br label %.loopexit

.loopexit.loopexit118.split.loop.exit121:         ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit19.thread64
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.049.093, i64 8
  br label %.loopexit

.loopexit.loopexit118.split.loop.exit125:         ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit27
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.049.093, i64 24
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit.thread59, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit.us, %.loopexit.loopexit118.split.loop.exit, %.loopexit.loopexit118.split.loop.exit121, %.loopexit.loopexit118.split.loop.exit125, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit129, %.loopexit.loopexit.split.loop.exit131, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i37, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i33, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i29, %._crit_edge, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit31
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.049.1, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit35 ], [ %1, %._crit_edge ], [ %.sroa.049.0.lcssa, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit31 ], [ %1, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39.thread ], [ %.sroa.049.2, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit39 ], [ %.sroa.049.0.lcssa, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i29 ], [ %.sroa.049.2, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i37 ], [ %.sroa.049.1, %_ZNK4mold6SymbolINS_6X86_64EE4esymEv.exit.i.i.i.i.i.i33 ], [ %.sroa.049.093.us, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit.us ], [ %i.hp, %.loopexit.loopexit.split.loop.exit129 ], [ %i.hq, %.loopexit.loopexit.split.loop.exit131 ], [ %i.ho, %.loopexit.loopexit.split.loop.exit ], [ %i.hs, %.loopexit.loopexit118.split.loop.exit121 ], [ %i.ht, %.loopexit.loopexit118.split.loop.exit125 ], [ %i.hr, %.loopexit.loopexit118.split.loop.exit ], [ %.sroa.049.093, %_ZN9__gnu_cxx5__ops12_Iter_negateIZNSt6ranges8__detail16__make_pred_projIZN4mold12sort_dynsymsINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlPNS5_6SymbolIS7_EEE_St8identityEEDaRS9_RT0_EUlTyOS9_E_EclINS_17__normal_iteratorIPSE_St4spanISE_Lm18446744073709551615EEEEEEbS9_.exit.thread59 ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS3_6X86_64EEESt4spanIS7_Lm18446744073709551615EEEEEET_SC_SC_SC_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %bb.c

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
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !425, !alias.scope !4200, !noalias !4203
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !425, !alias.scope !4200, !noalias !4203
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !425, !alias.scope !4203
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !425, !alias.scope !4203
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !425, !alias.scope !4200, !noalias !4203
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !425, !alias.scope !4200, !noalias !4203
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !425, !alias.scope !4203
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !425, !alias.scope !4203
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !4205

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.07.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.06.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.06.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.06.i, align 8, !tbaa !425
  %i.ab = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !425
  store ptr %i.ab, ptr %.sroa.04.06.i, align 8, !tbaa !425
  store ptr %i.aa, ptr %.sroa.0.07.i, align 8, !tbaa !425
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %1
  br i1 %i.ae, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %.lr.ph.i, !llvm.loop !4206

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
  br i1 %i.aj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.041.0, align 8, !tbaa !425
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.al, i64 %gepdiff, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !425
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit

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
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !425, !alias.scope !4207, !noalias !4210
  %wide.load129 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !425, !alias.scope !4207, !noalias !4210
  %i.ay = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !425, !alias.scope !4210
  %wide.load131 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !425, !alias.scope !4210
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !425, !alias.scope !4207, !noalias !4210
  store <2 x ptr> %wide.load131, ptr %i.ax, align 8, !tbaa !425, !alias.scope !4207, !noalias !4210
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !425, !alias.scope !4210
  store <2 x ptr> %wide.load129, ptr %i.ay, align 8, !tbaa !425, !alias.scope !4210
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !4212

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
  %i.bb = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !425
  %i.bc = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !425
  store ptr %i.bc, ptr %.sroa.041.195.prol, align 8, !tbaa !425
  store ptr %i.bb, ptr %.sroa.038.096.prol, align 8, !tbaa !425
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.bf = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !4213

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
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.ca, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.bz, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bk = load ptr, ptr %.sroa.041.195, align 8, !tbaa !425
  %i.bl = load ptr, ptr %.sroa.038.096, align 8, !tbaa !425
  store ptr %i.bl, ptr %.sroa.041.195, align 8, !tbaa !425
  store ptr %i.bk, ptr %.sroa.038.096, align 8, !tbaa !425
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !425
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !425
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !425
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !425
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !425
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !425
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !425
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !425
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !425
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !425
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !425
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !425
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.ca = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.ca, %i.ah
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !4214

bb.h:                                             ; preds = %._crit_edge100
  %i.cb = sub nsw i64 %.084, %i.bj
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ah, 1
  %i.cd = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !425
  %.idx = shl nsw i64 %.0, 3
  %i.cg = add nsw i64 %.idx, -8                   ; 3 uses
  %i.ch = ashr exact i64 %i.cg, 3                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !1349

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nsw i64 0, %i.ch
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %.sroa.041.0, i64 %i.cg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit

bb.l:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %.sroa.041.0, align 8, !tbaa !425
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !425
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.cf, ptr %.sroa.041.0, align 8, !tbaa !425
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit

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
  %wide.load147 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !425, !alias.scope !4215, !noalias !4218
  %wide.load148 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !425, !alias.scope !4215, !noalias !4218
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !425, !alias.scope !4218
  %wide.load150 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !425, !alias.scope !4218
  store <2 x ptr> %wide.load149, ptr %i.cw, align 8, !tbaa !425, !alias.scope !4215, !noalias !4218
  store <2 x ptr> %wide.load150, ptr %i.cx, align 8, !tbaa !425, !alias.scope !4215, !noalias !4218
  store <2 x ptr> %wide.load147, ptr %i.cy, align 8, !tbaa !425, !alias.scope !4218
  store <2 x ptr> %wide.load148, ptr %i.cz, align 8, !tbaa !425, !alias.scope !4218
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.da, label %middle.block152, label %vector.body143, !llvm.loop !4220

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
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !425
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !425
  store ptr %i.de, ptr %i.db, align 8, !tbaa !425
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !425
  %i.df = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !4221

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
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.cb, %bb.h ], [ %i.di, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ah, %._crit_edge ]
  br label %bb.e, !llvm.loop !4222

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dz, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dw, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !425
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !425
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !425
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !425
  %i.dn = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !425
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !425
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !425
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !425
  %i.dr = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !425
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !425
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !425
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !425
  %i.dv = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !425
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !425
  store ptr %i.dy, ptr %i.dv, align 8, !tbaa !425
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !425
  %i.dz = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dz, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !4223

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ag, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit ], [ %i.ag, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEESA_ET0_T_SC_SB_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.ag, %._crit_edge100 ], [ %i.ag, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZSt18__stable_partitionIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_E0_St8identityEEDaRSI_RT0_EUlTyOSI_E_EEESI_SI_SI_SO_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr i64 %i.c, 5                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = and i64 %i.c, -32
  %scevgep.i.i = getelementptr i8, ptr %0, i64 %i.f ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.preheader.i.i
  %.052.i.i = phi i64 [ %i.aa, %bb.e ], [ %i.d, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.032.051.i.i = phi ptr [ %i.z, %bb.e ], [ %0, %.lr.ph.preheader.i.i ] ; 9 uses
  %i.g = load ptr, ptr %.sroa.032.051.i.i, align 8, !tbaa !425
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 33
  %i.i = load i16, ptr %i.h, align 1
  %i.j = and i16 %i.i, 8
  %.not.i.i.i.i.i.not.i.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.i.i.i.i.not.i.i, label %bb.b, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_E0_St8identityEEDaRSI_RT0_EUlTyOSI_E_EEESI_SI_SI_SO_.exit

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !425
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 33
  %i.n = load i16, ptr %i.m, align 1
  %i.o = and i16 %i.n, 8
  %.not.i.i.i.i.i16.not.i.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.i.i.i.i16.not.i.i, label %bb.c, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_E0_St8identityEEDaRSI_RT0_EUlTyOSI_E_EEESI_SI_SI_SO_.exit.loopexit.split.loop.exit

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !425
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  %i.s = load i16, ptr %i.r, align 1
  %i.t = and i16 %i.s, 8
  %.not.i.i.i.i.i17.not.i.i = icmp eq i16 %i.t, 0
  br i1 %.not.i.i.i.i.i17.not.i.i, label %bb.d, label %_ZSt13__find_if_notIN9__gnu_cxx17__normal_iteratorIPPN4mold6SymbolINS2_6X86_64EEESt4spanIS6_Lm18446744073709551615EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZNS2_12sort_dynsymsIS4_EEvRNS2_7ContextIT_EEEUlS6_E0_St8identityEEDaRSI_RT0_EUlTyOSI_E_EEESI_SI_SI_SO_.exit.loopexit.split.loop.exit40

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_SJ_T1_T2_ST_SZ_:bb.a
  %.063 = phi ptr [ %.1, %bb.f ], [ %i.c, %bb.c ] ; 3 uses
  %.sroa.051.062 = phi ptr [ %.sroa.051.1, %bb.f ], [ %0, %bb.c ] ; 3 uses
  %i.e = load ptr, ptr %.sroa.043.064, align 8, !tbaa !29 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1119, !nonnull !457, !align !458
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 812
  %i.h = load i8, ptr %i.g, align 4, !tbaa !4351, !range !486, !noundef !457
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  store ptr %i.e, ptr %.sroa.051.062, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.051.062, i64 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  store ptr %i.e, ptr %.063, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %.063, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.051.1 = phi ptr [ %i.j, %bb.d ], [ %.sroa.051.062, %bb.e ] ; 2 uses
  %.1 = phi ptr [ %.063, %bb.d ], [ %i.k, %bb.e ] ; 2 uses
  %.sroa.043.0 = getelementptr inbounds nuw i8, ptr %.sroa.043.064, i64 8 ; 2 uses
  %i.l = icmp eq ptr %.sroa.043.0, %1
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !llvm.loop !4382

._crit_edge:                                      ; preds = %bb.f, %bb.c
  %.sroa.051.0.lcssa = phi ptr [ %0, %bb.c ], [ %.sroa.051.1, %bb.f ] ; 5 uses
  %.0.lcssa = phi ptr [ %i.c, %bb.c ], [ %.1, %bb.f ]
  %i.m = ptrtoint ptr %.0.lcssa to i64
  %i.n = ptrtoint ptr %5 to i64
  %i.o = sub i64 %i.m, %i.n                       ; 3 uses
  %i.p = icmp sgt i64 %i.o, 8
  br i1 %i.p, label %bb.g, label %bb.h, !prof !1349

bb.g:                                             ; preds = %._crit_edge
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.051.0.lcssa, ptr nonnull align 8 %5, i64 %i.o, i1 false)
  br label %_ZSt4moveIPPN4mold12InputSectionINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.h:                                             ; preds = %._crit_edge
  %i.q = icmp eq i64 %i.o, 8
  br i1 %i.q, label %bb.i, label %_ZSt4moveIPPN4mold12InputSectionINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %5, align 8, !tbaa !29
  store ptr %i.r, ptr %.sroa.051.0.lcssa, align 8, !tbaa !29
  br label %_ZSt4moveIPPN4mold12InputSectionINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.s = sdiv i64 %4, 2                           ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s ; 5 uses
  %i.u = tail call ptr @_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_SJ_T1_T2_ST_SZ_(ptr %0, ptr %i.t, ptr %2, ptr %3, i64 noundef %i.s, ptr noundef %5, i64 noundef %6)
  %i.v = sub nsw i64 %4, %i.s                     ; 3 uses
  %.not4.i = icmp eq i64 %i.v, 0
  br i1 %.not4.i, label %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.w = shl i64 %i.v, 3
  %scevgep.i = getelementptr i8, ptr %i.t, i64 %i.w
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.054 = phi i64 [ %i.v, %.lr.ph.preheader.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.sroa.03.05.i = phi ptr [ %i.t, %.lr.ph.preheader.i ], [ %i.ad, %bb.j ] ; 3 uses
  %i.x = load ptr, ptr %.sroa.03.05.i, align 8, !tbaa !29
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1119, !nonnull !457, !align !458
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 812
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !4351, !range !486, !noundef !457
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit

bb.j:                                             ; preds = %.lr.ph.i
  %i.ac = add nsw i64 %.054, -1                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i, i64 8
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit.thread, label %.lr.ph.i, !llvm.loop !4383

_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit: ; preds = %.lr.ph.i
  %i.ae = tail call ptr @_ZSt27__stable_partition_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_SJ_T1_T2_ST_SZ_(ptr nonnull %.sroa.03.05.i, ptr %1, ptr %2, ptr %3, i64 noundef %.054, ptr noundef %5, i64 noundef %6)
  br label %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit.thread

_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit.thread: ; preds = %bb.j, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit
  %.sroa.010.0 = phi ptr [ %i.ae, %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit ], [ %i.t, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElEvRT_T0_St26random_access_iterator_tag.exit ], [ %scevgep.i, %bb.j ]
  %i.af = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %i.u, ptr %i.t, ptr %.sroa.010.0)
  br label %_ZSt4moveIPPN4mold12InputSectionINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit

_ZSt4moveIPPN4mold12InputSectionINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit: ; preds = %bb.a, %bb.i, %bb.h, %bb.g, %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit.thread
  %.sroa.051.2 = phi ptr [ %.sroa.051.0.lcssa, %bb.i ], [ %i.af, %_ZSt15__find_if_not_nIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNSt6ranges8__detail16__make_pred_projIZZNS2_24sort_debug_info_sectionsIS4_EEvRNS2_7ContextIT_EEENKUlPNS2_13OutputSectionIS4_EEE_clESO_EUlS6_E_St8identityEEDaRSJ_RT0_EUlTyOSJ_E_EElESJ_SJ_RT1_ST_.exit.thread ], [ %.sroa.051.0.lcssa, %bb.g ], [ %.sroa.051.0.lcssa, %bb.h ], [ %0, %bb.a ]
  ret ptr %.sroa.051.2
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS3_6X86_64EEESt6vectorIS7_SaIS7_EEEEEET_SD_SD_SD_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.c

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
  %wide.load171 = load <2 x ptr>, ptr %next.gep170, align 8, !tbaa !29, !alias.scope !4384, !noalias !4387
  %wide.load172 = load <2 x ptr>, ptr %i.x, align 8, !tbaa !29, !alias.scope !4384, !noalias !4387
  %i.y = getelementptr i8, ptr %next.gep169, i64 16 ; 2 uses
  %wide.load173 = load <2 x ptr>, ptr %next.gep169, align 8, !tbaa !29, !alias.scope !4387
  %wide.load174 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !29, !alias.scope !4387
  store <2 x ptr> %wide.load173, ptr %next.gep170, align 8, !tbaa !29, !alias.scope !4384, !noalias !4387
  store <2 x ptr> %wide.load174, ptr %i.x, align 8, !tbaa !29, !alias.scope !4384, !noalias !4387
  store <2 x ptr> %wide.load171, ptr %next.gep169, align 8, !tbaa !29, !alias.scope !4387
  store <2 x ptr> %wide.load172, ptr %i.y, align 8, !tbaa !29, !alias.scope !4387
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.z, label %middle.block176, label %vector.body167, !llvm.loop !4389

middle.block176:                                  ; preds = %vector.body167
  %cmp.n177 = icmp eq i64 %i.o, %n.vec166
  br i1 %cmp.n177, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i.preheader180

.lr.ph.i.preheader180:                            ; preds = %vector.memcheck157, %.lr.ph.i.preheader, %middle.block176
  %.sroa.0.07.i.ph = phi ptr [ %1, %vector.memcheck157 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block176 ]
  %.sroa.04.06.i.ph = phi ptr [ %0, %vector.memcheck157 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block176 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader180, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.sroa.0.07.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %.sroa.04.06.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.sroa.04.06.i.ph, %.lr.ph.i.preheader180 ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.04.06.i, align 8, !tbaa !29
  %i.ab = load ptr, ptr %.sroa.0.07.i, align 8, !tbaa !29
  store ptr %i.ab, ptr %.sroa.04.06.i, align 8, !tbaa !29
  store ptr %i.aa, ptr %.sroa.0.07.i, align 8, !tbaa !29
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.06.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %i.ae = icmp eq ptr %i.ac, %1
  br i1 %i.ae, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.lr.ph.i, !llvm.loop !4390

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
  br i1 %i.aj, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.g

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.041.0, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.0, i64 8
  %.idx86 = shl nsw i64 %.0, 3                    ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.041.0, i64 %.idx86
  %gepdiff = add nsw i64 %.idx86, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.sroa.041.0, ptr nonnull align 8 %i.al, i64 %gepdiff, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !29
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

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
  %wide.load = load <2 x ptr>, ptr %next.gep128, align 8, !tbaa !29, !alias.scope !4391, !noalias !4394
  %wide.load129 = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !29, !alias.scope !4391, !noalias !4394
  %i.ay = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load130 = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !29, !alias.scope !4394
  %wide.load131 = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !29, !alias.scope !4394
  store <2 x ptr> %wide.load130, ptr %next.gep128, align 8, !tbaa !29, !alias.scope !4391, !noalias !4394
  store <2 x ptr> %wide.load131, ptr %i.ax, align 8, !tbaa !29, !alias.scope !4391, !noalias !4394
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !29, !alias.scope !4394
  store <2 x ptr> %wide.load129, ptr %i.ay, align 8, !tbaa !29, !alias.scope !4394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !4396

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
  %i.bb = load ptr, ptr %.sroa.041.195.prol, align 8, !tbaa !29
  %i.bc = load ptr, ptr %.sroa.038.096.prol, align 8, !tbaa !29
  store ptr %i.bc, ptr %.sroa.041.195.prol, align 8, !tbaa !29
  store ptr %i.bb, ptr %.sroa.038.096.prol, align 8, !tbaa !29
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.041.195.prol, i64 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.038.096.prol, i64 8 ; 2 uses
  %i.bf = add nuw nsw i64 %.02897.prol, 1         ; 2 uses
  %prol.iter191.next = add i64 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i64 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph99.prol.loopexit, label %.lr.ph99.prol, !llvm.loop !4397

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
  br i1 %.not31, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %bb.h

.lr.ph99:                                         ; preds = %.lr.ph99.prol.loopexit, %.lr.ph99
  %.02897 = phi i64 [ %i.ca, %.lr.ph99 ], [ %.02897.unr, %.lr.ph99.prol.loopexit ]
  %.sroa.038.096 = phi ptr [ %i.bz, %.lr.ph99 ], [ %.sroa.038.096.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %.sroa.041.195 = phi ptr [ %i.by, %.lr.ph99 ], [ %.sroa.041.195.unr, %.lr.ph99.prol.loopexit ] ; 6 uses
  %i.bk = load ptr, ptr %.sroa.041.195, align 8, !tbaa !29
  %i.bl = load ptr, ptr %.sroa.038.096, align 8, !tbaa !29
  store ptr %i.bl, ptr %.sroa.041.195, align 8, !tbaa !29
  store ptr %i.bk, ptr %.sroa.038.096, align 8, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 8 ; 2 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !29
  store ptr %i.bp, ptr %i.bm, align 8, !tbaa !29
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !29
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !29
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !29
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !29
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 24 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 24 ; 2 uses
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !29
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !29
  store ptr %i.bx, ptr %i.bu, align 8, !tbaa !29
  store ptr %i.bw, ptr %i.bv, align 8, !tbaa !29
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.041.195, i64 32 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.038.096, i64 32
  %i.ca = add nuw nsw i64 %.02897, 4              ; 2 uses
  %exitcond108.not.3 = icmp eq i64 %i.ca, %i.ah
  br i1 %exitcond108.not.3, label %._crit_edge100, label %.lr.ph99, !llvm.loop !4398

bb.h:                                             ; preds = %._crit_edge100
  %i.cb = sub nsw i64 %.084, %i.bj
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cc = icmp eq i64 %i.ah, 1
  %i.cd = getelementptr [8 x i8], ptr %.sroa.041.0, i64 %.0 ; 8 uses
  br i1 %i.cc, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !29
  %.idx = shl nsw i64 %.0, 3
  %i.cg = add nsw i64 %.idx, -8                   ; 3 uses
  %i.ch = ashr exact i64 %i.cg, 3                 ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 1
  br i1 %i.ci, label %bb.k, label %bb.l, !prof !1349

bb.k:                                             ; preds = %bb.j
  %i.cj = sub nsw i64 0, %i.ch
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cj
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ck, ptr nonnull align 8 %.sroa.041.0, i64 %i.cg, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.l:                                             ; preds = %bb.j
  %i.cl = icmp eq i64 %i.cg, 8
  br i1 %i.cl, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

bb.m:                                             ; preds = %bb.l
  %i.cm = load ptr, ptr %.sroa.041.0, align 8, !tbaa !29
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !29
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.cf, ptr %.sroa.041.0, align 8, !tbaa !29
  br label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit

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
  %wide.load147 = load <2 x ptr>, ptr %i.cw, align 8, !tbaa !29, !alias.scope !4399, !noalias !4402
  %wide.load148 = load <2 x ptr>, ptr %i.cx, align 8, !tbaa !29, !alias.scope !4399, !noalias !4402
  %i.cy = getelementptr inbounds i8, ptr %next.gep145, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %next.gep145, i64 -32 ; 2 uses
  %wide.load149 = load <2 x ptr>, ptr %i.cy, align 8, !tbaa !29, !alias.scope !4402
  %wide.load150 = load <2 x ptr>, ptr %i.cz, align 8, !tbaa !29, !alias.scope !4402
  store <2 x ptr> %wide.load149, ptr %i.cw, align 8, !tbaa !29, !alias.scope !4399, !noalias !4402
  store <2 x ptr> %wide.load150, ptr %i.cx, align 8, !tbaa !29, !alias.scope !4399, !noalias !4402
  store <2 x ptr> %wide.load147, ptr %i.cy, align 8, !tbaa !29, !alias.scope !4402
  store <2 x ptr> %wide.load148, ptr %i.cz, align 8, !tbaa !29, !alias.scope !4402
  %index.next151 = add nuw i64 %index144, 4       ; 2 uses
  %i.da = icmp eq i64 %index.next151, %n.vec142
  br i1 %i.da, label %middle.block152, label %vector.body143, !llvm.loop !4404

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
  %i.dd = load ptr, ptr %i.db, align 8, !tbaa !29
  %i.de = load ptr, ptr %i.dc, align 8, !tbaa !29
  store ptr %i.de, ptr %i.db, align 8, !tbaa !29
  store ptr %i.dd, ptr %i.dc, align 8, !tbaa !29
  %i.df = add nuw nsw i64 %.02794.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !4405

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
  br i1 %.not, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.sroa.041.0.be = phi ptr [ %.sroa.041.1.lcssa, %bb.h ], [ %.sroa.041.2.lcssa, %._crit_edge ]
  %.084.be = phi i64 [ %i.cb, %bb.h ], [ %i.di, %._crit_edge ]
  %.0.be = phi i64 [ %.084, %bb.h ], [ %i.ah, %._crit_edge ]
  br label %bb.e, !llvm.loop !4406

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02794 = phi i64 [ %i.dz, %.lr.ph ], [ %.02794.unr, %.lr.ph.prol.loopexit ]
  %.sroa.0.093 = phi ptr [ %i.dw, %.lr.ph ], [ %.sroa.0.093.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.041.292 = phi ptr [ %i.dv, %.lr.ph ], [ %.sroa.041.292.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -8 ; 2 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -8 ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !29
  %i.dm = load ptr, ptr %i.dk, align 8, !tbaa !29
  store ptr %i.dm, ptr %i.dj, align 8, !tbaa !29
  store ptr %i.dl, ptr %i.dk, align 8, !tbaa !29
  %i.dn = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -16 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -16 ; 2 uses
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !29
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !29
  store ptr %i.dq, ptr %i.dn, align 8, !tbaa !29
  store ptr %i.dp, ptr %i.do, align 8, !tbaa !29
  %i.dr = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -24 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -24 ; 2 uses
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !29
  %i.du = load ptr, ptr %i.ds, align 8, !tbaa !29
  store ptr %i.du, ptr %i.dr, align 8, !tbaa !29
  store ptr %i.dt, ptr %i.ds, align 8, !tbaa !29
  %i.dv = getelementptr inbounds i8, ptr %.sroa.041.292, i64 -32 ; 3 uses
  %i.dw = getelementptr inbounds i8, ptr %.sroa.0.093, i64 -32 ; 3 uses
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !29
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !29
  store ptr %i.dy, ptr %i.dv, align 8, !tbaa !29
  store ptr %i.dx, ptr %i.dw, align 8, !tbaa !29
  %i.dz = add nuw nsw i64 %.02794, 4              ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dz, %.084
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !4407

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit: ; preds = %._crit_edge, %._crit_edge100, %.lr.ph.i, %middle.block176, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit, %bb.b, %bb.a
  %.sroa.024.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.ag, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %i.ag, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold12InputSectionINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit ], [ %1, %middle.block176 ], [ %1, %.lr.ph.i ], [ %i.ag, %._crit_edge100 ], [ %i.ag, %._crit_edge ]
  ret ptr %.sroa.024.1
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"class.tbb::detail::d1::wait_context_vertex", align 8 ; 6 uses
  %4 = alloca %"class.tbb::detail::d2::for_each_root_task.1979", align 64 ; 10 uses
  %5 = alloca %"class.tbb::detail::d1::task_group_context", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !774
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 15
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store i64 2, ptr %i.e, align 8, !tbaa !776
  store <4 x i8> <i8 1, i8 4, i8 0, i8 0>, ptr %i.b, align 4, !tbaa !22
  call void @_ZN3tbb6detail2r110initializeERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %5) #16
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_ZN3tbb6detail2d221run_parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPPN4mold13MergedSectionINS5_6X86_64EEESt6vectorIS9_SaIS9_EEEEZNS5_24sort_debug_info_sectionsIS7_EEvRNS5_7ContextIT_EEEUlS9_E_EEvSH_SH_RKT0_RNS0_2d118task_group_contextE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d119wait_context_vertexE, i64 16), ptr %3, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 1, ptr %i.g, align 8, !tbaa !790
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8, !tbaa !792
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, i8 0, i64 56, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %0, ptr %i.j, align 64, !tbaa !4408
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %1, ptr %i.k, align 8, !tbaa !4408
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr %3, ptr %i.l, align 16, !tbaa !793
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr %5, ptr %i.m, align 8, !tbaa !795
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %2, ptr %i.n, align 32, !tbaa !752
  %i.o = atomicrmw add ptr %i.h, i64 1 seq_cst, align 8
  %.not.i.i.i.i = icmp eq i64 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN3tbb6detail2d119wait_context_vertex7reserveEj.exit.i

end_hunk_5
