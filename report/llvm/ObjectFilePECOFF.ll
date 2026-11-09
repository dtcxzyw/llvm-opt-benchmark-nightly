Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjectFilePECOFF?download=true
inline.NumInlined: 3156
inline.NumDeleted: 1667
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZSt17__merge_sort_loopIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_:bb.a
.lr.ph.i.i.i.i.i19.i31:                           ; preds = %.lr.ph.i.i.i.i.i19.i31.preheader208, %.lr.ph.i.i.i.i.i19.i31
  %.012.i.i.i.i.i20.i32 = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i19.i31 ], [ %.012.i.i.i.i.i20.i32.ph, %.lr.ph.i.i.i.i.i19.i31.preheader208 ] ; 2 uses
  %.0811.i.i.i.i.i21.i33 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0811.i.i.i.i.i21.i33.ph, %.lr.ph.i.i.i.i.i19.i31.preheader208 ] ; 3 uses
  %.0910.i.i.i.i.i22.i34 = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i19.i31 ], [ %.0910.i.i.i.i.i22.i34.ph, %.lr.ph.i.i.i.i.i19.i31.preheader208 ] ; 3 uses
  %i.dl = load i32, ptr %.0910.i.i.i.i.i22.i34, align 4, !tbaa !62
  store i32 %i.dl, ptr %.0811.i.i.i.i.i21.i33, align 4, !tbaa !316
  %i.dm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 4
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !62
  %i.do = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 4
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !317
  %i.dp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i22.i34, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i21.i33, i64 8
  %i.dr = add nsw i64 %.012.i.i.i.i.i20.i32, -1
  %i.ds = icmp samesign ugt i64 %.012.i.i.i.i.i20.i32, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i19.i31, label %_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit48, !llvm.loop !935

