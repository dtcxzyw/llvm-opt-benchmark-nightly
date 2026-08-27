Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELF_ppc64?download=true
inline.NumInlined: 5955
inline.NumDeleted: 2377
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNSt6vectorIN4llvm15unique_functionIFNS0_5ErrorERNS0_7jitlink9LinkGraphEEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_:bb.a
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !99
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_26DWARFRecordSectionSplitterES8_EET_NS6_8CalledAsIT0_EEENUlPKS6_S5_E_8__invokeESE_S5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(312) %2) #6 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm7jitlink26DWARFRecordSectionSplitterclERNS0_9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(312) %2) #19
  ret void
}

declare void @_ZN4llvm7jitlink26DWARFRecordSectionSplitterclERNS0_9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #5

declare noundef i32 @_ZN4llvm6Triple22getArchPointerBitWidthENS0_8ArchTypeE(i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_16EHFrameEdgeFixerES8_EET_NS6_8CalledAsIT0_EEENUlPKS6_S5_E_8__invokeESE_S5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(312) %2) #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !22, !noalias !2543
  tail call void @_ZN4llvm7jitlink16EHFrameEdgeFixerclERNS0_9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr noundef nonnull align 8 dereferenceable(312) %2) #19
  ret void
}

declare void @_ZN4llvm7jitlink16EHFrameEdgeFixerclERNS0_9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(25), ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_16EHFrameEdgeFixerES8_EET_NS6_8CalledAsIT0_EEENUlPS6_SD_E_8__invokeESD_SD_(ptr noundef %0, ptr noundef %1) #6 comdat align 2 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  br label %_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_16EHFrameEdgeFixerES8_EET_NS6_8CalledAsIT0_EEENKUlPS6_SD_E_clESD_SD_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef 32, i64 noundef 8) #19
  br label %_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_16EHFrameEdgeFixerES8_EET_NS6_8CalledAsIT0_EEENKUlPS6_SD_E_clESD_SD_.exit

_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_16EHFrameEdgeFixerES8_EET_NS6_8CalledAsIT0_EEENKUlPS6_SD_E_clESD_SD_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1INS3_21EHFrameNullTerminatorES8_EET_NS6_8CalledAsIT0_EEENUlPKS6_S5_E_8__invokeESE_S5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(312) %2) #6 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm7jitlink21EHFrameNullTerminatorclERNS0_9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(312) %2) #19
  ret void
}

