inline.NumInlined: 3113
inline.NumDeleted: 1058
begin_hunk_0_@_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj:bb.a
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.06.i.i.prol = phi ptr [ %i.ar, %.lr.ph.i.i.prol ], [ %i.ak, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.i.prol, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.06.i.i.prol, i64 24 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
end_hunk_0
begin_hunk_1_@_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj:bb.a
  br i1 %i.as, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.aw, %.lr.ph.i.i ], [ %.06.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.i, align 8
  %.sroa.4.0..sroa_idx.i.i.4 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i.4, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.at, align 8
  %.sroa.4.0..sroa_idx.i.i.5 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 72
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i.5, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 96
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx.i.i.6 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 120
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i.6, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 144
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx.i.i.7 = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 168
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i.7, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 192 ; 2 uses
  %.not.i.i29.7 = icmp eq ptr %i.aw, %i.an
  br i1 %.not.i.i29.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E9initEmptyEv.exit.i, label %.lr.ph.i.i, !llvm.loop !232
end_hunk_1
begin_hunk_2_@_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj:bb.a
  br i1 %lcmp.mod59.not, label %.lr.ph.i.i35.prol.loopexit, label %.lr.ph.i.i35.prol

.lr.ph.i.i35.prol:                                ; preds = %.lr.ph.i.i35.preheader, %.lr.ph.i.i35.prol
  %.06.i.i36.prol = phi ptr [ %i.eh, %.lr.ph.i.i35.prol ], [ %i.ea, %.lr.ph.i.i35.preheader ] ; 2 uses
  %prol.iter60 = phi i64 [ %prol.iter60.next, %.lr.ph.i.i35.prol ], [ 0, %.lr.ph.i.i35.preheader ]
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.i36.prol, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.06.i.i36.prol, i64 24 ; 2 uses
  %prol.iter60.next = add i64 %prol.iter60, 1     ; 2 uses
  %prol.iter60.cmp.not = icmp eq i64 %prol.iter60.next, %xtraiter58
end_hunk_2
begin_hunk_3_@_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj:bb.a
  br i1 %i.ei, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E9initEmptyEv.exit.i39, label %.lr.ph.i.i35

.lr.ph.i.i35:                                     ; preds = %.lr.ph.i.i35.prol.loopexit, %.lr.ph.i.i35
  %.06.i.i36 = phi ptr [ %i.em, %.lr.ph.i.i35 ], [ %.06.i.i36.unr, %.lr.ph.i.i35.prol.loopexit ] ; 9 uses
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.06.i.i36, align 8
  %.sroa.4.0..sroa_idx.i.i37.4 = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 24
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i37.4, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 48
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ej, align 8
  %.sroa.4.0..sroa_idx.i.i37.5 = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 72
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i37.5, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 96
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.ek, align 8
  %.sroa.4.0..sroa_idx.i.i37.6 = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 120
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i37.6, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 144
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %i.el, align 8
  %.sroa.4.0..sroa_idx.i.i37.7 = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 168
  store <2 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.sroa.4.0..sroa_idx.i.i37.7, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %.06.i.i36, i64 192 ; 2 uses
  %.not.i.i38.7 = icmp eq ptr %i.em, %i.ed
  br i1 %.not.i.i38.7, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E9initEmptyEv.exit.i39, label %.lr.ph.i.i35, !llvm.loop !232
end_hunk_3
begin_hunk_4_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15InsertReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESC_:bb.a
  %4 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %5 = alloca %"struct.std::pair.167", align 8    ; 3 uses
  %i.a = alloca ptr, align 8                      ; 3 uses
  %6 = alloca %"struct.llvh::DomTreeBuilder::SemiNCAInfo<llvh::DominatorTreeBase<hermes::BasicBlock, false>>::InsertionInfo", align 8 ; 35 uses
  %7 = alloca %"struct.std::pair.162", align 8    ; 5 uses
  %8 = alloca %"struct.std::pair.158", align 8    ; 3 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !34
end_hunk_4
begin_hunk_5_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15InsertReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESC_:bb.a

bb.h:                                             ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.07.i.i.i.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %.07.i.i.i.i.ptr.1.i.i, ptr %6, align 8, !tbaa !7
  %.07.i.i.i.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i32 0, ptr %.07.i.i.i.i.ptr.2.i.i, align 8, !tbaa !10
  %.07.i.i.i.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  store i32 8, ptr %.07.i.i.i.i.ptr.3.i.i, align 4, !tbaa !11
  %.07.i.i.i.i.ptr.4.i.i.a = getelementptr inbounds nuw i8, ptr %6, i64 152 ; 3 uses
  store i32 1, ptr %.07.i.i.i.i.ptr.4.i.i.a, align 8
  %.07.i.i.i.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 0, ptr %.07.i.i.i.i.ptr.5.i.i, align 4, !tbaa !260
  %.07.i.i.i.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.6.i.i, align 8, !tbaa !34
  %.07.i.i.i.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %6, i64 192
  store <4 x ptr> <ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr)>, ptr %.07.i.i.i.i.ptr.7.i.i, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 224 ; 3 uses
  store i32 1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 228
