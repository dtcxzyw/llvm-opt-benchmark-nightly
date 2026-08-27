Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/LinkGraphLinkingLayer?download=true
inline.NumInlined: 5300
inline.NumDeleted: 2713
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4llvm3orc21LinkGraphLinkingLayer4emitESt10unique_ptrINS0_29MaterializationResponsibilityESt14default_deleteIS3_EES2_INS_7jitlink9LinkGraphES4_IS8_EES2_INS_12MemoryBufferES4_ISB_EE:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(312) %i.r, ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull byval(%"class.llvm::MemoryBufferRef") align 8 %4) #22, !inline_history !101
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, %i.u
  br i1 %.not.i, label %_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit.loopexit, label %.lr.ph.i

_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit.loopexit: ; preds = %bb.e
  %.pre = load i64, ptr %2, align 8, !tbaa !102
  br label %_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit

_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit: ; preds = %_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit.loopexit, %_ZSt11make_uniqueIN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtxEJRS2_St10unique_ptrINS1_29MaterializationResponsibilityESt14default_deleteIS6_EES5_INS0_12MemoryBufferES7_ISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ad = phi i64 [ %.pre, %_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit.loopexit ], [ %i.v, %_ZSt11make_uniqueIN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtxEJRS2_St10unique_ptrINS1_29MaterializationResponsibilityESt14default_deleteIS6_EES5_INS0_12MemoryBufferES7_ISA_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store i64 %i.ad, ptr %5, align 8, !tbaa !102
  store ptr null, ptr %2, align 8, !tbaa !102
  store ptr %i.a, ptr %6, align 8, !tbaa !104
  call void @_ZN4llvm7jitlink4linkESt10unique_ptrINS0_9LinkGraphESt14default_deleteIS2_EES1_INS0_14JITLinkContextES3_IS6_EE(ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #22
  %i.ae = load ptr, ptr %6, align 8, !tbaa !107   ; 3 uses
  %.not.i1 = icmp eq ptr %i.ae, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN4llvm7jitlink14JITLinkContextESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink14JITLinkContextEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm7jitlink14JITLinkContextEEclEPS2_.exit.i: ; preds = %_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #22, !inline_history !108
  br label %_ZNSt10unique_ptrIN4llvm7jitlink14JITLinkContextESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm7jitlink14JITLinkContextESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx19notifyMaterializingERNS_7jitlink9LinkGraphE.exit, %_ZNKSt14default_deleteIN4llvm7jitlink14JITLinkContextEEclEPS2_.exit.i
  %i.ai = load ptr, ptr %5, align 8, !tbaa !102   ; 3 uses
  %.not.i2 = icmp eq ptr %i.ai, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtxESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm7jitlink14JITLinkContextESt14default_deleteIS2_EED2Ev.exit
  call void @_ZN4llvm7jitlink9LinkGraphD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312) %i.ai) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef 312) #23
  br label %_ZNSt10unique_ptrIN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtxESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtxESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvm7jitlink9LinkGraphEEclEPS2_.exit.i, %_ZNSt10unique_ptrIN4llvm7jitlink14JITLinkContextESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm3orc21LinkGraphLinkingLayer18calculateDepGroupsERNS_7jitlink9LinkGraphE(ptr dead_on_unwind noalias writable sret(%"class.llvm::SmallVector.118") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %class.anon.352, align 1            ; 3 uses
  %3 = alloca %"class.llvm::DenseMap.123", align 8 ; 25 uses
  %4 = alloca %"class.llvm::iterator_range", align 8 ; 15 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.llvm::SmallVector.147", align 8 ; 18 uses
  %6 = alloca %"class.llvm::iterator_range.160", align 8 ; 15 uses
  %7 = alloca %"class.llvm::scc_iterator", align 8 ; 14 uses
  %8 = alloca %"class.llvm::scc_iterator", align 8 ; 14 uses
  %9 = alloca %"class.llvm::scc_iterator", align 8 ; 13 uses
  %10 = alloca %"class.llvm::SmallVector.132", align 8 ; 24 uses
  %11 = alloca %"class.llvm::DenseSet", align 16  ; 13 uses
  %12 = alloca %"class.llvm::DenseSet.137", align 8 ; 11 uses
  %13 = alloca %"class.llvm::DenseSet.176", align 8 ; 12 uses
  %14 = alloca %"struct.llvm::orc::LinkGraphLinkingLayer::SymbolDepGroup", align 8 ; 14 uses
  %15 = alloca %"struct.llvm::orc::LinkGraphLinkingLayer::SymbolDepGroup", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %4, ptr noundef nonnull align 8 dereferenceable(312) %1)
  %.sroa.0810.0.copyload = load ptr, ptr %4, align 8 ; 2 uses
  %.sroa.7812.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.7812.0.copyload = load ptr, ptr %.sroa.7812.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.8815.0.copyload = load ptr, ptr %.sroa.8815.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9818.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.9818.0.copyload = load ptr, ptr %.sroa.9818.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.10822.0.copyload = load ptr, ptr %.sroa.10822.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.11827.0.copyload = load ptr, ptr %.sroa.11827.0..sroa_idx, align 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 112
  %.sroa.0806.0.copyload = load ptr, ptr %i.d, align 8 ; 2 uses
  %.sroa.4808.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 192
  %.sroa.4808.0.copyload = load ptr, ptr %.sroa.4808.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ne ptr %.sroa.0810.0.copyload, %.sroa.0806.0.copyload
  %i.f = icmp ne ptr %.sroa.11827.0.copyload, %.sroa.4808.0.copyload
  %.not3.i1047 = select i1 %i.e, i1 true, i1 %i.f
  br i1 %.not3.i1047, label %.lr.ph1053, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.g, ptr %5, align 8, !tbaa !112
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !114
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 6, ptr %i.i, align 4, !tbaa !115
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %_ZN4llvm15SmallVectorImplIPNS_7jitlink5BlockEE7reserveEm.exit

.lr.ph1053:                                       ; preds = %bb.a
  %.sroa.22837.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %.sroa.22837.0.copyload = load ptr, ptr %.sroa.22837.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.18832.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.18832.0.copyload = load ptr, ptr %.sroa.18832.0..sroa_idx, align 8
  %i.k = ptrtoint ptr %.sroa.7812.0.copyload to i64
  %i.l = ptrtoint ptr %.sroa.8815.0.copyload to i64 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = add nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5                         ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !116 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.q, ptr %5, align 8, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.r, align 8, !tbaa !114
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  store i32 6, ptr %i.s, align 4, !tbaa !115
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = icmp ugt i32 %.pre, 6
  br i1 %i.u, label %bb.b, label %_ZN4llvm15SmallVectorImplIPNS_7jitlink5BlockEE7reserveEm.exit

bb.b:                                             ; preds = %._crit_edge
  %i.v = zext i32 %.pre to i64
  call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.q, i64 noundef %i.v, i64 noundef 8) #22
  %.pr = load i32, ptr %i.t, align 8, !tbaa !116, !noalias !119
  br label %_ZN4llvm15SmallVectorImplIPNS_7jitlink5BlockEE7reserveEm.exit

_ZN4llvm15SmallVectorImplIPNS_7jitlink5BlockEE7reserveEm.exit: ; preds = %._crit_edge.thread, %._crit_edge, %bb.b
  %i.w = phi ptr [ %i.t, %._crit_edge ], [ %i.t, %bb.b ], [ %i.j, %._crit_edge.thread ] ; 10 uses
  %i.x = phi ptr [ %i.s, %._crit_edge ], [ %i.s, %bb.b ], [ %i.i, %._crit_edge.thread ] ; 2 uses
  %i.y = phi ptr [ %i.r, %._crit_edge ], [ %i.r, %bb.b ], [ %i.h, %._crit_edge.thread ] ; 9 uses
  %i.z = phi ptr [ %i.q, %._crit_edge ], [ %i.q, %bb.b ], [ %i.g, %._crit_edge.thread ]
  %i.aa = phi i32 [ %.pre, %._crit_edge ], [ %.pr, %bb.b ], [ 0, %._crit_edge.thread ]
  %i.ab = load ptr, ptr %3, align 8, !tbaa !122, !noalias !119
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !123, !noalias !119 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 10 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !124, !noalias !119 ; 2 uses
  %i.ag = icmp eq i32 %i.aa, 0
  %i.ah = zext i32 %i.af to i64                   ; 4 uses
  %.idx1541.a = mul nuw nsw i64 %i.ah, 152        ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.af, 0
  %or.cond = select i1 %i.ag, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %.preheader952, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm15SmallVectorImplIPNS_7jitlink5BlockEE7reserveEm.exit
  %i.ai = add nuw nsw i64 %i.ah, 31
  %i.aj = lshr i64 %i.ai, 5                       ; 2 uses
  %i.ak = load i32, ptr %i.ad, align 4, !tbaa !57, !noalias !125 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.preheader, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.c
  %i.am = icmp eq i64 %i.aj, 1
  br i1 %i.am, label %.preheader952, label %.lr.ph1673.a

.lr.ph.i.i.i:                                     ; preds = %.lr.ph1673.a
  %i.an = add nuw nsw i64 %i.ap, 1                ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.aj
  br i1 %i.ao, label %.preheader952, label %.lr.ph1673.a, !llvm.loop !128

.lr.ph1673.a:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.ap = phi i64 [ %i.an, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !57, !noalias !125 ; 2 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !128

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph1673.a
  %i.at = mul i64 %i.ap, 4864
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit: ; preds = %bb.c, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.c ], [ %i.at, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.ak, %bb.c ], [ %i.ar, %._crit_edge.i.loopexit.i.i ]
  %i.au = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.au, 152
  %.idx1540 = zext nneg i32 %narrow to i64
  %i.av = add i64 %.012.lcssa.i.i.i, %.idx1540    ; 2 uses
  %.not9041054 = icmp eq i64 %i.av, %.idx1541.a
  br i1 %.not9041054, label %.preheader952, label %.lr.ph1056

