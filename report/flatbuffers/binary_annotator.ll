Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flatbuffers/original/binary_annotator?download=true
inline.NumInlined: 3604
inline.NumDeleted: 1081
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_:bb.a
  br i1 %.not.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit, label %.lr.ph.i, !llvm.loop !755

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit: ; preds = %.lr.ph.i
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr nonnull %i.f, ptr %1, ptr %3)
  %.not = icmp eq i64 %i.c, 1120
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = udiv exact i64 %i.c, 160                 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit
  %.052 = phi i64 [ 7, %.lr.ph ], [ %i.ba, %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit ] ; 7 uses
  %i.k = shl nsw i64 %.052, 1                     ; 3 uses
  %.not30.i = icmp slt i64 %i.d, %i.k
  br i1 %.not30.i, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i19.preheader

.lr.ph.i19.preheader:                             ; preds = %bb.b
  %.idx = mul nsw i64 %.052, 160
  %.idx38 = mul nsw i64 %.052, 320
  br label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.lr.ph.i19.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit
  %.032.i = phi ptr [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ], [ %2, %.lr.ph.i19.preheader ]
  %.sroa.022.031.i = phi ptr [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ], [ %0, %.lr.ph.i19.preheader ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.022.031.i, i64 %.idx ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.022.031.i, i64 %.idx38 ; 4 uses
  br label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %.lr.ph.i19, %bb.e
  %.028.i = phi ptr [ %i.v, %bb.e ], [ %.032.i, %.lr.ph.i19 ] ; 4 uses
  %.sroa.021.027.i = phi ptr [ %.sroa.021.1.i, %bb.e ], [ %.sroa.022.031.i, %.lr.ph.i19 ] ; 5 uses
  %.sroa.017.026.i = phi ptr [ %.sroa.017.1.i, %bb.e ], [ %i.l, %.lr.ph.i19 ] ; 5 uses
  %i.n = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.021.027.i), !inline_history !756
  %i.o = getelementptr inbounds nuw i8, ptr %.028.i, i64 40 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.028.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026.i, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 40
  %i.q = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.p) #30 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 160
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.028.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.021.027.i, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.021.027.i, i64 40
  %i.t = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.s) #30 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.021.027.i, i64 160
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.017.1.i = phi ptr [ %i.r, %bb.c ], [ %.sroa.017.026.i, %bb.d ] ; 4 uses
  %.sroa.021.1.i = phi ptr [ %.sroa.021.027.i, %bb.c ], [ %i.u, %bb.d ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.028.i, i64 160 ; 3 uses
  %i.w = icmp ne ptr %.sroa.021.1.i, %i.l
  %i.x = icmp ne ptr %.sroa.017.1.i, %i.m
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %.lr.ph.i28, label %.critedge.i, !llvm.loop !21

.critedge.i:                                      ; preds = %bb.e
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = ptrtoint ptr %.sroa.021.1.i to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.ac = udiv exact i64 %i.aa, 160
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.021.1.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i.i, i64 40, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.af = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #30 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 160 ; 2 uses
  %i.ai = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.aj = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %i.v, %.critedge.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.ak = ptrtoint ptr %i.m to i64                ; 2 uses
  %i.al = ptrtoint ptr %.sroa.017.1.i to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %.lr.ph.preheader.i.i.i.i.i10.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.preheader.i.i.i.i.i10.i:                   ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  %i.ao = udiv exact i64 %i.am, 160
  br label %.lr.ph.i.i.i.i.i11.i

.lr.ph.i.i.i.i.i11.i:                             ; preds = %.lr.ph.i.i.i.i.i11.i, %.lr.ph.preheader.i.i.i.i.i10.i
  %.012.i.i.i.i.i12.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i11.i ], [ %i.ao, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i11.i ], [ %.08.lcssa.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i11.i ], [ %.sroa.017.1.i, %.lr.ph.preheader.i.i.i.i.i10.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i13.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i14.i, i64 40, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i, i64 40
  %i.ar = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ap, ptr noundef nonnull align 8 dereferenceable(120) %i.aq) #30 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i, i64 160
  %i.at = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i, i64 160 ; 2 uses
  %i.au = add nsw i64 %.012.i.i.i.i.i12.i, -1
  %i.av = icmp samesign ugt i64 %.012.i.i.i.i.i12.i, 1
  br i1 %i.av, label %.lr.ph.i.i.i.i.i11.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !22

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i11.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i9.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ], [ %i.at, %.lr.ph.i.i.i.i.i11.i ] ; 2 uses
  %i.aw = sub i64 %i.a, %i.ak
  %i.ax = sdiv exact i64 %i.aw, 160               ; 2 uses
  %.not.i20 = icmp slt i64 %i.ax, %i.k
  br i1 %.not.i20, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i19, !llvm.loop !757

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, %bb.b
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.ax, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.052, i64 %.lcssa.i)
  %i.ay = getelementptr inbounds [160 x i8], ptr %.sroa.022.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.az = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_(ptr %.sroa.022.0.lcssa.i, ptr %i.ay, ptr %i.ay, ptr %1, ptr noundef %.0.lcssa.i, ptr %3) ; 0 uses
  %i.ba = shl nsw i64 %.052, 2                    ; 4 uses
  %.not28.i = icmp slt i64 %i.j, %i.ba
  br i1 %.not28.i, label %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i21.preheader

