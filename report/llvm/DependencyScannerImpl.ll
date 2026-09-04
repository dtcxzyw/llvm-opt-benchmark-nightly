Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DependencyScannerImpl?download=true
inline.NumInlined: 3690
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_T1_T2_:bb.a
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i48: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i43
  %i.bc = icmp slt i32 %.fr.i.i.i.i.i.i.i46, 0
  br i1 %i.bc, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread24.i53, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i49

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread24.i53: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i48, %.thread.i.i.i.i.i.i.i54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.031.i35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016.029.i37, i64 16, i1 false), !tbaa.struct !39
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.016.029.i37, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw i8, ptr %.031.i35, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !44
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.029.i37, i64 24
  br label %bb.d

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i49: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i48, %.thread.i.i.i.i.i.i.i54
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.031.i35, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.020.030.i36, i64 16, i1 false), !tbaa.struct !39
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i36, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %.031.i35, i64 16
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !44
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.020.030.i36, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i49, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread24.i53
  %.sroa.016.1.i50 = phi ptr [ %i.bg, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread24.i53 ], [ %.sroa.016.029.i37, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i49 ] ; 3 uses
  %.sroa.020.1.i51 = phi ptr [ %.sroa.020.030.i36, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread24.i53 ], [ %i.bk, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread.i49 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.031.i35, i64 24 ; 2 uses
  %i.bm = icmp ne ptr %.sroa.020.1.i51, %i.aw
  %i.bn = icmp ne ptr %.sroa.016.1.i50, %1
  %or.cond.i52 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond.i52, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !1023

.critedge.i17:                                    ; preds = %bb.d, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.016.1.i50, %bb.d ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.063.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i51, %bb.d ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bl, %bb.d ] ; 2 uses
  %i.bo = ptrtoint ptr %i.aw to i64
  %i.bp = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21

.lr.ph.preheader.i.i.i.i.i.i29:                   ; preds = %.critedge.i17
  %i.bs = udiv exact i64 %i.bq, 24
  br label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %.lr.ph.i.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i31 = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i.i32 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i30 ], [ %.0.lcssa.i20, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %.0910.i.i.i.i.i.i33 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i30 ], [ %.sroa.020.0.lcssa.i19, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i32, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i33, i64 16, i1 false), !tbaa.struct !39
  %i.bt = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !38
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 16
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !44
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 24 ; 2 uses
  %i.by = add nsw i64 %.012.i.i.i.i.i.i31, -1
  %i.bz = icmp samesign ugt i64 %.012.i.i.i.i.i.i31, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21, !llvm.loop !0

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21: ; preds = %.lr.ph.i.i.i.i.i.i30, %.critedge.i17
  %.08.lcssa.i.i.i.i.i.i22 = phi ptr [ %.0.lcssa.i20, %.critedge.i17 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i30 ]
  %i.ca = ptrtoint ptr %.sroa.016.0.lcssa.i18 to i64
  %i.cb = sub i64 %i.b, %i.ca                     ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit55

.lr.ph.preheader.i.i.i.i.i10.i24:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21
  %i.cd = udiv exact i64 %i.cb, 24
  br label %.lr.ph.i.i.i.i.i11.i25

.lr.ph.i.i.i.i.i11.i25:                           ; preds = %.lr.ph.i.i.i.i.i11.i25, %.lr.ph.preheader.i.i.i.i.i10.i24
  %.012.i.i.i.i.i12.i26 = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i11.i25 ], [ %i.cd, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 2 uses
  %.0811.i.i.i.i.i13.i27 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i11.i25 ], [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %.0910.i.i.i.i.i14.i28 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i11.i25 ], [ %.sroa.016.0.lcssa.i18, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i13.i27, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i14.i28, i64 16, i1 false), !tbaa.struct !39
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !38
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 24
  %i.cj = add nsw i64 %.012.i.i.i.i.i12.i26, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i11.i25, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit55, !llvm.loop !0

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit55: ; preds = %.lr.ph.i.i.i.i.i11.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEES6_ET0_T_SC_SB_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEElNS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SF_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 24                  ; 2 uses
  %.not77 = icmp slt i64 %i.e, %i.a
  br i1 %.not77, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 24
  %.idx68 = mul nsw i64 %3, 48
  %.not69 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit
  %.sroa.022.079 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit ] ; 2 uses
  %.078 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.078, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.078, i64 %.idx68 ; 4 uses
  br i1 %.not69, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.034.i = phi ptr [ %.1.i, %bb.c ], [ %.078, %bb.b ] ; 6 uses
  %.01633.i = phi ptr [ %.117.i, %bb.c ], [ %i.f, %bb.b ] ; 6 uses
  %.sroa.0.031.i = phi ptr [ %i.t, %bb.c ], [ %.sroa.022.079, %bb.b ] ; 5 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01633.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.034.i, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.h, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.034.i, align 8, !tbaa !37
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %.01633.i, align 8, !tbaa !37
  %i.i = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #25
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.i            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i
  %i.j = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %i.j, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.k = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i, %.thread.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.031.i, ptr noundef nonnull align 8 dereferenceable(24) %.01633.i, i64 16, i1 false), !tbaa.struct !39
  %i.l = getelementptr inbounds nuw i8, ptr %.01633.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %.01633.i, i64 24
  br label %bb.c

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i, %.thread.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.031.i, ptr noundef nonnull align 8 dereferenceable(24) %.034.i, i64 16, i1 false), !tbaa.struct !39
  %i.p = getelementptr inbounds nuw i8, ptr %.034.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 16
  store i64 %i.q, ptr %i.r, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %.034.i, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i
  %.117.i = phi ptr [ %i.o, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i ], [ %.01633.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i ] ; 3 uses
  %.1.i = phi ptr [ %.034.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i ], [ %i.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i, i64 24 ; 2 uses
  %i.u = icmp ne ptr %.1.i, %i.f
  %i.v = icmp ne ptr %.117.i, %i.g
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1025

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.079, %bb.b ], [ %i.t, %bb.c ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.c ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.078, %bb.b ], [ %.1.i, %bb.c ] ; 2 uses
  %i.x = ptrtoint ptr %i.f to i64
  %i.y = ptrtoint ptr %.0.lcssa.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i
  %i.ab = udiv exact i64 %i.z, 24
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !39
  %i.ac = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 16
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ah = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, !llvm.loop !0