_ZSt12__move_mergeIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit48: ; preds = %.lr.ph.i.i.i.i.i19.i31, %middle.block203, %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond85 = or i1 %i.a, %i.b
  br i1 %or.cond85, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8191 = phi i64 [ %4, %.lr.ph ], [ %i.at, %tailrecurse ] ; 4 uses
  %.tr8090 = phi i64 [ %3, %.lr.ph ], [ %i.as, %tailrecurse ] ; 4 uses
  %.tr7888 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr86 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr8191, %.tr8090
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %5(ptr noundef nonnull align 4 dereferenceable(8) %.tr7888, ptr noundef nonnull align 4 dereferenceable(8) %.tr86) #21, !inline_history !944
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %.tr86, align 4, !tbaa !62
  %i.h = load i32, ptr %.tr7888, align 4, !tbaa !62
  store i32 %i.h, ptr %.tr86, align 4, !tbaa !62
  store i32 %i.g, ptr %.tr7888, align 4, !tbaa !62
  %i.i = getelementptr inbounds nuw i8, ptr %.tr86, i64 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.tr7888, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.i, align 4, !tbaa !62
  %i.l = load i32, ptr %i.j, align 4, !tbaa !62
  store i32 %i.l, ptr %i.i, align 4, !tbaa !62
  store i32 %i.k, ptr %i.j, align 4, !tbaa !62
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr8090, %.tr8191
  %i.n = ptrtoint ptr %.tr7888 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr8090, 2                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %.tr86, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.r, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7888, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.t = lshr i64 %.017.i, 1                      ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.t ; 2 uses
  %i.v = tail call noundef zeroext i1 %5(ptr noundef nonnull align 4 dereferenceable(8) %i.u, ptr noundef nonnull align 4 dereferenceable(8) %i.p) #21, !inline_history !20 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = xor i64 %i.t, -1
  %i.y = add nsw i64 %.017.i, %i.x
  %.sroa.012.1.i = select i1 %i.v, ptr %i.w, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.t      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !21

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.n, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.tr7888, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.n
  %i.ab = ashr exact i64 %i.aa, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.ac = sdiv i64 %.tr8191, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.tr7888, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %.tr86 to i64              ; 3 uses
  %i.af = sub i64 %i.n, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.017.i58 = phi i64 [ %.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %i.ag, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %.sroa.012.016.i59 = phi ptr [ %.sroa.012.1.i62, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57 ], [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ] ; 2 uses
  %i.ai = lshr i64 %.017.i58, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i59, i64 %i.ai ; 2 uses
  %i.ak = tail call noundef zeroext i1 %5(ptr noundef nonnull align 4 dereferenceable(8) %i.ad, ptr noundef nonnull align 4 dereferenceable(8) %i.aj) #21, !inline_history !22 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = xor i64 %i.ai, -1
  %i.an = add nsw i64 %.017.i58, %i.am
  %.sroa.012.1.i62 = select i1 %i.ak, ptr %.sroa.012.016.i59, ptr %i.al ; 3 uses
  %.1.i63 = select i1 %i.ak, i64 %i.ai, i64 %i.an ; 2 uses
  %i.ao = icmp sgt i64 %.1.i63, 0
  br i1 %i.ao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !23

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i57
  %.pre94 = ptrtoint ptr %.sroa.012.1.i62 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %.pre-phi95 = phi i64 [ %.pre94, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %.sroa.012.0.lcssa.i56 = phi ptr [ %.sroa.012.1.i62, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.tr86, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55 ]
  %i.ap = sub i64 %.pre-phi95, %i.ae
  %i.aq = ashr exact i64 %i.ap, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit
  %.sroa.066.0 = phi ptr [ %i.p, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i56, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.049 = phi i64 [ %i.ab, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.o, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %i.aq, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %i.ar = tail call ptr @_ZNSt3_V28__rotateIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS4_SaIS4_EEEEEET_SA_SA_SA_St26random_access_iterator_tag(ptr %.sroa.066.0, ptr %.tr7888, ptr %.sroa.0.0) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_(ptr %.tr86, ptr %.sroa.066.0, ptr %i.ar, i64 noundef %.0, i64 noundef %.049, ptr %5)
  %i.as = sub nsw i64 %.tr8090, %.0               ; 2 uses
  %i.at = sub nsw i64 %.tr8191, %.049             ; 2 uses
  %i.au = icmp eq i64 %i.as, 0
  %i.av = icmp eq i64 %i.at, 0
  %or.cond = or i1 %i.au, %i.av
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
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
  %wide.vec150 = load <4 x i32>, ptr %next.gep149, align 4, !tbaa !62, !alias.scope !954, !noalias !955
  %wide.vec153 = load <4 x i32>, ptr %next.gep148, align 4, !tbaa !62, !alias.scope !955
  store <4 x i32> %wide.vec153, ptr %next.gep149, align 4, !tbaa !62, !alias.scope !954, !noalias !955
  store <4 x i32> %wide.vec150, ptr %next.gep148, align 4, !tbaa !62, !alias.scope !955
  %index.next158 = add nuw i64 %index147, 2       ; 2 uses
  %i.x = icmp eq i64 %index.next158, %n.vec145
  br i1 %i.x, label %middle.block159, label %vector.body146, !llvm.loop !948

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
  %i.y = load i32, ptr %.sroa.04.07.i, align 4, !tbaa !62
  %i.z = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !62
  store i32 %i.z, ptr %.sroa.04.07.i, align 4, !tbaa !62
  store i32 %i.y, ptr %.sroa.0.08.i, align 4, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !62
  %i.ad = load i32, ptr %i.ab, align 4, !tbaa !62
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !62
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 8
  %.not.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, label %.lr.ph.i, !llvm.loop !949

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
  %wide.vec = load <4 x i32>, ptr %next.gep125, align 4, !tbaa !62
  %wide.vec127 = load <4 x i32>, ptr %next.gep, align 4, !tbaa !62
  store <4 x i32> %wide.vec127, ptr %next.gep125, align 4, !tbaa !62
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !62
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !950

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
  %i.ay = load i32, ptr %.sroa.026.162.ph, align 4, !tbaa !62
  %i.az = load i32, ptr %.sroa.025.063.ph, align 4, !tbaa !62
  store i32 %i.az, ptr %.sroa.026.162.ph, align 4, !tbaa !62
  store i32 %i.ay, ptr %.sroa.025.063.ph, align 4, !tbaa !62
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.026.162.ph, i64 4 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.025.063.ph, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !62
  %i.bd = load i32, ptr %i.bb, align 4, !tbaa !62
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !62
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !62
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
  %i.bj = load i32, ptr %.sroa.026.162, align 4, !tbaa !62
  %i.bk = load i32, ptr %.sroa.025.063, align 4, !tbaa !62
  store i32 %i.bk, ptr %.sroa.026.162, align 4, !tbaa !62
  store i32 %i.bj, ptr %.sroa.025.063, align 4, !tbaa !62
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 4 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 4 ; 2 uses
  %i.bn = load i32, ptr %i.bl, align 4, !tbaa !62
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !62
  store i32 %i.bo, ptr %i.bl, align 4, !tbaa !62
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !62
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !62
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !62
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !62
  store i32 %i.br, ptr %i.bq, align 4, !tbaa !62
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 12 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 12 ; 2 uses
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !62
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !62
  store i32 %i.bw, ptr %i.bt, align 4, !tbaa !62
  store i32 %i.bv, ptr %i.bu, align 4, !tbaa !62
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.026.162, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.025.063, i64 16
  %i.bz = add nuw nsw i64 %.01964, 2              ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %i.bz, %i.ai
  br i1 %exitcond71.not.1, label %._crit_edge67, label %.lr.ph66, !llvm.loop !951

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
  %i.ci = load i32, ptr %i.cg, align 4, !tbaa !62
  %i.cj = load i32, ptr %i.ch, align 4, !tbaa !62
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !62
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !62
  %i.ck = getelementptr inbounds i8, ptr %.sroa.026.259.epil.init, i64 -4 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.060.epil.init, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.ck, align 4, !tbaa !62
  %i.cn = load i32, ptr %i.cl, align 4, !tbaa !62
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !62
  store i32 %i.cm, ptr %i.cl, align 4, !tbaa !62
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
  br label %bb.e, !llvm.loop !952

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.0.060 = phi ptr [ %i.cb, %.lr.ph.preheader.new ], [ %i.cy, %.lr.ph ] ; 4 uses
  %.sroa.026.259 = phi ptr [ %i.cd, %.lr.ph.preheader.new ], [ %i.cx, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.cp = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -8 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -8 ; 2 uses
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !62
  %i.cs = load i32, ptr %i.cq, align 4, !tbaa !62
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !62
  store i32 %i.cr, ptr %i.cq, align 4, !tbaa !62
  %i.ct = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -4 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -4 ; 2 uses
  %i.cv = load i32, ptr %i.ct, align 4, !tbaa !62
  %i.cw = load i32, ptr %i.cu, align 4, !tbaa !62
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !62
  store i32 %i.cv, ptr %i.cu, align 4, !tbaa !62
  %i.cx = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -16 ; 4 uses
  %i.cy = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -16 ; 4 uses
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !62
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !62
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !62
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !62
  %i.db = getelementptr inbounds i8, ptr %.sroa.026.259, i64 -12 ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.sroa.0.060, i64 -12 ; 2 uses
  %i.dd = load i32, ptr %i.db, align 4, !tbaa !62
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !62
  store i32 %i.de, ptr %i.db, align 4, !tbaa !62
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !62
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !953

_ZSt11swap_rangesIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit: ; preds = %._crit_edge, %._crit_edge67, %.lr.ph.i, %middle.block159, %bb.b, %bb.a
  %.sroa.015.1 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %1, %middle.block159 ], [ %1, %.lr.ph.i ], [ %i.ah, %._crit_edge67 ], [ %i.ah, %._crit_edge ]
  ret ptr %.sroa.015.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_SH_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not97 = icmp sgt i64 %3, %6
  %.not6498 = icmp sgt i64 %4, %6
  %or.cond99 = and i1 %.not97, %.not6498
  br i1 %or.cond99, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ai, %tailrecurse ]
  %.tr90.lcssa = phi ptr [ %1, %bb.a ], [ %.sroa.0.0, %tailrecurse ]
  %.tr92.lcssa = phi i64 [ %3, %bb.a ], [ %i.ah, %tailrecurse ]
  %.tr93.lcssa = phi i64 [ %4, %bb.a ], [ %i.aj, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_T2_(ptr %.tr.lcssa, ptr %.tr90.lcssa, ptr %2, i64 noundef %.tr92.lcssa, i64 noundef %.tr93.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr93105 = phi i64 [ %4, %.lr.ph ], [ %i.aj, %tailrecurse ] ; 3 uses
  %.tr92104 = phi i64 [ %3, %.lr.ph ], [ %i.ah, %tailrecurse ] ; 3 uses
  %.tr90102 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 5 uses
  %.tr100 = phi ptr [ %0, %.lr.ph ], [ %i.ai, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr92104, %.tr93105
  %i.d = ptrtoint ptr %.tr90102 to i64            ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr92104, 2                    ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.tr100, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr90102, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.017.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i, i64 %i.j ; 2 uses
  %i.l = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 4 dereferenceable(8) %i.k, ptr noundef nonnull align 4 dereferenceable(8) %i.f) #21, !inline_history !20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = xor i64 %i.j, -1
  %i.o = add nsw i64 %.017.i, %i.n
  %.sroa.012.1.i = select i1 %i.l, ptr %i.m, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.l, i64 %i.o, i64 %i.j      ; 2 uses
  %i.p = icmp sgt i64 %.1.i, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !21

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.d, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.tr90102, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.q = sub i64 %.pre-phi, %i.d
  %i.r = ashr exact i64 %i.q, 3
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68: ; preds = %bb.b
  %i.s = sdiv i64 %.tr93105, 2                    ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %.tr90102, i64 %i.s ; 2 uses
  %i.u = ptrtoint ptr %.tr100 to i64              ; 3 uses
  %i.v = sub i64 %i.d, %i.u
  %i.w = ashr exact i64 %i.v, 3                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.017.i71 = phi i64 [ %.1.i76, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %i.w, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %.sroa.012.016.i72 = phi ptr [ %.sroa.012.1.i75, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70 ], [ %.tr100, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ] ; 2 uses
  %i.y = lshr i64 %.017.i71, 1                    ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.012.016.i72, i64 %i.y ; 2 uses
  %i.aa = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 4 dereferenceable(8) %i.t, ptr noundef nonnull align 4 dereferenceable(8) %i.z) #21, !inline_history !22 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = xor i64 %i.y, -1
  %i.ad = add nsw i64 %.017.i71, %i.ac
  %.sroa.012.1.i75 = select i1 %i.aa, ptr %.sroa.012.016.i72, ptr %i.ab ; 3 uses
  %.1.i76 = select i1 %i.aa, i64 %i.y, i64 %i.ad  ; 2 uses
  %i.ae = icmp sgt i64 %.1.i76, 0
  br i1 %i.ae, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !23

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i70
  %.pre111 = ptrtoint ptr %.sroa.012.1.i75 to i64
  br label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68
  %.pre-phi112 = phi i64 [ %.pre111, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %.sroa.012.0.lcssa.i69 = phi ptr [ %.sroa.012.1.i75, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.tr100, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit68 ]
  %i.af = sub i64 %.pre-phi112, %i.u
  %i.ag = ashr exact i64 %i.af, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit
  %.sroa.079.0 = phi ptr [ %i.f, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %.sroa.012.0.lcssa.i69, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.sroa.012.0.lcssa.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %i.t, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 3 uses
  %.060 = phi i64 [ %i.r, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %i.s, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.e, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ], [ %i.ag, %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit ] ; 2 uses
  %i.ah = sub nsw i64 %.tr92104, %.0              ; 4 uses
  %i.ai = tail call ptr @_ZSt17__rotate_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_lET_S9_S9_S9_T1_SA_T0_SA_(ptr %.sroa.079.0, ptr %.tr90102, ptr %.sroa.0.0, i64 noundef %i.ah, i64 noundef %.060, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_SH_T2_(ptr %.tr100, ptr %.sroa.079.0, ptr %i.ai, i64 noundef %.0, i64 noundef %.060, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.aj = sub nsw i64 %.tr93105, %.060            ; 3 uses
  %.not = icmp sgt i64 %i.ah, %6
  %.not64 = icmp sgt i64 %i.aj, %6
  %or.cond = and i1 %.not, %.not64
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
  %wide.vec = load <4 x i32>, ptr %next.gep82, align 4, !tbaa !62, !alias.scope !978
  %wide.vec85 = load <4 x i32>, ptr %next.gep83, align 4, !tbaa !62, !alias.scope !978
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !62, !alias.scope !979, !noalias !978
  store <4 x i32> %wide.vec85, ptr %next.gep81, align 4, !tbaa !62, !alias.scope !979, !noalias !978
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !959

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
  %i.o = load i32, ptr %.0910.i.i.i.i.i, align 4, !tbaa !62
  store i32 %i.o, ptr %.0811.i.i.i.i.i, align 4, !tbaa !316
  %i.p = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 4
  store i32 %i.q, ptr %i.r, align 4, !tbaa !317
  %i.s = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.u = add nsw i64 %.012.i.i.i.i.i, -1
  %i.v = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !960

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
  %i.ac = load i32, ptr %i.aa, align 4, !tbaa !62
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !316
  %i.ad = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.prol, i64 -4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !62
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.prol, i64 -4
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !317
  %i.ag = add nsw i64 %.010.i.i.i.i.i.prol, -1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i37.prol.loopexit, label %.lr.ph.i.i.i.i.i37.prol, !llvm.loop !961

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
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !62
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !316
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !62
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -4
  store i32 %i.am, ptr %i.an, align 4, !tbaa !317
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !62
  store i32 %i.aq, ptr %i.ap, align 4, !tbaa !316
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !62
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -12
  store i32 %i.as, ptr %i.at, align 4, !tbaa !317
  %i.au = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.av = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.aw = load i32, ptr %i.au, align 4, !tbaa !62
  store i32 %i.aw, ptr %i.av, align 4, !tbaa !316
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !62
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !317
  %i.ba = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !62
  store i32 %i.bc, ptr %i.bb, align 4, !tbaa !316
  %i.bd = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -28
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !62
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -28
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !317
  %i.bg = add nsw i64 %.010.i.i.i.i.i, -4
  %i.bh = icmp sgt i64 %.010.i.i.i.i.i, 4
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i37, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !16

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
  %wide.vec110 = load <4 x i32>, ptr %next.gep108, align 4, !tbaa !62, !alias.scope !980
  %wide.vec113 = load <4 x i32>, ptr %next.gep109, align 4, !tbaa !62, !alias.scope !980
  store <4 x i32> %wide.vec110, ptr %next.gep106, align 4, !tbaa !62, !alias.scope !981, !noalias !980
  store <4 x i32> %wide.vec113, ptr %next.gep107, align 4, !tbaa !62, !alias.scope !981, !noalias !980
  %index.next118 = add nuw i64 %index105, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next118, %n.vec103
  br i1 %i.bu, label %middle.block119, label %vector.body104, !llvm.loop !965

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
  %i.bv = load i32, ptr %.0910.i.i.i.i.i42, align 4, !tbaa !62
  store i32 %i.bv, ptr %.0811.i.i.i.i.i41, align 4, !tbaa !316
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i42, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i41, i64 4
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !317
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i42, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i41, i64 8 ; 2 uses
  %i.cb = add nsw i64 %.012.i.i.i.i.i40, -1
  %i.cc = icmp samesign ugt i64 %.012.i.i.i.i.i40, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !966

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
  %wide.vec143 = load <4 x i32>, ptr %next.gep141, align 4, !tbaa !62, !alias.scope !982
  %wide.vec146 = load <4 x i32>, ptr %next.gep142, align 4, !tbaa !62, !alias.scope !982
  store <4 x i32> %wide.vec143, ptr %next.gep139, align 4, !tbaa !62, !alias.scope !983, !noalias !982
  store <4 x i32> %wide.vec146, ptr %next.gep140, align 4, !tbaa !62, !alias.scope !983, !noalias !982
  %index.next151 = add nuw i64 %index138, 4       ; 2 uses
  %i.cr = icmp eq i64 %index.next151, %n.vec136
  br i1 %i.cr, label %middle.block152, label %vector.body137, !llvm.loop !970

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
  %i.cs = load i32, ptr %.0910.i.i.i.i.i47, align 4, !tbaa !62
  store i32 %i.cs, ptr %.0811.i.i.i.i.i46, align 4, !tbaa !316
  %i.ct = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !62
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 4
  store i32 %i.cu, ptr %i.cv, align 4, !tbaa !317
  %i.cw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i47, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i46, i64 8 ; 2 uses
  %i.cy = add nsw i64 %.012.i.i.i.i.i45, -1
  %i.cz = icmp samesign ugt i64 %.012.i.i.i.i.i45, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i44, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit48, !llvm.loop !971

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
  %wide.vec176 = load <4 x i32>, ptr %next.gep174, align 4, !tbaa !62, !alias.scope !984
  %wide.vec179 = load <4 x i32>, ptr %next.gep175, align 4, !tbaa !62, !alias.scope !984
  store <4 x i32> %wide.vec176, ptr %next.gep172, align 4, !tbaa !62, !alias.scope !985, !noalias !984
  store <4 x i32> %wide.vec179, ptr %next.gep173, align 4, !tbaa !62, !alias.scope !985, !noalias !984
  %index.next184 = add nuw i64 %index171, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next184, %n.vec169
  br i1 %i.dl, label %middle.block185, label %vector.body170, !llvm.loop !975

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
  %i.dm = load i32, ptr %.0910.i.i.i.i.i53, align 4, !tbaa !62
  store i32 %i.dm, ptr %.0811.i.i.i.i.i52, align 4, !tbaa !316
  %i.dn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 4
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !317
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i53, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i52, i64 8
  %i.ds = add nsw i64 %.012.i.i.i.i.i51, -1
  %i.dt = icmp samesign ugt i64 %.012.i.i.i.i.i51, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i50, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjjESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit, !llvm.loop !976

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
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !62
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !316
  %i.ec = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58.prol, i64 -4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !62
  %i.ee = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57.prol, i64 -4
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !317
  %i.ef = add nsw i64 %.010.i.i.i.i.i56.prol, -1  ; 2 uses
  %prol.iter199.next = add i64 %prol.iter199, 1   ; 2 uses
  %prol.iter199.cmp.not = icmp eq i64 %prol.iter199.next, %xtraiter197
  br i1 %prol.iter199.cmp.not, label %.lr.ph.i.i.i.i.i55.prol.loopexit, label %.lr.ph.i.i.i.i.i55.prol, !llvm.loop !977

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
  %i.ej = load i32, ptr %i.eh, align 4, !tbaa !62
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !316
  %i.ek = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !62
  %i.em = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -4
  store i32 %i.el, ptr %i.em, align 4, !tbaa !317
  %i.en = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -16
  %i.eo = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -16
  %i.ep = load i32, ptr %i.en, align 4, !tbaa !62
  store i32 %i.ep, ptr %i.eo, align 4, !tbaa !316
  %i.eq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !62
  %i.es = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -12
  store i32 %i.er, ptr %i.es, align 4, !tbaa !317
  %i.et = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -24
  %i.eu = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -24
  %i.ev = load i32, ptr %i.et, align 4, !tbaa !62
  store i32 %i.ev, ptr %i.eu, align 4, !tbaa !316
  %i.ew = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -20
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !62
  %i.ey = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -20
  store i32 %i.ex, ptr %i.ey, align 4, !tbaa !317
  %i.ez = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -32 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -32 ; 3 uses
  %i.fb = load i32, ptr %i.ez, align 4, !tbaa !62
  store i32 %i.fb, ptr %i.fa, align 4, !tbaa !316
  %i.fc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i58, i64 -28
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !62
  %i.fe = getelementptr inbounds i8, ptr %.069.i.i.i.i.i57, i64 -28
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !317
  %i.ff = add nsw i64 %.010.i.i.i.i.i56, -4
  %i.fg = icmp sgt i64 %.010.i.i.i.i.i56, 4
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i55, label %_ZSt13move_backwardIPSt4pairIjjEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.loopexit, !llvm.loop !16

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

declare void @_ZN15PECallFrameInfoC1ER16ObjectFilePECOFFjj(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(576), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private7SectionESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private7SectionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN12lldb_private7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(153) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private7SectionESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(176) %0) unnamed_addr #0 comdat align 2 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN12lldb_private7SectionESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 176) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN12lldb_private7SectionESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZNSt19_Sp_make_shared_tag5_S_eqERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(16) %1) #21
  %spec.select = select i1 %i.c, ptr %i.a, ptr null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare void @_ZN12lldb_private7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(153)) unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !320  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN12lldb_private7SectionD1Ev(ptr noundef nonnull align 8 dead_on_return(153) dereferenceable(153) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt15_Sp_counted_ptrIPN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt15_Sp_counted_ptrIPN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

declare noundef zeroext i1 @_ZNK4llvm6object23ImportDirectoryEntryRefeqERKS1_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN4llvm6object23ImportDirectoryEntryRef8moveNextEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE17_M_realloc_insertIJRN4llvm11SmallStringILj128EEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(152) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !324    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #24
  unreachable

_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load ptr, ptr %2, align 8, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !82
  tail call void @_ZN12lldb_private8FileSpecC1EN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %i.r, i64 %i.t, i32 noundef 0) #21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !40, !alias.scope !992
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !24

_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.v, %.lr.ph.i.i.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.y, %.lr.ph.i.i.i17 ], [ %i.w, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.x, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i64 24, i1 false), !tbaa.struct !40, !alias.scope !993
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.x, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !24

_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.w, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.y, %.lr.ph.i.i.i17 ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !325
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = sub i64 %i.ab, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ac) #23
  br label %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !324
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !326
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE17_M_realloc_insertIJRN4llvm9StringRefEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !324    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.125) #24
  unreachable

_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #22 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !35
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !65
  tail call void @_ZN12lldb_private8FileSpecC1EN4llvm9StringRefENS1_3sys4path5StyleE(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i32 noundef 0) #21
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i64 24, i1 false), !tbaa.struct !40, !alias.scope !1000
  %i.r = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !24

_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN12lldb_private8FileSpecESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.s, %.lr.ph.i.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.v, %.lr.ph.i.i.i17 ], [ %i.t, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.u, %.lr.ph.i.i.i17 ], [ %1, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i19, i64 24, i1 false), !tbaa.struct !40, !alias.scope !1001
  %i.u = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.u, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !24

_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i17, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.t, %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.v, %.lr.ph.i.i.i17 ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !325
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.z) #23
  br label %_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN12lldb_private8FileSpecESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN12lldb_private8FileSpecESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !324
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !326
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.aa, ptr %i.w, align 8, !tbaa !325
  ret void
}

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN12lldb_private6StreamlsERKN4llvm19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(33)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr %2, i64 %3) #0 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = icmp eq i64 %3, 0
  br i1 %i.c, label %bb.b, label %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i