.lr.ph1056:                                       ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit
  %i.aw = add nuw nsw i64 %i.ah, 31
  %i.ax = lshr i64 %i.aw, 5                       ; 2 uses
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph1053, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.11827.01052 = phi ptr [ %.sroa.11827.0.copyload, %.lr.ph1053 ], [ %.sroa.11827.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %.sroa.18832.01051 = phi ptr [ %.sroa.18832.0.copyload, %.lr.ph1053 ], [ %.sroa.18832.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %.sroa.0810.01050 = phi ptr [ %.sroa.0810.0.copyload, %.lr.ph1053 ], [ %.sroa.0810.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %.sroa.22837.01049 = phi ptr [ %.sroa.22837.0.copyload, %.lr.ph1053 ], [ %.sroa.22837.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.20.01048 = phi ptr [ %.sroa.20.0.copyload, %.lr.ph1053 ], [ %.sroa.20.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %i.ay = load ptr, ptr %.sroa.11827.01052, align 8, !tbaa !129 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = and i64 %i.ba, 864691128455135232
  %.not95 = icmp eq i64 %i.bb, 864691128455135232
  br i1 %.not95, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !131
  store ptr %i.bd, ptr %i.c, align 8, !tbaa !134
  %i.be = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.be, 0 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 24 ; 3 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !114 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !115
  %.not.i = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !136

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull %i.ay)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE9push_backES3_.exit

bb.g:                                             ; preds = %bb.e
  %i.bk = zext i32 %i.bh to i64
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !112
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bk
  store ptr %i.ay, ptr %i.bm, align 1
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !114
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.bg, align 8, !tbaa !114
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE9push_backES3_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink6SymbolELb1EE9push_backES3_.exit, %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.11827.01052, i64 8
  %i.bq = ptrtoint ptr %.sroa.18832.01051 to i64
  %i.br = ptrtoint ptr %.sroa.20.01048 to i64     ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = ptrtoint ptr %i.bp to i64
  %i.bv = sub i64 %i.bu, %i.br
  %i.bw = ashr exact i64 %i.bv, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.bw, %i.bt
  br i1 %.not.i.i.i.i, label %bb.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

bb.i:                                             ; preds = %bb.h
  %i.bx = add nsw i64 %i.bt, 31
  %i.by = lshr i64 %i.bx, 5                       ; 2 uses
  %i.bz = lshr i64 %i.bw, 5                       ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22837.01049, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !57, !noalias !137
  %i.cc = trunc i64 %i.bw to i32
  %i.cd = and i32 %i.cc, 31
  %i.ce = shl nsw i32 -1, %i.cd
  %i.cf = and i32 %i.cb, %i.ce                    ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %i.ch = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %i.by
  br i1 %i.ci, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph1670

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph1670
  %i.cj = add i64 %i.cl, 1                        ; 2 uses
  %i.ck = icmp eq i64 %i.cj, %i.by
  br i1 %i.ck, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph1670, !llvm.loop !140

.lr.ph1670:                                       ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.cl = phi i64 [ %i.cj, %.lr.ph.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22837.01049, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !57, !noalias !137 ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !140

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph1670, %bb.i
  %.012.lcssa.i.i.i.i = phi i64 [ %i.bz, %bb.i ], [ %i.cl, %.lr.ph1670 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.cf, %bb.i ], [ %i.cn, %.lr.ph1670 ]
  %i.cp = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.cq = zext nneg i32 %i.cp to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.cr = getelementptr i8, ptr %.sroa.20.01048, i64 %.idx.i.i.i.i
  %i.cs = getelementptr [8 x i8], ptr %i.cr, i64 %i.cq
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %bb.h, %._crit_edge.i.i.i.i
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.18832.01051, %bb.h ], [ %i.cs, %._crit_edge.i.i.i.i ], [ %.sroa.18832.01051, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.18832.01051, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0810.01050, %.sroa.10822.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i361

.lr.ph.i361:                                      ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.0810.01050, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !141, !noalias !137 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !143, !noalias !146
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 76
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !155, !noalias !146
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = icmp eq ptr %storemerge16.i.i.i.i, %i.da
  br i1 %i.db, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i361, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0810.11037 = phi ptr [ %storemerge16.i.i.i.i365, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0810.01050, %.lr.ph.i361 ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0810.11037, i64 24
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.l
  %i.df = sdiv exact i64 %i.de, 24                ; 3 uses
  %.not.i.i.i.i364 = icmp ult i64 %i.df, %i.n
  br i1 %.not.i.i.i.i364, label %bb.j, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.j:                                             ; preds = %.lr.ph
  %i.dg = lshr i64 %i.df, 5                       ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9818.0.copyload, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !57, !noalias !137
  %i.dj = trunc i64 %i.df to i32
  %i.dk = and i32 %i.dj, 31
  %i.dl = shl nsw i32 -1, %i.dk
  %i.dm = and i32 %i.di, %i.dl                    ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.i.i.i372.preheader, label %._crit_edge.i.i.i.i368

.lr.ph.i.i.i.i372.preheader:                      ; preds = %bb.j
  %i.do = add nuw nsw i64 %i.dg, 1                ; 2 uses
  %i.dp = icmp eq i64 %i.do, %i.p
  br i1 %i.dp, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph1671

.lr.ph.i.i.i.i372:                                ; preds = %.lr.ph1671
  %i.dq = add i64 %i.ds, 1                        ; 2 uses
  %i.dr = icmp eq i64 %i.dq, %i.p
  br i1 %i.dr, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph1671, !llvm.loop !156

.lr.ph1671:                                       ; preds = %.lr.ph.i.i.i.i372.preheader, %.lr.ph.i.i.i.i372
  %i.ds = phi i64 [ %i.dq, %.lr.ph.i.i.i.i372 ], [ %i.do, %.lr.ph.i.i.i.i372.preheader ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9818.0.copyload, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !57, !noalias !137 ; 2 uses
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.i.i.i372, label %._crit_edge.i.i.i.i368, !llvm.loop !156

._crit_edge.i.i.i.i368:                           ; preds = %.lr.ph1671, %bb.j
  %.012.lcssa.i.i.i.i369 = phi i64 [ %i.dg, %bb.j ], [ %i.ds, %.lr.ph1671 ]
  %.0.lcssa.i.i.i.i370 = phi i32 [ %i.dm, %bb.j ], [ %i.du, %.lr.ph1671 ]
  %i.dw = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i370, i1 true)
  %i.dx = zext nneg i32 %i.dw to i64
  %.idx.i.i.i.i371 = mul i64 %.012.lcssa.i.i.i.i369, 768
  %i.dy = getelementptr i8, ptr %.sroa.8815.0.copyload, i64 %.idx.i.i.i.i371
  %i.dz = getelementptr [24 x i8], ptr %i.dy, i64 %i.dx
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i372, %.lr.ph.i.i.i.i372.preheader, %._crit_edge.i.i.i.i368, %.lr.ph
  %storemerge16.i.i.i.i365 = phi ptr [ %.sroa.7812.0.copyload, %.lr.ph ], [ %i.dz, %._crit_edge.i.i.i.i368 ], [ %.sroa.7812.0.copyload, %.lr.ph.i.i.i.i372.preheader ], [ %.sroa.7812.0.copyload, %.lr.ph.i.i.i.i372 ] ; 5 uses
  %.not.i.i366 = icmp eq ptr %storemerge16.i.i.i.i365, %.sroa.10822.0.copyload
  br i1 %.not.i.i366, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i365, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !141, !noalias !157 ; 4 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 56
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !143, !noalias !160 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !169, !noalias !160 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 76
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !155, !noalias !160 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 72
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !170, !noalias !160
  %i.ek = icmp eq i32 %i.ej, 0
  %i.el = zext i32 %i.eh to i64                   ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.el ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.eh, 0
  %or.cond.i.i.i.i.i = select i1 %i.ek, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.en = add nuw nsw i64 %i.el, 31
  %i.eo = lshr i64 %i.en, 5                       ; 2 uses
  %i.ep = load i32, ptr %i.ef, align 4, !tbaa !57, !noalias !171 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.l
  %i.er = icmp eq i64 %i.eo, 1
  br i1 %i.er, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph1672

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph1672
  %i.es = add nuw nsw i64 %i.eu, 1                ; 2 uses
  %i.et = icmp eq i64 %i.es, %i.eo
  br i1 %i.et, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph1672, !llvm.loop !140

.lr.ph1672:                                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.eu = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !57, !noalias !171 ; 2 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !140

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph1672
  %i.ey = shl i64 %i.eu, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i, %bb.l
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.l ], [ %i.ey, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.ep, %bb.l ], [ %i.ew, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.ez = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %i.ed, i64 %.012.lcssa.i.i.i.i.i.i.i.i
  %i.fc = getelementptr [8 x i8], ptr %i.fb, i64 %i.fa
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %bb.k
  %.sroa.0.0.i367 = phi ptr [ %i.fc, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.em, %bb.k ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.em, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.fd = icmp eq ptr %.sroa.0.0.i367, %i.em
  br i1 %i.fd, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit: ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph.i361, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit
  %.sroa.20.2.a = phi ptr [ %.sroa.20.01048, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.20.01048, %.lr.ph.i361 ], [ %i.ed, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.22837.2 = phi ptr [ %.sroa.22837.01049, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.22837.01049, %.lr.ph.i361 ], [ %i.ef, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.0810.2.a = phi ptr [ %.sroa.0810.01050, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.0810.01050, %.lr.ph.i361 ], [ %storemerge16.i.i.i.i365, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %storemerge16.i.i.i.i365, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ] ; 2 uses
  %.sroa.18832.2 = phi ptr [ %.sroa.18832.01051, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.18832.01051, %.lr.ph.i361 ], [ %i.em, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.11827.2 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %storemerge16.i.i.i.i, %.lr.ph.i361 ], [ %.sroa.0.0.i367, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ] ; 2 uses
  %i.fe = icmp ne ptr %.sroa.0810.2.a, %.sroa.0806.0.copyload
  %i.ff = icmp ne ptr %.sroa.11827.2, %.sroa.4808.0.copyload
  %.not3.i = select i1 %i.fe, i1 true, i1 %i.ff
  br i1 %.not3.i, label %bb.d, label %._crit_edge

.preheader952:                                    ; preds = %.lr.ph.i.i.i, %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink5BlockELb1EE9push_backES3_.exit, %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb0EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %_ZN4llvm15SmallVectorImplIPNS_7jitlink5BlockEE7reserveEm.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit
  %i.fg = load i32, ptr %i.y, align 8, !tbaa !114 ; 2 uses
  %.not.i971062 = icmp eq i32 %i.fg, 0
  br i1 %.not.i971062, label %._crit_edge1064, label %.lr.ph1063

bb.m:                                             ; preds = %.lr.ph1056, %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb0EEppEv.exit
  %.pn = phi i64 [ %i.av, %.lr.ph1056 ], [ %i.gj, %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb0EEppEv.exit ] ; 2 uses
  %.sroa.0800.01055 = getelementptr i8, ptr %i.ab, i64 %.pn ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0800.01055, i64 8
  store ptr %3, ptr %i.fh, align 8, !tbaa !174
  %i.fi = load ptr, ptr %.sroa.0800.01055, align 8, !tbaa !194 ; 2 uses
  %i.fj = load i32, ptr %i.y, align 8, !tbaa !114 ; 2 uses
  %i.fk = load i32, ptr %i.x, align 4, !tbaa !115
  %.not.i96 = icmp ult i32 %i.fj, %i.fk
  br i1 %.not.i96, label %bb.o, label %bb.n, !prof !136

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink5BlockELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.fi)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink5BlockELb1EE9push_backES3_.exit

bb.o:                                             ; preds = %bb.m
  %i.fl = zext i32 %i.fj to i64
  %i.fm = load ptr, ptr %5, align 8, !tbaa !112
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fl
  store ptr %i.fi, ptr %i.fn, align 1
  %i.fo = load i32, ptr %i.y, align 8, !tbaa !114
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.y, align 8, !tbaa !114
  br label %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink5BlockELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink5BlockELb1EE9push_backES3_.exit: ; preds = %bb.n, %bb.o
  %i.fq = add i64 %.pn, 152
  %i.fr = sdiv exact i64 %i.fq, 152               ; 3 uses
  %.not.i.i = icmp ult i64 %i.fr, %i.ah
  br i1 %.not.i.i, label %bb.p, label %.preheader952

bb.p:                                             ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPNS_7jitlink5BlockELb1EE9push_backES3_.exit
  %i.fs = lshr i64 %i.fr, 5                       ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !57
  %i.fv = trunc nuw i64 %i.fr to i32
  %i.fw = and i32 %i.fv, 31
  %i.fx = shl nsw i32 -1, %i.fw
  %i.fy = and i32 %i.fu, %i.fx                    ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb0EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.ga = add nuw nsw i64 %i.fs, 1                ; 2 uses
  %i.gb = icmp eq i64 %i.ga, %i.ax
  br i1 %i.gb, label %.preheader952, label %.lr.ph1674

.lr.ph.i.i:                                       ; preds = %.lr.ph1674
  %i.gc = add i64 %i.ge, 1                        ; 2 uses
  %i.gd = icmp eq i64 %i.gc, %i.ax
  br i1 %i.gd, label %.preheader952, label %.lr.ph1674, !llvm.loop !128

.lr.ph1674:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.ge = phi i64 [ %i.gc, %.lr.ph.i.i ], [ %i.ga, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !57 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, 0
  br i1 %i.gh, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb0EEppEv.exit, !llvm.loop !128

_ZN4llvm16DenseMapIteratorIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EELb0EEppEv.exit: ; preds = %.lr.ph1674, %bb.p
  %.012.lcssa.i.i = phi i64 [ %i.fs, %bb.p ], [ %i.ge, %.lr.ph1674 ]
  %.0.lcssa.i.i = phi i32 [ %i.fy, %bb.p ], [ %i.gg, %.lr.ph1674 ]
  %i.gi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 4864
  %narrow1543 = mul nuw nsw i32 %i.gi, 152
  %.idx1542 = zext nneg i32 %narrow1543 to i64
  %i.gj = add i64 %.idx.i.i, %.idx1542            ; 2 uses
  %.not904 = icmp eq i64 %i.gj, %.idx1541.a
  br i1 %.not904, label %.preheader952, label %bb.m

.loopexit.loopexit:                               ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit
  %.pre1202.a = load i32, ptr %i.y, align 8, !tbaa !114
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph1063
  %i.gk = phi i32 [ %.pre1202.a, %.loopexit.loopexit ], [ %i.gr, %.lr.ph1063 ] ; 2 uses
  %.not.i97 = icmp eq i32 %i.gk, 0
  br i1 %.not.i97, label %._crit_edge1064, label %.lr.ph1063, !llvm.loop !195

.lr.ph1063:                                       ; preds = %.preheader952, %.loopexit
  %i.gl = phi i32 [ %i.gk, %.loopexit ], [ %i.fg, %.preheader952 ] ; 2 uses
  %i.gm = load ptr, ptr %5, align 8, !tbaa !112
  %i.gn = zext i32 %i.gl to i64
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gn
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -8
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !134 ; 6 uses
  %i.gr = add i32 %i.gl, -1                       ; 2 uses
  store i32 %i.gr, ptr %i.y, align 8, !tbaa !114
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 40
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !196 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !196 ; 2 uses
  %.not9051057 = icmp eq ptr %i.gt, %i.gv
  br i1 %.not9051057, label %.loopexit, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %.lr.ph1063
  %i.gw = ptrtoint ptr %i.gq to i64
  %i.gx = mul i64 %i.gw, -4658895280553007687     ; 2 uses
  %i.gy = lshr i64 %i.gx, 31
  %i.gz = xor i64 %i.gy, %i.gx
  %i.ha = trunc i64 %i.gz to i32                  ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph1061, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit
  %.0871059 = phi ptr [ null, %.lr.ph1061 ], [ %.3, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit ] ; 3 uses
  %.sroa.0788.01058 = phi ptr [ %i.gt, %.lr.ph1061 ], [ %i.adq, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit ] ; 3 uses
  %i.hb = load ptr, ptr %.sroa.0788.01058, align 8, !tbaa !198 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !131 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load i64, ptr %i.he, align 8            ; 3 uses
  %i.hg = and i64 %i.hf, 2
  %.not906.a = icmp eq i64 %i.hg, 0
  br i1 %.not906.a, label %bb.r, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E24lookupOrInsertIntoBucketIS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit

bb.r:                                             ; preds = %bb.q
  %.not94 = icmp eq ptr %.0871059, null
  br i1 %.not94, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.hh = load ptr, ptr %3, align 8, !tbaa !122, !noalias !200 ; 3 uses
  %i.hi = load ptr, ptr %i.ac, align 8, !tbaa !123, !noalias !200 ; 3 uses
  %i.hj = load i32, ptr %i.ae, align 4, !tbaa !124, !noalias !200 ; 4 uses
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %.loopexit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hl = add i32 %i.hj, -1                       ; 2 uses
  %i.hm = and i32 %i.hl, %i.ha                    ; 3 uses
  %i.hn = zext i32 %i.hm to i64                   ; 2 uses
  %i.ho = getelementptr inbounds nuw [152 x i8], ptr %i.hh, i64 %i.hn ; 2 uses
  %i.hp = lshr i64 %i.hn, 5
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !57
  %i.hs = and i32 %i.hm, 31
  %i.ht = lshr i32 %i.hr, %i.hs
  %i.hu = trunc i32 %i.ht to i1
  br i1 %i.hu, label %.lr.ph.i.i380, label %.loopexit.i, !prof !205

.lr.ph.i.i380:                                    ; preds = %bb.t, %bb.u
  %i.hv = phi ptr [ %i.ib, %bb.u ], [ %i.ho, %bb.t ] ; 2 uses
  %.024.i.i = phi i32 [ %i.hz, %bb.u ], [ %i.hm, %bb.t ]
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !134
  %i.hx = icmp eq ptr %i.gq, %i.hw
  br i1 %i.hx, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPSA_bEOT_DpOT0_.exit, label %bb.u, !prof !136

bb.u:                                             ; preds = %.lr.ph.i.i380
  %i.hy = add nuw i32 %.024.i.i, 1
  %i.hz = and i32 %i.hy, %i.hl                    ; 3 uses
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = getelementptr inbounds nuw [152 x i8], ptr %i.hh, i64 %i.ia ; 2 uses
  %i.ic = lshr i64 %i.ia, 5
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.ic
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !57
  %i.if = and i32 %i.hz, 31
  %i.ig = lshr i32 %i.ie, %i.if
  %i.ih = trunc i32 %i.ig to i1
  br i1 %i.ih, label %.lr.ph.i.i380, label %.loopexit.i, !prof !206, !llvm.loop !207

.loopexit.i:                                      ; preds = %bb.u, %bb.t, %bb.s
  %.lcssa28.sink.i.ph.i = phi ptr [ %i.ho, %bb.t ], [ null, %bb.s ], [ %i.ib, %bb.u ]
  %i.ii = load i32, ptr %i.w, align 8, !tbaa !116
  %i.ij = shl i32 %i.ii, 2
  %i.ik = add i32 %i.ij, 4
  %i.il = mul i32 %i.hj, 3
  %.not.i.i374 = icmp ult i32 %i.ik, %i.il
  br i1 %.not.i.i374, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, label %bb.v, !prof !136

bb.v:                                             ; preds = %.loopexit.i
  %i.im = shl i32 %i.hj, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %3, i32 noundef %i.im)
  %i.in = load ptr, ptr %3, align 8, !tbaa !122, !noalias !208 ; 5 uses
  %i.io = load ptr, ptr %i.ac, align 8, !tbaa !123, !noalias !208 ; 5 uses
  %i.ip = load i32, ptr %i.ae, align 4, !tbaa !124, !noalias !208 ; 2 uses
  %i.iq = icmp ne i32 %i.ip, 0
  call void @llvm.assume(i1 %i.iq)
  %i.ir = add i32 %i.ip, -1                       ; 2 uses
  %i.is = and i32 %i.ir, %i.ha                    ; 3 uses
  %i.it = zext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds nuw [152 x i8], ptr %i.in, i64 %i.it ; 2 uses
  %i.iv = lshr i64 %i.it, 5
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !57
  %i.iy = and i32 %i.is, 31
  %i.iz = lshr i32 %i.ix, %i.iy
  %i.ja = trunc i32 %i.iz to i1
  br i1 %i.ja, label %.lr.ph.i593, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E22findBucketForInsertionIS4_EEPSA_RKT_SE_.exit.i, !prof !205

.lr.ph.i593:                                      ; preds = %bb.v, %bb.w
  %i.jb = phi ptr [ %i.jh, %bb.w ], [ %i.iu, %bb.v ] ; 2 uses
  %.024.i = phi i32 [ %i.jf, %bb.w ], [ %i.is, %bb.v ]
end_hunk_0
begin_hunk_1_@_ZN4llvm3orc21LinkGraphLinkingLayer18calculateDepGroupsERNS_7jitlink9LinkGraphE:bb.a
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cgs, i64 noundef %i.cgy, i64 noundef 8) #22
  br label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink5BlockENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.cgz = load ptr, ptr %10, align 8, !tbaa !112 ; 2 uses
  %i.cha = icmp eq ptr %i.cgz, %i.afs
  br i1 %i.cha, label %_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj6EED2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit
  call void @free(ptr noundef %i.cgz) #22
  br label %_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj6EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj6EED2Ev.exit: ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.fv

bb.fv:                                            ; preds = %_ZNK4llvm20iterator_facade_baseINS_12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS3_EEEESt20forward_iterator_tagKSt6vectorIS3_SaIS3_EElPSB_RSB_EneERKS6_.exit.thread, %_ZN4llvm11SmallVectorIPNS_7jitlink6SymbolELj6EED2Ev.exit
  call void @_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEE10GetNextSCCEv(ptr noundef nonnull align 8 dereferenceable(104) %8)
  br label %bb.be

.lr.ph1088:                                       ; preds = %.preheader, %_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit
  %.0861087 = phi i64 [ %.1, %_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit ], [ 0, %.preheader ] ; 4 uses
  %i.chb = load ptr, ptr %0, align 8, !tbaa !112
  %i.chc = getelementptr inbounds nuw [88 x i8], ptr %i.chb, i64 %.0861087 ; 7 uses
  %i.chd = load ptr, ptr %i.chc, align 8, !tbaa !112 ; 2 uses
  %i.che = getelementptr inbounds nuw i8, ptr %i.chc, i64 8 ; 2 uses
  %i.chf = load i32, ptr %i.che, align 8, !tbaa !114 ; 2 uses
  %i.chg = zext i32 %i.chf to i64
  %.idx1090 = shl nuw nsw i64 %i.chg, 3
  %i.chh = getelementptr inbounds nuw i8, ptr %i.chd, i64 %.idx1090
  %.not921081 = icmp eq i32 %i.chf, 0
  br i1 %.not921081, label %._crit_edge1085.thread, label %.lr.ph1084

.lr.ph1084:                                       ; preds = %.lr.ph1088
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chc, i64 64 ; 2 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %i.chc, i64 72
  %i.chk = getelementptr inbounds nuw i8, ptr %i.chc, i64 84 ; 2 uses
  %i.chl = load i32, ptr %i.chk, align 4, !tbaa !155, !noalias !528 ; 2 uses
  %i.chm = icmp eq i32 %i.chl, 0
  br i1 %i.chm, label %._crit_edge1085.thread1424, label %.lr.ph1084.split

._crit_edge1085:                                  ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit
  %.pre1225 = load i32, ptr %i.che, align 8, !tbaa !114
  %i.chn = icmp eq i32 %.pre1225, 0
  br i1 %i.chn, label %._crit_edge1085.thread, label %._crit_edge1085.thread1424

.lr.ph1084.splitthread-pre-split:                 ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit
  %.pr1426 = load i32, ptr %i.chk, align 4, !tbaa !155, !noalias !528
  br label %.lr.ph1084.split

.lr.ph1084.split:                                 ; preds = %.lr.ph1084, %.lr.ph1084.splitthread-pre-split
  %i.cho = phi i32 [ %.pr1426, %.lr.ph1084.splitthread-pre-split ], [ %i.chl, %.lr.ph1084 ] ; 2 uses
  %.01082 = phi ptr [ %i.civ, %.lr.ph1084.splitthread-pre-split ], [ %i.chd, %.lr.ph1084 ] ; 2 uses
  %i.chp = load ptr, ptr %i.chi, align 8, !tbaa !143, !noalias !528 ; 2 uses
  %i.chq = load ptr, ptr %i.chj, align 8, !tbaa !169, !noalias !528 ; 2 uses
  %i.chr = icmp eq i32 %i.cho, 0
  br i1 %i.chr, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph1084.split
  %i.chs = add i32 %i.cho, -1                     ; 2 uses
  %i.cht = load ptr, ptr %.01082, align 8, !tbaa !129 ; 2 uses
  %i.chu = ptrtoint ptr %i.cht to i64
  %i.chv = mul i64 %i.chu, -4658895280553007687   ; 2 uses
  %i.chw = lshr i64 %i.chv, 31
  %i.chx = xor i64 %i.chw, %i.chv
  %i.chy = trunc i64 %i.chx to i32
  %i.chz = and i32 %i.chs, %i.chy                 ; 3 uses
  %i.cia = zext i32 %i.chz to i64                 ; 2 uses
  %i.cib = lshr i64 %i.cia, 5
  %i.cic = getelementptr inbounds nuw [4 x i8], ptr %i.chq, i64 %i.cib
  %i.cid = load i32, ptr %i.cic, align 4, !tbaa !57
  %i.cie = and i32 %i.chz, 31
  %i.cif = lshr i32 %i.cid, %i.cie
  %i.cig = trunc i32 %i.cif to i1
  br i1 %i.cig, label %.lr.ph.i.i.i.i359, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !205

.lr.ph.i.i.i.i359:                                ; preds = %bb.fw, %bb.fx
  %i.cih = phi i64 [ %i.cin, %bb.fx ], [ %i.cia, %bb.fw ] ; 2 uses
  %.019.i.i.i.i = phi i32 [ %i.cim, %bb.fx ], [ %i.chz, %bb.fw ]
  %i.cii = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %i.cih
  %i.cij = load ptr, ptr %i.cii, align 8, !tbaa !129
  %i.cik = icmp eq ptr %i.cht, %i.cij
  br i1 %i.cik, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i, label %bb.fx, !prof !136

bb.fx:                                            ; preds = %.lr.ph.i.i.i.i359
  %i.cil = add nuw i32 %.019.i.i.i.i, 1
  %i.cim = and i32 %i.cil, %i.chs                 ; 3 uses
  %i.cin = zext i32 %i.cim to i64                 ; 2 uses
  %i.cio = lshr i64 %i.cin, 5
  %i.cip = getelementptr inbounds nuw [4 x i8], ptr %i.chq, i64 %i.cio
  %i.ciq = load i32, ptr %i.cip, align 4, !tbaa !57
  %i.cir = and i32 %i.cim, 31
  %i.cis = lshr i32 %i.ciq, %i.cir
  %i.cit = trunc i32 %i.cis to i1
  br i1 %i.cit, label %.lr.ph.i.i.i.i359, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit, !prof !206

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i359
  %i.ciu = getelementptr inbounds nuw [8 x i8], ptr %i.chp, i64 %i.cih
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E21eraseFromFilledBucketIZNSC_21eraseFromFilledBucketEPSA_EUlRSA_E_EEvSE_OT_(ptr noundef nonnull align 8 dereferenceable(24) %i.chi, ptr noundef nonnull %i.ciu, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE5eraseERKS4_.exit: ; preds = %bb.fx, %.lr.ph1084.split, %bb.fw, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink6SymbolENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E6doFindIS4_EEPSA_RKT_.exit.i.i
  %i.civ = getelementptr inbounds nuw i8, ptr %.01082, i64 8 ; 2 uses
  %.not92 = icmp eq ptr %i.civ, %i.chh
  br i1 %.not92, label %._crit_edge1085, label %.lr.ph1084.splitthread-pre-split, !llvm.loop !533

._crit_edge1085.thread1424:                       ; preds = %.lr.ph1084, %._crit_edge1085
  %i.ciw = getelementptr inbounds nuw i8, ptr %i.chc, i64 80
  %i.cix = load i32, ptr %i.ciw, align 8, !tbaa !170
  %i.ciy = icmp eq i32 %i.cix, 0
  br i1 %i.ciy, label %._crit_edge1085.thread, label %bb.ga

._crit_edge1085.thread:                           ; preds = %.lr.ph1088, %._crit_edge1085.thread1424, %._crit_edge1085
  %i.ciz = load ptr, ptr %0, align 8, !tbaa !112
  %i.cja = load i32, ptr %i.adu, align 8, !tbaa !114
  %i.cjb = zext i32 %i.cja to i64
  %i.cjc = getelementptr inbounds nuw [88 x i8], ptr %i.ciz, i64 %i.cjb
  %i.cjd = getelementptr inbounds i8, ptr %i.cjc, i64 -88
  call void @_ZSt4swapIN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(88) %i.chc, ptr noundef nonnull align 8 dereferenceable(88) %i.cjd)
  %i.cje = load i32, ptr %i.adu, align 8, !tbaa !114
  %i.cjf = add i32 %i.cje, -1                     ; 2 uses
  store i32 %i.cjf, ptr %i.adu, align 8, !tbaa !114
  %i.cjg = load ptr, ptr %0, align 8, !tbaa !112
  %i.cjh = zext i32 %i.cjf to i64
  %i.cji = getelementptr inbounds nuw [88 x i8], ptr %i.cjg, i64 %i.cjh ; 4 uses
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cji, i64 84
  %i.cjk = load i32, ptr %i.cjj, align 4, !tbaa !155 ; 2 uses
  %i.cjl = icmp eq i32 %i.cjk, 0
  br i1 %i.cjl, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge1085.thread
  %i.cjm = getelementptr inbounds nuw i8, ptr %i.cji, i64 64
  %i.cjn = load ptr, ptr %i.cjm, align 8, !tbaa !143
  %i.cjo = zext i32 %i.cjk to i64                 ; 2 uses
  %i.cjp = shl nuw nsw i64 %i.cjo, 3
  %i.cjq = add nuw nsw i64 %i.cjo, 31
  %i.cjr = lshr i64 %i.cjq, 3
  %i.cjs = and i64 %i.cjr, 1073741820
  %i.cjt = add nuw nsw i64 %i.cjs, %i.cjp
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cjn, i64 noundef %i.cjt, i64 noundef 8) #22
  br label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i: ; preds = %bb.fy, %._crit_edge1085.thread
  %i.cju = load ptr, ptr %i.cji, align 8, !tbaa !112 ; 2 uses
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cji, i64 16
  %i.cjw = icmp eq ptr %i.cju, %i.cjv
  br i1 %i.cjw, label %_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit, label %bb.fz

bb.fz:                                            ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i
  call void @free(ptr noundef %i.cju) #22
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit

bb.ga:                                            ; preds = %._crit_edge1085.thread1424
  %i.cjx = add i64 %.0861087, 1
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit

_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit: ; preds = %bb.fz, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i, %bb.ga
  %.1 = phi i64 [ %i.cjx, %bb.ga ], [ %.0861087, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEED2Ev.exit.i.i ], [ %.0861087, %bb.fz ] ; 2 uses
  %i.cjy = load i32, ptr %i.adu, align 8, !tbaa !114
  %i.cjz = zext i32 %i.cjy to i64
  %.not = icmp eq i64 %.1, %i.cjz
  br i1 %.not, label %._crit_edge1089, label %.lr.ph1088, !llvm.loop !535

._crit_edge1089:                                  ; preds = %.lr.ph.i.i.i127, %_ZN4llvm23SmallVectorTemplateBaseINS_3orc21LinkGraphLinkingLayer14SymbolDepGroupELb0EE8pop_backEv.exit, %.lr.ph.i.i.i127.preheader, %_ZN4llvm11SmallVectorIPNS_7jitlink5BlockELj6EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E5beginEv.exit130, %.preheader
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEES4_S5_S7_SA_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.cka = load i32, ptr %i.ae, align 4, !tbaa !124 ; 2 uses
  %i.ckb = icmp eq i32 %i.cka, 0
  br i1 %i.ckb, label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge1089
  %i.ckc = load ptr, ptr %3, align 8, !tbaa !122
  %i.ckd = zext i32 %i.cka to i64                 ; 2 uses
  %i.cke = mul nuw nsw i64 %i.ckd, 152
  %i.ckf = add nuw nsw i64 %i.ckd, 31
  %i.ckg = lshr i64 %i.ckf, 3
  %i.ckh = and i64 %i.ckg, 1073741820
  %i.cki = add nuw nsw i64 %i.ckh, %i.cke
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ckc, i64 noundef %i.cki, i64 noundef 8) #22
  br label %_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_7jitlink5BlockENS_12BlockDepInfoENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEED2Ev.exit: ; preds = %._crit_edge1089, %bb.gb
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::iterator_range") align 8 %0, ptr noundef nonnull align 8 dereferenceable(312) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !536, !noalias !539 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !544, !noalias !539 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.f = load i32, ptr %i.e, align 4, !tbaa !545, !noalias !539 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.h = load i32, ptr %i.g, align 8, !tbaa !546, !noalias !539
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
  %i.n = load i32, ptr %i.d, align 4, !tbaa !57, !noalias !547 ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph8sectionsEv.exit

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 1
  br i1 %i.p, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph306
  %i.q = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.m
  br i1 %i.r, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph306, !llvm.loop !156

.lr.ph306:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.s = phi i64 [ %i.q, %.lr.ph.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !547 ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i, !llvm.loop !156

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
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !141, !noalias !550 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !143, !noalias !553 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !169, !noalias !553 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 76
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !155, !noalias !553 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !170, !noalias !553
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
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !57, !noalias !562 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.a

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.d
  %i.aq = icmp eq i64 %i.an, 1
  br i1 %i.aq, label %.lr.ph.preheader.a, label %.lr.ph307

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph307
  %i.ar = add nuw nsw i64 %i.at, 1                ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.an
  br i1 %i.as, label %.lr.ph.preheader.a, label %.lr.ph307, !llvm.loop !140

.lr.ph307:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.at = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !57, !noalias !562 ; 2 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !140

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
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !57
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
  br i1 %i.bn, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEC2ESJ_SJ_.exit17, label %.lr.ph308, !llvm.loop !156

.lr.ph308:                                        ; preds = %.lr.ph.i.i.i.i30.preheader, %.lr.ph.i.i.i.i30
  %i.bo = phi i64 [ %i.bm, %.lr.ph.i.i.i.i30 ], [ %i.bk, %.lr.ph.i.i.i.i30.preheader ] ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !57 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.i.i.i30, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, !llvm.loop !156

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
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !141, !noalias !565 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 56
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !143, !noalias !568 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !169, !noalias !568 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !155, !noalias !568 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !170, !noalias !568
  %i.cf = icmp eq i32 %i.ce, 0
  %i.cg = zext i32 %i.cc to i64                   ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cg ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i19 = icmp eq i32 %i.cc, 0
  %or.cond.i.i.i.i.i20 = select i1 %i.cf, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i19
  br i1 %or.cond.i.i.i.i.i20, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = add nuw nsw i64 %i.cg, 31
  %i.cj = lshr i64 %i.ci, 5                       ; 2 uses
  %i.ck = load i32, ptr %i.ca, align 4, !tbaa !57, !noalias !577 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i24.preheader, label %._crit_edge.i.i.i.i.i.i.i.i21

.lr.ph.i.i.i.i.i.i.i.i24.preheader:               ; preds = %bb.g
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309

.lr.ph.i.i.i.i.i.i.i.i24:                         ; preds = %.lr.ph309
  %i.cn = add nuw nsw i64 %i.cp, 1                ; 2 uses
  %i.co = icmp eq i64 %i.cn, %i.cj
  br i1 %i.co, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph309, !llvm.loop !140

.lr.ph309:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i24.preheader, %.lr.ph.i.i.i.i.i.i.i.i24
  %i.cp = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i24 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i24.preheader ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !57, !noalias !577 ; 2 uses
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i.i.i.i.i.i24, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i26, !llvm.loop !140

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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm14iterator_rangeINS_12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !345  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !339
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #23
  br label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i

_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !337
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #23
  br label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i

_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i: ; preds = %bb.c, %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !355  ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !337
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #23
  br label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i

_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i: ; preds = %bb.d, %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.w = load i32, ptr %i.v, align 4, !tbaa !356  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !357
  %i.aa = zext i32 %i.w to i64                    ; 2 uses
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = add nuw nsw i64 %i.aa, 31
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = and i64 %i.ad, 1073741820
  %i.af = add nuw nsw i64 %i.ae, %i.ab
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.z, i64 noundef %i.af, i64 noundef 8) #22
  br label %_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit

_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !345 ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i2, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !339
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %i.ah to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.am) #23
  br label %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i2

_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i2: ; preds = %bb.f, %_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !355 ; 3 uses
  %.not.i.i.i1.i3 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i1.i3, label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i4, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !337
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #23
  br label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i4

_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i4: ; preds = %bb.g, %_ZNSt6vectorIN4llvm12scc_iteratorIPNS0_12BlockDepInfoENS0_11GraphTraitsIS3_EEE12StackElementESaIS7_EED2Ev.exit.i2
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !355 ; 3 uses
  %.not.i.i.i2.i5 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i2.i5, label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i6, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !337
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #23
  br label %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i6

_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i6: ; preds = %bb.h, %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit.i4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !356 ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit7, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i6
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !357
  %i.bg = zext i32 %i.bc to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #22
  br label %_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit7

_ZN4llvm12scc_iteratorIPNS_12BlockDepInfoENS_11GraphTraitsIS2_EEED2Ev.exit7: ; preds = %_ZNSt6vectorIPN4llvm12BlockDepInfoESaIS2_EED2Ev.exit3.i6, %bb.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS7_ESt18is_move_assignableIS7_EEE5valueEvE4typeERS7_SG_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #10 comdat {
bb.a:
  %2 = alloca %"struct.llvm::orc::LinkGraphLinkingLayer::SymbolDepGroup", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !112
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 6, ptr %i.c, align 4, !tbaa !115
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupC2EOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_7jitlink6SymbolEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %0) ; 0 uses
  br label %_ZN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupC2EOS2_.exit

_ZN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupC2EOS2_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !341
  store ptr null, ptr %i.h, align 8, !tbaa !360
  store <2 x ptr> %i.k, ptr %i.g, align 8, !tbaa !341
  store ptr null, ptr %i.j, align 8, !tbaa !343
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.p = load <2 x i32>, ptr %i.m, align 8, !tbaa !57
  store i32 0, ptr %i.m, align 8, !tbaa !57
  store <2 x i32> %i.p, ptr %i.l, align 8, !tbaa !57
  store i32 0, ptr %i.o, align 4, !tbaa !57
  %i.q = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIPNS_7jitlink6SymbolEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) ; 0 uses
  %i.r = load i32, ptr %i.o, align 4, !tbaa !155  ; 2 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %_ZN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupaSEOS2_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm3orc21LinkGraphLinkingLayer14SymbolDepGroupC2EOS2_.exit
  %i.t = load ptr, ptr %i.h, align 8, !tbaa !143
  %i.u = zext i32 %i.r to i64                     ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.u, 31
end_hunk_1
begin_hunk_2_@_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx6lookupERKNS_8DenseMapINS0_15SymbolStringPtrENS_7jitlink17SymbolLookupFlagsENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S6_EEEESt10unique_ptrINS5_30JITLinkAsyncLookupContinuationESt14default_deleteISG_EE:bb.a
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !1022 ; 5 uses
  %i.cv = load ptr, ptr %i.an, align 16, !tbaa !1009
  %.not.i.i.i25 = icmp eq ptr %i.cu, %i.cv
  br i1 %.not.i.i.i25, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  store ptr %i.cp, ptr %i.cu, align 8, !tbaa !884
  store ptr null, ptr %3, align 8, !tbaa !884
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %switch.select8, ptr %i.cw, align 8, !tbaa !1032
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store ptr %i.cx, ptr %i.am, align 8, !tbaa !1022
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i

bb.n:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrC2ERKS1_.exit
  call void @_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.cu, ptr noundef nonnull align 8 dereferenceable(12) %3)
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !885
  br label %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i

_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i: ; preds = %bb.n, %bb.m
  %i.cy = phi ptr [ null, %bb.m ], [ %.pre.i, %bb.n ] ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %notsub.i.i.i.i.i = add i64 %i.cz, -1
  %i.da = icmp ult i64 %notsub.i.i.i.i.i, -32
  br i1 %i.da, label %bb.o, label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.dc = atomicrmw sub ptr %i.db, i64 1 seq_cst, align 8 ; 0 uses
  br label %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit

_ZN4llvm3orc15SymbolStringPtrD2Ev.exit:           ; preds = %bb.o, %_ZNSt6vectorISt4pairIN4llvm3orc15SymbolStringPtrENS2_17SymbolLookupFlagsEESaIS5_EE9push_backEOS5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.dd = add i64 %.pn, 16
  %i.de = ashr exact i64 %i.dd, 4                 ; 3 uses
  %.not.i.i27 = icmp ult i64 %i.de, %i.v
  br i1 %.not.i.i27, label %bb.p, label %._crit_edge.loopexit

bb.p:                                             ; preds = %_ZN4llvm3orc15SymbolStringPtrD2Ev.exit
  %i.df = lshr i64 %i.de, 5                       ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !57
  %i.di = trunc nuw i64 %i.de to i32
  %i.dj = and i32 %i.di, 31
  %i.dk = shl nsw i32 -1, %i.dj
  %i.dl = and i32 %i.dh, %i.dk                    ; 2 uses
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_7jitlink17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb1EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.p
  %i.dn = add nuw nsw i64 %i.df, 1                ; 2 uses
  %i.do = icmp eq i64 %i.dn, %i.ap
  br i1 %i.do, label %._crit_edge.loopexit, label %.lr.ph91

.lr.ph.i.i:                                       ; preds = %.lr.ph91
  %i.dp = add i64 %i.dr, 1                        ; 2 uses
  %i.dq = icmp eq i64 %i.dp, %i.ap
  br i1 %i.dq, label %._crit_edge.loopexit, label %.lr.ph91, !llvm.loop !1006

.lr.ph91:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.dr = phi i64 [ %i.dp, %.lr.ph.i.i ], [ %i.dn, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !57 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_7jitlink17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb1EEppEv.exit, !llvm.loop !1006

_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_7jitlink17SymbolLookupFlagsENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EELb1EEppEv.exit: ; preds = %.lr.ph91, %bb.p
  %.012.lcssa.i.i = phi i64 [ %i.df, %bb.p ], [ %i.dr, %.lr.ph91 ]
  %.0.lcssa.i.i = phi i32 [ %i.dl, %bb.p ], [ %i.dt, %.lr.ph91 ]
  %i.dv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = shl i64 %.012.lcssa.i.i, 9
  %i.dw = shl nuw nsw i32 %i.dv, 4
  %.idx83 = zext nneg i32 %i.dw to i64
  %i.dx = or disjoint i64 %.idx.i.i, %.idx83      ; 2 uses
  %.not = icmp eq i64 %i.dx, %.idx82
  br i1 %.not, label %._crit_edge.loopexit, label %bb.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm3orc21LinkGraphLinkingLayer10JITLinkCtx14notifyResolvedERNS_7jitlink9LinkGraphE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(312) %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvm::DenseMap.184", align 16 ; 9 uses
  %4 = alloca %"class.llvm::DenseMap.184", align 8 ; 11 uses
  %5 = alloca %"class.llvm::DenseMap.426", align 8 ; 17 uses
  %6 = alloca %"class.llvm::iterator_range", align 8 ; 14 uses
  %7 = alloca %"class.llvm::DenseMap.184", align 16 ; 9 uses
  %8 = alloca %"class.std::vector.454", align 8   ; 19 uses
  %9 = alloca %"class.std::shared_ptr", align 16  ; 5 uses
  %10 = alloca %"class.std::vector.454", align 8  ; 14 uses
  %11 = alloca %"class.std::shared_ptr", align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !960, !nonnull !45, !align !46
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 121
  %i.d = load i8, ptr %i.c, align 1, !tbaa !43, !range !437, !noundef !45
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @_ZN4llvm7jitlink9LinkGraph15defined_symbolsEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %6, ptr noundef nonnull align 8 dereferenceable(312) %2)
  %.sroa.0260.0.copyload = load ptr, ptr %6, align 8 ; 2 uses
  %.sroa.7262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.7262.0.copyload = load ptr, ptr %.sroa.7262.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.8265.0.copyload = load ptr, ptr %.sroa.8265.0..sroa_idx, align 8 ; 2 uses
  %.sroa.9268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.9268.0.copyload = load ptr, ptr %.sroa.9268.0..sroa_idx, align 8 ; 2 uses
  %.sroa.10273.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.10273.0.copyload = load ptr, ptr %.sroa.10273.0..sroa_idx, align 8 ; 2 uses
  %.sroa.11278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 80
  %.sroa.11278.0.copyload = load ptr, ptr %.sroa.11278.0..sroa_idx, align 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 112
  %.sroa.0256.0.copyload = load ptr, ptr %i.f, align 8 ; 2 uses
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 192
  %.sroa.4258.0.copyload = load ptr, ptr %.sroa.4258.0..sroa_idx, align 8 ; 2 uses
  %i.g = icmp ne ptr %.sroa.0260.0.copyload, %.sroa.0256.0.copyload
  %i.h = icmp ne ptr %.sroa.11278.0.copyload, %.sroa.4258.0.copyload
  %.not3.i352 = select i1 %i.g, i1 true, i1 %i.h
  br i1 %.not3.i352, label %.lr.ph358, label %._crit_edge

.lr.ph358:                                        ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 104
  %.sroa.22.0.copyload = load ptr, ptr %.sroa.22.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 96
  %.sroa.20.0.copyload = load ptr, ptr %.sroa.20.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 88
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = ptrtoint ptr %.sroa.7262.0.copyload to i64
  %i.l = ptrtoint ptr %.sroa.8265.0.copyload to i64 ; 2 uses
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = add nsw i64 %i.n, 31
  %i.p = lshr i64 %i.o, 5                         ; 2 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !143, !noalias !1035
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 272
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !169, !noalias !1035 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 284
  %i.v = load i32, ptr %i.u, align 4, !tbaa !155, !noalias !1035 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.x = load i32, ptr %i.w, align 8, !tbaa !170, !noalias !1035
  %i.y = icmp eq i32 %i.x, 0
  %i.z = zext i32 %i.v to i64                     ; 4 uses
  %.idx538 = shl nuw nsw i64 %i.z, 3              ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.v, 0
  %or.cond.i.i = select i1 %i.y, i1 true, i1 %.not.i.not.i.i.i.i
  br i1 %or.cond.i.i, label %._crit_edge362, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %i.ac = load i32, ptr %i.t, align 4, !tbaa !57, !noalias !1042 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN4llvm7jitlink9LinkGraph16absolute_symbolsEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %i.ae = icmp eq i64 %i.ab, 1
  br i1 %i.ae, label %._crit_edge362, label %.lr.ph584.a

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph584.a
  %i.af = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %i.ag = icmp eq i64 %i.af, %i.ab
  br i1 %i.ag, label %._crit_edge362, label %.lr.ph584.a, !llvm.loop !140

.lr.ph584.a:                                      ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.ah = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57, !noalias !1042 ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !140

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph584.a
  %i.al = shl i64 %i.ah, 8
  br label %_ZN4llvm7jitlink9LinkGraph16absolute_symbolsEv.exit

_ZN4llvm7jitlink9LinkGraph16absolute_symbolsEv.exit: ; preds = %bb.b, %._crit_edge.i.loopexit.i.i.i.i
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.al, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.ac, %bb.b ], [ %i.aj, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.am = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.an = shl nuw nsw i32 %i.am, 3
  %.idx = zext nneg i32 %i.an to i64
  %i.ao = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx ; 2 uses
  %.not359 = icmp eq i64 %i.ao, %.idx538
  br i1 %.not359, label %._crit_edge362, label %.lr.ph361

.lr.ph361:                                        ; preds = %_ZN4llvm7jitlink9LinkGraph16absolute_symbolsEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ar = add nuw nsw i64 %i.z, 31
  %i.as = lshr i64 %i.ar, 5                       ; 2 uses
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph358, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit
  %.sroa.11278.0357 = phi ptr [ %.sroa.11278.0.copyload, %.lr.ph358 ], [ %.sroa.11278.2, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 2 uses
  %.sroa.0260.0356 = phi ptr [ %.sroa.0260.0.copyload, %.lr.ph358 ], [ %.sroa.0260.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 5 uses
  %.sroa.22.0355 = phi ptr [ %.sroa.22.0.copyload, %.lr.ph358 ], [ %.sroa.22.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.20.0354 = phi ptr [ %.sroa.20.0.copyload, %.lr.ph358 ], [ %.sroa.20.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 4 uses
  %.sroa.18.0353 = phi ptr [ %.sroa.18.0.copyload, %.lr.ph358 ], [ %.sroa.18.2.a, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit ] ; 6 uses
  %i.at = load ptr, ptr %.sroa.11278.0357, align 8, !tbaa !129 ; 8 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8            ; 2 uses
  %i.aw = and i64 %i.av, 576460752303423488
  %.not312.not.a = icmp eq i64 %i.aw, 0
  br i1 %.not312.not.a, label %bb.d, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit

bb.d:                                             ; preds = %bb.c
  %.val63 = load i32, ptr %i.i, align 8, !tbaa !1045
  switch i32 %.val63, label %bb.f [
    i32 1, label %bb.e
    i32 2, label %bb.e
    i32 38, label %bb.e
    i32 39, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.ax = call noundef zeroext i1 @_ZN4llvm7jitlink7aarch3214hasTargetFlagsERNS0_6SymbolEh(ptr noundef nonnull align 8 dereferenceable(32) %i.at, i8 noundef zeroext 1) #22
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !131
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.az, align 8, !tbaa !452
  %i.ba = load i64, ptr %i.au, align 8
  %i.bb = and i64 %i.ba, 144115188075855871
  %i.bc = add i64 %i.bb, %.sroa.0.0.copyload.i.i.i
  %i.bd = zext i1 %i.ax to i64
  %spec.select = add i64 %i.bc, %i.bd
  br label %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit

bb.f:                                             ; preds = %bb.d
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !131
  %.sroa.0.0.copyload.i.i6.i = load i64, ptr %i.bf, align 8, !tbaa !452
  %i.bg = and i64 %i.av, 144115188075855871
  %i.bh = add i64 %.sroa.0.0.copyload.i.i6.i, %i.bg
  br label %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit

_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi i64 [ %i.bh, %bb.f ], [ %spec.select, %bb.e ]
  %i.bi = call i16 @_ZN4llvm3orc14LinkGraphLayer26getJITSymbolFlagsForSymbolERNS_7jitlink6SymbolE(ptr noundef nonnull align 8 dereferenceable(32) %i.at) #22 ; 2 uses
  %i.bj = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.bj, 0 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 8
  store i64 %.sroa.0.0.i, ptr %i.bk, align 8, !tbaa !452
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i, i64 16
  store i16 %i.bi, ptr %.sroa.4254.0..sroa_idx, align 8
  br i1 %i.e, label %bb.g, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit

bb.g:                                             ; preds = %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !78  ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !889, !noalias !1053
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !890, !noalias !1053 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 36
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !888, !noalias !1053 ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.loopexit315.a, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = add i32 %i.br, -1                       ; 2 uses
  %i.bu = load ptr, ptr %i.at, align 8, !tbaa !885 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = mul i64 %i.bv, -4658895280553007687     ; 2 uses
  %i.bx = lshr i64 %i.bw, 31
  %i.by = xor i64 %i.bx, %i.bw
  %i.bz = trunc i64 %i.by to i32
  %i.ca = and i32 %i.bt, %i.bz                    ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 2 uses
  %i.cc = lshr i64 %i.cb, 5
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !57
  %i.cf = and i32 %i.ca, 31
  %i.cg = lshr i32 %i.ce, %i.cf
  %i.ch = trunc i32 %i.cg to i1
  br i1 %i.ch, label %.lr.ph.i.i.i, label %.loopexit315.a, !prof !205

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %i.ci = phi i64 [ %i.co, %bb.i ], [ %i.cb, %bb.h ]
  %.017.i.i.i = phi i32 [ %i.cn, %bb.i ], [ %i.ca, %bb.h ]
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.ci
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !885
  %i.cl = icmp eq ptr %i.bu, %i.ck
  br i1 %i.cl, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit, label %bb.i, !prof !136

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.cm = add nuw i32 %.017.i.i.i, 1
  %i.cn = and i32 %i.cm, %i.bt                    ; 3 uses
  %i.co = zext i32 %i.cn to i64                   ; 2 uses
  %i.cp = lshr i64 %i.co, 5
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !57
  %i.cs = and i32 %i.cn, 31
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = trunc i32 %i.ct to i1
  br i1 %i.cu, label %.lr.ph.i.i.i, label %.loopexit315.a, !prof !206

.loopexit315.a:                                   ; preds = %bb.i, %bb.g, %bb.h
  %i.cv = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.at)
  %.fca.0.extract.i64 = extractvalue { ptr, i8 } %i.cv, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i64, i64 8
  store i16 %i.bi, ptr %i.cw, align 1
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit, %.loopexit315.a, %bb.c
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.11278.0357, i64 8
  %i.cy = ptrtoint ptr %.sroa.18.0353 to i64
  %i.cz = ptrtoint ptr %.sroa.20.0354 to i64      ; 2 uses
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = ashr exact i64 %i.da, 3                 ; 2 uses
  %i.dc = ptrtoint ptr %i.cx to i64
  %i.dd = sub i64 %i.dc, %i.cz
  %i.de = ashr exact i64 %i.dd, 3                 ; 3 uses
  %.not.i.i.i.i = icmp ult i64 %i.de, %i.db
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

bb.j:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit
  %i.df = add nsw i64 %i.db, 31
  %i.dg = lshr i64 %i.df, 5                       ; 2 uses
  %i.dh = lshr i64 %i.de, 5                       ; 3 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0355, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !57, !noalias !1058
  %i.dk = trunc i64 %i.de to i32
  %i.dl = and i32 %i.dk, 31
  %i.dm = shl nsw i32 -1, %i.dl
  %i.dn = and i32 %i.dj, %i.dm                    ; 2 uses
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i.i.i.i.preheader, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.j
  %i.dp = add nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dq = icmp eq i64 %i.dp, %i.dg
  br i1 %i.dq, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph581

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph581
  %i.dr = add i64 %i.dt, 1                        ; 2 uses
  %i.ds = icmp eq i64 %i.dr, %i.dg
  br i1 %i.ds, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit, label %.lr.ph581, !llvm.loop !140

.lr.ph581:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.dt = phi i64 [ %i.dr, %.lr.ph.i.i.i.i ], [ %i.dp, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %.sroa.22.0355, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !57, !noalias !1058 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !140

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph581, %bb.j
  %.012.lcssa.i.i.i.i = phi i64 [ %i.dh, %bb.j ], [ %i.dt, %.lr.ph581 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.dn, %bb.j ], [ %i.dv, %.lr.ph581 ]
  %i.dx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %i.dy = zext nneg i32 %i.dx to i64
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 8
  %i.dz = getelementptr i8, ptr %.sroa.20.0354, i64 %.idx.i.i.i.i
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %i.dy
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit, %._crit_edge.i.i.i.i
  %storemerge16.i.i.i.i = phi ptr [ %.sroa.18.0353, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit ], [ %i.ea, %._crit_edge.i.i.i.i ], [ %.sroa.18.0353, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.18.0353, %.lr.ph.i.i.i.i ] ; 3 uses
  %.not21.i = icmp eq ptr %.sroa.0260.0356, %.sroa.10273.0.copyload
  br i1 %.not21.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0260.0356, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !141, !noalias !1058 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !143, !noalias !1061
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 76
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !155, !noalias !1061
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = icmp eq ptr %storemerge16.i.i.i.i, %i.ei
  br i1 %i.ej, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit

.lr.ph:                                           ; preds = %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i
  %.sroa.0260.1342 = phi ptr [ %storemerge16.i.i.i.i206, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ %.sroa.0260.0356, %.lr.ph.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0260.1342, i64 24
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = sub i64 %i.el, %i.l
  %i.en = sdiv exact i64 %i.em, 24                ; 3 uses
  %.not.i.i.i.i205 = icmp ult i64 %i.en, %i.n
  br i1 %.not.i.i.i.i205, label %bb.k, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

bb.k:                                             ; preds = %.lr.ph
  %i.eo = lshr i64 %i.en, 5                       ; 3 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9268.0.copyload, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !57, !noalias !1058
  %i.er = trunc i64 %i.en to i32
  %i.es = and i32 %i.er, 31
  %i.et = shl nsw i32 -1, %i.es
  %i.eu = and i32 %i.eq, %i.et                    ; 2 uses
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i213.preheader, label %._crit_edge.i.i.i.i209

.lr.ph.i.i.i.i213.preheader:                      ; preds = %bb.k
  %i.ew = add nuw nsw i64 %i.eo, 1                ; 2 uses
  %i.ex = icmp eq i64 %i.ew, %i.p
  br i1 %i.ex, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph582

.lr.ph.i.i.i.i213:                                ; preds = %.lr.ph582
  %i.ey = add i64 %i.fa, 1                        ; 2 uses
  %i.ez = icmp eq i64 %i.ey, %i.p
  br i1 %i.ez, label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, label %.lr.ph582, !llvm.loop !156

.lr.ph582:                                        ; preds = %.lr.ph.i.i.i.i213.preheader, %.lr.ph.i.i.i.i213
  %i.fa = phi i64 [ %i.ey, %.lr.ph.i.i.i.i213 ], [ %i.ew, %.lr.ph.i.i.i.i213.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.9268.0.copyload, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !57, !noalias !1058 ; 2 uses
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i.i.i.i213, label %._crit_edge.i.i.i.i209, !llvm.loop !156

._crit_edge.i.i.i.i209:                           ; preds = %.lr.ph582, %bb.k
  %.012.lcssa.i.i.i.i210 = phi i64 [ %i.eo, %bb.k ], [ %i.fa, %.lr.ph582 ]
  %.0.lcssa.i.i.i.i211 = phi i32 [ %i.eu, %bb.k ], [ %i.fc, %.lr.ph582 ]
  %i.fe = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i211, i1 true)
  %i.ff = zext nneg i32 %i.fe to i64
  %.idx.i.i.i.i212 = mul i64 %.012.lcssa.i.i.i.i210, 768
  %i.fg = getelementptr i8, ptr %.sroa.8265.0.copyload, i64 %.idx.i.i.i.i212
  %i.fh = getelementptr [24 x i8], ptr %i.fg, i64 %i.ff
  br label %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i

_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i: ; preds = %.lr.ph.i.i.i.i213, %.lr.ph.i.i.i.i213.preheader, %._crit_edge.i.i.i.i209, %.lr.ph
  %storemerge16.i.i.i.i206 = phi ptr [ %.sroa.7262.0.copyload, %.lr.ph ], [ %i.fh, %._crit_edge.i.i.i.i209 ], [ %.sroa.7262.0.copyload, %.lr.ph.i.i.i.i213.preheader ], [ %.sroa.7262.0.copyload, %.lr.ph.i.i.i.i213 ] ; 5 uses
  %.not.i.i207 = icmp eq ptr %storemerge16.i.i.i.i206, %.sroa.10273.0.copyload
  br i1 %.not.i.i207, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %storemerge16.i.i.i.i206, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !141, !noalias !1070 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !143, !noalias !1073 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 64
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !169, !noalias !1073 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fj, i64 76
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !155, !noalias !1073 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !170, !noalias !1073
  %i.fs = icmp eq i32 %i.fr, 0
  %i.ft = zext i32 %i.fp to i64                   ; 2 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.ft ; 5 uses
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i32 %i.fp, 0
  %or.cond.i.i.i.i.i = select i1 %i.fs, i1 true, i1 %.not.i.not.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fv = add nuw nsw i64 %i.ft, 31
  %i.fw = lshr i64 %i.fv, 5                       ; 2 uses
  %i.fx = load i32, ptr %i.fn, align 4, !tbaa !57, !noalias !1082 ; 2 uses
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %._crit_edge.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.m
  %i.fz = icmp eq i64 %i.fw, 1
  br i1 %i.fz, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph583

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph583
  %i.ga = add nuw nsw i64 %i.gc, 1                ; 2 uses
  %i.gb = icmp eq i64 %i.ga, %i.fw
  br i1 %i.gb, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, label %.lr.ph583, !llvm.loop !140

.lr.ph583:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %i.gc = phi i64 [ %i.ga, %.lr.ph.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !57, !noalias !1082 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i.i.i.i, !llvm.loop !140

._crit_edge.i.loopexit.i.i.i.i.i.i.i:             ; preds = %.lr.ph583
  %i.gg = shl i64 %i.gc, 8
  br label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %._crit_edge.i.loopexit.i.i.i.i.i.i.i, %bb.m
  %.012.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.m ], [ %i.gg, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i = phi i32 [ %i.fx, %bb.m ], [ %i.ge, %._crit_edge.i.loopexit.i.i.i.i.i.i.i ]
  %i.gh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr i8, ptr %i.fl, i64 %.012.lcssa.i.i.i.i.i.i.i.i
  %i.gk = getelementptr [8 x i8], ptr %i.gj, i64 %i.gi
  br label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i, %bb.l
  %.sroa.0.0.i208 = phi ptr [ %i.gk, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.fu, %bb.l ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.gl = icmp eq ptr %.sroa.0.0.i208, %i.fu
  br i1 %i.gl, label %.lr.ph, label %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit

_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE24moveToNonEmptyInnerOrEndEv.exit: ; preds = %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i, %.lr.ph.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit
  %.sroa.18.2.a = phi ptr [ %.sroa.18.0353, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.18.0353, %.lr.ph.i ], [ %i.fu, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.20.2.a = phi ptr [ %.sroa.20.0354, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.20.0354, %.lr.ph.i ], [ %i.fl, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.22.2.a = phi ptr [ %.sroa.22.0355, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.22.0355, %.lr.ph.i ], [ %i.fn, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ]
  %.sroa.0260.2.a = phi ptr [ %.sroa.0260.0356, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %.sroa.0260.0356, %.lr.ph.i ], [ %storemerge16.i.i.i.i206, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ], [ %storemerge16.i.i.i.i206, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ] ; 2 uses
  %.sroa.11278.2 = phi ptr [ %storemerge16.i.i.i.i, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEEppEv.exit ], [ %storemerge16.i.i.i.i, %.lr.ph.i ], [ %.sroa.0.0.i208, %_ZN4llvm7jitlink9LinkGraph26nested_collection_iteratorINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS0_7SectionESt14default_deleteIS7_EENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_SA_EELb0EEENS1_23GetSectionMapEntryValueERS7_EENSD_12DenseSetImplIPNS0_6SymbolENS_8DenseMapISM_NSD_13DenseSetEmptyENSB_ISM_vEENSD_12DenseSetPairISM_EEEEE16DenseSetIteratorILb0EEESM_XadL_ZNS1_17getSectionSymbolsESI_EEE13getInnerBeginESJ_SJ_.exit.i ], [ null, %_ZN4llvm21iterator_adaptor_baseINS_15mapped_iteratorINS_16DenseMapIteratorINS_9StringRefESt10unique_ptrINS_7jitlink7SectionESt14default_deleteIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S9_EELb0EEENS5_9LinkGraph23GetSectionMapEntryValueERS6_EESF_St20forward_iterator_tagS6_lPS6_SI_EppEv.exit.i ] ; 2 uses
  %i.gm = icmp ne ptr %.sroa.0260.2.a, %.sroa.0256.0.copyload
  %i.gn = icmp ne ptr %.sroa.11278.2, %.sroa.4258.0.copyload
  %.not3.i = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %.not3.i, label %bb.c, label %._crit_edge

._crit_edge362:                                   ; preds = %.lr.ph.i.i.i.i.i, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, %.lr.ph.i.i.i75.preheader, %.lr.ph.i.i.i75, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge, %_ZN4llvm7jitlink9LinkGraph16absolute_symbolsEv.exit
  %i.go = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !725
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.v

bb.n:                                             ; preds = %.lr.ph361, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit
  %.pn = phi i64 [ %i.ao, %.lr.ph361 ], [ %i.jp, %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit ] ; 2 uses
  %.sroa.0243.0360 = getelementptr i8, ptr %i.r, i64 %.pn
  %i.gr = load ptr, ptr %.sroa.0243.0360, align 8, !tbaa !129 ; 8 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8            ; 2 uses
  %i.gu = and i64 %i.gt, 576460752303423488
  %.not311.not = icmp eq i64 %i.gu, 0
  br i1 %.not311.not, label %bb.o, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73

bb.o:                                             ; preds = %bb.n
  %.val = load i32, ptr %i.ap, align 8, !tbaa !1045
  switch i32 %.val, label %bb.q [
    i32 1, label %bb.p
    i32 2, label %bb.p
    i32 38, label %bb.p
    i32 39, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o, %bb.o, %bb.o
  %i.gv = call noundef zeroext i1 @_ZN4llvm7jitlink7aarch3214hasTargetFlagsERNS0_6SymbolEh(ptr noundef nonnull align 8 dereferenceable(32) %i.gr, i8 noundef zeroext 1) #22
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !131
  %.sroa.0.0.copyload.i.i.i65 = load i64, ptr %i.gx, align 8, !tbaa !452
  %i.gy = load i64, ptr %i.gs, align 8
  %i.gz = and i64 %i.gy, 144115188075855871
  %i.ha = add i64 %i.gz, %.sroa.0.0.copyload.i.i.i65
  %i.hb = zext i1 %i.gv to i64
  %spec.select531 = add i64 %i.ha, %i.hb
  br label %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit68

bb.q:                                             ; preds = %bb.o
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !131
  %.sroa.0.0.copyload.i.i6.i67 = load i64, ptr %i.hd, align 8, !tbaa !452
  %i.he = and i64 %i.gt, 144115188075855871
  %i.hf = add i64 %.sroa.0.0.copyload.i.i6.i67, %i.he
  br label %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit68

_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit68: ; preds = %bb.p, %bb.q
  %.sroa.0.0.i66 = phi i64 [ %i.hf, %bb.q ], [ %spec.select531, %bb.p ]
  %i.hg = call i16 @_ZN4llvm3orc14LinkGraphLayer26getJITSymbolFlagsForSymbolERNS_7jitlink6SymbolE(ptr noundef nonnull align 8 dereferenceable(32) %i.gr) #22 ; 2 uses
  %i.hh = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_17ExecutorSymbolDefENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
  %.fca.0.extract.i69 = extractvalue { ptr, i8 } %i.hh, 0 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i69, i64 8
  store i64 %.sroa.0.0.i66, ptr %i.hi, align 8, !tbaa !452
  %.sroa.4239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i69, i64 16
  store i16 %i.hg, ptr %.sroa.4239.0..sroa_idx, align 8
  br i1 %i.e, label %bb.r, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit68
  %i.hj = load ptr, ptr %i.aq, align 8, !tbaa !78 ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !889, !noalias !1085
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hj, i64 24
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !890, !noalias !1085 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hj, i64 36
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !888, !noalias !1085 ; 2 uses
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %.loopexit314.a, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.hr = add i32 %i.hp, -1                       ; 2 uses
  %i.hs = load ptr, ptr %i.gr, align 8, !tbaa !885 ; 2 uses
  %i.ht = ptrtoint ptr %i.hs to i64
  %i.hu = mul i64 %i.ht, -4658895280553007687     ; 2 uses
  %i.hv = lshr i64 %i.hu, 31
  %i.hw = xor i64 %i.hv, %i.hu
  %i.hx = trunc i64 %i.hw to i32
  %i.hy = and i32 %i.hr, %i.hx                    ; 3 uses
  %i.hz = zext i32 %i.hy to i64                   ; 2 uses
  %i.ia = lshr i64 %i.hz, 5
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !57
  %i.id = and i32 %i.hy, 31
  %i.ie = lshr i32 %i.ic, %i.id
  %i.if = trunc i32 %i.ie to i1
  br i1 %i.if, label %.lr.ph.i.i.i71, label %.loopexit314.a, !prof !205

.lr.ph.i.i.i71:                                   ; preds = %bb.s, %bb.t
  %i.ig = phi i64 [ %i.im, %bb.t ], [ %i.hz, %bb.s ]
  %.017.i.i.i72 = phi i32 [ %i.il, %bb.t ], [ %i.hy, %bb.s ]
  %i.ih = getelementptr inbounds nuw [16 x i8], ptr %i.hl, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !885
  %i.ij = icmp eq ptr %i.hs, %i.ii
  br i1 %i.ij, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73, label %bb.t, !prof !136

bb.t:                                             ; preds = %.lr.ph.i.i.i71
  %i.ik = add nuw i32 %.017.i.i.i72, 1
  %i.il = and i32 %i.ik, %i.hr                    ; 3 uses
  %i.im = zext i32 %i.il to i64                   ; 2 uses
  %i.in = lshr i64 %i.im, 5
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !57
  %i.iq = and i32 %i.il, 31
  %i.ir = lshr i32 %i.ip, %i.iq
  %i.is = trunc i32 %i.ir to i1
  br i1 %i.is, label %.lr.ph.i.i.i71, label %.loopexit314.a, !prof !206

.loopexit314.a:                                   ; preds = %bb.t, %bb.r, %bb.s
  %i.it = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.gr)
  %.fca.0.extract.i74 = extractvalue { ptr, i8 } %i.it, 0
  %i.iu = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i74, i64 8
  store i16 %i.hg, ptr %i.iu, align 1
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73: ; preds = %.lr.ph.i.i.i71, %_ZN12_GLOBAL__N_124getJITSymbolPtrForSymbolERN4llvm7jitlink6SymbolERKNS0_6TripleE.exit68, %.loopexit314.a, %bb.n
  %i.iv = add i64 %.pn, 8
  %i.iw = ashr exact i64 %i.iv, 3                 ; 3 uses
  %.not.i.i.i = icmp ult i64 %i.iw, %i.z
  br i1 %.not.i.i.i, label %bb.u, label %._crit_edge362

bb.u:                                             ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5countERKS3_.exit73
  %i.ix = lshr i64 %i.iw, 5                       ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !57
  %i.ja = trunc nuw i64 %i.iw to i32
  %i.jb = and i32 %i.ja, 31
  %i.jc = shl nsw i32 -1, %i.jb
  %i.jd = and i32 %i.iz, %i.jc                    ; 2 uses
  %i.je = icmp eq i32 %i.jd, 0
  br i1 %i.je, label %.lr.ph.i.i.i75.preheader, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit

.lr.ph.i.i.i75.preheader:                         ; preds = %bb.u
  %i.jf = add nuw nsw i64 %i.ix, 1                ; 2 uses
  %i.jg = icmp eq i64 %i.jf, %i.as
  br i1 %i.jg, label %._crit_edge362, label %.lr.ph585

.lr.ph.i.i.i75:                                   ; preds = %.lr.ph585
  %i.jh = add i64 %i.jj, 1                        ; 2 uses
  %i.ji = icmp eq i64 %i.jh, %i.as
  br i1 %i.ji, label %._crit_edge362, label %.lr.ph585, !llvm.loop !140

.lr.ph585:                                        ; preds = %.lr.ph.i.i.i75.preheader, %.lr.ph.i.i.i75
  %i.jj = phi i64 [ %i.jh, %.lr.ph.i.i.i75 ], [ %i.jf, %.lr.ph.i.i.i75.preheader ] ; 3 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.jj
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !57 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %.lr.ph.i.i.i75, label %_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit, !llvm.loop !140

_ZN4llvm6detail12DenseSetImplIPNS_7jitlink6SymbolENS_8DenseMapIS4_NS0_13DenseSetEmptyENS_12DenseMapInfoIS4_vEENS0_12DenseSetPairIS4_EEEEE16DenseSetIteratorILb0EEppEv.exit: ; preds = %.lr.ph585, %bb.u
  %.012.lcssa.i.i.i = phi i64 [ %i.ix, %bb.u ], [ %i.jj, %.lr.ph585 ]
  %.0.lcssa.i.i.i = phi i32 [ %i.jd, %bb.u ], [ %i.jl, %.lr.ph585 ]
  %i.jn = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %.idx.i.i.i = shl i64 %.012.lcssa.i.i.i, 8
  %i.jo = shl nuw nsw i32 %i.jn, 3
  %.idx539 = zext nneg i32 %i.jo to i64
  %i.jp = or disjoint i64 %.idx.i.i.i, %.idx539   ; 2 uses
  %.not = icmp eq i64 %i.jp, %.idx538
  br i1 %.not, label %._crit_edge362, label %bb.n

bb.v:                                             ; preds = %._crit_edge362
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !78 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E8copyFromERKSA_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !80, !noalias !1090, !nonnull !45, !align !46
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 40
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !588, !noalias !1090, !nonnull !45, !align !46
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.jw = load <2 x ptr>, ptr %7, align 16, !tbaa !341, !noalias !1090
  store ptr null, ptr %7, align 16, !tbaa !883, !noalias !1090
  store <2 x ptr> %i.jw, ptr %3, align 16, !tbaa !341, !noalias !1090
  store ptr null, ptr %i.jv, align 8, !tbaa !343, !noalias !1090
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 20 ; 3 uses
  %i.kb = load <2 x i32>, ptr %i.jy, align 16, !tbaa !57, !noalias !1090
  store i32 0, ptr %i.jy, align 16, !tbaa !57, !noalias !1090
  store <2 x i32> %i.kb, ptr %i.jx, align 16, !tbaa !57, !noalias !1090
  store i32 0, ptr %i.ka, align 4, !tbaa !57, !noalias !1090
  call void @_ZN4llvm3orc16ExecutionSession22OL_defineMaterializingERNS0_29MaterializationResponsibilityENS_8DenseMapINS0_15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_S6_EEEE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(392) %i.ju, ptr noundef nonnull align 8 dereferenceable(48) %i.jr, ptr nofree noundef nonnull align 8 dereferenceable(24) %3) #22
  %i.kc = load i32, ptr %i.jz, align 4, !tbaa !888, !noalias !1090 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %_ZN4llvm3orc29MaterializationResponsibility19defineMaterializingENS_8DenseMapINS0_15SymbolStringPtrENS_14JITSymbolFlagsENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEE.exit, label %.lr.ph7.preheader.i.i.i

.lr.ph7.preheader.i.i.i:                          ; preds = %bb.v
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.kf = load ptr, ptr %3, align 16, !tbaa !889, !noalias !1090
  %i.kg = load ptr, ptr %i.ke, align 8, !tbaa !890, !noalias !1090
  %i.kh = zext i32 %i.kc to i64
  %i.ki = add nuw nsw i64 %i.kh, 31
  %i.kj = lshr i64 %i.ki, 5
  br label %.lr.ph7.i.i.i

.lr.ph7.i.i.i:                                    ; preds = %._crit_edge.i.i.i77, %.lr.ph7.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %._crit_edge.i.i.i77 ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.kg, i64 %indvars.iv.i.i.i
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !57 ; 2 uses
end_hunk_2
