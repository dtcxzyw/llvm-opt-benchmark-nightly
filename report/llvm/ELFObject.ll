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
  br label %bb.t, !llvm.loop !5060

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
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf7SegmentESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIPFbPKS5_SF_EEEEvT_SJ_T0_.exit.us, !llvm.loop !5061

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
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !5061

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
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !5062

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
  %i.u = tail call noundef zeroext i1 %4(ptr noundef %i.s, ptr noundef %i.t) #34, !inline_history !5063 ; 3 uses
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
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i.loopexit, !llvm.loop !5064

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
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !5062

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
  %i.at = tail call noundef zeroext i1 %4(ptr noundef %i.ar, ptr noundef %i.as) #34, !inline_history !5063 ; 3 uses
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
  br i1 %or.cond.i31, label %.lr.ph.i21, label %.critedge.i16, !llvm.loop !5064

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
  store ptr %i.bi, ptr %.sink.i.3.i, align 8, !tbaa !207
  %.sroa.0.019.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 40 ; 7 uses
  %i.cc = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207 ; 2 uses
  %i.cd = load ptr, ptr %.sroa.029.032.i, align 8, !tbaa !207 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 80
  %.val.i.i.4.i = load i64, ptr %i.ce, align 8, !tbaa !146 ; 3 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 80
  %.val1.i.i.4.i = load i64, ptr %i.cf, align 8, !tbaa !146
  %i.cg = icmp ult i64 %.val.i.i.4.i, %.val1.i.i.4.i
  br i1 %i.cg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.ch = load ptr, ptr %.sroa.0.019.i.ptr.3.i, align 8, !tbaa !207 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 80
  %.val2.i7.i.i.4.i = load i64, ptr %i.ci, align 8, !tbaa !146
  %i.cj = icmp ult i64 %.val.i.i.4.i, %.val2.i7.i.i.4.i
  br i1 %i.cj, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.u, %.lr.ph.i.i.4.i
  %i.ck = phi ptr [ %i.cl, %.lr.ph.i.i.4.i ], [ %i.ch, %bb.u ]
  %.sroa.0.09.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.3.i, %bb.u ] ; 3 uses
  %.sroa.03.08.i.i.4.i = phi ptr [ %.sroa.0.09.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.u ]
  store ptr %i.ck, ptr %.sroa.03.08.i.i.4.i, align 8, !tbaa !207
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.4.i, i64 -8 ; 2 uses
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !207 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 80
  %.val2.i.i.i.4.i = load i64, ptr %i.cm, align 8, !tbaa !146
  %i.cn = icmp ult i64 %.val.i.i.4.i, %.val2.i.i.i.4.i
  br i1 %i.cn, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, !llvm.loop !41

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.co = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.cp = sub i64 %i.co, %i.g                     ; 3 uses
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 1
  br i1 %i.cr, label %bb.y, label %bb.w, !prof !242