_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.d = call noundef zeroext i1 @_ZN4llvm20getAsUnsignedIntegerENS_9StringRefEjRy(ptr %2, i64 %3, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %i.a) #21
  %i.e = load i64, ptr %i.a, align 8
  %spec.select.i.i = select i1 %i.d, i64 -1, i64 %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i, %bb.a
  %.0.i.i = phi i64 [ -1, %bb.a ], [ %spec.select.i.i, %_ZNK4llvm9StringRef12getAsIntegerImEEbjRT_.exit.i.i ]
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !tbaa !35 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !65
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.4.0.copyload.i.i, i64 %.0.i.i) ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !337
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !338  ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %.sroa.speculated.i.i.i, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.speculated.i.i.i) #21 ; 0 uses
  br label %_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit

bb.d:                                             ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %.sroa.0.0.copyload.i.i, i64 %.sroa.speculated.i.i.i, i1 false)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !338
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.speculated.i.i.i
  store ptr %i.p, ptr %i.h, align 8, !tbaa !338
  br label %_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit

_ZN4llvm7support6detail13FormatFunctorINS_9StringRefEEclERNS_11raw_ostreamES3_.exit: ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nobuiltin nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { builtin nounwind allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}
!llvm.errno.tbaa = !{!32}

!0 = distinct !{null, null, null}
!1 = distinct !{null, null, null}
!2 = distinct !{null, null}
!3 = distinct !{null}
!4 = distinct !{null, null, null}
!5 = distinct !{null}
!6 = distinct !{null, null, null}
!7 = distinct !{null, null, null, null}
!8 = distinct !{null}
!9 = distinct !{null, null, null}
!10 = distinct !{!10, !272}
!11 = distinct !{null, null, null}
!12 = distinct !{!12, !272}
!13 = distinct !{!13, !272}
!14 = distinct !{null, null}
!15 = distinct !{null, null}
!16 = distinct !{!16, !272}
!17 = distinct !{null, null, null}
!18 = distinct !{!18, !272}
!19 = distinct !{!19, !272}
!20 = distinct !{null, null}
!21 = distinct !{!21, !272}
!22 = distinct !{null, null}
!23 = distinct !{!23, !272}
!24 = distinct !{!24, !272}
!25 = !{i32 8, !"PIC Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 2}
!27 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!28 = !{!"Simple C++ TBAA"}
!29 = !{!"omnipotent char", !28, i64 0}
!30 = !{!"int", !29, i64 0}
!31 = !{!"__libc_errno", !30, i64 0}
!32 = !{!31, !30, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !{!"p1 omnipotent char", !33, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTSN12lldb_private8FileSpec8AbsoluteE", !29, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN4llvm3sys4path5StyleE", !29, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 1, !37, i64 20, i64 4, !39}
!41 = !{!"p1 _ZTSN12lldb_private13DataExtractorE", !33, i64 0}
!42 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !33, i64 0}
!43 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !42, i64 0}
!44 = !{!"_ZTSSt12__shared_ptrIN12lldb_private13DataExtractorELN9__gnu_cxx12_Lock_policyE2EE", !41, i64 0, !43, i64 8}
!45 = !{!44, !41, i64 0}
!46 = !{!"_ZTSN4lldb9ByteOrderE", !29, i64 0}
!47 = !{!"p1 _ZTSN12lldb_private10DataBufferE", !33, i64 0}
!48 = !{!"_ZTSSt12__shared_ptrIN12lldb_private10DataBufferELN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0, !43, i64 8}
!49 = !{!"_ZTSSt10shared_ptrIN12lldb_private10DataBufferEE", !48, i64 0}
!50 = !{!"_ZTSN12lldb_private13DataExtractorE", !34, i64 8, !34, i64 16, !46, i64 24, !30, i64 28, !49, i64 32}
!51 = !{!50, !34, i64 8}
!52 = !{!50, !34, i64 16}
!53 = !{!48, !47, i64 0}
!54 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !30, i64 8, !30, i64 12}
!55 = !{!54, !30, i64 8}
!56 = !{!54, !30, i64 12}
!57 = !{!"vtable pointer", !28, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!41, !41, i64 0}
!60 = !{!43, !42, i64 0}
!61 = !{!29, !29, i64 0}
!62 = !{!30, !30, i64 0}
!63 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!64 = !{!"long", !29, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!33, !33, i64 0}
!67 = !{!"short", !29, i64 0}
!68 = !{!"_ZTSN12lldb_private11ConstStringE", !34, i64 0}
!69 = !{!68, !34, i64 0}
!70 = !{!"p1 _ZTSN4llvm13ErrorInfoBaseE", !33, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTSN4llvm5ErrorE", !70, i64 0}
!73 = !{!72, !70, i64 0}
!74 = !{!"p1 _ZTSN4llvm6object6BinaryE", !33, i64 0}
end_hunk_0
begin_hunk_1_@llvm.smin.i64
!750 = !{!741}
!751 = !{!743, !741}
!752 = !{!745, !741}
!753 = distinct !{null}
!754 = distinct !{!754, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!755 = distinct !{!755, !754, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!756 = distinct !{!756, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!757 = distinct !{!757, !756, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!758 = distinct !{!758, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!759 = distinct !{!759, !758, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!760 = distinct !{!760, !758, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!761 = distinct !{!761, !272, !313, !314}
!762 = distinct !{!762, !272, !314, !313}
!763 = distinct !{!763, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!764 = distinct !{!764, !763, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!765 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!766 = distinct !{!766, !272}
!767 = distinct !{null, null, null, null, null, null, null, null}
!768 = distinct !{!768, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!769 = distinct !{!769, !768, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!770 = distinct !{!770, !768, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!771 = distinct !{!771, !272, !313, !314}
!772 = distinct !{!772, !272, !314, !313}
!773 = distinct !{!773, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!774 = distinct !{!774, !773, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!775 = distinct !{!775, i1 true, !"_ZN4llvm5Error11takePayloadEv"}
!776 = distinct !{!776, !775, !"_ZN4llvm5Error11takePayloadEv: argument 0"}
!777 = distinct !{!777, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!778 = distinct !{!778, !777, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!779 = distinct !{!779, !777, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!780 = !{!755}
!781 = !{!757}
!782 = !{!759}
!783 = !{!760}
!784 = !{!764}
!785 = !{!769}
!786 = !{!770}
!787 = !{!774}
!788 = !{!776}
!789 = !{!778}
!790 = !{!779}
!791 = distinct !{!791, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!792 = distinct !{!792, !791, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!793 = distinct !{!793, !791, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!794 = distinct !{!794, !272, !313, !314}
!795 = distinct !{!795, !272, !314, !313}
!796 = distinct !{!796, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_"}
!797 = distinct !{!797, !796, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!798 = distinct !{!798, !796, !"_ZSt19__relocate_object_aISt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS2_EES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!799 = distinct !{!799, i1 false, !"LVerDomain"}
!800 = distinct !{!800, !799}
!801 = distinct !{!801, !799}
!802 = distinct !{!802, !272, !313, !314}
!803 = distinct !{!803, !272, !313}
!804 = !{!792}
!805 = !{!793}
!806 = !{!797}
!807 = !{!798}
!808 = !{!798, !800}
!809 = !{!797, !801}
!810 = !{!800}
!811 = distinct !{!811, !272}
!812 = distinct !{!812, !272}
!813 = !{!117, !116, i64 0}
!814 = distinct !{!814, !272}
!815 = !{!145, !144, i64 8}
!816 = !{!145, !144, i64 0}
!817 = !{!145, !144, i64 16}
!818 = !{!144, !144, i64 0}
!819 = distinct !{null, null, null, null, null, null, null, null}
!820 = distinct !{!820, !272}
!821 = !{!285, !284, i64 16}
!822 = distinct !{null}
!823 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRKN12lldb_private8FileSpecEEE", !134, i64 0}
!824 = !{!823, !134, i64 0}
!825 = distinct !{null, null}
!826 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRN12lldb_private8FileSpecEEE", !134, i64 0}
!827 = !{!826, !134, i64 0}
!828 = distinct !{!828, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private13DataExtractorESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!829 = distinct !{!829, !828, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN12lldb_private13DataExtractorESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!830 = distinct !{null, null, null, null, null}
!831 = !{!829}
!832 = distinct !{!832, i1 true, !"_ZSt19__relocate_object_aIN16ObjectFilePECOFF14data_directoryES1_SaIS1_EEvPT_PT0_RT1_"}
!833 = distinct !{!833, !832, !"_ZSt19__relocate_object_aIN16ObjectFilePECOFF14data_directoryES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!834 = distinct !{!834, !832, !"_ZSt19__relocate_object_aIN16ObjectFilePECOFF14data_directoryES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!835 = distinct !{!835, !272, !313, !314}
!836 = distinct !{!836, !272, !314, !313}
!837 = !{!833}
!838 = !{!834}
!839 = distinct !{!839, i1 true, !"_ZSt19__relocate_object_aIN16ObjectFilePECOFF14section_headerES1_SaIS1_EEvPT_PT0_RT1_"}
!840 = distinct !{!840, !839, !"_ZSt19__relocate_object_aIN16ObjectFilePECOFF14section_headerES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!841 = distinct !{!841, !839, !"_ZSt19__relocate_object_aIN16ObjectFilePECOFF14section_headerES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!842 = distinct !{!842, !272}
!843 = !{i64 0, i64 8, !61, i64 8, i64 4, !62, i64 12, i64 4, !62, i64 16, i64 4, !62, i64 20, i64 4, !62, i64 24, i64 4, !62, i64 28, i64 4, !62, i64 32, i64 2, !253, i64 34, i64 2, !253, i64 36, i64 4, !62}
!844 = !{!841, !840}
!845 = !{!"_ZTSN4llvm7support6detail13FormatFunctorIRNS_9StringRefEEE", !318, i64 0}
!846 = !{!845, !318, i64 0}
!847 = distinct !{!847, !272}
!848 = distinct !{!848, !340}
!849 = distinct !{!849, !272}
!850 = distinct !{!850, !272}
!851 = distinct !{!851, !340}
!852 = distinct !{!852, i1 false, !"LVerDomain"}
!853 = distinct !{!853, !852}
!854 = distinct !{!854, !852}
!855 = distinct !{!855, !272, !313, !314}
!856 = distinct !{!856, !272, !313}
!857 = distinct !{null, null}
!858 = distinct !{!858, !272}
!859 = distinct !{!859, i1 false, !"LVerDomain"}
!860 = distinct !{!860, !859}
!861 = distinct !{!861, !859}
!862 = distinct !{!862, !272, !313, !314}
!863 = distinct !{!863, !272, !313}
!864 = distinct !{!864, i1 false, !"LVerDomain"}
!865 = distinct !{!865, !864}
!866 = distinct !{!866, !864}
!867 = distinct !{!867, !272, !313, !314}
!868 = distinct !{!868, !272, !313}
!869 = distinct !{!869, !340}
!870 = distinct !{null, null}
!871 = distinct !{!871, !272}
!872 = distinct !{!872, !340}
!873 = !{!853}
!874 = !{!854}
!875 = !{!860}
!876 = !{!861}
!877 = !{!865}
!878 = !{!866}
!879 = distinct !{!879, !272}
!880 = distinct !{!880, !340}
!881 = distinct !{!881, !340}
!882 = distinct !{null, null}
!883 = distinct !{!883, !272}
!884 = distinct !{!884, i1 false, !"LVerDomain"}
!885 = distinct !{!885, !884}
!886 = distinct !{!886, !884}
!887 = distinct !{!887, !272, !313, !314}
!888 = distinct !{!888, !272, !313}
!889 = distinct !{!889, i1 false, !"LVerDomain"}
!890 = distinct !{!890, !889}
!891 = distinct !{!891, !889}
!892 = distinct !{!892, !272, !313, !314}
!893 = distinct !{!893, !272, !313}
!894 = distinct !{!894, !272}
!895 = distinct !{!895, i1 false, !"LVerDomain"}
!896 = distinct !{!896, !895}
!897 = distinct !{!897, !895}
!898 = distinct !{!898, !272, !313, !314}
!899 = distinct !{!899, !272, !313}
!900 = distinct !{!900, i1 false, !"LVerDomain"}
!901 = distinct !{!901, !900}
!902 = distinct !{!902, !900}
!903 = distinct !{!903, !272, !313, !314}
!904 = distinct !{!904, !272, !313}
!905 = !{!885}
!906 = !{!886}
!907 = !{!890}
!908 = !{!891}
!909 = !{!896}
!910 = !{!897}
!911 = !{!901}
!912 = !{!902}
!913 = distinct !{null, null}
!914 = distinct !{!914, !272}
!915 = distinct !{!915, i1 false, !"LVerDomain"}
!916 = distinct !{!916, !915}
!917 = distinct !{!917, !915}
!918 = distinct !{!918, !272, !313, !314}
!919 = distinct !{!919, !272, !313}
!920 = distinct !{!920, i1 false, !"LVerDomain"}
!921 = distinct !{!921, !920}
!922 = distinct !{!922, !920}
!923 = distinct !{!923, !272, !313, !314}
!924 = distinct !{!924, !272, !313}
!925 = distinct !{!925, !272}
!926 = distinct !{!926, i1 false, !"LVerDomain"}
!927 = distinct !{!927, !926}
!928 = distinct !{!928, !926}
!929 = distinct !{!929, !272, !313, !314}
!930 = distinct !{!930, !272, !313}
!931 = distinct !{!931, i1 false, !"LVerDomain"}
!932 = distinct !{!932, !931}
!933 = distinct !{!933, !931}
!934 = distinct !{!934, !272, !313, !314}
!935 = distinct !{!935, !272, !313}
!936 = !{!916}
!937 = !{!917}
!938 = !{!921}
!939 = !{!922}
!940 = !{!927}
!941 = !{!928}
!942 = !{!932}
!943 = !{!933}
!944 = distinct !{null}
!945 = distinct !{!945, i1 false, !"LVerDomain"}
!946 = distinct !{!946, !945}
!947 = distinct !{!947, !945}
!948 = distinct !{!948, !272, !313, !314}
!949 = distinct !{!949, !272, !313}
!950 = distinct !{!950, !272, !313, !314}
!951 = distinct !{!951, !272, !313}
!952 = distinct !{!952, !272}
!953 = distinct !{!953, !272}
!954 = !{!946}
!955 = !{!947}
!956 = distinct !{!956, i1 false, !"LVerDomain"}
!957 = distinct !{!957, !956}
!958 = distinct !{!958, !956}
!959 = distinct !{!959, !272, !313, !314}
!960 = distinct !{!960, !272, !313}
!961 = distinct !{!961, !340}
!962 = distinct !{!962, i1 false, !"LVerDomain"}
!963 = distinct !{!963, !962}
!964 = distinct !{!964, !962}
!965 = distinct !{!965, !272, !313, !314}
!966 = distinct !{!966, !272, !313}
!967 = distinct !{!967, i1 false, !"LVerDomain"}
!968 = distinct !{!968, !967}
!969 = distinct !{!969, !967}
!970 = distinct !{!970, !272, !313, !314}
!971 = distinct !{!971, !272, !313}
!972 = distinct !{!972, i1 false, !"LVerDomain"}
!973 = distinct !{!973, !972}
!974 = distinct !{!974, !972}
!975 = distinct !{!975, !272, !313, !314}
!976 = distinct !{!976, !272, !313}
!977 = distinct !{!977, !340}
!978 = !{!957}
!979 = !{!958}
!980 = !{!963}
!981 = !{!964}
!982 = !{!968}
!983 = !{!969}
!984 = !{!973}
!985 = !{!974}
!986 = distinct !{!986, i1 true, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_"}
!987 = distinct !{!987, !986, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!988 = distinct !{!988, !986, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!989 = distinct !{!989, i1 true, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_"}
!990 = distinct !{!990, !989, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!991 = distinct !{!991, !989, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!992 = !{!988, !987}
!993 = !{!991, !990}
!994 = distinct !{!994, i1 true, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_"}
!995 = distinct !{!995, !994, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!996 = distinct !{!996, !994, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!997 = distinct !{!997, i1 true, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_"}
!998 = distinct !{!998, !997, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!999 = distinct !{!999, !997, !"_ZSt19__relocate_object_aIN12lldb_private8FileSpecES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!1000 = !{!996, !995}
!1001 = !{!999, !998}
end_hunk_1