end_hunk_5
begin_hunk_6_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15InsertReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESC_:bb.a
  store i32 8, ptr %i.av, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13, !noalias !268
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13, !noalias !268
  call void @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEENS_6detail13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E11try_emplaceIJRS8_EEESt4pairINS_16DenseMapIteratorIS6_S8_SA_SC_Lb0EEEbERKS6_DpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.167") align 8 %5, ptr noundef nonnull align 8 dereferenceable(72) %.07.i.i.i.i.ptr.4.i.i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %4), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13, !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13, !noalias !268
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !34  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !57
  %i.az = load i32, ptr %.07.i.i.i.i.ptr.2.i.i, align 8, !tbaa !10 ; 2 uses
  %i.ba = load i32, ptr %.07.i.i.i.i.ptr.3.i.i, align 4, !tbaa !11
  %.not.i.i = icmp ult i32 %i.az, %i.ba
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEELb1EE9push_backERKS7_.exit.i, label %bb.i, !prof !53

bb.i:                                             ; preds = %bb.h
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(145) %6, ptr noundef nonnull %.07.i.i.i.i.ptr.1.i.i, i64 noundef 0, i64 noundef 16) #13
  %.pre.i.i = load i32, ptr %.07.i.i.i.i.ptr.2.i.i, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIjPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEELb1EE9push_backERKS7_.exit.i

_ZN4llvh23SmallVectorTemplateBaseISt4pairIjPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEELb1EE9push_backERKS7_.exit.i: ; preds = %bb.i, %bb.h
end_hunk_6
begin_hunk_7_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15InsertReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESC_:bb.a
  store i32 %i.ay, ptr %i.be, align 1
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %i.aw, ptr %.sroa.423.0..sroa_idx, align 1
  %i.bf = load i32, ptr %.07.i.i.i.i.ptr.2.i.i, align 8, !tbaa !10
  %i.bg = add i32 %i.bf, 1                        ; 4 uses
  store i32 %i.bg, ptr %.07.i.i.i.i.ptr.2.i.i, align 8, !tbaa !10
  %i.bh = load ptr, ptr %6, align 8, !tbaa !7     ; 4 uses
  %i.bi = zext i32 %i.bg to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.bh, i64 %i.bi ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15InsertReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESC_:bb.a
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.aq, align 8, !tbaa !10
  call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE14VisitInsertionERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EEjSC_RNS6_13InsertionInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull %i.bz, i32 noundef %i.cb, ptr noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(520) %6)
  %i.cl = load i32, ptr %.07.i.i.i.i.ptr.2.i.i, align 8, !tbaa !10
  %.not.i.i16 = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i16, label %._crit_edge, label %bb.k, !llvm.loop !278

end_hunk_8
begin_hunk_9_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15InsertReachableERS5_PNS6_15BatchUpdateInfoEPNS_15DomTreeNodeBaseIS4_EESC_:bb.a
  br label %_ZN4llvh13SmallDenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjLj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEED2Ev.exit.i

_ZN4llvh13SmallDenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjLj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEED2Ev.exit.i: ; preds = %bb.o, %_ZN4llvh11SmallVectorIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEELj8EED2Ev.exit1.i
  %i.df = load i32, ptr %.07.i.i.i.i.ptr.4.i.i.a, align 8
  %i.dg = and i32 %i.df, 1
  %.not.i.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i.i, label %bb.p, label %_ZN4llvh6detail12DenseSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEENS_13SmallDenseMapIS6_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_EENS0_12DenseSetPairIS6_EEEESA_ED2Ev.exit.i

bb.p:                                             ; preds = %_ZN4llvh13SmallDenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjLj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEED2Ev.exit.i
  %i.dh = load ptr, ptr %.07.i.i.i.i.ptr.6.i.i, align 8, !tbaa !282
  call void @_ZdlPv(ptr noundef %i.dh) #13
  br label %_ZN4llvh6detail12DenseSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEENS_13SmallDenseMapIS6_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_EENS0_12DenseSetPairIS6_EEEESA_ED2Ev.exit.i

_ZN4llvh6detail12DenseSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEENS_13SmallDenseMapIS6_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_EENS0_12DenseSetPairIS6_EEEESA_ED2Ev.exit.i: ; preds = %bb.p, %_ZN4llvh13SmallDenseMapIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEjLj8ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_jEEED2Ev.exit.i
  %i.di = load ptr, ptr %6, align 8, !tbaa !7     ; 2 uses
  %i.dj = icmp eq ptr %i.di, %.07.i.i.i.i.ptr.1.i.i
  br i1 %i.dj, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE13InsertionInfoD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvh6detail12DenseSetImplIPNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEENS_13SmallDenseMapIS6_NS0_13DenseSetEmptyELj8ENS_12DenseMapInfoIS6_EENS0_12DenseSetPairIS6_EEEESA_ED2Ev.exit.i
end_hunk_9