declare void @_ZN4llvm7jitlink21EHFrameNullTerminatorclERNS0_9LinkGraphE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN4llvm6detail18UniqueFunctionBaseINS_5ErrorEJRNS_7jitlink9LinkGraphEEEC1IPFS2_S5_ES9_EET_NS6_8CalledAsIT0_EEENUlPKS6_S5_E_8__invokeESF_S5_(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(312) %2) #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8, !noalias !2546
  tail call void %i.a(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %2) #19, !inline_history !2549
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph13mergeSectionsERNS0_7SectionES3_b(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1005, !noalias !2550
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1011, !noalias !2550 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1012, !noalias !2550 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1015, !noalias !2550
  %i.j = icmp eq i32 %i.i, 0
  %i.k = zext i32 %i.g to i64                     ; 4 uses
  %.idx47 = shl nuw nsw i64 %i.k, 3               ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.g, 0
  %or.cond.i.i = select i1 %i.j, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = add nuw nsw i64 %i.k, 31
  %i.m = lshr i64 %i.l, 5                         ; 2 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !23, !noalias !2557 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink7Section6blocksEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.c
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %._crit_edge, label %.lr.ph55

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph55
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %._crit_edge, label %.lr.ph55, !llvm.loop !2318

.lr.ph55:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23, !noalias !2557 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !2318

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph55
  %i.w = shl i64 %i.s, 8
  br label %_ZN4llvm7jitlink7Section6blocksEv.exit

_ZN4llvm7jitlink7Section6blocksEv.exit:           ; preds = %bb.c, %._crit_edge.i.loopexit.i.i.i.i
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.w, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.n, %bb.c ], [ %i.u, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.y = shl nuw nsw i32 %i.x, 3
  %.idx = zext nneg i32 %i.y to i64
  %i.z = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx ; 2 uses
  %.not22 = icmp eq i64 %i.z, %.idx47
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm7jitlink7Section6blocksEv.exit
  %i.aa = add nuw nsw i64 %i.k, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %bb.b, %_ZN4llvm7jitlink7Section6blocksEv.exit
  tail call void @_ZN4llvm7jitlink7Section17transferContentToERS1_(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %3, label %bb.g, label %bb.f

bb.d:                                             ; preds = %.lr.ph, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.pn = phi i64 [ %i.z, %.lr.ph ], [ %i.ay, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.012.023 = getelementptr i8, ptr %i.c, i64 %.pn
  %i.ac = load ptr, ptr %.sroa.012.023, align 8, !tbaa !325
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %1, ptr %i.ad, align 8, !tbaa !734
  %i.ae = add i64 %.pn, 8
  %i.af = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.af, %i.k
  br i1 %.not.i.i.i, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.ag = lshr i64 %i.af, 5                       ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aj = trunc nuw i64 %i.af to i32
  %i.ak = and i32 %i.aj, 31
  %i.al = shl nsw i32 -1, %i.ak
  %i.am = and i32 %i.ai, %i.al                    ; 2 uses
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.e
  %i.ao = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.ab
  br i1 %i.ap, label %._crit_edge, label %.lr.ph56

.lr.ph.i.i.i:                                     ; preds = %.lr.ph56
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.ab
  br i1 %i.ar, label %._crit_edge, label %.lr.ph56, !llvm.loop !2318

.lr.ph56:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.as = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.ao, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !23 ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %.lr.ph.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !2318

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph56, %bb.e
  %.012.lcssa.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %i.as, %.lr.ph56 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.am, %bb.e ], [ %i.au, %.lr.ph56 ]
  %i.aw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.ax = shl nuw nsw i32 %i.aw, 3
  %.idx48 = zext nneg i32 %i.ax to i64
  %i.ay = or disjoint i64 %.idx.i.i.i, %.idx48    ; 2 uses
  %.not = icmp eq i64 %i.ay, %.idx47
  br i1 %.not, label %._crit_edge, label %bb.d

bb.f:                                             ; preds = %._crit_edge
  tail call void @_ZN4llvm7jitlink9LinkGraph13removeSectionERNS0_7SectionE(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.422") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !889, !noalias !2560 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !899, !noalias !2560 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !900, !noalias !2560 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !695, !noalias !2560
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 14 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !23, !noalias !2565 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !2283

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23, !noalias !2565 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !2283

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !706, !noalias !2568 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1024, !noalias !2571 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1030, !noalias !2571 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1031, !noalias !2571 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1034, !noalias !2571
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %.idx295 = shl nuw nsw i64 %i.al, 3             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx295
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !23, !noalias !2580 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !2273

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23, !noalias !2580 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !2273

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph307
  %3 = shl i64 %i.at, 8
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d, %._crit_edge.i.loopexit.i.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %3, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.d ], [ %i.av, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %4 = shl nuw nsw i32 %i.ax, 3
  %.idx294 = zext nneg i32 %4 to i64
  %5 = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i, %.idx294 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %5
  %6 = icmp eq i64 %5, %.idx295
  br i1 %6, label %.lr.ph.preheader.a, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.a
  %.in = add nuw nsw i64 %i.j, 31
  %7 = lshr i64 %.in, 5                           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader.a ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %7
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %7
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !2283

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !23 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !2283

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !706, !noalias !2583 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1024, !noalias !2586 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1030, !noalias !2586 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1031, !noalias !2586 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1034, !noalias !2586
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !23, !noalias !2595 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !2273

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !23, !noalias !2595 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !2273

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %bb.a, %.lr.ph.i.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ay, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %2, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ad, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.af, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.z, %.lr.ph.i.a ], [ %i.k, %.lr.ph ], [ %i.k, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %.sroa.8183.0..sroa_idx, align 1
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 1, ptr %.sroa.8198.0..sroa_idx, align 1
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm7jitlink12TableManagerINS0_5ppc6415TOCTableManagerILNS_10endiannessE0EEEE17getEntryForTargetERNS0_9LinkGraphERNS0_6SymbolE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.448", align 8    ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !2337, !noalias !2598 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2349, !noalias !2598 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2350, !noalias !2598 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !809, !noalias !2607 ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = lshr i64 %i.o, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !23, !noalias !2607
  %i.s = and i32 %i.n, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !271

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.v = phi i64 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %.017.i.i.i.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !809, !noalias !2607
  %i.y = icmp eq ptr %i.h, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit, label %bb.c, !prof !273

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = add nuw i32 %.017.i.i.i.i, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !23, !noalias !2607
  %i.af = and i32 %i.aa, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !272

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ai = zext i32 %i.e to i64                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ai
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.e to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit ], [ %i.ai, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.w, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit.loopexit ], [ %i.aj, %.loopexit.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %.pre-phi
  %i.al = icmp eq ptr %.lcssa.sink.i.i, %i.ak
  br i1 %i.al, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit
  %i.am = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN4llvm7jitlink5ppc6415TOCTableManagerILNS_10endiannessE0EE21getOrCreateTOCSectionERNS0_9LinkGraphE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(312) %1)
  %i.an = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm7jitlink5ppc6422createAnonymousPointerERNS0_9LinkGraphERNS0_7SectionEPNS0_6SymbolEm(ptr noundef nonnull align 8 dereferenceable(312) %1, ptr noundef nonnull align 8 dereferenceable(80) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !809, !noalias !2608 ; 3 uses
  store ptr %i.ao, ptr %3, align 8, !tbaa !809, !alias.scope !2608
  %i.ap = ptrtoint ptr %i.ao to i64
  %notsub.i.i.i.i.i = add i64 %i.ap, -1
  %i.aq = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.aq, label %bb.e, label %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.as = atomicrmw add ptr %i.ar, i64 1 seq_cst, align 8, !noalias !2608 ; 0 uses
  br label %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit

_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit: ; preds = %bb.d, %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.an, ptr %i.at, align 8, !tbaa !2439, !alias.scope !2608
  %i.au = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.at), !noalias !2611
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.au, 0
  %i.av = load ptr, ptr %3, align 8, !tbaa !809   ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %notsub.i.i.i.i = add i64 %i.aw, -1
  %i.ax = icmp ult i64 %notsub.i.i.i.i, -32
  br i1 %i.ax, label %bb.f, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit

bb.f:                                             ; preds = %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit: ; preds = %_ZSt9make_pairIRKN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS9_INSA_IT0_E4typeEE6__typeEEOSB_OSG_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit
  %.sroa.010.0 = phi ptr [ %.fca.0.extract.i.i, %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEED2Ev.exit ], [ %.lcssa.sink.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4findERKS3_.exit ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !2439
  ret ptr %i.bb
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm7jitlink5ppc6422createAnonymousPointerERNS0_9LinkGraphERNS0_7SectionEPNS0_6SymbolEm(ptr noundef nonnull align 8 dereferenceable(312) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !103
  %i.e = tail call noundef i32 @_ZN4llvm6Triple22getArchPointerBitWidthENS0_8ArchTypeE(i32 noundef %i.d) #19
  %i.f = lshr i32 %i.e, 3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = load ptr, ptr %0, align 8, !tbaa !732    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.i, 64                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !733
  %i.m = icmp ult i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %bb.c, !prof !273

bb.b:                                             ; preds = %bb.a
  %i.n = inttoptr i64 %i.j to ptr
  store ptr %i.n, ptr %0, align 8, !tbaa !732
  br label %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

bb.c:                                             ; preds = %bb.a
  %i.o = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(312) %0, i64 noundef 64, i64 noundef 64, i8 3)
  br label %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit

_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i.i.i.i = phi ptr [ %i.h, %bb.b ], [ %i.o, %bb.c ] ; 10 uses
  store i64 0, ptr %.0.i.i.i.i.i.i, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !734
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 24
  store ptr @_ZN4llvm7jitlink5ppc6418NullPointerContentE, ptr %i.r, align 8, !tbaa !741
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 32
  store i64 8, ptr %i.s, align 8, !tbaa !742
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.g, i1 false)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = and i64 %i.v, 248
  %i.x = or disjoint i64 %i.w, 1
  store i64 %i.x, ptr %i.p, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store ptr %.0.i.i.i.i.i.i, ptr %i.b, align 8, !tbaa !325
  %i.z = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(8) %i.b), !noalias !2616 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %_ZN4llvm7jitlink5Block7addEdgeEhjRNS0_6SymbolEl.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph18createContentBlockERNS0_7SectionENS_8ArrayRefIcEENS_3orc12ExecutorAddrEmm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 48 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !635 ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 56 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !638
  %.not.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %2, ptr %i.ab, align 8, !tbaa !274
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !23
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %3, ptr %.sroa.69.0..sroa_idx.i, align 8, !tbaa !95
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i8 2, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !22
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !635
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !635
  br label %_ZN4llvm7jitlink5Block7addEdgeEhjRNS0_6SymbolEl.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.t, align 8, !tbaa !640 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj:bb.a

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !23 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.ao = shl i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.ar
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !809 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64
  %notsub.i.i.i.i.i.i = add i64 %i.au, -1
  %i.av = icmp ult i64 %notsub.i.i.i.i.i.i, -32
  br i1 %i.av, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ax = atomicrmw sub ptr %i.aw, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ay = add i32 %.0.i3.i.i, -1
  %i.az = and i32 %i.ay, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !2523

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !2524

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !2350 ; 2 uses
  %i.ba = icmp eq i32 %.pr.i, 0
  br i1 %i.ba, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i
  %i.bb = load ptr, ptr %2, align 16, !tbaa !2337
  %i.bc = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 4
  %i.be = add nuw nsw i64 %i.bc, 31
  %i.bf = lshr i64 %i.be, 3
  %i.bg = and i64 %i.bf, 1073741820
  %i.bh = add nuw nsw i64 %i.bg, %i.bd
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bb, i64 noundef %i.bh, i64 noundef 8) #19
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2337   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2349
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2350 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2349 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2337
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2350
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !23   ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.q = shl i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !809
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !23 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !23 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, !llvm.loop !2653

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr null, ptr %i.at, align 8, !tbaa !809
  %i.au = load <2 x ptr>, ptr %i.u, align 8, !tbaa !8
  store <2 x ptr> %i.au, ptr %i.at, align 8, !tbaa !8
  store ptr null, ptr %i.u, align 8, !tbaa !758
  %i.av = shl nuw i32 1, %.lcssa.i
  %i.aw = or i32 %i.av, %.lcssa11.i
  store i32 %i.aw, ptr %i.as, align 4, !tbaa !23
  %i.ax = add i32 %.0.i15, -1
  %i.ay = and i32 %i.ax, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2654

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E8moveFromERSC_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2655

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2350
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.az = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !2353
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !2353
  %i.bd = icmp eq i32 %i.az, 0
  br i1 %i.bd, label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit
  %i.be = zext i32 %i.az to i64                   ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 4
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bj, i64 noundef 8) #19
  store i32 0, ptr %i.d, align 4, !tbaa !2350
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit

_ZN4llvm8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S5_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S9_EEEES6_S9_SB_SE_E8moveFromERSF_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.468") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !889, !noalias !2656 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !899, !noalias !2656 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !900, !noalias !2656 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !695, !noalias !2656
  %i.i = icmp eq i32 %i.h, 0
  %i.j = zext i32 %i.f to i64                     ; 4 uses
  %.idx230 = mul nuw nsw i64 %i.j, 24             ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx230 ; 14 uses
  %.not.i.not.i.i.i = icmp eq i32 %i.f, 0
  %or.cond.i = select i1 %i.i, i1 true, i1 %.not.i.not.i.i.i
  br i1 %or.cond.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.j, 31
  %i.m = lshr i64 %i.l, 5                         ; 2 uses
  %i.n = load i32, ptr %i.d, align 4, !tbaa !23, !noalias !2661 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !2283

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !23, !noalias !2661 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !2283

._crit_edge.i.loopexit.i.i.i:                     ; preds = %.lr.ph306
  %i.w = mul i64 %i.s, 768
  br label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit:       ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i
  %.012.lcssa.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.w, %._crit_edge.i.loopexit.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %bb.b ], [ %i.u, %._crit_edge.i.loopexit.i.i.i ]
  %i.x = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %narrow293 = mul nuw nsw i32 %i.x, 24
  %.idx292 = zext nneg i32 %narrow293 to i64
  %i.y = add i64 %.012.lcssa.i.i.i.i, %.idx292    ; 3 uses
  %i.z = getelementptr i8, ptr %i.b, i64 %i.y     ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, %.idx230
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !706, !noalias !2664 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1005, !noalias !2667 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1011, !noalias !2667 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !1012, !noalias !2667 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1015, !noalias !2667
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = zext i32 %i.ah to i64                   ; 2 uses
  %.idx295 = shl nuw nsw i64 %i.al, 3             ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx295
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  %or.cond.i.i.i.i.i = select i1 %i.ak, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %.lr.ph.preheader.a, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.am = add nuw nsw i64 %i.al, 31
  %i.an = lshr i64 %i.am, 5                       ; 2 uses
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !23, !noalias !2676 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !2318

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !23, !noalias !2676 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !2318

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph307
  %3 = shl i64 %i.at, 8
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %bb.d, %._crit_edge.i.loopexit.i.i.i.i.i.i.i
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %3, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ao, %bb.d ], [ %i.av, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.ax = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %4 = shl nuw nsw i32 %i.ax, 3
  %.idx294 = zext nneg i32 %4 to i64
  %5 = or disjoint i64 %.012.lcssa.i.i.i.i.i.i.i.i, %.idx294 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ad, i64 %5
  %6 = icmp eq i64 %5, %.idx295
  br i1 %6, label %.lr.ph.preheader.a, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

.lr.ph.preheader.a:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.a
  %.in = add nuw nsw i64 %i.j, 31
  %7 = lshr i64 %.in, 5                           ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %i.az = phi i64 [ %i.bt, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.y, %.lr.ph.preheader.a ]
  %i.ba = add i64 %i.az, 24
  %i.bb = sdiv exact i64 %i.ba, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bb, %i.j
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

bb.e:                                             ; preds = %.lr.ph
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !23
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.i30.preheader, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

.lr.ph.i.i.i.i30.preheader:                       ; preds = %bb.e
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %7
  br i1 %i.bl, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308

.lr.ph.i.i.i.i30:                                 ; preds = %.lr.ph308
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %7
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !2283

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !23 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !2283

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph308, %bb.e
  %.012.lcssa.i.i.i.i28 = phi i64 [ %i.bc, %bb.e ], [ %i.bo, %.lr.ph308 ]
  %.0.lcssa.i.i.i.i29 = phi i32 [ %i.bi, %bb.e ], [ %i.bq, %.lr.ph308 ]
  %i.bs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i29, i1 true)
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i28, 768
  %narrow = mul nuw nsw i32 %i.bs, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.bt = add i64 %.idx.i.i.i.i, %.idx            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 %i.bt   ; 3 uses
  %.not.i.i18 = icmp eq i64 %i.bt, %.idx230
  br i1 %.not.i.i18, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !706, !noalias !2679 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1005, !noalias !2682 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1011, !noalias !2682 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !1012, !noalias !2682 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !1015, !noalias !2682
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !23, !noalias !2691 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !2318

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !23, !noalias !2691 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !2318