.lr.ph.i21.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit
  %.idx39 = mul nsw i64 %.052, 320
  %.idx40 = mul nsw i64 %.052, 640
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit
  %.sroa.021.030.i = phi ptr [ %i.cs, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ], [ %0, %.lr.ph.i21.preheader ]
  %.029.i = phi ptr [ %i.bc, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ], [ %2, %.lr.ph.i21.preheader ] ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %.029.i, i64 %.idx39 ; 3 uses
  %i.bc = getelementptr inbounds i8, ptr %.029.i, i64 %.idx40 ; 4 uses
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i21, %bb.h
  %.031.i = phi ptr [ %.1.i, %bb.h ], [ %.029.i, %.lr.ph.i21 ] ; 5 uses
  %.01630.i = phi ptr [ %.117.i, %bb.h ], [ %i.bb, %.lr.ph.i21 ] ; 5 uses
  %.sroa.025.029.i = phi ptr [ %i.bl, %bb.h ], [ %.sroa.021.030.i, %.lr.ph.i21 ] ; 4 uses
  %i.bd = tail call noundef zeroext i1 %3(ptr noundef nonnull align 8 dereferenceable(160) %.01630.i, ptr noundef nonnull align 8 dereferenceable(160) %.031.i), !inline_history !758
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 40 ; 2 uses
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.025.029.i, ptr noundef nonnull align 8 dereferenceable(160) %.01630.i, i64 40, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %.01630.i, i64 40
  %i.bg = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.be, ptr noundef nonnull align 8 dereferenceable(120) %i.bf) #30 ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01630.i, i64 160
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.025.029.i, ptr noundef nonnull align 8 dereferenceable(160) %.031.i, i64 40, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %.031.i, i64 40
  %i.bj = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.be, ptr noundef nonnull align 8 dereferenceable(120) %i.bi) #30 ; 0 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.031.i, i64 160
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i = phi ptr [ %i.bh, %bb.f ], [ %.01630.i, %bb.g ] ; 4 uses
  %.1.i = phi ptr [ %.031.i, %bb.f ], [ %i.bk, %bb.g ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.025.029.i, i64 160 ; 5 uses
  %i.bm = icmp ne ptr %.1.i, %i.bb
  %i.bn = icmp ne ptr %.117.i, %i.bc
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.lr.ph.i36, label %._crit_edge.i, !llvm.loop !23

._crit_edge.i:                                    ; preds = %bb.h
  %i.bp = ptrtoint ptr %i.bb to i64
  %i.bq = ptrtoint ptr %.1.i to i64
  %i.br = sub i64 %i.bp, %i.bq                    ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 0
  br i1 %i.bs, label %.lr.ph.preheader.i.i.i.i.i.i31, label %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.preheader.i.i.i.i.i.i31:                   ; preds = %._crit_edge.i
  %i.bt = udiv exact i64 %i.br, 160
  br label %.lr.ph.i.i.i.i.i.i32

.lr.ph.i.i.i.i.i.i32:                             ; preds = %.lr.ph.i.i.i.i.i.i32, %.lr.ph.preheader.i.i.i.i.i.i31
  %.012.i.i.i.i.i.i33 = phi i64 [ %i.bz, %.lr.ph.i.i.i.i.i.i32 ], [ %i.bt, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 2 uses
  %.0811.i.i.i.i.i.i34 = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i32 ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 3 uses
  %.0910.i.i.i.i.i.i35 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i32 ], [ %.1.i, %.lr.ph.preheader.i.i.i.i.i.i31 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i.i34, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i.i35, i64 40, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 40
  %i.bw = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.bu, ptr noundef nonnull align 8 dereferenceable(120) %i.bv) #30 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i35, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i34, i64 160 ; 2 uses
  %i.bz = add nsw i64 %.012.i.i.i.i.i.i33, -1
  %i.ca = icmp samesign ugt i64 %.012.i.i.i.i.i.i33, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i.i32, label %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !22

_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i32, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %i.bl, %._crit_edge.i ], [ %i.by, %.lr.ph.i.i.i.i.i.i32 ]
  %i.cb = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.cc = ptrtoint ptr %i.bl to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.bl, i64 %i.cd ; 3 uses
  %i.cf = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.cg = ptrtoint ptr %.117.i to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 2 uses
  %i.ci = icmp sgt i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %i.cj = udiv exact i64 %i.ch, 160
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i20.i ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i20.i ], [ %i.ce, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i20.i ], [ %.117.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i23.i, i64 40, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 40
  %i.cl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 40
  %i.cm = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ck, ptr noundef nonnull align 8 dereferenceable(120) %i.cl) #30 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 160
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 160 ; 2 uses
  %i.cp = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.cq = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, !llvm.loop !22

