Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFObject?download=true
inline.NumInlined: 14703
inline.NumDeleted: 4647
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_SJ_T0_SK_T1_T2_:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %5, i64 %i.as, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEEvT_SJ_T0_SK_T1_T2_.exit

bb.x:                                             ; preds = %bb.v
  %i.ax = icmp eq i64 %i.as, 8
  br i1 %i.ax, label %bb.y, label %_ZSt21__move_merge_adaptiveIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEEvT_SJ_T0_SK_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.ay = getelementptr inbounds i8, ptr %.sroa.019.0.i, i64 -16
  %i.az = load ptr, ptr %5, align 8, !tbaa !392
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !392
  br label %_ZSt21__move_merge_adaptiveIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEEvT_SJ_T0_SK_T1_T2_.exit

bb.z:                                             ; preds = %bb.t
  %i.ba = load ptr, ptr %.0.i, align 8, !tbaa !392
  store ptr %i.ba, ptr %i.am, align 8, !tbaa !392
  %i.bb = icmp eq ptr %5, %.0.i
  br i1 %i.bb, label %_ZSt21__move_merge_adaptiveIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEEvT_SJ_T0_SK_T1_T2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bc = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.t, !llvm.loop !5035

_ZSt21__move_merge_adaptiveIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEEvT_SJ_T0_SK_T1_T2_.exit: ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %.not28 = icmp slt i64 %i.d, %2
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %2, 3                       ; 2 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us
  %.sroa.024.029.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.024.029.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us, !llvm.loop !5036

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit
  %i.i = phi i64 [ %i.ad, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.024.029 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit ], [ %0, %.lr.ph ] ; 9 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.024.029, i64 %.idx ; 4 uses
  %.sroa.0.018.i = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.sroa.0.018.i, %.lr.ph.i.preheader ] ; 7 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.sroa.024.029, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !392
  %i.l = load ptr, ptr %.sroa.024.029, align 8, !tbaa !392
  %i.m = tail call noundef zeroext i1 %3(ptr noundef %i.k, ptr noundef %i.l) #34, !inline_history !33
  %i.n = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !392 ; 3 uses
  br i1 %i.m, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.o = ptrtoint ptr %.sroa.0.021.i to i64
  %i.p = sub i64 %i.o, %i.i                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = icmp sgt i64 %i.q, 1
  br i1 %i.r, label %bb.c, label %bb.d, !prof !242

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.t = sub nsw i64 0, %i.q
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.u, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.024.029, i64 %i.p, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.v = icmp eq i64 %i.p, 8
  br i1 %i.v, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  %i.x = load ptr, ptr %.sroa.024.029, align 8, !tbaa !392
  store ptr %i.x, ptr %i.w, align 8, !tbaa !392
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.y = load ptr, ptr %.pn20.i, align 8, !tbaa !392
  %i.z = tail call noundef zeroext i1 %3(ptr noundef %i.n, ptr noundef %i.y) #34, !inline_history !34
  br i1 %i.z, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 4 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.f ]
  %i.aa = load ptr, ptr %.sroa.0.010.i.i, align 8, !tbaa !392
  store ptr %i.aa, ptr %.sroa.05.09.i.i, align 8, !tbaa !392
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !392
  %i.ac = tail call noundef zeroext i1 %3(ptr noundef %i.n, ptr noundef %i.ab) #34, !inline_history !34
  br i1 %i.ac, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i, !llvm.loop !35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi ptr [ %.sroa.024.029, %bb.e ], [ %.sroa.024.029, %bb.c ], [ %.sroa.024.029, %bb.d ], [ %.sroa.0.021.i, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.n, ptr %.sink.i, align 8, !tbaa !392
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit, label %.lr.ph.i, !llvm.loop !36

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %i.ad = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ae = sub i64 %i.a, %i.ad
  %i.af = ashr exact i64 %i.ae, 3
  %.not = icmp slt i64 %i.af, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !5036

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us, %bb.a
  %.sroa.024.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit ] ; 9 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us ], [ %i.ad, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.loopexit ]
  %i.ag = icmp eq ptr %.sroa.024.0.lcssa, %1
  %.sroa.0.018.i10 = getelementptr inbounds nuw i8, ptr %.sroa.024.0.lcssa, i64 8 ; 2 uses
  %.not19.i11 = icmp eq ptr %.sroa.0.018.i10, %1
  %or.cond27 = select i1 %i.ag, i1 true, i1 %.not19.i11
  br i1 %or.cond27, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit23, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15
  %.sroa.0.021.i13 = phi ptr [ %.sroa.0.0.i17, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15 ], [ %.sroa.0.018.i10, %._crit_edge ] ; 7 uses
  %.pn20.i14 = phi ptr [ %.sroa.0.021.i13, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15 ], [ %.sroa.024.0.lcssa, %._crit_edge ] ; 4 uses
  %i.ah = load ptr, ptr %.sroa.0.021.i13, align 8, !tbaa !392
  %i.ai = load ptr, ptr %.sroa.024.0.lcssa, align 8, !tbaa !392
  %i.aj = tail call noundef zeroext i1 %3(ptr noundef %i.ah, ptr noundef %i.ai) #34, !inline_history !33
  %i.ak = load ptr, ptr %.sroa.0.021.i13, align 8, !tbaa !392 ; 3 uses
  br i1 %i.aj, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i12
  %i.al = ptrtoint ptr %.sroa.0.021.i13 to i64
  %i.am = sub i64 %i.al, %.lcssa                  ; 3 uses
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 1
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !242

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 16
  %i.aq = sub nsw i64 0, %i.an
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.024.0.lcssa, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.i:                                             ; preds = %bb.g
  %i.as = icmp eq i64 %i.am, 8
  br i1 %i.as, label %bb.j, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 8
  %i.au = load ptr, ptr %.sroa.024.0.lcssa, align 8, !tbaa !392
  store ptr %i.au, ptr %i.at, align 8, !tbaa !392
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.k:                                             ; preds = %.lr.ph.i12
  %i.av = load ptr, ptr %.pn20.i14, align 8, !tbaa !392
  %i.aw = tail call noundef zeroext i1 %3(ptr noundef %i.ak, ptr noundef %i.av) #34, !inline_history !34
  br i1 %i.aw, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