_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.aj = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ak = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.016.lcssa.i to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i
  %i.ar = udiv exact i64 %i.ap, 24
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i20.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i20.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i20.i ], [ %.016.lcssa.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i22.i, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i23.i, i64 16, i1 false), !tbaa.struct !39
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 16
  store i64 %i.at, ptr %i.au, align 8, !tbaa !44
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 24 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i, !llvm.loop !0

_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i20.i
  %4 = ptrtoint ptr %i.aw to i64
  br label %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit

_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit: ; preds = %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.aj, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit24.loopexit.i ]
  %i.az = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.aj
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 %i.az ; 2 uses
  %i.bb = sub i64 %i.b, %i.an
  %i.bc = sdiv exact i64 %i.bb, 24                ; 2 uses
  %.not = icmp slt i64 %i.bc, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1026

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit ] ; 2 uses
  %.lcssa75 = phi i64 [ %i.e, %bb.a ], [ %i.bc, %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa75) ; 2 uses
  %.idx70 = mul nsw i64 %.sroa.speculated, 24
  %i.bd = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx70 ; 5 uses
  %i.be = icmp ne i64 %.sroa.speculated, 0
  %i.bf = icmp ne ptr %i.bd, %1
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph.i43, label %._crit_edge.i25

.lr.ph.i43:                                       ; preds = %._crit_edge, %bb.d
  %.034.i44 = phi ptr [ %.1.i60, %bb.d ], [ %.0.lcssa, %._crit_edge ] ; 6 uses
  %.01633.i45 = phi ptr [ %.117.i59, %bb.d ], [ %i.bd, %._crit_edge ] ; 6 uses
  %.sroa.0.031.i46 = phi ptr [ %i.bt, %bb.d ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i47 = getelementptr inbounds nuw i8, ptr %.01633.i45, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i48 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i47, align 8, !tbaa !38 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %.034.i44, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i50 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i49, align 8, !tbaa !38 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i51 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i50, i64 %.sroa.22.0.copyload.i.i.i.i.i48) ; 2 uses
  %i.bh = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i51, 0
  br i1 %i.bh, label %.thread.i.i.i.i.i.i.i62, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i52

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i52: ; preds = %.lr.ph.i43
  %.sroa.0.0.copyload.i.i.i.i.i53 = load ptr, ptr %.034.i44, align 8, !tbaa !37
  %.sroa.01.0.copyload.i.i.i.i.i54 = load ptr, ptr %.01633.i45, align 8, !tbaa !37
  %i.bi = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i54, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i53, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i51) #25
  %.fr.i.i.i.i.i.i.i55 = freeze i32 %i.bi         ; 2 uses
  %.not.not.i.i.i.i.i.i.i56 = icmp eq i32 %.fr.i.i.i.i.i.i.i55, 0
  br i1 %.not.not.i.i.i.i.i.i.i56, label %.thread.i.i.i.i.i.i.i62, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i57