_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit: ; preds = %.lr.ph.i.i.i.i.i20.i, %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i18.i = phi ptr [ %i.ce, %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %i.co, %.lr.ph.i.i.i.i.i20.i ]
  %4 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18.i to i64
  %i.cr = sub i64 %4, %i.cb
  %i.cs = getelementptr inbounds i8, ptr %i.ce, i64 %i.cr ; 2 uses
  %i.ct = sub i64 %i.i, %i.cf
  %i.cu = sdiv exact i64 %i.ct, 160               ; 2 uses
  %.not.i22 = icmp slt i64 %i.cu, %i.ba
  br i1 %.not.i22, label %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit, label %.lr.ph.i21, !llvm.loop !759

_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit
  %.0.lcssa.i23 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit ], [ %i.bc, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ] ; 2 uses
  %.sroa.021.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit ], [ %i.cs, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.lcssa.i24 = phi i64 [ %i.j, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_T2_.exit ], [ %i.cu, %_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_.exit ]
  %.sroa.speculated.i25 = tail call i64 @llvm.smin.i64(i64 %i.k, i64 %.lcssa.i24)
  %i.cv = getelementptr inbounds [160 x i8], ptr %.0.lcssa.i23, i64 %.sroa.speculated.i25 ; 2 uses
  %i.cw = tail call ptr @_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_(ptr noundef %.0.lcssa.i23, ptr noundef %i.cv, ptr noundef %i.cv, ptr noundef nonnull %i.e, ptr %.sroa.021.0.lcssa.i, ptr %3) ; 0 uses
  %i.cx = icmp slt i64 %i.ba, %i.d
  br i1 %i.cx, label %bb.b, label %._crit_edge, !llvm.loop !760

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %6 to ptr                   ; 2 uses
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = udiv exact i64 %i.d, 160
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i, i64 40, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.i = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %i.h) #30 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 160
  %i.k = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 160 ; 3 uses
  %i.l = add nsw i64 %.012.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !22

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 7 uses
  %.sroa.017.026.i = phi ptr [ %.sroa.017.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.013.025.i = phi ptr [ %i.v, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 5 uses
  %.not20.i = icmp eq ptr %.sroa.017.026.i, %2
  br i1 %.not20.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = tail call noundef zeroext i1 %i.a(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026.i, ptr noundef nonnull align 8 dereferenceable(160) %.027.i), !inline_history !761
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 40 ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.013.025.i, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026.i, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 40
  %i.q = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.p) #30 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 160
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.013.025.i, ptr noundef nonnull align 8 dereferenceable(160) %.027.i, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.027.i, i64 40
  %i.t = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.o, ptr noundef nonnull align 8 dereferenceable(120) %i.s) #30 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.027.i, i64 160
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.017.1.i = phi ptr [ %i.r, %bb.d ], [ %.sroa.017.026.i, %bb.e ]
  %.1.i = phi ptr [ %.027.i, %bb.d ], [ %i.u, %bb.e ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.025.i, i64 160
  %.not.i = icmp eq ptr %.1.i, %i.k
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !762

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.w = ptrtoint ptr %i.k to i64
  %i.x = ptrtoint ptr %.027.i to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %.critedge.i
  %i.aa = udiv exact i64 %i.y, 160
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.013.025.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.027.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i.i, i64 40, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 40
  %i.ad = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ab, ptr noundef nonnull align 8 dereferenceable(120) %i.ac) #30 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 160
  %i.ag = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ah = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit, !llvm.loop !22