._crit_edge.i.loopexit.i.i.i.i.i.i.i26:           ; preds = %.lr.ph309
  %i.ct = shl i64 %i.cp, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i21

._crit_edge.i.i.i.i.i.i.i.i21:                    ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, %bb.g
  %.012.lcssa.i.i.i.i.i.i.i.i22 = phi i64 [ 0, %bb.g ], [ %i.ct, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %.0.lcssa.i.i.i.i.i.i.i.i23 = phi i32 [ %i.ck, %bb.g ], [ %i.cr, %._crit_edge.i.loopexit.i.i.i.i.i.i.i26 ]
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i23, i1 true)
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr i8, ptr %i.by, i64 %.012.lcssa.i.i.i.i.i.i.i.i22
  %i.cx = getelementptr [8 x i8], ptr %i.cw, i64 %i.cv
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %._crit_edge.i.i.i.i.i.i.i.i21, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.cx, %._crit_edge.i.i.i.i.i.i.i.i21 ], [ %i.ch, %bb.f ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ], [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i24 ] ; 2 uses
  %i.cy = icmp eq ptr %.sroa.0.0.i, %i.ch
  br i1 %i.cy, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17: ; preds = %.lr.ph.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph, %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30, %.lr.ph.i.i.i.i.preheader, %bb.a, %.lr.ph.i.a, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit
  %.sroa.989.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ay, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1490.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %2, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ch, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1691.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.ad, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.1892.2 = phi ptr [ null, %.lr.ph.i.i.i.i30 ], [ null, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.af, %.lr.ph.i.a ], [ null, %.lr.ph ], [ null, %bb.a ], [ null, %.lr.ph.i.i.i.i.preheader ], [ %i.ca, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ null, %.lr.ph.i.i.i.i30.preheader ], [ null, %.lr.ph.i.i.i.i ]
  %.sroa.074.1 = phi ptr [ %i.k, %.lr.ph.i.i.i.i30 ], [ %i.k, %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit ], [ %i.z, %.lr.ph.i.a ], [ %i.k, %.lr.ph ], [ %i.k, %bb.a ], [ %i.k, %.lr.ph.i.i.i.i.preheader ], [ %i.bu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %i.bu, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %i.k, %.lr.ph.i.i.i.i30.preheader ], [ %i.k, %.lr.ph.i.i.i.i ]
  store ptr %.sroa.074.1, ptr %0, align 8
  %.sroa.4179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4179.0..sroa_idx, align 8
  %.sroa.5180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %.sroa.5180.0..sroa_idx, align 8
  %.sroa.6181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %.sroa.6181.0..sroa_idx, align 8
  %.sroa.8183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %.sroa.8183.0..sroa_idx, align 1
  %.sroa.10185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %.sroa.10185.0..sroa_idx, align 8
  %.sroa.11186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.k, ptr %.sroa.11186.0..sroa_idx, align 8
  %.sroa.12187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %.sroa.12187.0..sroa_idx, align 8
  %.sroa.13188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.d, ptr %.sroa.13188.0..sroa_idx, align 8
  %.sroa.15190.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 1, ptr %.sroa.15190.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.989.2, ptr %.sroa.17.0..sroa_idx.a, align 8
  %.sroa.18192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.1490.2, ptr %.sroa.18192.0..sroa_idx, align 8
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.1691.2, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.1892.2, ptr %.sroa.20.0..sroa_idx, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.k, ptr %i.cz, align 8
  %.sroa.4194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.k, ptr %.sroa.4194.0..sroa_idx, align 8
  %.sroa.5195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.b, ptr %.sroa.5195.0..sroa_idx, align 8
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.d, ptr %.sroa.6196.0..sroa_idx, align 8
  %.sroa.8198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 1, ptr %.sroa.8198.0..sroa_idx, align 1
  %.sroa.10200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %i.k, ptr %.sroa.10200.0..sroa_idx, align 8
  %.sroa.11201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.k, ptr %.sroa.11201.0..sroa_idx, align 8
  %.sroa.12202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.b, ptr %.sroa.12202.0..sroa_idx, align 8
  %.sroa.13203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.d, ptr %.sroa.13203.0..sroa_idx, align 8
  %.sroa.15205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 185
  store i8 1, ptr %.sroa.15205.0..sroa_idx, align 1
  %.sroa.17207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.17207.0..sroa_idx, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIPN4llvm7jitlink5BlockESaIS3_EE19_M_range_initializeINS1_9LinkGraph26nested_collection_iteratorINS0_15mapped_iteratorINS0_16DenseMapIteratorINS0_9StringRefESt10unique_ptrINS1_7SectionESt14default_deleteISD_EENS0_12DenseMapInfoISB_vEENS0_6detail12DenseMapPairISB_SG_EELb0EEENS7_23GetSectionMapEntryValueERSD_EENSJ_12DenseSetImplIS3_NS0_8DenseMapIS3_NSJ_13DenseSetEmptyENSH_IS3_vEENSJ_12DenseSetPairIS3_EEEEE16DenseSetIteratorILb0EEES3_XadL_ZNS7_16getSectionBlocksESO_EEEEEEvT_S11_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef byval(%"class.llvm::jitlink::LinkGraph::nested_collection_iterator.466") align 8 %1, ptr noundef byval(%"class.llvm::jitlink::LinkGraph::nested_collection_iterator.466") align 8 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.024.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 4 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8 ; 2 uses
  %.sroa.829.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.829.0.copyload = load ptr, ptr %.sroa.829.0..sroa_idx, align 8 ; 2 uses
  %.sroa.045.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.347.0.copyload = load ptr, ptr %.sroa.347.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp ne ptr %.sroa.024.0.copyload, %.sroa.045.0.copyload
  %i.b = icmp ne ptr %.sroa.829.0.copyload, %.sroa.347.0.copyload
  %.not3.i4.i = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3.i4.i, label %.lr.ph.i.preheader, label %_ZNSt12_Vector_baseIPN4llvm7jitlink5BlockESaIS3_EE11_M_allocateEm.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.sroa.1132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.1132.0.copyload = load ptr, ptr %.sroa.1132.0..sroa_idx, align 8
  %.sroa.1031.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.1031.0.copyload = load ptr, ptr %.sroa.1031.0..sroa_idx, align 8
  %.sroa.930.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.930.0.copyload = load ptr, ptr %.sroa.930.0..sroa_idx, align 8
  %i.c = ptrtoint ptr %.sroa.2.0.copyload to i64
  %i.d = ptrtoint ptr %.sroa.3.0.copyload to i64  ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = add nsw i64 %i.f, 31
  %i.h = lshr i64 %i.g, 5                         ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.17.0 = phi ptr [ %.sroa.17.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.930.0.copyload, %.lr.ph.i.preheader ] ; 6 uses
  %.sroa.19.0 = phi ptr [ %.sroa.19.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.1031.0.copyload, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.21.0 = phi ptr [ %.sroa.21.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.1132.0.copyload, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.024.0.copyload, %.lr.ph.i.preheader ] ; 5 uses
  %i.i = phi ptr [ %.sroa.115.1, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ %.sroa.829.0.copyload, %.lr.ph.i.preheader ]
  %.05.i = phi i64 [ %i.cy, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = ptrtoint ptr %.sroa.17.0 to i64
  %i.l = ptrtoint ptr %.sroa.19.0 to i64          ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.o, %i.l
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %.not.i.i.i.i.i = icmp ult i64 %i.q, %i.n
  br i1 %.not.i.i.i.i.i, label %bb.b, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = add nsw i64 %i.n, 31
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = lshr i64 %i.q, 5                         ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.21.0, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !23, !noalias !2694
  %i.w = trunc i64 %i.q to i32
  %i.x = and i32 %i.w, 31
  %i.y = shl nsw i32 -1, %i.x
  %i.z = and i32 %i.v, %i.y                       ; 2 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.ab = add nuw nsw i64 %i.t, 1                 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, %i.s
  br i1 %i.ac, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i, label %.lr.ph100

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph100
  %i.ad = add i64 %i.af, 1                        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.s
  br i1 %i.ae, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i, label %.lr.ph100, !llvm.loop !2318

.lr.ph100:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.af = phi i64 [ %i.ad, %.lr.ph.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.21.0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !23, !noalias !2694 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !2318

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph100, %bb.b
  %.012.lcssa.i.i.i.i.i = phi i64 [ %i.t, %bb.b ], [ %i.af, %.lr.ph100 ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.z, %bb.b ], [ %i.ah, %.lr.ph100 ]
  %i.aj = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %.idx.i.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i.i, 8
  %i.al = getelementptr i8, ptr %.sroa.19.0, i64 %.idx.i.i.i.i.i
  %i.am = getelementptr [8 x i8], ptr %i.al, i64 %i.ak
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i, %.lr.ph.i
  %storemerge16.i.i.i.i.i = phi ptr [ %.sroa.17.0, %.lr.ph.i ], [ %i.am, %._crit_edge.i.i.i.i.i ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.17.0, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0.0, %.sroa.627.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i2

.lr.ph.i2:                                        ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !706, !noalias !2694 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1005, !noalias !2697
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1012, !noalias !2697
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.at
  %i.av = icmp eq ptr %storemerge16.i.i.i.i.i, %i.au
  br i1 %i.av, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0.160 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0.0, %.lr.ph.i2 ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.160, i64 24
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.d
  %i.az = sdiv exact i64 %i.ay, 24                ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.az, %i.f
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.c:                                             ; preds = %.lr.ph
  %i.ba = lshr i64 %i.az, 5                       ; 3 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !23, !noalias !2694
  %i.bd = trunc i64 %i.az to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nsw i32 -1, %i.be
  %i.bg = and i32 %i.bc, %i.bf                    ; 2 uses
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.bi = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bj = icmp eq i64 %i.bi, %i.h
  br i1 %i.bj, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph101

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph101
  %i.bk = add i64 %i.bm, 1                        ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.h
  br i1 %i.bl, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph101, !llvm.loop !2283

.lr.ph101:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.bm = phi i64 [ %i.bk, %.lr.ph.i.i.i.i ], [ %i.bi, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.425.0.copyload, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !23, !noalias !2694 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !2283

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph101, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.ba, %bb.c ], [ %i.bm, %.lr.ph101 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.bg, %bb.c ], [ %i.bo, %.lr.ph101 ]
  %i.bq = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.br = zext nneg i32 %i.bq to i64
  %.idx.i.i.i.i = mul i64 %.012.lcssa.i.i.i.i, 768
  %i.bs = getelementptr i8, ptr %.sroa.3.0.copyload, i64 %.idx.i.i.i.i
  %i.bt = getelementptr [24 x i8], ptr %i.bs, i64 %i.br
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge.i.i.i.i, %.lr.ph
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.2.0.copyload, %.lr.ph ], [ %i.bt, %._crit_edge.i.i.i.i ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.2.0.copyload, %.lr.ph.i.i.i.i ] ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge16.i.i.i.i, %.sroa.627.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !706, !noalias !2706 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !1005, !noalias !2709 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !1011, !noalias !2709 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 52
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !1012, !noalias !2709 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !1015, !noalias !2709
  %i.ce = icmp eq i32 %i.cd, 0
  %i.cf = zext i32 %i.cb to i64                   ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cf ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.cb, 0
  %or.cond.i.i.i.i.i = select i1 %i.ce, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ch = add nuw nsw i64 %i.cf, 31
  %i.ci = lshr i64 %i.ch, 5                       ; 2 uses
end_hunk_1