bb.w:                                             ; preds = %bb.v
  %i.cs = icmp eq i64 %i.cp, 8
  br i1 %i.cs, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.x:                                             ; preds = %bb.w
  store ptr %i.cd, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.y:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 48
  %i.cu = sub nsw i64 0, %i.cq
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.029.032.i, i64 %i.cp, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.sink.i.4.i = phi ptr [ %.sroa.029.032.i, %bb.x ], [ %.sroa.029.032.i, %bb.y ], [ %.sroa.029.032.i, %bb.w ], [ %.sroa.0.019.i.ptr.4.i, %bb.u ], [ %.sroa.0.09.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.cc, ptr %.sink.i.4.i, align 8, !tbaa !207
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 48 ; 5 uses
  %i.cw = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207 ; 2 uses
  %i.cx = load ptr, ptr %.sroa.029.032.i, align 8, !tbaa !207 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 80
  %.val.i.i.5.i = load i64, ptr %i.cy, align 8, !tbaa !146 ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 80
  %.val1.i.i.5.i = load i64, ptr %i.cz, align 8, !tbaa !146
  %i.da = icmp ult i64 %.val.i.i.5.i, %.val1.i.i.5.i
  br i1 %i.da, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.db = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 80
  %.val2.i7.i.i.5.i = load i64, ptr %i.dc, align 8, !tbaa !146
  %i.dd = icmp ult i64 %.val.i.i.5.i, %.val2.i7.i.i.5.i
  br i1 %i.dd, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %i.de = phi ptr [ %i.df, %.lr.ph.i.i.5.i ], [ %i.db, %bb.z ]
  %.sroa.0.09.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.03.08.i.i.5.i = phi ptr [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.z ]
  store ptr %i.de, ptr %.sroa.03.08.i.i.5.i, align 8, !tbaa !207
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.5.i, i64 -8 ; 2 uses
  %i.df = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !207 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 80
  %.val2.i.i.i.5.i = load i64, ptr %i.dg, align 8, !tbaa !146
  %i.dh = icmp ult i64 %.val.i.i.5.i, %.val2.i.i.i.5.i
  br i1 %i.dh, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, !llvm.loop !41

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.di = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.dj = sub i64 %i.di, %i.g                     ; 3 uses
  %i.dk = ashr exact i64 %i.dj, 3                 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.ad, label %bb.ab, !prof !242

bb.ab:                                            ; preds = %bb.aa
  %i.dm = icmp eq i64 %i.dj, 8
  br i1 %i.dm, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cx, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 56
  %i.do = sub nsw i64 0, %i.dk
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.029.032.i, i64 %i.dj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.029.032.i, %bb.ac ], [ %.sroa.029.032.i, %bb.ad ], [ %.sroa.029.032.i, %bb.ab ], [ %.sroa.0.019.i.ptr.5.i, %bb.z ], [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.cw, ptr %.sink.i.5.i, align 8, !tbaa !207
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 56 ; 3 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.ds = sub i64 %i.a, %i.dr
  %i.dt = icmp sgt i64 %i.ds, 48
  br i1 %i.dt, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !5093

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, %bb.a
  %.sroa.029.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.dq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.dr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ]
  %i.du = icmp eq ptr %.sroa.029.0.lcssa.i, %1
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa.i, i64 8 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  %or.cond.i = select i1 %i.du, i1 true, i1 %.not17.i12.i
  br i1 %or.cond.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i
  %.sroa.0.019.i14.i = phi ptr [ %.sroa.0.0.i21.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i ], [ %.sroa.0.016.i11.i, %._crit_edge.i ] ; 6 uses
  %.pn18.i15.i = phi ptr [ %.sroa.0.019.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i ], [ %.sroa.029.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.dv = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !207 ; 2 uses
  %i.dw = load ptr, ptr %.sroa.029.0.lcssa.i, align 8, !tbaa !207 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 80
  %.val.i.i16.i = load i64, ptr %i.dx, align 8, !tbaa !146 ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 80
  %.val1.i.i17.i = load i64, ptr %i.dy, align 8, !tbaa !146
  %i.dz = icmp ult i64 %.val.i.i16.i, %.val1.i.i17.i
  br i1 %i.dz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i13.i
  %i.ea = ptrtoint ptr %.sroa.0.019.i14.i to i64
  %i.eb = sub i64 %i.ea, %.lcssa.i                ; 3 uses
  %i.ec = ashr exact i64 %i.eb, 3                 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 1
  br i1 %i.ed, label %bb.af, label %bb.ag, !prof !242

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 16
  %i.ef = sub nsw i64 0, %i.ec
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.029.0.lcssa.i, i64 %i.eb, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

bb.ag:                                            ; preds = %bb.ae
  %i.eh = icmp eq i64 %i.eb, 8
  br i1 %i.eh, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

bb.ah:                                            ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 8
  store ptr %i.dw, ptr %i.ei, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

bb.ai:                                            ; preds = %.lr.ph.i13.i
  %i.ej = load ptr, ptr %.pn18.i15.i, align 8, !tbaa !207 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 80
  %.val2.i7.i.i18.i = load i64, ptr %i.ek, align 8, !tbaa !146
  %i.el = icmp ult i64 %.val.i.i16.i, %.val2.i7.i.i18.i
  br i1 %i.el, label %.lr.ph.i.i23.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

.lr.ph.i.i23.i:                                   ; preds = %bb.ai, %.lr.ph.i.i23.i
  %i.em = phi ptr [ %i.en, %.lr.ph.i.i23.i ], [ %i.ej, %bb.ai ]
  %.sroa.0.09.i.i24.i = phi ptr [ %.sroa.0.0.i.i26.i, %.lr.ph.i.i23.i ], [ %.pn18.i15.i, %bb.ai ] ; 3 uses
  %.sroa.03.08.i.i25.i = phi ptr [ %.sroa.0.09.i.i24.i, %.lr.ph.i.i23.i ], [ %.sroa.0.019.i14.i, %bb.ai ]
  store ptr %i.em, ptr %.sroa.03.08.i.i25.i, align 8, !tbaa !207
  %.sroa.0.0.i.i26.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i24.i, i64 -8 ; 2 uses
  %i.en = load ptr, ptr %.sroa.0.0.i.i26.i, align 8, !tbaa !207 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 80
  %.val2.i.i.i27.i = load i64, ptr %i.eo, align 8, !tbaa !146
  %i.ep = icmp ult i64 %.val.i.i16.i, %.val2.i.i.i27.i
  br i1 %i.ep, label %.lr.ph.i.i23.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i, !llvm.loop !41

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i: ; preds = %.lr.ph.i.i23.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i20.i = phi ptr [ %.sroa.029.0.lcssa.i, %bb.ah ], [ %.sroa.029.0.lcssa.i, %bb.af ], [ %.sroa.029.0.lcssa.i, %bb.ag ], [ %.sroa.0.019.i14.i, %bb.ai ], [ %.sroa.0.09.i.i24.i, %.lr.ph.i.i23.i ]
  store ptr %i.dv, ptr %.sink.i20.i, align 8, !tbaa !207
  %.sroa.0.0.i21.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i14.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %.sroa.0.0.i21.i, %1
  br i1 %.not.i22.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit", label %.lr.ph.i13.i, !llvm.loop !42

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i, %._crit_edge.i
  %i.eq = icmp sgt i64 %i.d, 7
  br i1 %i.eq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_.exit"
  %i.er = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.hj, %"_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ] ; 8 uses
  %i.es = shl nsw i64 %.069, 1                    ; 6 uses
  %.not56.i = icmp slt i64 %i.d, %i.es
  br i1 %.not56.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %.idx.i = shl i64 %.069, 3                      ; 12 uses
  %.idx50.i = shl i64 %.069, 4                    ; 2 uses
  %.not51.i = icmp eq i64 %.idx.i, %.idx50.i
  br i1 %.not51.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.et = icmp sgt i64 %.idx.i, 8
  br i1 %i.et, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !242

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.058.us.i.us = phi ptr [ %3, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.042.057.us.i.us = phi ptr [ %i.eu, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058.us.i.us, ptr align 8 %.sroa.042.057.us.i.us, i64 %.idx.i, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.058.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr nonnull align 8 %i.eu, i64 %.idx.i, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.a, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ey, %i.es
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !5094

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ez = icmp eq i64 %.idx.i, 8
  br i1 %i.ez, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !207
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.fa = phi ptr [ %i.fd, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.058.us.i.us59 = phi ptr [ %4, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 3 uses
  %.sroa.042.057.us.i.us60 = phi ptr [ %i.fb, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us60, i64 8 ; 4 uses
  store ptr %i.fa, ptr %.058.us.i.us59, align 8, !tbaa !207
  %i.fc = getelementptr inbounds nuw i8, ptr %.058.us.i.us59, i64 8
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !207 ; 2 uses
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !207
  %4 = getelementptr inbounds nuw i8, ptr %.058.us.i.us59, i64 16 ; 2 uses
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub i64 %i.a, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.fg, %i.es
  br i1 %.not.us.i.us62, label %._crit_edge.i25, label %.critedge.i.us.i.us58, !llvm.loop !5094

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.058.us.i = phi ptr [ %i.fi, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.042.057.us.i = phi ptr [ %5, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %5 = getelementptr inbounds i8, ptr %.sroa.042.057.us.i, i64 %.idx.i ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %.058.us.i, i64 %.idx.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %.idx.i ; 2 uses
  %i.fj = ptrtoint ptr %5 to i64
  %i.fk = sub i64 %i.a, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.fl, %i.es
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !5094

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"
  %.058.i = phi ptr [ %i.gj, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.042.057.i = phi ptr [ %i.fn, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx.i ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx50.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.ft, %.lr.ph.i.i21 ], [ %.058.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.042.057.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.fm, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.fo = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fp = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 80
  %.val.i.i.i22 = load i64, ptr %i.fq, align 8, !tbaa !146
  %i.fr = getelementptr i8, ptr %i.fp, i64 80
  %.val1.i.i.i23 = load i64, ptr %i.fr, align 8, !tbaa !146
  %i.fs = icmp ult i64 %.val.i.i.i22, %.val1.i.i.i23 ; 3 uses
  %.sink.i.i24 = select i1 %i.fs, ptr %i.fo, ptr %i.fp
  %.sroa.010.1.idx.i.i = select i1 %i.fs, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.fs, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.sink.i.i24, ptr %.020.i.i, align 8, !tbaa !207
  %i.ft = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.fu = icmp ne ptr %.sroa.014.1.i.i, %i.fm
  %i.fv = icmp ne ptr %.sroa.010.1.i.i, %i.fn
  %or.cond.i.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !5095

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.fw = ptrtoint ptr %i.fm to i64
  %i.fx = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 4 uses
  %i.fz = icmp sgt i64 %i.fy, 8
  br i1 %i.fz, label %bb.ak, label %bb.al, !prof !242

bb.ak:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.fy, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  %i.ga = icmp eq i64 %i.fy, 8
  br i1 %i.ga, label %bb.am, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.gb = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !207
  store ptr %i.gb, ptr %i.ft, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.gc = getelementptr inbounds i8, ptr %i.ft, i64 %i.fy ; 3 uses
  %i.gd = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.ge = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = icmp sgt i64 %i.gf, 8
  br i1 %i.gg, label %bb.an, label %bb.ao, !prof !242

bb.an:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.gf, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.gh = icmp eq i64 %i.gf, 8
  br i1 %i.gh, label %bb.ap, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !207
  store ptr %i.gi, ptr %i.gc, align 8, !tbaa !207
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i": ; preds = %bb.ap, %bb.ao, %bb.an
  %i.gj = getelementptr inbounds i8, ptr %i.gc, i64 %i.gf ; 2 uses
  %i.gk = sub i64 %i.a, %i.gd
  %i.gl = ashr exact i64 %i.gk, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.gl, %i.es
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !5094

._crit_edge.i25:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.aj
  %.sroa.042.0.lcssa.i = phi ptr [ %0, %bb.aj ], [ %i.eu, %.critedge.i.us.i.us ], [ %i.fb, %.critedge.i.us.i.us58 ], [ %5, %.critedge.i.us.i ], [ %i.fn, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.aj ], [ %3, %.critedge.i.us.i.us ], [ %4, %.critedge.i.us.i.us58 ], [ %i.fi, %.critedge.i.us.i ], [ %i.gj, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 2 uses
  %.lcssa54.i = phi i64 [ %i.d, %bb.aj ], [ %i.ey, %.critedge.i.us.i.us ], [ %i.fg, %.critedge.i.us.i.us58 ], [ %i.fl, %.critedge.i.us.i ], [ %i.gl, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa54.i) ; 2 uses
  %.idx52.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.gm = getelementptr inbounds i8, ptr %.sroa.042.0.lcssa.i, i64 %.idx52.i ; 5 uses
  %i.gn = icmp ne i64 %.sroa.speculated.i, 0
  %i.go = icmp ne ptr %i.gm, %1
  %or.cond17.i16.i = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i25, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.gu, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ], [ %.sroa.042.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ], [ %i.gm, %._crit_edge.i25 ] ; 2 uses
  %i.gp = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !207 ; 2 uses
  %i.gq = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !207 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 80
  %.val.i.i26.i = load i64, ptr %i.gr, align 8, !tbaa !146
  %i.gs = getelementptr i8, ptr %i.gq, i64 80
  %.val1.i.i27.i = load i64, ptr %i.gs, align 8, !tbaa !146
  %i.gt = icmp ult i64 %.val.i.i26.i, %.val1.i.i27.i ; 3 uses
  %.sink.i28.i = select i1 %i.gt, ptr %i.gp, ptr %i.gq
  %.sroa.010.1.idx.i29.i = select i1 %i.gt, i64 8, i64 0
  %.sroa.010.1.i30.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i29.i ; 3 uses
  %.sroa.014.1.idx.i31.i = select i1 %i.gt, i64 0, i64 8
  %.sroa.014.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i31.i ; 3 uses
  store ptr %.sink.i28.i, ptr %.020.i23.i, align 8, !tbaa !207
  %i.gu = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.gv = icmp ne ptr %.sroa.014.1.i32.i, %i.gm
  %i.gw = icmp ne ptr %.sroa.010.1.i30.i, %1
  %or.cond.i33.i = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond.i33.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !5095

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i25
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.gm, %._crit_edge.i25 ], [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.042.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.gu, %.lr.ph.i22.i ] ; 3 uses
  %i.gx = ptrtoint ptr %i.gm to i64
  %i.gy = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp sgt i64 %i.gz, 8
  br i1 %i.ha, label %bb.aq, label %bb.ar, !prof !242

bb.aq:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.gz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ar:                                            ; preds = %.critedge.i17.i
  %i.hb = icmp eq i64 %i.gz, 8
  br i1 %i.hb, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.as:                                            ; preds = %bb.ar
  %i.hc = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !207
  store ptr %i.hc, ptr %.0.lcssa.i20.i, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.hd = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.gz ; 2 uses
  %i.he = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.hf = sub i64 %i.a, %i.he                     ; 3 uses
  %i.hg = icmp sgt i64 %i.hf, 8
  br i1 %i.hg, label %bb.at, label %bb.au, !prof !242

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hd, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.hf, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.hh = icmp eq i64 %i.hf, 8
  br i1 %i.hh, label %bb.av, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"

bb.av:                                            ; preds = %bb.au
  %i.hi = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !207
  store ptr %i.hi, ptr %i.hd, align 8, !tbaa !207
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit": ; preds = %bb.at, %bb.au, %bb.av
  %i.hj = shl nsw i64 %.069, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.hj
  br i1 %.not54.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.idx.i27 = shl i64 %.069, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i27, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.hk = icmp sgt i64 %.069, 0
  %i.hl = icmp sgt i64 %.idx.i27, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.ho, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.hm, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.hk, label %bb.aw, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !242

bb.aw:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.aw
  %i.hn = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.hl, label %bb.ax, label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i", !prof !612

bb.ax:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr nonnull align 8 %i.hm, i64 %.idx.i27, i1 false)
  br label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.ax
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %.idx.i27 ; 2 uses
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.er, %i.hp
  %i.hr = ashr exact i64 %i.hq, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.hr, %i.hj
  br i1 %.not.us.i35, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !5096

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.io, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %0, %.lr.ph.i26 ]
  %.055.i = phi ptr [ %i.ht, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i27 ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29, %.lr.ph.i.preheader.i28
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i29 ], [ %.055.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i29 ], [ %i.hs, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.hx, %.lr.ph.i.i29 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !207 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !207 ; 2 uses
  %i.hu = getelementptr i8, ptr %.016.val.i.i, i64 80
  %.016.val.val.i.i = load i64, ptr %i.hu, align 8, !tbaa !146
  %i.hv = getelementptr i8, ptr %.0.val.i.i, i64 80
  %.0.val.val.i.i = load i64, ptr %i.hv, align 8, !tbaa !146
  %i.hw = icmp ult i64 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.hw, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.hw, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.hw, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !207
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.hy = icmp ne ptr %.1.i.i, %i.hs
  %i.hz = icmp ne ptr %.117.i.i, %i.ht
  %i.ia = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %i.ia, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !5097

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i29
  %i.ib = ptrtoint ptr %i.hs to i64
  %i.ic = ptrtoint ptr %.1.i.i to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 4 uses
  %i.ie = icmp sgt i64 %i.id, 8
  br i1 %i.ie, label %bb.ay, label %bb.az, !prof !242

bb.ay:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %.1.i.i, i64 %i.id, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.if = icmp eq i64 %i.id, 8
  br i1 %i.if, label %bb.ba, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ig = load ptr, ptr %.1.i.i, align 8, !tbaa !207
  store ptr %i.ig, ptr %i.hx, align 8, !tbaa !207
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ih = getelementptr inbounds i8, ptr %i.hx, i64 %i.id ; 3 uses
  %i.ii = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.ij = ptrtoint ptr %.117.i.i to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 4 uses
  %i.il = icmp sgt i64 %i.ik, 8
  br i1 %i.il, label %bb.bb, label %bb.bc, !prof !242

bb.bb:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull align 8 %.117.i.i, i64 %i.ik, i1 false)
  br label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.bc:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.im = icmp eq i64 %i.ik, 8
  br i1 %i.im, label %bb.bd, label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

bb.bd:                                            ; preds = %bb.bc
  %i.in = load ptr, ptr %.117.i.i, align 8, !tbaa !207
  store ptr %i.in, ptr %i.ih, align 8, !tbaa !207
  br label %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i"

"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i": ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.io = getelementptr inbounds i8, ptr %i.ih, i64 %i.ik ; 2 uses
  %i.ip = sub i64 %i.er, %i.ii
  %i.iq = ashr exact i64 %i.ip, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.iq, %i.hj
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i28, !llvm.loop !5096

._crit_edge.i31:                                  ; preds = %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i", %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit"
  %.0.lcssa.i32 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.hm, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %i.ht, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.ho, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %i.io, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS4_6ObjectEmE3$_0EEEvT_SI_T0_T1_T2_.exit" ], [ %i.hr, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.us.i" ], [ %i.iq, %"_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL30layoutSectionsForOnlyKeepDebugRNS2_6ObjectEmE3$_0EEET0_T_SJ_SJ_SJ_SI_T1_.exit.i" ]
  %.sroa.speculated.i33 = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %.lcssa52.i) ; 2 uses
end_hunk_1
begin_hunk_2_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_:bb.a
  store ptr %i.bi, ptr %.sink.i.3.i, align 8, !tbaa !207
  %.sroa.0.019.i.ptr.4.i = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 40 ; 7 uses
  %i.cc = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207 ; 2 uses
  %i.cd = load ptr, ptr %.sroa.029.032.i, align 8, !tbaa !207 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 80
  %.val.i.i.4.i = load i64, ptr %i.ce, align 8, !tbaa !146 ; 3 uses
  %i.cf = getelementptr i8, ptr %i.cd, i64 80
  %.val1.i.i.4.i = load i64, ptr %i.cf, align 8, !tbaa !146
  %i.cg = icmp ult i64 %.val.i.i.4.i, %.val1.i.i.4.i
  br i1 %i.cg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.ch = load ptr, ptr %.sroa.0.019.i.ptr.3.i, align 8, !tbaa !207 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 80
  %.val2.i7.i.i.4.i = load i64, ptr %i.ci, align 8, !tbaa !146
  %i.cj = icmp ult i64 %.val.i.i.4.i, %.val2.i7.i.i.4.i
  br i1 %i.cj, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

.lr.ph.i.i.4.i:                                   ; preds = %bb.u, %.lr.ph.i.i.4.i
  %i.ck = phi ptr [ %i.cl, %.lr.ph.i.i.4.i ], [ %i.ch, %bb.u ]
  %.sroa.0.09.i.i.4.i = phi ptr [ %.sroa.0.0.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.3.i, %bb.u ] ; 3 uses
  %.sroa.03.08.i.i.4.i = phi ptr [ %.sroa.0.09.i.i.4.i, %.lr.ph.i.i.4.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.u ]
  store ptr %i.ck, ptr %.sroa.03.08.i.i.4.i, align 8, !tbaa !207
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.4.i, i64 -8 ; 2 uses
  %i.cl = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !207 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 80
  %.val2.i.i.i.4.i = load i64, ptr %i.cm, align 8, !tbaa !146
  %i.cn = icmp ult i64 %.val.i.i.4.i, %.val2.i.i.i.4.i
  br i1 %i.cn, label %.lr.ph.i.i.4.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, !llvm.loop !58

bb.v:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.3.i
  %i.co = ptrtoint ptr %.sroa.0.019.i.ptr.4.i to i64
  %i.cp = sub i64 %i.co, %i.g                     ; 3 uses
  %i.cq = ashr exact i64 %i.cp, 3                 ; 2 uses
  %i.cr = icmp sgt i64 %i.cq, 1
  br i1 %i.cr, label %bb.y, label %bb.w, !prof !242

bb.w:                                             ; preds = %bb.v
  %i.cs = icmp eq i64 %i.cp, 8
  br i1 %i.cs, label %bb.x, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.x:                                             ; preds = %bb.w
  store ptr %i.cd, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.y:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 48
  %i.cu = sub nsw i64 0, %i.cq
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cu
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cv, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.029.032.i, i64 %i.cp, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %.lr.ph.i.i.4.i, %bb.y, %bb.x, %bb.w, %bb.u
  %.sink.i.4.i = phi ptr [ %.sroa.029.032.i, %bb.x ], [ %.sroa.029.032.i, %bb.y ], [ %.sroa.029.032.i, %bb.w ], [ %.sroa.0.019.i.ptr.4.i, %bb.u ], [ %.sroa.0.09.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %i.cc, ptr %.sink.i.4.i, align 8, !tbaa !207
  %.sroa.0.019.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 48 ; 5 uses
  %i.cw = load ptr, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207 ; 2 uses
  %i.cx = load ptr, ptr %.sroa.029.032.i, align 8, !tbaa !207 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 80
  %.val.i.i.5.i = load i64, ptr %i.cy, align 8, !tbaa !146 ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cx, i64 80
  %.val1.i.i.5.i = load i64, ptr %i.cz, align 8, !tbaa !146
  %i.da = icmp ult i64 %.val.i.i.5.i, %.val1.i.i.5.i
  br i1 %i.da, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.db = load ptr, ptr %.sroa.0.019.i.ptr.4.i, align 8, !tbaa !207 ; 2 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 80
  %.val2.i7.i.i.5.i = load i64, ptr %i.dc, align 8, !tbaa !146
  %i.dd = icmp ult i64 %.val.i.i.5.i, %.val2.i7.i.i.5.i
  br i1 %i.dd, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

.lr.ph.i.i.5.i:                                   ; preds = %bb.z, %.lr.ph.i.i.5.i
  %i.de = phi ptr [ %i.df, %.lr.ph.i.i.5.i ], [ %i.db, %bb.z ]
  %.sroa.0.09.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.4.i, %bb.z ] ; 3 uses
  %.sroa.03.08.i.i.5.i = phi ptr [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.019.i.ptr.5.i, %bb.z ]
  store ptr %i.de, ptr %.sroa.03.08.i.i.5.i, align 8, !tbaa !207
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.5.i, i64 -8 ; 2 uses
  %i.df = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !207 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 80
  %.val2.i.i.i.5.i = load i64, ptr %i.dg, align 8, !tbaa !146
  %i.dh = icmp ult i64 %.val.i.i.5.i, %.val2.i.i.i.5.i
  br i1 %i.dh, label %.lr.ph.i.i.5.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, !llvm.loop !58

bb.aa:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i
  %i.di = ptrtoint ptr %.sroa.0.019.i.ptr.5.i to i64
  %i.dj = sub i64 %i.di, %i.g                     ; 3 uses
  %i.dk = ashr exact i64 %i.dj, 3                 ; 2 uses
  %i.dl = icmp sgt i64 %i.dk, 1
  br i1 %i.dl, label %bb.ad, label %bb.ab, !prof !242

bb.ab:                                            ; preds = %bb.aa
  %i.dm = icmp eq i64 %i.dj, 8
  br i1 %i.dm, label %bb.ac, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.cx, ptr %.sroa.0.019.i.ptr.5.i, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

bb.ad:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 56
  %i.do = sub nsw i64 0, %i.dk
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dp, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.029.032.i, i64 %i.dj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i: ; preds = %.lr.ph.i.i.5.i, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.sink.i.5.i = phi ptr [ %.sroa.029.032.i, %bb.ac ], [ %.sroa.029.032.i, %bb.ad ], [ %.sroa.029.032.i, %bb.ab ], [ %.sroa.0.019.i.ptr.5.i, %bb.z ], [ %.sroa.0.09.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %i.cw, ptr %.sink.i.5.i, align 8, !tbaa !207
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.029.032.i, i64 56 ; 3 uses
  %i.dr = ptrtoint ptr %i.dq to i64               ; 3 uses
  %i.ds = sub i64 %i.a, %i.dr
  %i.dt = icmp sgt i64 %i.ds, 48
  br i1 %i.dt, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !7259

._crit_edge.i:                                    ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i, %bb.a
  %.sroa.029.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.dq, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ] ; 8 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.dr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.5.i ]
  %i.du = icmp eq ptr %.sroa.029.0.lcssa.i, %1
  %.sroa.0.016.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.029.0.lcssa.i, i64 8 ; 2 uses
  %.not17.i12.i = icmp eq ptr %.sroa.0.016.i11.i, %1
  %or.cond.i = select i1 %i.du, i1 true, i1 %.not17.i12.i
  br i1 %or.cond.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit, label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %._crit_edge.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i
  %.sroa.0.019.i14.i = phi ptr [ %.sroa.0.0.i21.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i ], [ %.sroa.0.016.i11.i, %._crit_edge.i ] ; 6 uses
  %.pn18.i15.i = phi ptr [ %.sroa.0.019.i14.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i ], [ %.sroa.029.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.dv = load ptr, ptr %.sroa.0.019.i14.i, align 8, !tbaa !207 ; 2 uses
  %i.dw = load ptr, ptr %.sroa.029.0.lcssa.i, align 8, !tbaa !207 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dv, i64 80
  %.val.i.i16.i = load i64, ptr %i.dx, align 8, !tbaa !146 ; 3 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 80
  %.val1.i.i17.i = load i64, ptr %i.dy, align 8, !tbaa !146
  %i.dz = icmp ult i64 %.val.i.i16.i, %.val1.i.i17.i
  br i1 %i.dz, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %.lr.ph.i13.i
  %i.ea = ptrtoint ptr %.sroa.0.019.i14.i to i64
  %i.eb = sub i64 %i.ea, %.lcssa.i                ; 3 uses
  %i.ec = ashr exact i64 %i.eb, 3                 ; 2 uses
  %i.ed = icmp sgt i64 %i.ec, 1
  br i1 %i.ed, label %bb.af, label %bb.ag, !prof !242

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 16
  %i.ef = sub nsw i64 0, %i.ec
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %i.ef
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eg, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.029.0.lcssa.i, i64 %i.eb, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

bb.ag:                                            ; preds = %bb.ae
  %i.eh = icmp eq i64 %i.eb, 8
  br i1 %i.eh, label %bb.ah, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

bb.ah:                                            ; preds = %bb.ag
  %i.ei = getelementptr inbounds nuw i8, ptr %.pn18.i15.i, i64 8
  store ptr %i.dw, ptr %i.ei, align 8, !tbaa !207
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

bb.ai:                                            ; preds = %.lr.ph.i13.i
  %i.ej = load ptr, ptr %.pn18.i15.i, align 8, !tbaa !207 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ej, i64 80
  %.val2.i7.i.i18.i = load i64, ptr %i.ek, align 8, !tbaa !146
  %i.el = icmp ult i64 %.val.i.i16.i, %.val2.i7.i.i18.i
  br i1 %i.el, label %.lr.ph.i.i23.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i

.lr.ph.i.i23.i:                                   ; preds = %bb.ai, %.lr.ph.i.i23.i
  %i.em = phi ptr [ %i.en, %.lr.ph.i.i23.i ], [ %i.ej, %bb.ai ]
  %.sroa.0.09.i.i24.i = phi ptr [ %.sroa.0.0.i.i26.i, %.lr.ph.i.i23.i ], [ %.pn18.i15.i, %bb.ai ] ; 3 uses
  %.sroa.03.08.i.i25.i = phi ptr [ %.sroa.0.09.i.i24.i, %.lr.ph.i.i23.i ], [ %.sroa.0.019.i14.i, %bb.ai ]
  store ptr %i.em, ptr %.sroa.03.08.i.i25.i, align 8, !tbaa !207
  %.sroa.0.0.i.i26.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i24.i, i64 -8 ; 2 uses
  %i.en = load ptr, ptr %.sroa.0.0.i.i26.i, align 8, !tbaa !207 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 80
  %.val2.i.i.i27.i = load i64, ptr %i.eo, align 8, !tbaa !146
  %i.ep = icmp ult i64 %.val.i.i16.i, %.val2.i.i.i27.i
  br i1 %i.ep, label %.lr.ph.i.i23.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i, !llvm.loop !58

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i: ; preds = %.lr.ph.i.i23.i, %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.sink.i20.i = phi ptr [ %.sroa.029.0.lcssa.i, %bb.ah ], [ %.sroa.029.0.lcssa.i, %bb.af ], [ %.sroa.029.0.lcssa.i, %bb.ag ], [ %.sroa.0.019.i14.i, %bb.ai ], [ %.sroa.0.09.i.i24.i, %.lr.ph.i.i23.i ]
  store ptr %i.dv, ptr %.sink.i20.i, align 8, !tbaa !207
  %.sroa.0.0.i21.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i14.i, i64 8 ; 2 uses
  %.not.i22.i = icmp eq ptr %.sroa.0.0.i21.i, %1
  br i1 %.not.i22.i, label %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit, label %.lr.ph.i13.i, !llvm.loop !59

_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i19.i, %._crit_edge.i
  %i.eq = icmp sgt i64 %i.d, 7
  br i1 %i.eq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_.exit
  %i.er = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEEvSG_SG_T0_T1_T2_.exit
  %.069 = phi i64 [ 7, %.lr.ph ], [ %i.hj, %_ZSt17__merge_sort_loopIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEEvSG_SG_T0_T1_T2_.exit ] ; 8 uses
  %i.es = shl nsw i64 %.069, 1                    ; 6 uses
  %.not56.i = icmp slt i64 %i.d, %i.es
  br i1 %.not56.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj
  %.idx.i = shl i64 %.069, 3                      ; 12 uses
  %.idx50.i = shl i64 %.069, 4                    ; 2 uses
  %.not51.i = icmp eq i64 %.idx.i, %.idx50.i
  br i1 %.not51.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.et = icmp sgt i64 %.idx.i, 8
  br i1 %i.et, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !242

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.058.us.i.us = phi ptr [ %3, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.042.057.us.i.us = phi ptr [ %i.eu, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.058.us.i.us, ptr align 8 %.sroa.042.057.us.i.us, i64 %.idx.i, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %.058.us.i.us, i64 %.idx.i ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr nonnull align 8 %i.eu, i64 %.idx.i, i1 false)
  %3 = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i ; 2 uses
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = sub i64 %i.a, %i.ew
  %i.ey = ashr exact i64 %i.ex, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.ey, %i.es
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !7260

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ez = icmp eq i64 %.idx.i, 8
  br i1 %i.ez, label %.critedge.i.us.i.us58.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us58.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !207
  br label %.critedge.i.us.i.us58

.critedge.i.us.i.us58:                            ; preds = %.critedge.i.us.i.us58.preheader, %.critedge.i.us.i.us58
  %i.fa = phi ptr [ %i.fd, %.critedge.i.us.i.us58 ], [ %.pre, %.critedge.i.us.i.us58.preheader ]
  %.058.us.i.us59 = phi ptr [ %4, %.critedge.i.us.i.us58 ], [ %2, %.critedge.i.us.i.us58.preheader ] ; 3 uses
  %.sroa.042.057.us.i.us60 = phi ptr [ %i.fb, %.critedge.i.us.i.us58 ], [ %0, %.critedge.i.us.i.us58.preheader ]
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.042.057.us.i.us60, i64 8 ; 4 uses
  store ptr %i.fa, ptr %.058.us.i.us59, align 8, !tbaa !207
  %i.fc = getelementptr inbounds nuw i8, ptr %.058.us.i.us59, i64 8
  %i.fd = load ptr, ptr %i.fb, align 8, !tbaa !207 ; 2 uses
  store ptr %i.fd, ptr %i.fc, align 8, !tbaa !207
  %4 = getelementptr inbounds nuw i8, ptr %.058.us.i.us59, i64 16 ; 2 uses
  %i.fe = ptrtoint ptr %i.fb to i64
  %i.ff = sub i64 %i.a, %i.fe
  %i.fg = ashr exact i64 %i.ff, 3                 ; 2 uses
  %.not.us.i.us62 = icmp slt i64 %i.fg, %i.es
  br i1 %.not.us.i.us62, label %._crit_edge.i25, label %.critedge.i.us.i.us58, !llvm.loop !7260

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.058.us.i = phi ptr [ %i.fi, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.042.057.us.i = phi ptr [ %5, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %5 = getelementptr inbounds i8, ptr %.sroa.042.057.us.i, i64 %.idx.i ; 3 uses
  %i.fh = getelementptr inbounds i8, ptr %.058.us.i, i64 %.idx.i
  %i.fi = getelementptr inbounds i8, ptr %i.fh, i64 %.idx.i ; 2 uses
  %i.fj = ptrtoint ptr %5 to i64
  %i.fk = sub i64 %i.a, %i.fj
  %i.fl = ashr exact i64 %i.fk, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.fl, %i.es
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !7260

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i
  %.058.i = phi ptr [ %i.gj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %2, %.lr.ph.i ]
  %.sroa.042.057.i = phi ptr [ %i.fn, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.fm = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx.i ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %.sroa.042.057.i, i64 %.idx50.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.ft, %.lr.ph.i.i21 ], [ %.058.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.042.057.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.fm, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.fo = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fp = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !207 ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fo, i64 80
  %.val.i.i.i22 = load i64, ptr %i.fq, align 8, !tbaa !146
  %i.fr = getelementptr i8, ptr %i.fp, i64 80
  %.val1.i.i.i23 = load i64, ptr %i.fr, align 8, !tbaa !146
  %i.fs = icmp ult i64 %.val.i.i.i22, %.val1.i.i.i23 ; 3 uses
  %.sink.i.i24 = select i1 %i.fs, ptr %i.fo, ptr %i.fp
  %.sroa.010.1.idx.i.i = select i1 %i.fs, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.fs, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.sink.i.i24, ptr %.020.i.i, align 8, !tbaa !207
  %i.ft = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.fu = icmp ne ptr %.sroa.014.1.i.i, %i.fm
  %i.fv = icmp ne ptr %.sroa.010.1.i.i, %i.fn
  %or.cond.i.i = select i1 %i.fu, i1 %i.fv, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !7261

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.fw = ptrtoint ptr %i.fm to i64
  %i.fx = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 4 uses
  %i.fz = icmp sgt i64 %i.fy, 8
  br i1 %i.fz, label %bb.ak, label %bb.al, !prof !242

bb.ak:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ft, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.fy, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.al:                                            ; preds = %.critedge.i.loopexit.i
  %i.ga = icmp eq i64 %i.fy, 8
  br i1 %i.ga, label %bb.am, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.gb = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !207
  store ptr %i.gb, ptr %i.ft, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.gc = getelementptr inbounds i8, ptr %i.ft, i64 %i.fy ; 3 uses
  %i.gd = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.ge = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.gf = sub i64 %i.gd, %i.ge                    ; 4 uses
  %i.gg = icmp sgt i64 %i.gf, 8
  br i1 %i.gg, label %bb.an, label %bb.ao, !prof !242

bb.an:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.gf, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.ao:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.gh = icmp eq i64 %i.gf, 8
  br i1 %i.gh, label %bb.ap, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.ap:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !207
  store ptr %i.gi, ptr %i.gc, align 8, !tbaa !207
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i: ; preds = %bb.ap, %bb.ao, %bb.an
  %i.gj = getelementptr inbounds i8, ptr %i.gc, i64 %i.gf ; 2 uses
  %i.gk = sub i64 %i.a, %i.gd
  %i.gl = ashr exact i64 %i.gk, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.gl, %i.es
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !7260

._crit_edge.i25:                                  ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i, %.critedge.i.us.i, %.critedge.i.us.i.us58, %.critedge.i.us.i.us, %bb.aj
  %.sroa.042.0.lcssa.i = phi ptr [ %0, %bb.aj ], [ %i.eu, %.critedge.i.us.i.us ], [ %i.fb, %.critedge.i.us.i.us58 ], [ %5, %.critedge.i.us.i ], [ %i.fn, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.aj ], [ %3, %.critedge.i.us.i.us ], [ %4, %.critedge.i.us.i.us58 ], [ %i.fi, %.critedge.i.us.i ], [ %i.gj, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 2 uses
  %.lcssa54.i = phi i64 [ %i.d, %bb.aj ], [ %i.ey, %.critedge.i.us.i.us ], [ %i.fg, %.critedge.i.us.i.us58 ], [ %i.fl, %.critedge.i.us.i ], [ %i.gl, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.069, i64 %.lcssa54.i) ; 2 uses
  %.idx52.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.gm = getelementptr inbounds i8, ptr %.sroa.042.0.lcssa.i, i64 %.idx52.i ; 5 uses
  %i.gn = icmp ne i64 %.sroa.speculated.i, 0
  %i.go = icmp ne ptr %i.gm, %1
  %or.cond17.i16.i = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i25, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.gu, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ], [ %.sroa.042.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ], [ %i.gm, %._crit_edge.i25 ] ; 2 uses
  %i.gp = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !207 ; 2 uses
  %i.gq = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !207 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 80
  %.val.i.i26.i = load i64, ptr %i.gr, align 8, !tbaa !146
  %i.gs = getelementptr i8, ptr %i.gq, i64 80
  %.val1.i.i27.i = load i64, ptr %i.gs, align 8, !tbaa !146
  %i.gt = icmp ult i64 %.val.i.i26.i, %.val1.i.i27.i ; 3 uses
  %.sink.i28.i = select i1 %i.gt, ptr %i.gp, ptr %i.gq
  %.sroa.010.1.idx.i29.i = select i1 %i.gt, i64 8, i64 0
  %.sroa.010.1.i30.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i29.i ; 3 uses
  %.sroa.014.1.idx.i31.i = select i1 %i.gt, i64 0, i64 8
  %.sroa.014.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i31.i ; 3 uses
  store ptr %.sink.i28.i, ptr %.020.i23.i, align 8, !tbaa !207
  %i.gu = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.gv = icmp ne ptr %.sroa.014.1.i32.i, %i.gm
  %i.gw = icmp ne ptr %.sroa.010.1.i30.i, %1
  %or.cond.i33.i = select i1 %i.gv, i1 %i.gw, i1 false
  br i1 %or.cond.i33.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !7261

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i25
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.gm, %._crit_edge.i25 ], [ %.sroa.010.1.i30.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.042.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.014.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.gu, %.lr.ph.i22.i ] ; 3 uses
  %i.gx = ptrtoint ptr %i.gm to i64
  %i.gy = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp sgt i64 %i.gz, 8
  br i1 %i.ha, label %bb.aq, label %bb.ar, !prof !242

bb.aq:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.gz, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ar:                                            ; preds = %.critedge.i17.i
  %i.hb = icmp eq i64 %i.gz, 8
  br i1 %i.hb, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.as:                                            ; preds = %bb.ar
  %i.hc = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !207
  store ptr %i.hc, ptr %.0.lcssa.i20.i, align 8, !tbaa !207
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.hd = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.gz ; 2 uses
  %i.he = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.hf = sub i64 %i.a, %i.he                     ; 3 uses
  %i.hg = icmp sgt i64 %i.hf, 8
  br i1 %i.hg, label %bb.at, label %bb.au, !prof !242

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.hd, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.hf, i1 false)
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.hh = icmp eq i64 %i.hf, 8
  br i1 %i.hh, label %bb.av, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit

bb.av:                                            ; preds = %bb.au
  %i.hi = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !207
  store ptr %i.hi, ptr %i.hd, align 8, !tbaa !207
  br label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit: ; preds = %bb.at, %bb.au, %bb.av
  %i.hj = shl nsw i64 %.069, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.hj
  br i1 %.not54.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit
  %.idx.i27 = shl i64 %.069, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.069, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i27, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.hk = icmp sgt i64 %.069, 0
  %i.hl = icmp sgt i64 %.idx.i27, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i, %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.ho, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.hm, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.hm = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.hk, label %bb.aw, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !242

bb.aw:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.aw
  %i.hn = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.hl, label %bb.ax, label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i, !prof !612

bb.ax:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr nonnull align 8 %i.hm, i64 %.idx.i27, i1 false)
  br label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i

_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i: ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.ax
  %i.ho = getelementptr inbounds i8, ptr %i.hn, i64 %.idx.i27 ; 2 uses
  %i.hp = ptrtoint ptr %i.hm to i64
  %i.hq = sub i64 %i.er, %i.hp
  %i.hr = ashr exact i64 %i.hq, 3                 ; 2 uses
  %.not.us.i35 = icmp slt i64 %i.hr, %i.hj
  br i1 %.not.us.i35, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !7262

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i
  %.sroa.022.056.i = phi ptr [ %i.io, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %0, %.lr.ph.i26 ]
  %.055.i = phi ptr [ %i.ht, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i27 ; 3 uses
  %i.ht = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29, %.lr.ph.i.preheader.i28
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i29 ], [ %.055.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i29 ], [ %i.hs, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.hx, %.lr.ph.i.i29 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !207 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !207 ; 2 uses
  %i.hu = getelementptr i8, ptr %.016.val.i.i, i64 80
  %.016.val.val.i.i = load i64, ptr %i.hu, align 8, !tbaa !146
  %i.hv = getelementptr i8, ptr %.0.val.i.i, i64 80
  %.0.val.val.i.i = load i64, ptr %i.hv, align 8, !tbaa !146
  %i.hw = icmp ult i64 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.hw, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.hw, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.hw, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !207
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.hy = icmp ne ptr %.1.i.i, %i.hs
  %i.hz = icmp ne ptr %.117.i.i, %i.ht
  %i.ia = select i1 %i.hy, i1 %i.hz, i1 false
  br i1 %i.ia, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !7263

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i29
  %i.ib = ptrtoint ptr %i.hs to i64
  %i.ic = ptrtoint ptr %.1.i.i to i64
  %i.id = sub i64 %i.ib, %i.ic                    ; 4 uses
  %i.ie = icmp sgt i64 %i.id, 8
  br i1 %i.ie, label %bb.ay, label %bb.az, !prof !242

bb.ay:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hx, ptr nonnull align 8 %.1.i.i, i64 %i.id, i1 false)
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.az:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.if = icmp eq i64 %i.id, 8
  br i1 %i.if, label %bb.ba, label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.ba:                                            ; preds = %bb.az
  %i.ig = load ptr, ptr %.1.i.i, align 8, !tbaa !207
  store ptr %i.ig, ptr %i.hx, align 8, !tbaa !207
  br label %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.ba, %bb.az, %bb.ay
  %i.ih = getelementptr inbounds i8, ptr %i.hx, i64 %i.id ; 3 uses
  %i.ii = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.ij = ptrtoint ptr %.117.i.i to i64
  %i.ik = sub i64 %i.ii, %i.ij                    ; 4 uses
  %i.il = icmp sgt i64 %i.ik, 8
  br i1 %i.il, label %bb.bb, label %bb.bc, !prof !242

bb.bb:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ih, ptr nonnull align 8 %.117.i.i, i64 %i.ik, i1 false)
  br label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.bc:                                            ; preds = %_ZSt4moveIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.im = icmp eq i64 %i.ik, 8
  br i1 %i.im, label %bb.bd, label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.in = load ptr, ptr %.117.i.i, align 8, !tbaa !207
  store ptr %i.in, ptr %i.ih, align 8, !tbaa !207
  br label %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i

_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i: ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.io = getelementptr inbounds i8, ptr %i.ih, i64 %i.ik ; 2 uses
  %i.ip = sub i64 %i.er, %i.ii
  %i.iq = ashr exact i64 %i.ip, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.iq, %i.hj
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i28, !llvm.loop !7262

._crit_edge.i31:                                  ; preds = %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit
  %.0.lcssa.i32 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit ], [ %i.hm, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %i.ht, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit ], [ %i.ho, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %i.io, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4llvm7objcopy3elf11SectionBaseESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL14layoutSectionsINS4_15SectionTableRefEEmT_mEUlPKS5_SI_E_EEEvSG_SG_T0_T1_T2_.exit ], [ %i.hr, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.us.i ], [ %i.iq, %_ZSt12__move_mergeIPPN4llvm7objcopy3elf11SectionBaseEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL14layoutSectionsINS2_15SectionTableRefEEmT_mEUlPKS3_SI_E_EEET0_SG_SG_SG_SG_SL_T1_.exit.i ]
  %.sroa.speculated.i33 = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %.lcssa52.i) ; 2 uses
end_hunk_2