bb.g:                                             ; preds = %bb.a
  %i.ai = ptrtoint ptr %2 to i64
  %i.aj = ptrtoint ptr %1 to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i.i23, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28

.lr.ph.preheader.i.i.i.i.i23:                     ; preds = %bb.g
  %i.am = udiv exact i64 %i.ak, 160
  br label %.lr.ph.i.i.i.i.i24

.lr.ph.i.i.i.i.i24:                               ; preds = %.lr.ph.i.i.i.i.i24, %.lr.ph.preheader.i.i.i.i.i23
  %.012.i.i.i.i.i25 = phi i64 [ %i.as, %.lr.ph.i.i.i.i.i24 ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i23 ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i24 ], [ %5, %.lr.ph.preheader.i.i.i.i.i23 ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i24 ], [ %1, %.lr.ph.preheader.i.i.i.i.i23 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i26, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i27, i64 40, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 40
  %i.ap = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.an, ptr noundef nonnull align 8 dereferenceable(120) %i.ao) #30 ; 0 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i27, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i26, i64 160 ; 2 uses
  %i.as = add nsw i64 %.012.i.i.i.i.i25, -1
  %i.at = icmp samesign ugt i64 %.012.i.i.i.i.i25, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28: ; preds = %.lr.ph.i.i.i.i.i24, %bb.g
  %.08.lcssa.i.i.i.i.i22 = phi ptr [ %5, %bb.g ], [ %i.ar, %.lr.ph.i.i.i.i.i24 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i22, ptr %2, ptr %i.a)
  br label %_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit

_ZSt21__move_merge_adaptiveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEEvT_SG_T0_SH_T1_T2_.exit: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i, %bb.b, %.critedge.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit28
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.flatbuffers::BinaryRegion", align 8 ; 16 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.n = ptrtoint ptr %0 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.sroa.0.022 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %.sroa.0.0, %bb.h ] ; 7 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.h ] ; 16 uses
  %i.p = call noundef zeroext i1 %2(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.022, ptr noundef nonnull align 8 dereferenceable(160) %0), !inline_history !24
  br i1 %i.p, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.0.022, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 200
  %i.r = load i32, ptr %i.q, align 8, !tbaa !83
  store i32 %i.r, ptr %i.b, align 8, !tbaa !83
  %i.s = getelementptr inbounds nuw i8, ptr %.pn21, i64 208 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !95   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.pn21, i64 224 ; 5 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 216
  %i.x = load i64, ptr %i.w, align 8, !tbaa !85   ; 2 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.u, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
