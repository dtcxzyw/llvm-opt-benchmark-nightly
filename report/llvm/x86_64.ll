Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/x86_64?download=true
inline.NumInlined: 457
inline.NumDeleted: 272
begin_hunk_0_@_ZN4llvm7jitlink6x86_6415PLTTableManager23registerExistingEntriesEv:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16, !noalias !60
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26, !noalias !60 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27, !noalias !60 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.j = load i32, ptr %i.i, align 8, !tbaa !28, !noalias !60
  %i.k = icmp eq i32 %i.j, 0
  %i.l = zext i32 %i.h to i64                     ; 4 uses
  %.idx48 = shl nuw nsw i64 %i.l, 3               ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.h, 0
  %or.cond.i.i = select i1 %i.k, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %i.o = load i32, ptr %i.f, align 4, !tbaa !29, !noalias !67 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink7Section7symbolsEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.q = icmp eq i64 %i.n, 1
  br i1 %i.q, label %._crit_edge, label %.lr.ph56

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph56
  %i.r = add nuw nsw i64 %i.t, 1                  ; 2 uses
  %i.s = icmp eq i64 %i.r, %i.n
  br i1 %i.s, label %._crit_edge, label %.lr.ph56, !llvm.loop !33

.lr.ph56:                                         ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.t = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29, !noalias !67 ; 2 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !33

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph56
  %i.x = shl i64 %i.t, 8
  br label %_ZN4llvm7jitlink7Section7symbolsEv.exit