.lr.ph.i.i19:                                     ; preds = %bb.k, %.lr.ph.i.i19
  %.sroa.0.010.i.i20 = phi ptr [ %.sroa.0.0.i.i22, %.lr.ph.i.i19 ], [ %.pn20.i14, %bb.k ] ; 4 uses
  %.sroa.05.09.i.i21 = phi ptr [ %.sroa.0.010.i.i20, %.lr.ph.i.i19 ], [ %.sroa.0.021.i13, %bb.k ]
  %i.ax = load ptr, ptr %.sroa.0.010.i.i20, align 8, !tbaa !392
  store ptr %i.ax, ptr %.sroa.05.09.i.i21, align 8, !tbaa !392
  %.sroa.0.0.i.i22 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i20, i64 -8 ; 2 uses
  %i.ay = load ptr, ptr %.sroa.0.0.i.i22, align 8, !tbaa !392
  %i.az = tail call noundef zeroext i1 %3(ptr noundef %i.ak, ptr noundef %i.ay) #34, !inline_history !34
  br i1 %i.az, label %.lr.ph.i.i19, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15, !llvm.loop !35

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15: ; preds = %.lr.ph.i.i19, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i16 = phi ptr [ %.sroa.024.0.lcssa, %bb.j ], [ %.sroa.024.0.lcssa, %bb.h ], [ %.sroa.024.0.lcssa, %bb.i ], [ %.sroa.0.021.i13, %bb.k ], [ %.sroa.0.010.i.i20, %.lr.ph.i.i19 ]
  store ptr %i.ak, ptr %.sink.i16, align 8, !tbaa !392
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13, i64 8 ; 2 uses
  %.not.i18 = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %.not.i18, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit23, label %.lr.ph.i12, !llvm.loop !36

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit23: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not54 = icmp slt i64 %i.e, %i.a
  br i1 %.not54, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 11 uses
  %.idx48 = shl i64 %3, 4                         ; 2 uses
  %.not49 = icmp eq i64 %.idx, %.idx48
  br i1 %.not49, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.f = icmp sgt i64 %.idx, 8
  %i.g = icmp eq i64 %.idx, 8
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us
  %.056.us = phi ptr [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.040.055.us = phi ptr [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds i8, ptr %.sroa.040.055.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.d, label %bb.b, !prof !242

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.g, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %.sroa.040.055.us, align 8, !tbaa !392
  store ptr %i.i, ptr %.056.us, align 8, !tbaa !392
  %i.j = getelementptr inbounds nuw i8, ptr %.056.us, i64 %.idx
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !392
  store ptr %i.k, ptr %i.j, align 8, !tbaa !392
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.056.us, ptr align 8 %.sroa.040.055.us, i64 %.idx, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.056.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.h, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %5 = getelementptr inbounds i8, ptr %.056.us, i64 %.idx
  %i.m = getelementptr inbounds i8, ptr %5, i64 %.idx ; 2 uses
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = sub i64 %i.b, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.p, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !5037

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit
  %.056 = phi ptr [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.040.055 = phi ptr [ %i.r, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.040.055, i64 %.idx ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.040.055, i64 %.idx48 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.021.i = phi ptr [ %i.v, %.lr.ph.i ], [ %.056, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.015.020.i = phi ptr [ %.sroa.015.1.i, %.lr.ph.i ], [ %.sroa.040.055, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.011.019.i = phi ptr [ %.sroa.011.1.i, %.lr.ph.i ], [ %i.q, %.lr.ph.i.preheader ] ; 3 uses
  %i.s = load ptr, ptr %.sroa.011.019.i, align 8, !tbaa !392
  %i.t = load ptr, ptr %.sroa.015.020.i, align 8, !tbaa !392
  %i.u = tail call noundef zeroext i1 %4(ptr noundef %i.s, ptr noundef %i.t) #34, !inline_history !5038 ; 3 uses
  %.sink.in.i = select i1 %i.u, ptr %.sroa.011.019.i, ptr %.sroa.015.020.i
  %.sroa.011.1.idx.i = select i1 %i.u, i64 8, i64 0
  %.sroa.011.1.i = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i, i64 %.sroa.011.1.idx.i ; 5 uses
  %.sroa.015.1.idx.i = select i1 %i.u, i64 0, i64 8
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i, i64 %.sroa.015.1.idx.i ; 5 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !392
  store ptr %.sink.i, ptr %.021.i, align 8, !tbaa !392
  %i.v = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 4 uses
  %i.w = icmp ne ptr %.sroa.015.1.i, %i.q
  %i.x = icmp ne ptr %.sroa.011.1.i, %i.r
  %or.cond.i = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !5039

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.y = ptrtoint ptr %i.q to i64
  %i.z = ptrtoint ptr %.sroa.015.1.i to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !242

bb.e:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %.sroa.015.1.i, i64 %i.aa, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.critedge.i.loopexit
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.g, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %.sroa.015.1.i, align 8, !tbaa !392
  store ptr %i.ad, ptr %i.v, align 8, !tbaa !392
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 %i.aa ; 3 uses
  %i.af = ptrtoint ptr %i.r to i64                ; 2 uses
  %i.ag = ptrtoint ptr %.sroa.011.1.i to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 4 uses
  %i.ai = icmp sgt i64 %i.ah, 8
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !242

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %.sroa.011.1.i, i64 %i.ah, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %i.aj = icmp eq i64 %i.ah, 8
  br i1 %i.aj, label %bb.j, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %.sroa.011.1.i, align 8, !tbaa !392
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !392
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ah ; 2 uses
  %i.am = sub i64 %i.b, %i.af
  %i.an = ashr exact i64 %i.am, 3                 ; 2 uses
  %.not = icmp slt i64 %i.an, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !5037

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us, %bb.a
  %.sroa.040.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %i.r, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.m, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %i.al, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit ] ; 2 uses
  %.lcssa52 = phi i64 [ %i.e, %bb.a ], [ %i.p, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa52) ; 2 uses
  %.idx50 = shl nsw i64 %.sroa.speculated, 3
  %i.ao = getelementptr inbounds i8, ptr %.sroa.040.0.lcssa, i64 %.idx50 ; 5 uses
  %i.ap = icmp ne i64 %.sroa.speculated, 0
  %i.aq = icmp ne ptr %i.ao, %1
  %or.cond18.i15 = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %or.cond18.i15, label %.lr.ph.i21, label %.critedge.i16

.lr.ph.i21:                                       ; preds = %._crit_edge, %.lr.ph.i21
  %.021.i22 = phi ptr [ %i.au, %.lr.ph.i21 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.015.020.i23 = phi ptr [ %.sroa.015.1.i29, %.lr.ph.i21 ], [ %.sroa.040.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.011.019.i24 = phi ptr [ %.sroa.011.1.i27, %.lr.ph.i21 ], [ %i.ao, %._crit_edge ] ; 3 uses
  %i.ar = load ptr, ptr %.sroa.011.019.i24, align 8, !tbaa !392
  %i.as = load ptr, ptr %.sroa.015.020.i23, align 8, !tbaa !392
  %i.at = tail call noundef zeroext i1 %4(ptr noundef %i.ar, ptr noundef %i.as) #34, !inline_history !5038 ; 3 uses
  %.sink.in.i25 = select i1 %i.at, ptr %.sroa.011.019.i24, ptr %.sroa.015.020.i23
  %.sroa.011.1.idx.i26 = select i1 %i.at, i64 8, i64 0
  %.sroa.011.1.i27 = getelementptr inbounds nuw i8, ptr %.sroa.011.019.i24, i64 %.sroa.011.1.idx.i26 ; 3 uses
  %.sroa.015.1.idx.i28 = select i1 %i.at, i64 0, i64 8
  %.sroa.015.1.i29 = getelementptr inbounds nuw i8, ptr %.sroa.015.020.i23, i64 %.sroa.015.1.idx.i28 ; 3 uses
  %.sink.i30 = load ptr, ptr %.sink.in.i25, align 8, !tbaa !392
  store ptr %.sink.i30, ptr %.021.i22, align 8, !tbaa !392
  %i.au = getelementptr inbounds nuw i8, ptr %.021.i22, i64 8 ; 2 uses
  %i.av = icmp ne ptr %.sroa.015.1.i29, %i.ao
  %i.aw = icmp ne ptr %.sroa.011.1.i27, %1
  %or.cond.i31 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond.i31, label %.lr.ph.i21, label %.critedge.i16, !llvm.loop !5039

.critedge.i16:                                    ; preds = %.lr.ph.i21, %._crit_edge
  %.sroa.011.0.lcssa.i17 = phi ptr [ %i.ao, %._crit_edge ], [ %.sroa.011.1.i27, %.lr.ph.i21 ] ; 3 uses
  %.sroa.015.0.lcssa.i18 = phi ptr [ %.sroa.040.0.lcssa, %._crit_edge ], [ %.sroa.015.1.i29, %.lr.ph.i21 ] ; 3 uses
  %.0.lcssa.i19 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.au, %.lr.ph.i21 ] ; 3 uses
  %i.ax = ptrtoint ptr %i.ao to i64
  %i.ay = ptrtoint ptr %.sroa.015.0.lcssa.i18 to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %i.ba = icmp sgt i64 %i.az, 8
  br i1 %i.ba, label %bb.k, label %bb.l, !prof !242

bb.k:                                             ; preds = %.critedge.i16
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i19, ptr align 8 %.sroa.015.0.lcssa.i18, i64 %i.az, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i20

bb.l:                                             ; preds = %.critedge.i16
  %i.bb = icmp eq i64 %i.az, 8
  br i1 %i.bb, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i20

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %.sroa.015.0.lcssa.i18, align 8, !tbaa !392
  store ptr %i.bc, ptr %.0.lcssa.i19, align 8, !tbaa !392
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i20: ; preds = %bb.m, %bb.l, %bb.k
  %i.bd = getelementptr inbounds i8, ptr %.0.lcssa.i19, i64 %i.az ; 2 uses
  %i.be = ptrtoint ptr %.sroa.011.0.lcssa.i17 to i64
  %i.bf = sub i64 %i.b, %i.be                     ; 3 uses
  %i.bg = icmp sgt i64 %i.bf, 8
  br i1 %i.bg, label %bb.n, label %bb.o, !prof !242

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i20
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bd, ptr align 8 %.sroa.011.0.lcssa.i17, i64 %i.bf, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit32

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i20
  %i.bh = icmp eq i64 %i.bf, 8
  br i1 %i.bh, label %bb.p, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit32

bb.p:                                             ; preds = %bb.o
  %i.bi = load ptr, ptr %.sroa.011.0.lcssa.i17, align 8, !tbaa !392
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !392
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit32

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit32: ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEEvT_SJ_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not50 = icmp slt i64 %i.e, %i.a
  br i1 %.not50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 10 uses
  %.idx44 = shl nsw i64 %3, 4                     ; 2 uses
  %.not45 = icmp eq i64 %.idx, %.idx44
  br i1 %.not45, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 8
  %i.i = icmp eq i64 %.idx, 8
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us
  %.sroa.021.052.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.051.us = phi ptr [ %i.j, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIPFbPKS3_SF_EEEET0_T_SK_SK_SK_SJ_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.051.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.b, !prof !242

bb.b:                                             ; preds = %._crit_edge.i.us
  br i1 %i.g, label %.thread, label %_ZSt4moveIPPN4llvm7objcopy3elf7SegmentEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us

.thread:                                          ; preds = %bb.b
  %i.k = load ptr, ptr %.051.us, align 8, !tbaa !392
  store ptr %i.k, ptr %.sroa.021.052.us, align 8, !tbaa !392
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.021.052.us, i64 %.idx
  br label %bb.e

bb.c:                                             ; preds = %._crit_edge.i.us
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_":bb.a
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.4.i, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !207 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 80
  %.val2.i.i.i.4.i = load i64, ptr %i.ck, align 8, !tbaa !146
  %i.cl = icmp ult i64 %.val.i.i.4.i, %.val2.i.i.i.4.i
  br i1 %i.cl, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i.4.i", !llvm.loop !41

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.03.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.019.i.ptr.4.i, %bb.x ], [ %.sroa.0.09.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.cb, ptr %.sroa.03.0.lcssa.i.i.4.i, align 8, !tbaa !207
  %.pre.i.4.i = load ptr, ptr %.sroa.032.035.i, align 8, !tbaa !207
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.cm = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.cn = sub i64 %i.cm, %i.g                     ; 3 uses
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %bb.z, !prof !242

bb.z:                                             ; preds = %bb.y
  %i.cq = icmp eq i64 %i.cn, 8
  br i1 %i.cq, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ca, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 48
  %i.cs = sub nsw i64 0, %i.co
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cs
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.032.035.i, i64 %i.cn, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %i.cb, ptr %.sroa.032.035.i, align 8, !tbaa !207
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i.4.i"
  %i.cu = phi ptr [ %i.cb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i ], [ %.pre.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i.4.i" ] ; 2 uses
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 48 ; 5 uses
  %i.cv = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 80
  %.val.i.i.5.i = load i64, ptr %i.cw, align 8, !tbaa !146 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 80
  %.val1.i.i.5.i = load i64, ptr %i.cx, align 8, !tbaa !146
  %i.cy = icmp ult i64 %.val.i.i.5.i, %.val1.i.i.5.i
  br i1 %i.cy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 80
  %.val2.i7.i.i.5.i = load i64, ptr %i.da, align 8, !tbaa !146
  %i.db = icmp ult i64 %.val.i.i.5.i, %.val2.i7.i.i.5.i
  br i1 %i.db, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i"

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i.i.5.i ], [ %i.cz, %bb.ad ]
  %.sroa.0.09.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.ad ] ; 3 uses
  %.sroa.03.08.i.i.5.i = phi ptr [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.ad ]
  store ptr %i.dc, ptr %.sroa.03.08.i.i.5.i, align 8, !tbaa !207
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.5.i, i64 -8 ; 2 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !207 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 80
  %.val2.i.i.i.5.i = load i64, ptr %i.de, align 8, !tbaa !146
  %i.df = icmp ult i64 %.val.i.i.5.i, %.val2.i.i.i.5.i
  br i1 %i.df, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i", !llvm.loop !41

bb.ae:                                            ; preds = %bb.ac
  %i.dg = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.dh = sub i64 %i.dg, %i.g                     ; 3 uses
  %i.di = ashr exact i64 %i.dh, 3                 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 1
  br i1 %i.dj, label %bb.ah, label %bb.af, !prof !242

bb.af:                                            ; preds = %bb.ae
  %i.dk = icmp eq i64 %i.dh, 8
  br i1 %i.dk, label %bb.ag, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i"

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cu, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 56
  %i.dm = sub nsw i64 0, %i.di
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.032.035.i, i64 %i.dh, i1 false)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i": ; preds = %.lr.ph.i.i.5.i, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sroa.032.035.sink.i = phi ptr [ %.sroa.032.035.i, %bb.af ], [ %.sroa.0.019.i.ptr.5.i, %bb.ad ], [ %.sroa.032.035.i, %bb.ah ], [ %.sroa.032.035.i, %bb.ag ], [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.cv, ptr %.sroa.032.035.sink.i, align 8, !tbaa !207
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 56 ; 3 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.dq = sub i64 %i.a, %i.dp
  %i.dr = icmp sgt i64 %i.dq, 48
  br i1 %i.dr, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !5068

._crit_edge.i:                                    ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i", %bb.a
  %.sroa.032.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.do, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i" ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.dp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_.exit.i" ]
  %i.ds = icmp eq ptr %.sroa.032.0.lcssa.i, %1
  br i1 %i.ds, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit", label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i, i64 8 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  br i1 %.not17.i12.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %.pre21.i14.i = load ptr, ptr %.sroa.032.0.lcssa.i, align 8, !tbaa !207
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i13.i
  %i.dt = phi ptr [ %.pre21.i14.i, %.lr.ph.i13.i ], [ %i.eo, %bb.ao ] ; 2 uses
  %.sroa.0.019.i15.i = phi ptr [ %.sroa.0.016.i11.i, %.lr.ph.i13.i ], [ %.sroa.0.0.i23.i, %bb.ao ] ; 6 uses
  %.pn18.i16.i = phi ptr [ %.sroa.032.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.0.019.i15.i, %bb.ao ] ; 4 uses
  %i.du = load ptr, ptr %.sroa.0.019.i15.i, align 8, !tbaa !207 ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 80
  %.val.i.i17.i = load i64, ptr %i.dv, align 8, !tbaa !146 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dt, i64 80
  %.val1.i.i18.i = load i64, ptr %i.dw, align 8, !tbaa !146
  %i.dx = icmp ult i64 %.val.i.i17.i, %.val1.i.i18.i
  br i1 %i.dx, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dy = ptrtoint ptr %.sroa.0.019.i15.i to i64
  %i.dz = sub i64 %i.dy, %.lcssa.i                ; 3 uses
  %i.ea = ashr exact i64 %i.dz, 3                 ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, 1
  br i1 %i.eb, label %bb.ak, label %bb.al, !prof !242

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn18.i16.i, i64 16
  %i.ed = sub nsw i64 0, %i.ea
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.032.0.lcssa.i, i64 %i.dz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i

bb.al:                                            ; preds = %bb.aj
  %i.ef = icmp eq i64 %i.dz, 8
  br i1 %i.ef, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i

bb.am:                                            ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn18.i16.i, i64 8
  store ptr %i.dt, ptr %i.eg, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %i.du, ptr %.sroa.032.0.lcssa.i, align 8, !tbaa !207
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %.pn18.i16.i, align 8, !tbaa !207 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 80
  %.val2.i7.i.i19.i = load i64, ptr %i.ei, align 8, !tbaa !146
  %i.ej = icmp ult i64 %.val.i.i17.i, %.val2.i7.i.i19.i
  br i1 %i.ej, label %.lr.ph.i.i25.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i20.i"

.lr.ph.i.i25.i:                                   ; preds = %bb.an, %.lr.ph.i.i25.i
  %i.ek = phi ptr [ %i.el, %.lr.ph.i.i25.i ], [ %i.eh, %bb.an ]
  %.sroa.0.09.i.i26.i = phi ptr [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i25.i ], [ %.pn18.i16.i, %bb.an ] ; 3 uses
  %.sroa.03.08.i.i27.i = phi ptr [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i ], [ %.sroa.0.019.i15.i, %bb.an ]
  store ptr %i.ek, ptr %.sroa.03.08.i.i27.i, align 8, !tbaa !207
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -8 ; 2 uses
  %i.el = load ptr, ptr %.sroa.0.0.i.i28.i, align 8, !tbaa !207 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 80
  %.val2.i.i.i29.i = load i64, ptr %i.em, align 8, !tbaa !146
  %i.en = icmp ult i64 %.val.i.i17.i, %.val2.i.i.i29.i
  br i1 %i.en, label %.lr.ph.i.i25.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i20.i", !llvm.loop !41

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i20.i": ; preds = %.lr.ph.i.i25.i, %bb.an
  %.sroa.03.0.lcssa.i.i21.i = phi ptr [ %.sroa.0.019.i15.i, %bb.an ], [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i ]
  store ptr %i.du, ptr %.sroa.03.0.lcssa.i.i21.i, align 8, !tbaa !207
  %.pre.i22.i = load ptr, ptr %.sroa.032.0.lcssa.i, align 8, !tbaa !207
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i20.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i
  %i.eo = phi ptr [ %i.du, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i ], [ %.pre.i22.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_T0_.exit.i20.i" ]
  %.sroa.0.0.i23.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i15.i, i64 8 ; 2 uses
  %.not.i24.i = icmp eq ptr %.sroa.0.0.i23.i, %1
  br i1 %.not.i24.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit", label %bb.ai, !llvm.loop !42

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit": ; preds = %bb.ao, %._crit_edge.i, %.preheader.i10.i
  %i.ep = icmp sgt i64 %i.d, 7
  br i1 %i.ep, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit"
  %i.eq = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.068 = phi i64 [ 7, %.lr.ph ], [ %i.hi, %"_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ] ; 8 uses
  %i.er = shl nsw i64 %.068, 1                    ; 6 uses
  %.not56.i = icmp slt i64 %i.d, %i.er
  br i1 %.not56.i, label %._crit_edge.i24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.068, 3                      ; 12 uses
  %.idx50.i = shl i64 %.068, 4                    ; 2 uses
  %.not51.i = icmp eq i64 %.idx.i, %.idx50.i
  br i1 %.not51.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.es = icmp sgt i64 %.idx.i, 8
  br i1 %i.es, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !242

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.058.us.i.us = phi ptr [ %3, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.042.057.us.i.us = phi ptr [ %i.et, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058.us.i.us, ptr align 8 %.sroa.042.057.us.i.us, i64 %.idx.i, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.058.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %i.et, i64 %.idx.i, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.a, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ex, %i.er
  br i1 %.not.us.i.us, label %._crit_edge.i24, label %.critedge.i.us.i.us, !llvm.loop !5069

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ey = icmp eq i64 %.idx.i, 8
  br i1 %i.ey, label %.critedge.i.us.i.us57.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us57.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !207
  br label %.critedge.i.us.i.us57

.critedge.i.us.i.us57:                            ; preds = %.critedge.i.us.i.us57.preheader, %.critedge.i.us.i.us57
  %i.ez = phi ptr [ %i.fc, %.critedge.i.us.i.us57 ], [ %.pre, %.critedge.i.us.i.us57.preheader ]
  %.058.us.i.us58 = phi ptr [ %4, %.critedge.i.us.i.us57 ], [ %2, %.critedge.i.us.i.us57.preheader ] ; 3 uses
  %.sroa.042.057.us.i.us59 = phi ptr [ %i.fa, %.critedge.i.us.i.us57 ], [ %0, %.critedge.i.us.i.us57.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us59, i64 8 ; 4 uses
  store ptr %i.ez, ptr %.058.us.i.us58, align 8, !tbaa !207
  %i.fb = getelementptr inbounds nuw i8, ptr %.058.us.i.us58, i64 8
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !207 ; 2 uses
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !207
  %4 = getelementptr inbounds nuw i8, ptr %.058.us.i.us58, i64 16 ; 2 uses
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.a, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3                 ; 2 uses
  %.not.us.i.us61 = icmp slt i64 %i.ff, %i.er
  br i1 %.not.us.i.us61, label %._crit_edge.i24, label %.critedge.i.us.i.us57, !llvm.loop !5069

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.058.us.i = phi ptr [ %i.fh, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.042.057.us.i = phi ptr [ %5, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %5 = getelementptr inbounds i8, ptr %.sroa.042.057.us.i, i64 %.idx.i ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %.058.us.i, i64 %.idx.i
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.idx.i ; 2 uses
  %i.fi = ptrtoint ptr %5 to i64
  %i.fj = sub i64 %i.a, %i.fi
  %i.fk = ashr exact i64 %i.fj, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.fk, %i.er
  br i1 %.not.us.i, label %._crit_edge.i24, label %.critedge.i.us.i, !llvm.loop !5069

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"
  %.058.i = phi ptr [ %i.gi, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.042.057.i = phi ptr [ %i.fm, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx.i ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx50.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.fs, %.lr.ph.i.i21 ], [ %.058.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.042.057.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.fl, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.fn = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fo = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fn, i64 80
  %.val.i.i.i22 = load i64, ptr %i.fp, align 8, !tbaa !146
  %i.fq = getelementptr i8, ptr %i.fo, i64 80
  %.val1.i.i.i23 = load i64, ptr %i.fq, align 8, !tbaa !146
  %i.fr = icmp ult i64 %.val.i.i.i22, %.val1.i.i.i23 ; 3 uses
  %.sink.i.i = select i1 %i.fr, ptr %i.fn, ptr %i.fo
  %.sroa.010.1.idx.i.i = select i1 %i.fr, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.fr, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.sink.i.i, ptr %.020.i.i, align 8, !tbaa !207
  %i.fs = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.ft = icmp ne ptr %.sroa.014.1.i.i, %i.fl
  %i.fu = icmp ne ptr %.sroa.010.1.i.i, %i.fm
  %or.cond.i.i = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !5070

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.fv = ptrtoint ptr %i.fl to i64
  %i.fw = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = icmp sgt i64 %i.fx, 8
  br i1 %i.fy, label %bb.aq, label %bb.ar, !prof !242

bb.aq:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.fx, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.loopexit.i
  %i.fz = icmp eq i64 %i.fx, 8
  br i1 %i.fz, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ga = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !207
  store ptr %i.ga, ptr %i.fs, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %i.fs, i64 %i.fx ; 3 uses
  %i.gc = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.gd = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ge = sub i64 %i.gc, %i.gd                    ; 4 uses
  %i.gf = icmp sgt i64 %i.ge, 8
  br i1 %i.gf, label %bb.at, label %bb.au, !prof !242

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gb, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ge, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.gg = icmp eq i64 %i.ge, 8
  br i1 %i.gg, label %bb.av, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.av:                                            ; preds = %bb.au
  %i.gh = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !207
  store ptr %i.gh, ptr %i.gb, align 8, !tbaa !207
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i": ; preds = %bb.av, %bb.au, %bb.at
  %i.gi = getelementptr inbounds i8, ptr %i.gb, i64 %i.ge ; 2 uses
  %i.gj = sub i64 %i.a, %i.gc
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.gk, %i.er
  br i1 %.not.i, label %._crit_edge.i24, label %.lr.ph.i.preheader.i, !llvm.loop !5069

._crit_edge.i24:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us57, %.critedge.i.us.i.us, %bb.ap
  %.sroa.042.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.et, %.critedge.i.us.i.us ], [ %i.fa, %.critedge.i.us.i.us57 ], [ %5, %.critedge.i.us.i ], [ %i.fm, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %3, %.critedge.i.us.i.us ], [ %4, %.critedge.i.us.i.us57 ], [ %i.fh, %.critedge.i.us.i ], [ %i.gi, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 2 uses
  %.lcssa54.i = phi i64 [ %i.d, %bb.ap ], [ %i.ex, %.critedge.i.us.i.us ], [ %i.ff, %.critedge.i.us.i.us57 ], [ %i.fk, %.critedge.i.us.i ], [ %i.gk, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.068, i64 %.lcssa54.i) ; 2 uses
  %.idx52.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.gl = getelementptr inbounds i8, ptr %.sroa.042.0.lcssa.i, i64 %.idx52.i ; 5 uses
  %i.gm = icmp ne i64 %.sroa.speculated.i, 0
  %i.gn = icmp ne ptr %i.gl, %1
  %or.cond17.i16.i = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i24, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.gt, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i24 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ], [ %.sroa.042.0.lcssa.i, %._crit_edge.i24 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ], [ %i.gl, %._crit_edge.i24 ] ; 2 uses
  %i.go = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !207 ; 2 uses
  %i.gp = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !207 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 80
  %.val.i.i26.i = load i64, ptr %i.gq, align 8, !tbaa !146
  %i.gr = getelementptr i8, ptr %i.gp, i64 80
  %.val1.i.i27.i = load i64, ptr %i.gr, align 8, !tbaa !146
  %i.gs = icmp ult i64 %.val.i.i26.i, %.val1.i.i27.i ; 3 uses
  %.sink.i28.i = select i1 %i.gs, ptr %i.go, ptr %i.gp
  %.sroa.010.1.idx.i29.i = select i1 %i.gs, i64 8, i64 0
  %.sroa.010.1.i30.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i29.i ; 3 uses
  %.sroa.014.1.idx.i31.i = select i1 %i.gs, i64 0, i64 8
  %.sroa.014.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i31.i ; 3 uses
  store ptr %.sink.i28.i, ptr %.020.i23.i, align 8, !tbaa !207
  %i.gt = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.gu = icmp ne ptr %.sroa.014.1.i32.i, %i.gl
  %i.gv = icmp ne ptr %.sroa.010.1.i30.i, %1
  %or.cond.i33.i = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %or.cond.i33.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !5070

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i24
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.gl, %._crit_edge.i24 ], [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.042.0.lcssa.i, %._crit_edge.i24 ], [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i24 ], [ %i.gt, %.lr.ph.i22.i ] ; 3 uses
  %i.gw = ptrtoint ptr %i.gl to i64
  %i.gx = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 4 uses
  %i.gz = icmp sgt i64 %i.gy, 8
  br i1 %i.gz, label %bb.aw, label %bb.ax, !prof !242

bb.aw:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.gy, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ax:                                            ; preds = %.critedge.i17.i
  %i.ha = icmp eq i64 %i.gy, 8
  br i1 %i.ha, label %bb.ay, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ay:                                            ; preds = %bb.ax
  %i.hb = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !207
  store ptr %i.hb, ptr %.0.lcssa.i20.i, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.hc = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.gy ; 2 uses
  %i.hd = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.he = sub i64 %i.a, %i.hd                     ; 3 uses
  %i.hf = icmp sgt i64 %i.he, 8
  br i1 %i.hf, label %bb.az, label %bb.ba, !prof !242

bb.az:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hc, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.he, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.hg = icmp eq i64 %i.he, 8
  br i1 %i.hg, label %bb.bb, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"

bb.bb:                                            ; preds = %bb.ba
  %i.hh = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !207
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !207
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %bb.az, %bb.ba, %bb.bb
  %i.hi = shl nsw i64 %.068, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.hi
  br i1 %.not54.i, label %._crit_edge.i30, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.idx.i26 = shl i64 %.068, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.068, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i26, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i27

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i25
  %i.hj = icmp sgt i64 %.068, 0
  %i.hk = icmp sgt i64 %.idx.i26, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.hn, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.hl, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i26 ; 4 uses
  br i1 %i.hj, label %bb.bc, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !242

bb.bc:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i26, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bc
  %i.hm = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i26 ; 2 uses
  br i1 %i.hk, label %bb.bd, label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i", !prof !612

bb.bd:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hm, ptr nonnull align 8 %i.hl, i64 %.idx.i26, i1 false)
  br label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.bd
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %.idx.i26 ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.eq, %i.ho
  %i.hq = ashr exact i64 %i.hp, 3                 ; 2 uses
  %.not.us.i34 = icmp slt i64 %i.hq, %i.hi
  br i1 %.not.us.i34, label %._crit_edge.i30, label %._crit_edge.i.us.i, !llvm.loop !5071

.lr.ph.i.preheader.i27:                           ; preds = %.lr.ph.i25, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.in, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %0, %.lr.ph.i25 ]
  %.055.i = phi ptr [ %i.hs, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %2, %.lr.ph.i25 ] ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i26 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28, %.lr.ph.i.preheader.i27
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i28 ], [ %.055.i, %.lr.ph.i.preheader.i27 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i28 ], [ %i.hr, %.lr.ph.i.preheader.i27 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.hw, %.lr.ph.i.i28 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i27 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !207 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !207 ; 2 uses
  %i.ht = getelementptr i8, ptr %.016.val.i.i, i64 80
  %.016.val.val.i.i = load i64, ptr %i.ht, align 8, !tbaa !146
  %i.hu = getelementptr i8, ptr %.0.val.i.i, i64 80
  %.0.val.val.i.i = load i64, ptr %i.hu, align 8, !tbaa !146
  %i.hv = icmp ult i64 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.hv, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.hv, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.hv, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !207
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.hx = icmp ne ptr %.1.i.i, %i.hr
  %i.hy = icmp ne ptr %.117.i.i, %i.hs
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %.lr.ph.i.i28, label %._crit_edge.i.loopexit.i, !llvm.loop !5072

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i28
  %i.ia = ptrtoint ptr %i.hr to i64
  %i.ib = ptrtoint ptr %.1.i.i to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 4 uses
  %i.id = icmp sgt i64 %i.ic, 8
  br i1 %i.id, label %bb.be, label %bb.bf, !prof !242

bb.be:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull align 8 %.1.i.i, i64 %i.ic, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ie = icmp eq i64 %i.ic, 8
  br i1 %i.ie, label %bb.bg, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.if = load ptr, ptr %.1.i.i, align 8, !tbaa !207
  store ptr %i.if, ptr %i.hw, align 8, !tbaa !207
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ig = getelementptr inbounds i8, ptr %i.hw, i64 %i.ic ; 3 uses
  %i.ih = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.ii = ptrtoint ptr %.117.i.i to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 4 uses
  %i.ik = icmp sgt i64 %i.ij, 8
  br i1 %i.ik, label %bb.bh, label %bb.bi, !prof !242

bb.bh:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %.117.i.i, i64 %i.ij, i1 false)
  br label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.bi:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.il = icmp eq i64 %i.ij, 8
  br i1 %i.il, label %bb.bj, label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.bj:                                            ; preds = %bb.bi
  %i.im = load ptr, ptr %.117.i.i, align 8, !tbaa !207
  store ptr %i.im, ptr %i.ig, align 8, !tbaa !207
  br label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i": ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.in = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij ; 2 uses
  %i.io = sub i64 %i.eq, %i.ih
  %i.ip = ashr exact i64 %i.io, 3                 ; 2 uses
  %.not.i29 = icmp slt i64 %i.ip, %i.hi
  br i1 %.not.i29, label %._crit_edge.i30, label %.lr.ph.i.preheader.i27, !llvm.loop !5071

._crit_edge.i30:                                  ; preds = %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i31 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.hl, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %i.hs, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.hn, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %i.in, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.hq, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %i.ip, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.sroa.speculated.i32 = tail call i64 @llvm.smin.i64(i64 %i.er, i64 %.lcssa52.i) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_:bb.a
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.4.i, i64 -8 ; 2 uses
  %i.cj = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !207 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 80
  %.val2.i.i.i.4.i = load i64, ptr %i.ck, align 8, !tbaa !146
  %i.cl = icmp ult i64 %.val.i.i.4.i, %.val2.i.i.i.4.i
  br i1 %i.cl, label %.lr.ph.i.i.4.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i.4.i, !llvm.loop !58

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.03.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.019.i.ptr.4.i, %bb.x ], [ %.sroa.0.09.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.cb, ptr %.sroa.03.0.lcssa.i.i.4.i, align 8, !tbaa !207
  %.pre.i.4.i = load ptr, ptr %.sroa.032.035.i, align 8, !tbaa !207
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.cm = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.cn = sub i64 %i.cm, %i.g                     ; 3 uses
  %i.co = ashr exact i64 %i.cn, 3                 ; 2 uses
  %i.cp = icmp sgt i64 %i.co, 1
  br i1 %i.cp, label %bb.ab, label %bb.z, !prof !242

bb.z:                                             ; preds = %bb.y
  %i.cq = icmp eq i64 %i.cn, 8
  br i1 %i.cq, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ca, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 48
  %i.cs = sub nsw i64 0, %i.co
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cs
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ct, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.032.035.i, i64 %i.cn, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %i.cb, ptr %.sroa.032.035.i, align 8, !tbaa !207
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i.4.i
  %i.cu = phi ptr [ %i.cb, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i ], [ %.pre.i.4.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i.4.i ] ; 2 uses
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 48 ; 5 uses
  %i.cv = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 80
  %.val.i.i.5.i = load i64, ptr %i.cw, align 8, !tbaa !146 ; 3 uses
  %i.cx = getelementptr i8, ptr %i.cu, i64 80
  %.val1.i.i.5.i = load i64, ptr %i.cx, align 8, !tbaa !146
  %i.cy = icmp ult i64 %.val.i.i.5.i, %.val1.i.i.5.i
  br i1 %i.cy, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cz = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207 ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 80
  %.val2.i7.i.i.5.i = load i64, ptr %i.da, align 8, !tbaa !146
  %i.db = icmp ult i64 %.val.i.i.5.i, %.val2.i7.i.i.5.i
  br i1 %i.db, label %.lr.ph.i.i.5.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %i.dc = phi ptr [ %i.dd, %.lr.ph.i.i.5.i ], [ %i.cz, %bb.ad ]
  %.sroa.0.09.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.ad ] ; 3 uses
  %.sroa.03.08.i.i.5.i = phi ptr [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.ad ]
  store ptr %i.dc, ptr %.sroa.03.08.i.i.5.i, align 8, !tbaa !207
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.5.i, i64 -8 ; 2 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !207 ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 80
  %.val2.i.i.i.5.i = load i64, ptr %i.de, align 8, !tbaa !146
  %i.df = icmp ult i64 %.val.i.i.5.i, %.val2.i.i.i.5.i
  br i1 %i.df, label %.lr.ph.i.i.5.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i, !llvm.loop !58

bb.ae:                                            ; preds = %bb.ac
  %i.dg = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.dh = sub i64 %i.dg, %i.g                     ; 3 uses
  %i.di = ashr exact i64 %i.dh, 3                 ; 2 uses
  %i.dj = icmp sgt i64 %i.di, 1
  br i1 %i.dj, label %bb.ah, label %bb.af, !prof !242

bb.af:                                            ; preds = %bb.ae
  %i.dk = icmp eq i64 %i.dh, 8
  br i1 %i.dk, label %bb.ag, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i

bb.ag:                                            ; preds = %bb.af
  store ptr %i.cu, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i

bb.ah:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 56
  %i.dm = sub nsw i64 0, %i.di
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.dm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.032.035.i, i64 %i.dh, i1 false)
  br label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i: ; preds = %.lr.ph.i.i.5.i, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sroa.032.035.sink.i = phi ptr [ %.sroa.032.035.i, %bb.af ], [ %.sroa.0.019.i.ptr.5.i, %bb.ad ], [ %.sroa.032.035.i, %bb.ah ], [ %.sroa.032.035.i, %bb.ag ], [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.cv, ptr %.sroa.032.035.sink.i, align 8, !tbaa !207
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.032.035.i, i64 56 ; 3 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 3 uses
  %i.dq = sub i64 %i.a, %i.dp
  %i.dr = icmp sgt i64 %i.dq, 48
  br i1 %i.dr, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !7229

._crit_edge.i:                                    ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i, %bb.a
  %.sroa.032.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.do, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.dp, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_.exit.i ]
  %i.ds = icmp eq ptr %.sroa.032.0.lcssa.i, %1
  br i1 %i.ds, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit, label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i, i64 8 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  br i1 %.not17.i12.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %.pre21.i14.i = load ptr, ptr %.sroa.032.0.lcssa.i, align 8, !tbaa !207
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i13.i
  %i.dt = phi ptr [ %.pre21.i14.i, %.lr.ph.i13.i ], [ %i.eo, %bb.ao ] ; 2 uses
  %.sroa.0.019.i15.i = phi ptr [ %.sroa.0.016.i11.i, %.lr.ph.i13.i ], [ %.sroa.0.0.i23.i, %bb.ao ] ; 6 uses
  %.pn18.i16.i = phi ptr [ %.sroa.032.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.0.019.i15.i, %bb.ao ] ; 4 uses
  %i.du = load ptr, ptr %.sroa.0.019.i15.i, align 8, !tbaa !207 ; 4 uses
  %i.dv = getelementptr i8, ptr %i.du, i64 80
  %.val.i.i17.i = load i64, ptr %i.dv, align 8, !tbaa !146 ; 3 uses
  %i.dw = getelementptr i8, ptr %i.dt, i64 80
  %.val1.i.i18.i = load i64, ptr %i.dw, align 8, !tbaa !146
  %i.dx = icmp ult i64 %.val.i.i17.i, %.val1.i.i18.i
  br i1 %i.dx, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.dy = ptrtoint ptr %.sroa.0.019.i15.i to i64
  %i.dz = sub i64 %i.dy, %.lcssa.i                ; 3 uses
  %i.ea = ashr exact i64 %i.dz, 3                 ; 2 uses
  %i.eb = icmp sgt i64 %i.ea, 1
  br i1 %i.eb, label %bb.ak, label %bb.al, !prof !242

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn18.i16.i, i64 16
  %i.ed = sub nsw i64 0, %i.ea
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.032.0.lcssa.i, i64 %i.dz, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i

bb.al:                                            ; preds = %bb.aj
  %i.ef = icmp eq i64 %i.dz, 8
  br i1 %i.ef, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i

bb.am:                                            ; preds = %bb.al
  %i.eg = getelementptr inbounds nuw i8, ptr %.pn18.i16.i, i64 8
  store ptr %i.dt, ptr %i.eg, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %i.du, ptr %.sroa.032.0.lcssa.i, align 8, !tbaa !207
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %.pn18.i16.i, align 8, !tbaa !207 ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 80
  %.val2.i7.i.i19.i = load i64, ptr %i.ei, align 8, !tbaa !146
  %i.ej = icmp ult i64 %.val.i.i17.i, %.val2.i7.i.i19.i
  br i1 %i.ej, label %.lr.ph.i.i25.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i20.i

.lr.ph.i.i25.i:                                   ; preds = %bb.an, %.lr.ph.i.i25.i
  %i.ek = phi ptr [ %i.el, %.lr.ph.i.i25.i ], [ %i.eh, %bb.an ]
  %.sroa.0.09.i.i26.i = phi ptr [ %.sroa.0.0.i.i28.i, %.lr.ph.i.i25.i ], [ %.pn18.i16.i, %bb.an ] ; 3 uses
  %.sroa.03.08.i.i27.i = phi ptr [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i ], [ %.sroa.0.019.i15.i, %bb.an ]
  store ptr %i.ek, ptr %.sroa.03.08.i.i27.i, align 8, !tbaa !207
  %.sroa.0.0.i.i28.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i26.i, i64 -8 ; 2 uses
  %i.el = load ptr, ptr %.sroa.0.0.i.i28.i, align 8, !tbaa !207 ; 2 uses
  %i.em = getelementptr i8, ptr %i.el, i64 80
  %.val2.i.i.i29.i = load i64, ptr %i.em, align 8, !tbaa !146
  %i.en = icmp ult i64 %.val.i.i17.i, %.val2.i.i.i29.i
  br i1 %i.en, label %.lr.ph.i.i25.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i20.i, !llvm.loop !58

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i20.i: ; preds = %.lr.ph.i.i25.i, %bb.an
  %.sroa.03.0.lcssa.i.i21.i = phi ptr [ %.sroa.0.019.i15.i, %bb.an ], [ %.sroa.0.09.i.i26.i, %.lr.ph.i.i25.i ]
  store ptr %i.du, ptr %.sroa.03.0.lcssa.i.i21.i, align 8, !tbaa !207
  %.pre.i22.i = load ptr, ptr %.sroa.032.0.lcssa.i, align 8, !tbaa !207
  br label %bb.ao

bb.ao:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i20.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i
  %i.eo = phi ptr [ %i.du, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i30.i ], [ %.pre.i22.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_T0_.exit.i20.i ]
  %.sroa.0.0.i23.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i15.i, i64 8 ; 2 uses
  %.not.i24.i = icmp eq ptr %.sroa.0.0.i23.i, %1
  br i1 %.not.i24.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit, label %bb.ai, !llvm.loop !59

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit: ; preds = %bb.ao, %._crit_edge.i, %.preheader.i10.i
  %i.ep = icmp sgt i64 %i.d, 7
  br i1 %i.ep, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit
  %i.eq = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEEvSG_SG_T0_T1_T2_.exit
  %.068 = phi i64 [ 7, %.lr.ph ], [ %i.hi, %_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEEvSG_SG_T0_T1_T2_.exit ] ; 8 uses
  %i.er = shl nsw i64 %.068, 1                    ; 6 uses
  %.not56.i = icmp slt i64 %i.d, %i.er
  br i1 %.not56.i, label %._crit_edge.i24, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.068, 3                      ; 12 uses
  %.idx50.i = shl i64 %.068, 4                    ; 2 uses
  %.not51.i = icmp eq i64 %.idx.i, %.idx50.i
  br i1 %.not51.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.es = icmp sgt i64 %.idx.i, 8
  br i1 %i.es, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !242

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.058.us.i.us = phi ptr [ %3, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.042.057.us.i.us = phi ptr [ %i.et, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058.us.i.us, ptr align 8 %.sroa.042.057.us.i.us, i64 %.idx.i, i1 false)
  %i.eu = getelementptr inbounds nuw i8, ptr %.058.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.eu, ptr nonnull align 8 %i.et, i64 %.idx.i, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i ; 2 uses
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.a, %i.ev
  %i.ex = ashr exact i64 %i.ew, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ex, %i.er
  br i1 %.not.us.i.us, label %._crit_edge.i24, label %.critedge.i.us.i.us, !llvm.loop !7230

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ey = icmp eq i64 %.idx.i, 8
  br i1 %i.ey, label %.critedge.i.us.i.us57.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us57.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !207
  br label %.critedge.i.us.i.us57

.critedge.i.us.i.us57:                            ; preds = %.critedge.i.us.i.us57.preheader, %.critedge.i.us.i.us57
  %i.ez = phi ptr [ %i.fc, %.critedge.i.us.i.us57 ], [ %.pre, %.critedge.i.us.i.us57.preheader ]
  %.058.us.i.us58 = phi ptr [ %4, %.critedge.i.us.i.us57 ], [ %2, %.critedge.i.us.i.us57.preheader ] ; 3 uses
  %.sroa.042.057.us.i.us59 = phi ptr [ %i.fa, %.critedge.i.us.i.us57 ], [ %0, %.critedge.i.us.i.us57.preheader ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us59, i64 8 ; 4 uses
  store ptr %i.ez, ptr %.058.us.i.us58, align 8, !tbaa !207
  %i.fb = getelementptr inbounds nuw i8, ptr %.058.us.i.us58, i64 8
  %i.fc = load ptr, ptr %i.fa, align 8, !tbaa !207 ; 2 uses
  store ptr %i.fc, ptr %i.fb, align 8, !tbaa !207
  %4 = getelementptr inbounds nuw i8, ptr %.058.us.i.us58, i64 16 ; 2 uses
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.a, %i.fd
  %i.ff = ashr exact i64 %i.fe, 3                 ; 2 uses
  %.not.us.i.us61 = icmp slt i64 %i.ff, %i.er
  br i1 %.not.us.i.us61, label %._crit_edge.i24, label %.critedge.i.us.i.us57, !llvm.loop !7230

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.058.us.i = phi ptr [ %i.fh, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.042.057.us.i = phi ptr [ %5, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %5 = getelementptr inbounds i8, ptr %.sroa.042.057.us.i, i64 %.idx.i ; 3 uses
  %i.fg = getelementptr inbounds i8, ptr %.058.us.i, i64 %.idx.i
  %i.fh = getelementptr inbounds i8, ptr %i.fg, i64 %.idx.i ; 2 uses
  %i.fi = ptrtoint ptr %5 to i64
  %i.fj = sub i64 %i.a, %i.fi
  %i.fk = ashr exact i64 %i.fj, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.fk, %i.er
  br i1 %.not.us.i, label %._crit_edge.i24, label %.critedge.i.us.i, !llvm.loop !7230

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i
  %.058.i = phi ptr [ %i.gi, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.042.057.i = phi ptr [ %i.fm, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx.i ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx50.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.fs, %.lr.ph.i.i21 ], [ %.058.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.042.057.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.fl, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.fn = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fo = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fp = getelementptr i8, ptr %i.fn, i64 80
  %.val.i.i.i22 = load i64, ptr %i.fp, align 8, !tbaa !146
  %i.fq = getelementptr i8, ptr %i.fo, i64 80
  %.val1.i.i.i23 = load i64, ptr %i.fq, align 8, !tbaa !146
  %i.fr = icmp ult i64 %.val.i.i.i22, %.val1.i.i.i23 ; 3 uses
  %.sink.i.i = select i1 %i.fr, ptr %i.fn, ptr %i.fo
  %.sroa.010.1.idx.i.i = select i1 %i.fr, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.fr, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.sink.i.i, ptr %.020.i.i, align 8, !tbaa !207
  %i.fs = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.ft = icmp ne ptr %.sroa.014.1.i.i, %i.fl
  %i.fu = icmp ne ptr %.sroa.010.1.i.i, %i.fm
  %or.cond.i.i = select i1 %i.ft, i1 %i.fu, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !7231

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.fv = ptrtoint ptr %i.fl to i64
  %i.fw = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fx = sub i64 %i.fv, %i.fw                    ; 4 uses
  %i.fy = icmp sgt i64 %i.fx, 8
  br i1 %i.fy, label %bb.aq, label %bb.ar, !prof !242

bb.aq:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fs, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.fx, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.loopexit.i
  %i.fz = icmp eq i64 %i.fx, 8
  br i1 %i.fz, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ga = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !207
  store ptr %i.ga, ptr %i.fs, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.gb = getelementptr inbounds i8, ptr %i.fs, i64 %i.fx ; 3 uses
  %i.gc = ptrtoint ptr %i.fm to i64               ; 2 uses
  %i.gd = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ge = sub i64 %i.gc, %i.gd                    ; 4 uses
  %i.gf = icmp sgt i64 %i.ge, 8
  br i1 %i.gf, label %bb.at, label %bb.au, !prof !242

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gb, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ge, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.gg = icmp eq i64 %i.ge, 8
  br i1 %i.gg, label %bb.av, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.av:                                            ; preds = %bb.au
  %i.gh = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !207
  store ptr %i.gh, ptr %i.gb, align 8, !tbaa !207
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i: ; preds = %bb.av, %bb.au, %bb.at
  %i.gi = getelementptr inbounds i8, ptr %i.gb, i64 %i.ge ; 2 uses
  %i.gj = sub i64 %i.a, %i.gc
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.gk, %i.er
  br i1 %.not.i, label %._crit_edge.i24, label %.lr.ph.i.preheader.i, !llvm.loop !7230

._crit_edge.i24:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us57, %.critedge.i.us.i.us, %bb.ap
  %.sroa.042.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.et, %.critedge.i.us.i.us ], [ %i.fa, %.critedge.i.us.i.us57 ], [ %5, %.critedge.i.us.i ], [ %i.fm, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %3, %.critedge.i.us.i.us ], [ %4, %.critedge.i.us.i.us57 ], [ %i.fh, %.critedge.i.us.i ], [ %i.gi, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 2 uses
  %.lcssa54.i = phi i64 [ %i.d, %bb.ap ], [ %i.ex, %.critedge.i.us.i.us ], [ %i.ff, %.critedge.i.us.i.us57 ], [ %i.fk, %.critedge.i.us.i ], [ %i.gk, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.068, i64 %.lcssa54.i) ; 2 uses
  %.idx52.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.gl = getelementptr inbounds i8, ptr %.sroa.042.0.lcssa.i, i64 %.idx52.i ; 5 uses
  %i.gm = icmp ne i64 %.sroa.speculated.i, 0
  %i.gn = icmp ne ptr %i.gl, %1
  %or.cond17.i16.i = select i1 %i.gm, i1 %i.gn, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i24, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.gt, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i24 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ], [ %.sroa.042.0.lcssa.i, %._crit_edge.i24 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ], [ %i.gl, %._crit_edge.i24 ] ; 2 uses
  %i.go = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !207 ; 2 uses
  %i.gp = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !207 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 80
  %.val.i.i26.i = load i64, ptr %i.gq, align 8, !tbaa !146
  %i.gr = getelementptr i8, ptr %i.gp, i64 80
  %.val1.i.i27.i = load i64, ptr %i.gr, align 8, !tbaa !146
  %i.gs = icmp ult i64 %.val.i.i26.i, %.val1.i.i27.i ; 3 uses
  %.sink.i28.i = select i1 %i.gs, ptr %i.go, ptr %i.gp
  %.sroa.010.1.idx.i29.i = select i1 %i.gs, i64 8, i64 0
  %.sroa.010.1.i30.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i29.i ; 3 uses
  %.sroa.014.1.idx.i31.i = select i1 %i.gs, i64 0, i64 8
  %.sroa.014.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i31.i ; 3 uses
  store ptr %.sink.i28.i, ptr %.020.i23.i, align 8, !tbaa !207
  %i.gt = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.gu = icmp ne ptr %.sroa.014.1.i32.i, %i.gl
  %i.gv = icmp ne ptr %.sroa.010.1.i30.i, %1
  %or.cond.i33.i = select i1 %i.gu, i1 %i.gv, i1 false
  br i1 %or.cond.i33.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !7231

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i24
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.gl, %._crit_edge.i24 ], [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.042.0.lcssa.i, %._crit_edge.i24 ], [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i24 ], [ %i.gt, %.lr.ph.i22.i ] ; 3 uses
  %i.gw = ptrtoint ptr %i.gl to i64
  %i.gx = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.gy = sub i64 %i.gw, %i.gx                    ; 4 uses
  %i.gz = icmp sgt i64 %i.gy, 8
  br i1 %i.gz, label %bb.aw, label %bb.ax, !prof !242

bb.aw:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.gy, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ax:                                            ; preds = %.critedge.i17.i
  %i.ha = icmp eq i64 %i.gy, 8
  br i1 %i.ha, label %bb.ay, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ay:                                            ; preds = %bb.ax
  %i.hb = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !207
  store ptr %i.hb, ptr %.0.lcssa.i20.i, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.hc = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.gy ; 2 uses
  %i.hd = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.he = sub i64 %i.a, %i.hd                     ; 3 uses
  %i.hf = icmp sgt i64 %i.he, 8
  br i1 %i.hf, label %bb.az, label %bb.ba, !prof !242

bb.az:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hc, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.he, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.hg = icmp eq i64 %i.he, 8
  br i1 %i.hg, label %bb.bb, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit

bb.bb:                                            ; preds = %bb.ba
  %i.hh = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !207
  store ptr %i.hh, ptr %i.hc, align 8, !tbaa !207
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit: ; preds = %bb.az, %bb.ba, %bb.bb
  %i.hi = shl nsw i64 %.068, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.hi
  br i1 %.not54.i, label %._crit_edge.i30, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit
  %.idx.i26 = shl i64 %.068, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.068, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i26, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i27

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i25
  %i.hj = icmp sgt i64 %.068, 0
  %i.hk = icmp sgt i64 %.idx.i26, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.hn, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.hl, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i26 ; 4 uses
  br i1 %i.hj, label %bb.bc, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !242

bb.bc:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i26, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bc
  %i.hm = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i26 ; 2 uses
  br i1 %i.hk, label %bb.bd, label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i, !prof !612

bb.bd:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hm, ptr nonnull align 8 %i.hl, i64 %.idx.i26, i1 false)
  br label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i

_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i: ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.bd
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %.idx.i26 ; 2 uses
  %i.ho = ptrtoint ptr %i.hl to i64
  %i.hp = sub i64 %i.eq, %i.ho
  %i.hq = ashr exact i64 %i.hp, 3                 ; 2 uses
  %.not.us.i34 = icmp slt i64 %i.hq, %i.hi
  br i1 %.not.us.i34, label %._crit_edge.i30, label %._crit_edge.i.us.i, !llvm.loop !7232

.lr.ph.i.preheader.i27:                           ; preds = %.lr.ph.i25, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i
  %.sroa.022.056.i = phi ptr [ %i.in, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %0, %.lr.ph.i25 ]
  %.055.i = phi ptr [ %i.hs, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %2, %.lr.ph.i25 ] ; 3 uses
  %i.hr = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i26 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i28

.lr.ph.i.i28:                                     ; preds = %.lr.ph.i.i28, %.lr.ph.i.preheader.i27
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i28 ], [ %.055.i, %.lr.ph.i.preheader.i27 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i28 ], [ %i.hr, %.lr.ph.i.preheader.i27 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.hw, %.lr.ph.i.i28 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i27 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !207 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !207 ; 2 uses
  %i.ht = getelementptr i8, ptr %.016.val.i.i, i64 80
  %.016.val.val.i.i = load i64, ptr %i.ht, align 8, !tbaa !146
  %i.hu = getelementptr i8, ptr %.0.val.i.i, i64 80
  %.0.val.val.i.i = load i64, ptr %i.hu, align 8, !tbaa !146
  %i.hv = icmp ult i64 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.hv, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.hv, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.hv, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !207
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.hx = icmp ne ptr %.1.i.i, %i.hr
  %i.hy = icmp ne ptr %.117.i.i, %i.hs
  %i.hz = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %i.hz, label %.lr.ph.i.i28, label %._crit_edge.i.loopexit.i, !llvm.loop !7233

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i28
  %i.ia = ptrtoint ptr %i.hr to i64
  %i.ib = ptrtoint ptr %.1.i.i to i64
  %i.ic = sub i64 %i.ia, %i.ib                    ; 4 uses
  %i.id = icmp sgt i64 %i.ic, 8
  br i1 %i.id, label %bb.be, label %bb.bf, !prof !242

bb.be:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hw, ptr nonnull align 8 %.1.i.i, i64 %i.ic, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.ie = icmp eq i64 %i.ic, 8
  br i1 %i.ie, label %bb.bg, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.if = load ptr, ptr %.1.i.i, align 8, !tbaa !207
  store ptr %i.if, ptr %i.hw, align 8, !tbaa !207
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.ig = getelementptr inbounds i8, ptr %i.hw, i64 %i.ic ; 3 uses
  %i.ih = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.ii = ptrtoint ptr %.117.i.i to i64
  %i.ij = sub i64 %i.ih, %i.ii                    ; 4 uses
  %i.ik = icmp sgt i64 %i.ij, 8
  br i1 %i.ik, label %bb.bh, label %bb.bi, !prof !242

bb.bh:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ig, ptr nonnull align 8 %.117.i.i, i64 %i.ij, i1 false)
  br label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.bi:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.il = icmp eq i64 %i.ij, 8
  br i1 %i.il, label %bb.bj, label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.im = load ptr, ptr %.117.i.i, align 8, !tbaa !207
  store ptr %i.im, ptr %i.ig, align 8, !tbaa !207
  br label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i: ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.in = getelementptr inbounds i8, ptr %i.ig, i64 %i.ij ; 2 uses
  %i.io = sub i64 %i.eq, %i.ih
  %i.ip = ashr exact i64 %i.io, 3                 ; 2 uses
  %.not.i29 = icmp slt i64 %i.ip, %i.hi
  br i1 %.not.i29, label %._crit_edge.i30, label %.lr.ph.i.preheader.i27, !llvm.loop !7232

._crit_edge.i30:                                  ; preds = %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit
  %.0.lcssa.i31 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit ], [ %i.hl, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %i.hs, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit ], [ %i.hn, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %i.in, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit ], [ %i.hq, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %i.ip, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ]
  %.sroa.speculated.i32 = tail call i64 @llvm.smin.i64(i64 %i.er, i64 %.lcssa52.i) ; 2 uses
end_hunk_2