end_hunk_0
begin_hunk_1_@_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEEvT_T0_:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !86
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bi) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !95  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.w
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.bl = load i64, ptr %i.w, align 8, !tbaa !86
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !95  ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.f
  br i1 %i.bo, label %_ZN11flatbuffers12BinaryRegionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
  %i.bp = load i64, ptr %i.f, align 8, !tbaa !86
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #33
  br label %_ZN11flatbuffers12BinaryRegionD2Ev.exit

_ZN11flatbuffers12BinaryRegionD2Ev.exit:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEET0_T_SH_SH_SH_SG_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond25 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond25, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.028 = phi ptr [ %i.k, %bb.d ], [ %4, %bb.a ]  ; 4 uses
  %.sroa.021.027 = phi ptr [ %.sroa.021.1, %bb.d ], [ %0, %bb.a ] ; 5 uses
  %.sroa.017.026 = phi ptr [ %.sroa.017.1, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %i.c = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.021.027), !inline_history !24
  %i.d = getelementptr inbounds nuw i8, ptr %.028, i64 40 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.028, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.017.026, i64 40, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 40
  %i.f = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.e) #30 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 160
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.028, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.021.027, i64 40, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 40
  %i.i = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.d, ptr noundef nonnull align 8 dereferenceable(120) %i.h) #30 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.021.027, i64 160
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.017.1 = phi ptr [ %i.g, %bb.b ], [ %.sroa.017.026, %bb.c ] ; 3 uses
  %.sroa.021.1 = phi ptr [ %.sroa.021.027, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.028, i64 160 ; 2 uses
  %i.l = icmp ne ptr %.sroa.021.1, %1
  %i.m = icmp ne ptr %.sroa.017.1, %3
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !21

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.017.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.017.1, %bb.d ] ; 2 uses
  %.sroa.021.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.021.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.k, %bb.d ] ; 2 uses
  %i.n = ptrtoint ptr %1 to i64
  %i.o = ptrtoint ptr %.sroa.021.0.lcssa to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.r = udiv exact i64 %i.p, 160
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.r, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i.i ], [ %.sroa.021.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.u = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.s, ptr noundef nonnull align 8 dereferenceable(120) %i.t) #30 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 160 ; 2 uses
  %i.x = add nsw i64 %.012.i.i.i.i.i, -1
  %i.y = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.y, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.w, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.z = ptrtoint ptr %3 to i64
  %i.aa = ptrtoint ptr %.sroa.017.0.lcssa to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.preheader.i.i.i.i.i10, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit15

.lr.ph.preheader.i.i.i.i.i10:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %i.ad = udiv exact i64 %i.ab, 160
  br label %.lr.ph.i.i.i.i.i11