_ZN4llvm7jitlink7Section7symbolsEv.exit:          ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i.i
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.x, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.o, %bb.b ], [ %i.v, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.y = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.z = shl nuw nsw i32 %i.y, 3
  %.idx = zext nneg i32 %i.z to i64
  %i.aa = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx ; 2 uses
  %.not25 = icmp eq i64 %i.aa, %.idx48
  br i1 %.not25, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm7jitlink7Section7symbolsEv.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ac = add nuw nsw i64 %i.l, 31
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.lr.ph.i.i.i.i.i, %_ZN4llvm7jitlink12TableManagerINS0_6x86_6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %bb.a, %_ZN4llvm7jitlink7Section7symbolsEv.exit
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.pn = phi i64 [ %i.aa, %.lr.ph ], [ %i.bu, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.015.026 = getelementptr i8, ptr %i.d, i64 %.pn
  %i.ae = load ptr, ptr %.sroa.015.026, align 8, !tbaa !35 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !46
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !37
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !48 ; 3 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !48
  %i.aq = ptrtoint ptr %i.ap to i64
  %notsub.i.i.i.i.i = add i64 %i.aq, -1
  %i.ar = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.ar, label %bb.d, label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.at = atomicrmw add ptr %i.as, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i

_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i: ; preds = %bb.d, %bb.c
  store ptr %i.ae, ptr %i.ab, align 8, !tbaa !49
  %i.au = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.ab), !noalias !70 ; 0 uses
  %i.av = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.aw = ptrtoint ptr %i.av to i64
  %notsub.i.i.i.i3.i = add i64 %i.aw, -1
  %i.ax = icmp ult i64 %notsub.i.i.i.i3.i, -32
  br i1 %i.ax, label %bb.e, label %_ZN4llvm7jitlink12TableManagerINS0_6x86_6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit

bb.e:                                             ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.az = atomicrmw sub ptr %i.ay, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm7jitlink12TableManagerINS0_6x86_6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit

_ZN4llvm7jitlink12TableManagerINS0_6x86_6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit: ; preds = %_ZNSt4pairIN4llvm3orc15SymbolStringPtrEPNS0_7jitlink6SymbolEEC2IRKS2_S5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  %i.ba = add i64 %.pn, 8
  %i.bb = ashr exact i64 %i.ba, 3                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.bb, %i.l
  br i1 %.not.i.i.i, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %_ZN4llvm7jitlink12TableManagerINS0_6x86_6415PLTTableManagerEE24registerPreExistingEntryERNS0_6SymbolES6_.exit
  %i.bc = lshr i64 %i.bb, 5                       ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
  %i.bf = trunc nuw i64 %i.bb to i32
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nsw i32 -1, %i.bg
  %i.bi = and i32 %i.be, %i.bh                    ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.f
  %i.bk = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.ad
  br i1 %i.bl, label %._crit_edge, label %.lr.ph57

.lr.ph.i.i.i:                                     ; preds = %.lr.ph57
  %i.bm = add i64 %i.bo, 1                        ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %i.ad
  br i1 %i.bn, label %._crit_edge, label %.lr.ph57, !llvm.loop !33

.lr.ph57:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !33

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph57, %bb.f
  %.012.lcssa.i.i.i = phi i64 [ %i.bc, %bb.f ], [ %i.bo, %.lr.ph57 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.bi, %bb.f ], [ %i.bq, %.lr.ph57 ]
  %i.bs = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.bt = shl nuw nsw i32 %i.bs, 3
  %.idx49 = zext nneg i32 %i.bt to i64
  %i.bu = or disjoint i64 %.idx.i.i.i, %.idx49    ; 2 uses
  %.not = icmp eq i64 %i.bu, %.idx48
  br i1 %.not, label %._crit_edge, label %bb.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm7jitlink6x86_6426optimizeGOTAndStubAccessesERNS0_9LinkGraphE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %"class.llvm::iterator_range.8", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range.8") align 8 %2, ptr noundef nonnull align 8 dereferenceable(312) %1)
  %.sroa.0103.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.10112.0.copyload = load ptr, ptr %.sroa.10112.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.sroa.11116.0.copyload = load ptr, ptr %.sroa.11116.0..sroa_idx, align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.sroa.0100.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.4102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 192
  %.sroa.4102.0.copyload = load ptr, ptr %.sroa.4102.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ne ptr %.sroa.0103.0.copyload, %.sroa.0100.0.copyload
  %i.c = icmp ne ptr %.sroa.11116.0.copyload, %.sroa.4102.0.copyload
  %.not3.i157 = select i1 %i.b, i1 true, i1 %i.c
  br i1 %.not3.i157, label %.lr.ph164, label %_ZN4llvm5ErrorD2Ev.exit

.lr.ph164:                                        ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8
  %i.d = ptrtoint ptr %.sroa.7.0.copyload to i64
  %i.e = ptrtoint ptr %.sroa.8.0.copyload to i64  ; 2 uses
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24                  ; 2 uses
  %i.h = add nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5                         ; 2 uses
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  store ptr null, ptr %0, align 8, !tbaa !75
  ret void

bb.b:                                             ; preds = %.lr.ph164, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.11116.0162 = phi ptr [ %.sroa.11116.0.copyload, %.lr.ph164 ], [ %.sroa.11116.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %.sroa.18.0161 = phi ptr [ %.sroa.18.0.copyload, %.lr.ph164 ], [ %.sroa.18.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %.sroa.20.0160 = phi ptr [ %.sroa.20.0.copyload, %.lr.ph164 ], [ %.sroa.20.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.22.0159.a = phi ptr [ %.sroa.22.0.copyload, %.lr.ph164 ], [ %.sroa.22.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.0103.0158 = phi ptr [ %.sroa.0103.0.copyload, %.lr.ph164 ], [ %.sroa.0103.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %i.j = load ptr, ptr %.sroa.11116.0162, align 8, !tbaa !78 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !44   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44   ; 2 uses
  %.not144 = icmp eq ptr %i.l, %i.n
  br i1 %.not144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  br label %bb.g

._crit_edge:                                      ; preds = %.critedge, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.11116.0162, i64 8
  %i.q = ptrtoint ptr %.sroa.18.0161 to i64
  %i.r = ptrtoint ptr %.sroa.20.0160 to i64       ; 2 uses
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = sub i64 %i.u, %i.r
  %i.w = ashr exact i64 %i.v, 3                   ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.w, %i.t
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit

bb.c:                                             ; preds = %._crit_edge
  %i.x = add nsw i64 %i.t, 31
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = lshr i64 %i.w, 5                         ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0159.a, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !29, !noalias !80
  %i.ac = trunc i64 %i.w to i32
  %i.ad = and i32 %i.ac, 31
  %i.ae = shl nsw i32 -1, %i.ad
  %i.af = and i32 %i.ab, %i.ae                    ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %i.ah = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.y
  br i1 %i.ai, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit, label %.lr.ph199

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph199
  %i.aj = add i64 %i.al, 1                        ; 2 uses
  %i.ak = icmp eq i64 %i.aj, %i.y
  br i1 %i.ak, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit, label %.lr.ph199, !llvm.loop !83

.lr.ph199:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.al = phi i64 [ %i.aj, %.lr.ph.i.i.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0159.a, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !83

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph199, %bb.c
  %.012.lcssa.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ %i.al, %.lr.ph199 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.af, %bb.c ], [ %i.an, %.lr.ph199 ]
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.aq = zext nneg i32 %i.ap to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.ar = getelementptr i8, ptr %.sroa.20.0160, i64 %.idx.i.i.i.i
  %i.as = getelementptr [8 x i8], ptr %i.ar, i64 %i.aq
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %._crit_edge, %._crit_edge.i.i.i.i
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.18.0161, %._crit_edge ], [ %i.as, %._crit_edge.i.i.i.i ], [ %.sroa.18.0161, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.18.0161, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0103.0158, %.sroa.10112.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0103.0158, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !84, !noalias !80 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !85, !noalias !88
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 52
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !97, !noalias !88
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  %i.bb = icmp eq ptr %storemerge16.i.i.i.i, %i.ba
  br i1 %i.bb, label %.lr.ph147, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph147:                                        ; preds = %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0103.1146 = phi ptr [ %storemerge16.i.i.i.i70, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0103.0158, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0103.1146, i64 24
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.e
  %i.bf = sdiv exact i64 %i.be, 24                ; 3 uses
  %.not.i.i.i.i69 = icmp ult i64 %i.bf, %i.g
  br i1 %.not.i.i.i.i69, label %bb.d, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.d:                                             ; preds = %.lr.ph147
  %i.bg = lshr i64 %i.bf, 5                       ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !29, !noalias !80
  %i.bj = trunc i64 %i.bf to i32
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nsw i32 -1, %i.bk
  %i.bm = and i32 %i.bi, %i.bl                    ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i.i.i75.preheader, label %._crit_edge.i.i.i.i71

.lr.ph.i.i.i.i75.preheader:                       ; preds = %bb.d
  %i.bo = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.i
  br i1 %i.bp, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph200

.lr.ph.i.i.i.i75:                                 ; preds = %.lr.ph200
  %i.bq = add i64 %i.bs, 1                        ; 2 uses
  %i.br = icmp eq i64 %i.bq, %i.i
  br i1 %i.br, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph200, !llvm.loop !98

.lr.ph200:                                        ; preds = %.lr.ph.i.i.i.i75.preheader, %.lr.ph.i.i.i.i75
  %i.bs = phi i64 [ %i.bq, %.lr.ph.i.i.i.i75 ], [ %i.bo, %.lr.ph.i.i.i.i75.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9.0.copyload, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29, !noalias !80 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i75, label %._crit_edge.i.i.i.i71, !llvm.loop !98

._crit_edge.i.i.i.i71:                            ; preds = %.lr.ph200, %bb.d
  %.012.lcssa.i.i.i.i72 = phi i64 [ %i.bg, %bb.d ], [ %i.bs, %.lr.ph200 ]
  %.0.lcssa.i.i.i.i73 = phi i32 [ %i.bm, %bb.d ], [ %i.bu, %.lr.ph200 ]
  %i.bw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i73, i1 true)
  %i.bx = zext nneg i32 %i.bw to i64
  %.idx.i.i.i.i74 = mul i64 %.012.lcssa.i.i.i.i72, 768
  %i.by = getelementptr i8, ptr %.sroa.8.0.copyload, i64 %.idx.i.i.i.i74
  %i.bz = getelementptr [24 x i8], ptr %i.by, i64 %i.bx
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i75, %.lr.ph.i.i.i.i75.preheader, %._crit_edge.i.i.i.i71, %.lr.ph147
  %storemerge16.i.i.i.i70 = phi ptr [ %.sroa.7.0.copyload, %.lr.ph147 ], [ %i.bz, %._crit_edge.i.i.i.i71 ], [ %.sroa.7.0.copyload, %.lr.ph.i.i.i.i75.preheader ], [ %.sroa.7.0.copyload, %.lr.ph.i.i.i.i75 ] ; 5 uses
  %.not.i.i = icmp eq ptr %storemerge16.i.i.i.i70, %.sroa.10112.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.ca = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i70, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !84, !noalias !99 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !85, !noalias !102 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !111, !noalias !102 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 52
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !97, !noalias !102 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !112, !noalias !102
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = zext i32 %i.ch to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cl ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.ch, 0
  %or.cond.i.i.i.i.i = select i1 %i.ck, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = add nuw nsw i64 %i.cl, 31
  %i.co = lshr i64 %i.cn, 5                       ; 2 uses
  %i.cp = load i32, ptr %i.cf, align 4, !tbaa !29, !noalias !113 ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %i.cr = icmp eq i64 %i.co, 1
  br i1 %i.cr, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph201

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph201
  %i.cs = add nuw nsw i64 %i.cu, 1                ; 2 uses
  %i.ct = icmp eq i64 %i.cs, %i.co
  br i1 %i.ct, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph201, !llvm.loop !83

.lr.ph201:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.cu = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29, !noalias !113 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !83

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph201
  %i.cy = shl i64 %i.cu, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i, %bb.f
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.cy, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.cp, %bb.f ], [ %i.cw, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.cz = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = getelementptr i8, ptr %i.cd, i64 %.012.lcssa.i.i.i.i.i.i.i.i
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %i.da
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.dc, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.e ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cm, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = icmp eq ptr %.sroa.0.0.i, %i.cm
  br i1 %i.dd, label %.lr.ph147, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE24moveToNonEmptyInnerOrEndEv.exit: ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit
  %.sroa.0103.2.a = phi ptr [ %.sroa.0103.0158, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.0103.0158, %.lr.ph.i ], [ %storemerge16.i.i.i.i70, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %storemerge16.i.i.i.i70, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.0159.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.22.0159.a, %.lr.ph.i ], [ %i.cf, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.20.2 = phi ptr [ %.sroa.20.0160, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.20.0160, %.lr.ph.i ], [ %i.cd, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.18.2 = phi ptr [ %.sroa.18.0161, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %.sroa.18.0161, %.lr.ph.i ], [ %i.cm, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.11116.2 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEppEv.exit ], [ %storemerge16.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ] ; 2 uses
  %i.de = icmp ne ptr %.sroa.0103.2.a, %.sroa.0100.0.copyload
  %i.df = icmp ne ptr %.sroa.11116.2, %.sroa.4102.0.copyload
  %.not3.i = select i1 %i.de, i1 true, i1 %i.df
  br i1 %.not3.i, label %bb.b, label %_ZN4llvm5ErrorD2Ev.exit

bb.g:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.095.0145 = phi ptr [ %i.l, %.lr.ph ], [ %i.fn, %.critedge ] ; 10 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.095.0145, i64 24 ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !116
  switch i8 %i.dh, label %.critedge [
    i8 23, label %bb.h
    i8 24, label %bb.h
    i8 19, label %bb.p
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.di = load ptr, ptr %i.o, align 8, !tbaa !117
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.095.0145, i64 8 ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !126
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -2 ; 4 uses
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !127 ; 2 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 -1 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !127
  %i.dr = load ptr, ptr %.sroa.095.0145, align 8, !tbaa !46
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !44
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !46 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dy, align 8, !tbaa !128
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.ea = load i64, ptr %i.dz, align 8
  %i.eb = and i64 %i.ea, 144115188075855871
  %i.ec = add i64 %i.eb, %.sroa.0.0.copyload.i.i  ; 2 uses
  %.sroa.0.0.copyload.i.i60 = load i64, ptr %i.j, align 8, !tbaa !128
  %i.ed = icmp ult i64 %i.ec, 4294967296
  %i.ee = add i64 %.sroa.0.0.copyload.i.i60, %i.dl
  %reass.sub165 = sub i64 %i.ec, %i.ee
  %i.ef = add i64 %reass.sub165, 2147483652
  %i.eg = icmp ult i64 %i.ef, 4294967296          ; 3 uses
  %or.cond = or i1 %i.ed, %i.eg
  br i1 %or.cond, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.eh = icmp eq i8 %i.do, -117
  %or.cond3 = and i1 %i.eh, %i.eg
  br i1 %or.cond3, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 -115, ptr %i.dn, align 1, !tbaa !127
  store i8 8, ptr %i.dg, align 8, !tbaa !116
  store ptr %i.dw, ptr %.sroa.095.0145, align 8, !tbaa !46
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.095.0145, i64 16 ; 2 uses
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !129
  %i.ek = add nsw i64 %i.ej, -4
  store i64 %i.ek, ptr %i.ei, align 8, !tbaa !129
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.el = icmp eq i8 %i.do, -1
  %or.cond5 = and i1 %i.el, %i.eg
  br i1 %or.cond5, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.em = icmp eq i8 %i.dq, 21
  br i1 %i.em, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 103, ptr %i.dn, align 1, !tbaa !127
  store i8 -24, ptr %i.dp, align 1, !tbaa !127
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  store i8 -23, ptr %i.dn, align 1, !tbaa !127
  %i.en = getelementptr inbounds nuw i8, ptr %i.dm, i64 3
  store i8 -112, ptr %i.en, align 1, !tbaa !127
  %i.eo = load i32, ptr %i.dj, align 8, !tbaa !126
  %i.ep = add i32 %i.eo, -1
  store i32 %i.ep, ptr %i.dj, align 8, !tbaa !126
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store i8 16, ptr %i.dg, align 8, !tbaa !116
  store ptr %i.dw, ptr %.sroa.095.0145, align 8, !tbaa !46
  br label %.critedge

bb.p:                                             ; preds = %bb.g
  %i.eq = load ptr, ptr %.sroa.095.0145, align 8, !tbaa !46
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !44
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !46
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !44
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !46 ; 3 uses
  %.sroa.0.0.copyload.i67 = load i64, ptr %i.j, align 8, !tbaa !128
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.095.0145, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !126
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !37
  %.sroa.0.0.copyload.i.i68 = load i64, ptr %i.ff, align 8, !tbaa !128
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = and i64 %i.fh, 144115188075855871
  %i.fj = add i64 %.sroa.0.0.copyload.i67, %i.fd
  %reass.sub = sub i64 %.sroa.0.0.copyload.i.i68, %i.fj
  %i.fk = add i64 %reass.sub, 2147483652
  %i.fl = add i64 %i.fk, %i.fi
  %i.fm = icmp ult i64 %i.fl, 4294967296
  br i1 %i.fm, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  store i8 16, ptr %i.dg, align 8, !tbaa !116
  store ptr %i.fa, ptr %.sroa.095.0145, align 8, !tbaa !46
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.j, %bb.o, %bb.h, %bb.p, %bb.q, %bb.k
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.095.0145, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.fn, %i.n
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph6blocksEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range.8") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130, !noalias !133 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !138, !noalias !133 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !139, !noalias !133 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !140, !noalias !133
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
  %i.n = load i32, ptr %i.d, align 4, !tbaa !29, !noalias !141 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !98

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29, !noalias !141 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !98

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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !84, !noalias !144 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !85, !noalias !147 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !111, !noalias !147 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !97, !noalias !147 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !112, !noalias !147
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
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !29, !noalias !156 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !83

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29, !noalias !156 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !83

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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29
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
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !98

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !29 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !98

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
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !84, !noalias !159 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !85, !noalias !162 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !111, !noalias !162 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !97, !noalias !162 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !112, !noalias !162
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !29, !noalias !171 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_5BlockENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_16getSectionBlocksESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !83

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !29, !noalias !171 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !83

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E24lookupOrInsertIntoBucketIS3_JS6_EEESt4pairIPSB_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !174, !noalias !175 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180, !noalias !175 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !181, !noalias !175 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !29
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !182

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !48
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit, label %bb.c, !prof !183

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !184, !llvm.loop !185

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !186
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !187
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit, label %bb.d, !prof !183

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !186
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !180
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !174
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 5 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !29
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !29
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !187
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.at, align 8, !tbaa !48
  %i.bh = load ptr, ptr %1, align 8, !tbaa !188
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !188
  store ptr null, ptr %1, align 8, !tbaa !188
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !35
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E22findBucketForInsertionIS3_EEPSB_RKT_SF_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E15LookupBucketForIS3_EEbRKT_RPSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !174, !noalias !189 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !180, !noalias !189 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !181, !noalias !189 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !48     ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !182

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !183

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !184, !llvm.loop !185

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !186
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrEPNS_7jitlink6SymbolENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S6_EEEES3_S6_S8_SB_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
end_hunk_0