.thread.i.i.i.i.i.i.i62:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i52, %.lr.ph.i43
  %i.bj = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i48, %.sroa.2.0.copyload.i.i.i.i.i50
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i61, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i58

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i57: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i52
  %i.bk = icmp slt i32 %.fr.i.i.i.i.i.i.i55, 0
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i61, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i58

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i61: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i57, %.thread.i.i.i.i.i.i.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.031.i46, ptr noundef nonnull align 8 dereferenceable(24) %.01633.i45, i64 16, i1 false), !tbaa.struct !39
  %i.bl = getelementptr inbounds nuw i8, ptr %.01633.i45, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !38
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i46, i64 16
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %.01633.i45, i64 24
  br label %bb.d

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i58: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.i57, %.thread.i.i.i.i.i.i.i62
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.031.i46, ptr noundef nonnull align 8 dereferenceable(24) %.034.i44, i64 16, i1 false), !tbaa.struct !39
  %i.bp = getelementptr inbounds nuw i8, ptr %.034.i44, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !38
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i46, i64 16
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.034.i44, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i58, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i61
  %.117.i59 = phi ptr [ %i.bo, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i61 ], [ %.01633.i45, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i58 ] ; 3 uses
  %.1.i60 = phi ptr [ %.034.i44, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread28.i61 ], [ %i.bs, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEmES9_EEbT_T0_.exit.thread.i58 ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.031.i46, i64 24 ; 2 uses
  %i.bu = icmp ne ptr %.1.i60, %i.bd
  %i.bv = icmp ne ptr %.117.i59, %1
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph.i43, label %._crit_edge.i25, !llvm.loop !1025

._crit_edge.i25:                                  ; preds = %bb.d, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.bt, %bb.d ] ; 4 uses
  %.016.lcssa.i27 = phi ptr [ %i.bd, %._crit_edge ], [ %.117.i59, %bb.d ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i60, %bb.d ] ; 2 uses
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %._crit_edge.i25
  %i.cb = udiv exact i64 %i.bz, 24
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i40 = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i39 ], [ %i.cb, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.0811.i.i.i.i.i.i41 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %.0910.i.i.i.i.i.i42 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i39 ], [ %.0.lcssa.i28, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i.i41, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i.i42, i64 16, i1 false), !tbaa.struct !39
  %i.cc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 16
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !44
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 24 ; 2 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i.i40, -1
  %i.ci = icmp samesign ugt i64 %.012.i.i.i.i.i.i40, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29, !llvm.loop !0

_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i39, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i39 ]
  %i.cj = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.ck = sub i64 %i.b, %i.cj                     ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.preheader.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit63

.lr.ph.preheader.i.i.i.i.i19.i32:                 ; preds = %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  %i.cm = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.cn = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.co
  %i.cq = udiv exact i64 %i.ck, 24
  br label %.lr.ph.i.i.i.i.i20.i33

.lr.ph.i.i.i.i.i20.i33:                           ; preds = %.lr.ph.i.i.i.i.i20.i33, %.lr.ph.preheader.i.i.i.i.i19.i32
  %.012.i.i.i.i.i21.i34 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cq, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 2 uses
  %.0811.i.i.i.i.i22.i35 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cp, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %.0910.i.i.i.i.i23.i36 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.i33 ], [ %.016.lcssa.i27, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0811.i.i.i.i.i22.i35, ptr noundef nonnull align 8 dereferenceable(24) %.0910.i.i.i.i.i23.i36, i64 16, i1 false), !tbaa.struct !39
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !38
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 16
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !44
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 24
  %i.cw = add nsw i64 %.012.i.i.i.i.i21.i34, -1
  %i.cx = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i20.i33, label %_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit63, !llvm.loop !0

_ZSt12__move_mergeIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEENS5_5__ops15_Iter_comp_iterINS1_10less_firstEEEET0_T_SG_SG_SG_SF_T1_.exit63: ; preds = %.lr.ph.i.i.i.i.i20.i33, %_ZSt4moveIPSt4pairIN4llvm9StringRefEmEN9__gnu_cxx17__normal_iteratorIS4_St6vectorIS3_SaIS3_EEEEET0_T_SC_SB_.exit.i29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterINS3_10less_firstEEEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca %"class.llvm::StringRef", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.020 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.08.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.08.023 = phi ptr [ %.sroa.08.020, %.lr.ph ], [ %.sroa.08.0, %bb.d ] ; 8 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.023, %bb.d ] ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn22, i64 32
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !38 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !38 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !37
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %.sroa.08.023, align 8, !tbaa !37 ; 2 uses
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #25
  %.fr.i.i.i.i.i.i = freeze i32 %i.e              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18, label %.thread.i.i.i.i.i.i._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread_crit_edge

.thread.i.i.i.i.i.i._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread_crit_edge: ; preds = %.thread.i.i.i.i.i.i
  %.sroa.03.0.copyload.i.pre = load ptr, ptr %.sroa.08.023, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.g = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18: ; preds = %.thread.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.023, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn22, i64 40
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.h = ptrtoint ptr %.sroa.08.023 to i64
  %i.i = sub i64 %i.h, %i.b                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIN4llvm9StringRefEmESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclINS_17__normal_iteratorIPSt4pairINS2_9StringRefEmESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.thread18
  %i.k = getelementptr inbounds nuw i8, ptr %.pn22, i64 48
  %i.l = udiv exact i64 %i.i, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
end_hunk_0