.lr.ph.i.i.i.i.i11:                               ; preds = %.lr.ph.i.i.i.i.i11, %.lr.ph.preheader.i.i.i.i.i10
  %.012.i.i.i.i.i12 = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i11 ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i10 ] ; 2 uses
  %.0811.i.i.i.i.i13 = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i11 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i10 ] ; 3 uses
  %.0910.i.i.i.i.i14 = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i11 ], [ %.sroa.017.0.lcssa, %.lr.ph.preheader.i.i.i.i.i10 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i13, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i14, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14, i64 40
  %i.ag = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ae, ptr noundef nonnull align 8 dereferenceable(120) %i.af) #30 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14, i64 160
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13, i64 160 ; 2 uses
  %i.aj = add nsw i64 %.012.i.i.i.i.i12, -1
  %i.ak = icmp samesign ugt i64 %.012.i.i.i.i.i12, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i11, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit15, !llvm.loop !22

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit15: ; preds = %.lr.ph.i.i.i.i.i11, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i9 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.ai, %.lr.ph.i.i.i.i.i11 ]
  ret ptr %.08.lcssa.i.i.i.i.i9
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_comp_iterIPFbRKS1_SC_EEEET0_T_SH_SH_SH_SG_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.031 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.01630 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %.sroa.025.029 = phi ptr [ %i.l, %bb.d ], [ %4, %bb.a ] ; 4 uses
  %i.d = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(160) %.01630, ptr noundef nonnull align 8 dereferenceable(160) %.031), !inline_history !766
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 40 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.025.029, ptr noundef nonnull align 8 dereferenceable(160) %.01630, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.01630, i64 40
  %i.g = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.f) #30 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01630, i64 160
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.sroa.025.029, ptr noundef nonnull align 8 dereferenceable(160) %.031, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %.031, i64 40
  %i.j = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i) #30 ; 0 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.031, i64 160
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.117 = phi ptr [ %i.h, %bb.b ], [ %.01630, %bb.c ] ; 3 uses
  %.1 = phi ptr [ %.031, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.029, i64 160 ; 2 uses
  %i.m = icmp ne ptr %.1, %1
  %i.n = icmp ne ptr %.117, %3
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.025.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.l, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.p = ptrtoint ptr %1 to i64
  %i.q = ptrtoint ptr %.0.lcssa to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %._crit_edge
  %i.t = udiv exact i64 %i.r, 160
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.t, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %.sroa.025.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 40
  %i.w = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.u, ptr noundef nonnull align 8 dereferenceable(120) %i.v) #30 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 160
  %i.y = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 160 ; 2 uses
  %i.z = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aa = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !22

_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.025.0.lcssa, %._crit_edge ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.ab = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 2 uses
  %i.ac = ptrtoint ptr %.sroa.025.0.lcssa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %.sroa.025.0.lcssa, i64 %i.ad ; 3 uses
  %i.af = ptrtoint ptr %3 to i64
  %i.ag = ptrtoint ptr %.016.lcssa to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i19, label %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24

.lr.ph.preheader.i.i.i.i.i19:                     ; preds = %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %i.aj = udiv exact i64 %i.ah, 160
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20, %.lr.ph.preheader.i.i.i.i.i19
  %.012.i.i.i.i.i21 = phi i64 [ %i.ap, %.lr.ph.i.i.i.i.i20 ], [ %i.aj, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i20 ], [ %i.ae, %.lr.ph.preheader.i.i.i.i.i19 ] ; 3 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i20 ], [ %.016.lcssa, %.lr.ph.preheader.i.i.i.i.i19 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %.0811.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(160) %.0910.i.i.i.i.i23, i64 40, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 40
  %i.am = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ak, ptr noundef nonnull align 8 dereferenceable(120) %i.al) #30 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 160
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 160 ; 2 uses
  %i.ap = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.aq = icmp samesign ugt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24, !llvm.loop !22

_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit24: ; preds = %.lr.ph.i.i.i.i.i20, %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i18 = phi ptr [ %i.ae, %_ZSt4moveIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %i.ao, %.lr.ph.i.i.i.i.i20 ]
  %6 = ptrtoint ptr %.08.lcssa.i.i.i.i.i18 to i64
  %i.ar = sub i64 %6, %i.ab
  %i.as = getelementptr inbounds i8, ptr %i.ae, i64 %i.ar
  ret ptr %i.as
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_T0_SH_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.f = udiv exact i64 %i.d, 160
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i ], [ %4, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i ], [ %3, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -160 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -160 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.h, ptr noundef nonnull align 8 dereferenceable(160) %i.g, i64 40, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -120
  %i.j = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -120
  %i.k = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull align 8 dereferenceable(120) %i.j) #30 ; 0 uses
  %i.l = add nsw i64 %.010.i.i.i.i.i, -1
  %i.m = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.m, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !20

bb.c:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %2, %3
  br i1 %i.n, label %_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds i8, ptr %3, i64 -160
  br label %.outer

.outer:                                           ; preds = %bb.f, %bb.d
  %.sroa.025.0.ph = phi ptr [ %4, %bb.d ], [ %i.q, %bb.f ]
  %.sroa.029.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.029.0.ph, %bb.f ] ; 2 uses
  %.0.ph = phi ptr [ %i.o, %bb.d ], [ %.0, %bb.f ]
  %.sroa.029.0.ph = getelementptr inbounds i8, ptr %.sroa.029.0.ph.pn, i64 -160 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.025.0 = phi ptr [ %i.q, %bb.i ], [ %.sroa.025.0.ph, %.outer ] ; 2 uses
  %.0 = phi ptr [ %i.al, %bb.i ], [ %.0.ph, %.outer ] ; 7 uses
  %i.p = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(160) %.0, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.029.0.ph), !inline_history !767
  %i.q = getelementptr inbounds i8, ptr %.sroa.025.0, i64 -160 ; 5 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.025.0, i64 -120 ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %.sroa.029.0.ph, i64 40, i1 false)
  %i.s = getelementptr inbounds i8, ptr %.sroa.029.0.ph.pn, i64 -120
  %i.t = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.r, ptr noundef nonnull align 8 dereferenceable(120) %i.s) #30 ; 0 uses
  %i.u = icmp eq ptr %0, %.sroa.029.0.ph
  br i1 %i.u, label %bb.g, label %.outer, !llvm.loop !768

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 160 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %2 to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader.i.i.i.i.i19, label %_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.preheader.i.i.i.i.i19:                     ; preds = %bb.g
  %i.aa = udiv exact i64 %i.y, 160
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20, %.lr.ph.preheader.i.i.i.i.i19
  %.010.i.i.i.i.i21 = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i20 ], [ %i.aa, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.069.i.i.i.i.i22 = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i20 ], [ %i.q, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %.078.i.i.i.i.i23 = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i20 ], [ %i.v, %.lr.ph.preheader.i.i.i.i.i19 ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23, i64 -160 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22, i64 -160 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ac, ptr noundef nonnull align 8 dereferenceable(160) %i.ab, i64 40, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22, i64 -120
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23, i64 -120
  %i.af = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.ad, ptr noundef nonnull align 8 dereferenceable(120) %i.ae) #30 ; 0 uses
  %i.ag = add nsw i64 %.010.i.i.i.i.i21, -1
  %i.ah = icmp samesign ugt i64 %.010.i.i.i.i.i21, 1
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i20, label %_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !20

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.q, ptr noundef nonnull align 8 dereferenceable(160) %.0, i64 40, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %.0, i64 40
  %i.aj = tail call noundef nonnull align 8 dereferenceable(120) ptr @_ZN11flatbuffers19BinaryRegionCommentaSEOS0_(ptr noundef nonnull align 8 dereferenceable(120) %i.r, ptr noundef nonnull align 8 dereferenceable(120) %i.ai) #30 ; 0 uses
  %i.ak = icmp eq ptr %2, %.0
  br i1 %i.ak, label %_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %.0, i64 -160
  br label %bb.e, !llvm.loop !768

_ZSt13move_backwardIPN11flatbuffers12BinaryRegionEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %bb.h, %.lr.ph.i.i.i.i.i20, %.lr.ph.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIPFbRKS3_SC_EEEEvT_SG_SG_T0_SH_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond86 = or i1 %i.a, %i.b
  br i1 %or.cond86, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8291 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 4 uses
  %.tr8190 = phi i64 [ %3, %.lr.ph ], [ %i.am, %tailrecurse ] ; 4 uses
  %.tr7988 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 7 uses
  %.tr87 = phi ptr [ %0, %.lr.ph ], [ %i.al, %tailrecurse ] ; 7 uses
  %i.d = add nsw i64 %.tr8291, %.tr8190
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(160) %.tr7988, ptr noundef nonnull align 8 dereferenceable(160) %.tr87), !inline_history !24
  br i1 %i.f, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt4swapIN11flatbuffers12BinaryRegionEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(160) %.tr87, ptr noundef nonnull align 8 dereferenceable(160) %.tr7988) #30
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.g = icmp sgt i64 %.tr8190, %.tr8291
  %i.h = ptrtoint ptr %.tr7988 to i64             ; 4 uses
  br i1 %i.g, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.i = sdiv i64 %.tr8190, 2                     ; 2 uses
  %i.j = getelementptr inbounds [160 x i8], ptr %.tr87, i64 %i.i ; 2 uses
  %i.k = sub i64 %i.c, %i.h                       ; 2 uses
  %i.l = icmp sgt i64 %i.k, 0
  br i1 %i.l, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.m = udiv exact i64 %i.k, 160
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.m, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %.sroa.012.016.i = phi ptr [ %.sroa.012.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr7988, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i ] ; 2 uses
  %i.n = lshr i64 %.017.i, 1                      ; 3 uses
  %i.o = getelementptr inbounds nuw [160 x i8], ptr %.sroa.012.016.i, i64 %i.n ; 2 uses
  %i.p = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(160) %i.o, ptr noundef nonnull align 8 dereferenceable(160) %i.j), !inline_history !25 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.r = xor i64 %i.n, -1
  %i.s = add nsw i64 %.017.i, %i.r
  %.sroa.012.1.i = select i1 %i.p, ptr %i.q, ptr %.sroa.012.016.i ; 3 uses
  %.1.i = select i1 %i.p, i64 %i.s, i64 %i.n      ; 2 uses
  %i.t = icmp sgt i64 %.1.i, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, !llvm.loop !26

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.012.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %i.h, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.012.1.i, %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Iter_comp_valIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit.loopexit ], [ %.tr7988, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.u = sub i64 %.pre-phi, %i.h
  %i.v = sdiv exact i64 %i.u, 160
  br label %tailrecurse

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55: ; preds = %bb.e
  %i.w = sdiv i64 %.tr8291, 2                     ; 2 uses
  %i.x = getelementptr inbounds [160 x i8], ptr %.tr7988, i64 %i.w ; 2 uses
  %i.y = ptrtoint ptr %.tr87 to i64               ; 3 uses
  %i.z = sub i64 %i.h, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i57, label %_ZSt13__upper_boundIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEES3_NS0_5__ops14_Val_comp_iterIPFbRKS3_SC_EEEET_SG_SG_RKT0_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i57: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit55
  %i.ab = udiv exact i64 %i.z, 160
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i57
  %.017.i59 = phi i64 [ %.1.i64, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ], [ %i.ab, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i57 ] ; 2 uses
  %.sroa.012.016.i60 = phi ptr [ %.sroa.012.1.i63, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i58 ], [ %.tr87, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPN11flatbuffers12BinaryRegionESt6vectorIS3_SaIS3_EEEElEvRT_T0_St26random_access_iterator_tag.exit.preheader.i57 ] ; 2 uses
  %i.ac = lshr i64 %.017.i59, 1                   ; 3 uses
  %i.ad = getelementptr inbounds nuw [160 x i8], ptr %.sroa.012.016.i60, i64 %i.ac ; 2 uses
  %i.ae = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull align 8 dereferenceable(160) %i.ad), !inline_history !27 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ag = xor i64 %i.ac, -1
  %i.ah = add nsw i64 %.017.i59, %i.ag
  %.sroa.012.1.i63 = select i1 %i.ae, ptr %.sroa.012.016.i60, ptr %i.af ; 3 uses
  %.1.i64 = select i1 %i.ae, i64 %i.ac, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i64, 0
end_hunk_1
