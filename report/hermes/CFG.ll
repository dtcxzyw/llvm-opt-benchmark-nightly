inline.NumInlined: 3113
inline.NumDeleted: 1058
begin_hunk_0_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE12ApplyUpdatesERS5_NS_8ArrayRefINS_3cfg6UpdateIPS4_EEEE:bb.a
  %i.as = call noundef nonnull align 8 dereferenceable(56) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E16FindAndConstructEOS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load ptr, ptr %.02637, align 8, !tbaa !173
  %i.av = load i64, ptr %i.ab, align 8, !tbaa !177
  %i.aw = and i64 %i.av, 4
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = and i64 %i.ax, -5
  %i.az = or disjoint i64 %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !10 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11
  %.not.i30 = icmp ult i32 %i.bb, %i.bd
  br i1 %.not.i30, label %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32, label %bb.g, !prof !53

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull %i.be, i64 noundef 0, i64 noundef 8) #13
  %.pre.i31 = load i32, ptr %i.ba, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32

_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit32: ; preds = %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit, %bb.g
  %i.bf = phi i32 [ %.pre.i31, %bb.g ], [ %i.bb, %_ZN4llvh23SmallVectorTemplateBaseINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELb1EE9push_backERKSB_.exit ]
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !7
  %i.bh = zext i32 %i.bf to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh
  store i64 %i.az, ptr %i.bi, align 1
  %i.bj = load i32, ptr %i.ba, align 8, !tbaa !10
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.bl = getelementptr inbounds nuw i8, ptr %.02637, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.u
  br i1 %.not, label %.preheader, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph40, %.preheader
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !170 ; 2 uses
  %i.bo = icmp eq i32 %i.bn, 0
  %.pre1.i.i = load ptr, ptr %i.n, align 8, !tbaa !171 ; 3 uses
  br i1 %i.bo, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.bp = zext i32 %i.bn to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.bp, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.011.i.i.i = phi ptr [ %i.bw, %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i ], [ %.pre1.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.br = load ptr, ptr %.011.i.i.i, align 8, !tbaa !32
  %magicptr.i.i.i = ptrtoint ptr %i.br to i64
  switch i64 %magicptr.i.i.i, label %bb.h [
    i64 -8, label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i
    i64 -16, label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i
  ]

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !7  ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 24
  %i.bv = icmp eq ptr %i.bt, %i.bu
  br i1 %i.bv, label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.bt) #13
  br label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i

_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.i.i.i, %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bq
  br i1 %.not.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !172

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i: ; preds = %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !171
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit.i

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i, %._crit_edge
  %i.bx = phi ptr [ %.pre.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i.i ], [ %.pre1.i.i, %._crit_edge ]
  call void @_ZdlPv(ptr noundef %i.bx) #13
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !170 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 0
  %.pre1.i1.i = load ptr, ptr %i.m, align 8, !tbaa !171 ; 3 uses
  br i1 %i.ca, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit11.i, label %.lr.ph.preheader.i.i2.i

.lr.ph.preheader.i.i2.i:                          ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit.i
  %i.cb = zext i32 %i.bz to i64
  %.idx.i.i3.i = mul nuw nsw i64 %i.cb, 56
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre1.i1.i, i64 %.idx.i.i3.i
  br label %.lr.ph.i.i4.i

.lr.ph.i.i4.i:                                    ; preds = %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i, %.lr.ph.preheader.i.i2.i
  %.011.i.i5.i = phi ptr [ %i.ci, %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i ], [ %.pre1.i1.i, %.lr.ph.preheader.i.i2.i ] ; 4 uses
  %i.cd = load ptr, ptr %.011.i.i5.i, align 8, !tbaa !32
  %magicptr.i.i6.i = ptrtoint ptr %i.cd to i64
  switch i64 %magicptr.i.i6.i, label %bb.j [
    i64 -8, label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i
    i64 -16, label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i
  ]

bb.j:                                             ; preds = %.lr.ph.i.i4.i
  %i.ce = getelementptr inbounds nuw i8, ptr %.011.i.i5.i, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !7  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.011.i.i5.i, i64 24
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.cf) #13
  br label %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i

_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i4.i, %.lr.ph.i.i4.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.011.i.i5.i, i64 56 ; 2 uses
  %.not.i.i8.i = icmp eq ptr %i.ci, %i.cc
  br i1 %.not.i.i8.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i9.i, label %.lr.ph.i.i4.i, !llvm.loop !172

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i9.i: ; preds = %_ZN4llvh11SmallVectorINS_14PointerIntPairIPN6hermes10BasicBlockELj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ES8_EEEELj4EED2Ev.exit.i.i7.i
  %.pre.i10.i = load ptr, ptr %i.m, align 8, !tbaa !171
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit11.i

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit11.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i9.i, %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit.i
  %i.cj = phi ptr [ %.pre.i10.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E10destroyAllEv.exit.loopexit.i9.i ], [ %.pre1.i1.i, %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit.i ]
  call void @_ZdlPv(ptr noundef %i.cj) #13
  %i.ck = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.cl = icmp eq ptr %i.ck, %i.j
  br i1 %i.cl, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15BatchUpdateInfoD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit11.i
  call void @free(ptr noundef %i.ck) #13
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15BatchUpdateInfoD2Ev.exit

_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15BatchUpdateInfoD2Ev.exit: ; preds = %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEED2Ev.exit11.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.m

.lr.ph40:                                         ; preds = %.preheader, %.lr.ph40
  %.039 = phi i64 [ %i.cm, %.lr.ph40 ], [ 0, %.preheader ]
  call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15ApplyNextUpdateERS5_RNS6_15BatchUpdateInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(129) %3)
  %i.cm = add nuw nsw i64 %.039, 1                ; 2 uses
  %i.cn = icmp samesign uge i64 %i.cm, %i.q
  %i.co = load i8, ptr %i.o, align 8, !range !28
  %i.cp = trunc nuw i8 %i.co to i1
  %.not29 = select i1 %i.cn, i1 true, i1 %i.cp
  br i1 %.not29, label %._crit_edge, label %.lr.ph40, !llvm.loop !206

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.a, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15BatchUpdateInfoD2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEb(ptr %0, i64 %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i1 noundef zeroext %3) local_unnamed_addr #0 comdat {
.lr.ph.i.i.i:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.llvh::SmallDenseMap", align 8 ; 27 uses
  %5 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %6 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %7 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store i32 1, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !207
  %.06.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i.i.ptr, align 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  %.06.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i.i.ptr.1, align 8
  %.sroa.4.0..sroa_idx.i.i.i.1 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.1, align 8
  %.06.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i.i.ptr.2, align 8
  %.sroa.4.0..sroa_idx.i.i.i.2 = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.2, align 8
  %.06.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %4, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %.06.i.i.i.ptr.3, align 8
  %.sroa.4.0..sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %4, i64 88
  store ptr inttoptr (i64 -8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.3, align 8
  %.phi.trans.insert3.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = trunc i64 %1 to i32                      ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E7reserveEj.exit, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E31getMinBucketToReserveForEntriesEj.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E31getMinBucketToReserveForEntriesEj.exit.i: ; preds = %.lr.ph.i.i.i
  %i.g = shl i32 %i.e, 2
  %i.h = udiv i32 %i.g, 3
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = lshr i64 %i.j, 1
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 2
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 4
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 8
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i64 %i.r, 16
  %i.t = or i64 %i.s, %i.r                        ; 2 uses
  %8 = icmp samesign ugt i64 %i.t, 3
  br i1 %8, label %bb.a, label %.lr.ph

bb.a:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E31getMinBucketToReserveForEntriesEj.exit.i
  %i.u = trunc nuw nsw i64 %i.t to i32
  %i.v = add nuw i32 %i.u, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %i.v)
  br label %.lr.ph

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E7reserveEj.exit: ; preds = %.lr.ph.i.i.i
  %.not66 = icmp eq i64 %1, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E31getMinBucketToReserveForEntriesEj.exit.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E7reserveEj.exit
  %.idx95.pn = shl nuw nsw i64 %1, 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.idx95.pn
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E7reserveEj.exit
  %.not6698 = phi i1 [ true, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E7reserveEj.exit ], [ false, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  store i32 0, ptr %i.y, align 8, !tbaa !10
  %i.z = load i32, ptr %4, align 8                ; 2 uses
  %i.aa = lshr i32 %i.z, 1                        ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !11
  %i.ad = icmp ugt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.b, label %_ZN4llvh15SmallVectorImplINS_3cfg6UpdateIPN6hermes10BasicBlockEEEE7reserveEm.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %i.af, i64 noundef %i.ae, i64 noundef 16) #13
  %.pre76 = load i32, ptr %4, align 8
  br label %_ZN4llvh15SmallVectorImplINS_3cfg6UpdateIPN6hermes10BasicBlockEEEE7reserveEm.exit

_ZN4llvh15SmallVectorImplINS_3cfg6UpdateIPN6hermes10BasicBlockEEEE7reserveEm.exit: ; preds = %._crit_edge, %bb.b
  %i.ag = phi i32 [ %i.z, %._crit_edge ], [ %.pre76, %bb.b ] ; 4 uses
  %i.ah = icmp ult i32 %i.ag, 2
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvh15SmallVectorImplINS_3cfg6UpdateIPN6hermes10BasicBlockEEEE7reserveEm.exit
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ag, 0        ; 2 uses
  %i.ai = load ptr, ptr %.06.i.i.i.ptr, align 8   ; 2 uses
  %i.aj = select i1 %.not.i.i.i.i.i.i, ptr %i.ai, ptr %.06.i.i.i.ptr
  %i.ak = load i32, ptr %.phi.trans.insert3.i.i, align 8 ; 2 uses
  %i.al = select i1 %.not.i.i.i.i.i.i, i32 %i.ak, i32 4
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %i.am ; 2 uses
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit

bb.d:                                             ; preds = %_ZN4llvh15SmallVectorImplINS_3cfg6UpdateIPN6hermes10BasicBlockEEEE7reserveEm.exit
  %i.ao = and i32 %i.ag, 1                        ; 4 uses
  %.not.i.i.i2.i = icmp eq i32 %i.ao, 0           ; 2 uses
  %i.ap = load ptr, ptr %.06.i.i.i.ptr, align 8   ; 4 uses
  %i.aq = select i1 %.not.i.i.i2.i, ptr %i.ap, ptr %.06.i.i.i.ptr ; 3 uses
  %i.ar = load i32, ptr %.phi.trans.insert3.i.i, align 8 ; 4 uses
  %i.as = select i1 %.not.i.i.i2.i, i32 %i.ar, i32 4 ; 2 uses
  %i.at = zext i32 %i.as to i64
  %.idx.i = mul nuw nsw i64 %i.at, 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i ; 4 uses
  %.not5.i5.i10.i4.i = icmp eq i32 %i.as, 0
  br i1 %.not5.i5.i10.i4.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit, label %.lr.ph.i6.i12.i5.i

.lr.ph.i6.i12.i5.i:                               ; preds = %bb.d, %.critedge2.i7.i13.i10.i
  %.sroa.0.3.i6.i = phi ptr [ %i.be, %.critedge2.i7.i13.i10.i ], [ %i.aq, %bb.d ] ; 4 uses
  %i.av = load ptr, ptr %.sroa.0.3.i6.i, align 8, !tbaa !211 ; 2 uses
  %i.aw = icmp eq ptr %i.av, inttoptr (i64 -8 to ptr)
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, inttoptr (i64 -8 to ptr)
  %i.ba = select i1 %i.aw, i1 %i.az, i1 false
  br i1 %i.ba, label %.critedge2.i7.i13.i10.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i6.i12.i5.i
  %i.bb = icmp eq ptr %i.av, inttoptr (i64 -16 to ptr)
  %i.bc = icmp eq ptr %i.ay, inttoptr (i64 -16 to ptr)
  %i.bd = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %i.bd, label %.critedge2.i7.i13.i10.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit

.critedge2.i7.i13.i10.i:                          ; preds = %bb.e, %.lr.ph.i6.i12.i5.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i6.i, i64 24 ; 3 uses
  %.not.i8.i14.i11.i = icmp eq ptr %i.be, %i.au
  br i1 %.not.i8.i14.i11.i, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit, label %.lr.ph.i6.i12.i5.i, !llvm.loop !213

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit: ; preds = %bb.e, %.critedge2.i7.i13.i10.i, %bb.c, %bb.d
  %.pre-phi = phi i32 [ %i.ao, %bb.d ], [ %i.ag, %bb.c ], [ %i.ao, %.critedge2.i7.i13.i10.i ], [ %i.ao, %bb.e ]
  %i.bf = phi i32 [ %i.ar, %bb.d ], [ %i.ak, %bb.c ], [ %i.ar, %.critedge2.i7.i13.i10.i ], [ %i.ar, %bb.e ]
  %i.bg = phi ptr [ %i.ap, %bb.d ], [ %i.ai, %bb.c ], [ %i.ap, %.critedge2.i7.i13.i10.i ], [ %i.ap, %bb.e ]
  %.pn15.i = phi ptr [ %i.aq, %bb.d ], [ %i.an, %bb.c ], [ %.sroa.0.3.i6.i, %bb.e ], [ %i.be, %.critedge2.i7.i13.i10.i ] ; 2 uses
  %.pn13.i = phi ptr [ %i.au, %bb.d ], [ %i.an, %bb.c ], [ %i.au, %.critedge2.i7.i13.i10.i ], [ %i.au, %bb.e ] ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %.pre-phi, 0      ; 2 uses
  %i.bh = select i1 %.not.i.i.i.i.i, ptr %i.bg, ptr %.06.i.i.i.ptr
  %i.bi = select i1 %.not.i.i.i.i.i, i32 %i.bf, i32 4
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %i.bj ; 2 uses
  %.not6568 = icmp eq ptr %.pn15.i, %i.bk
  br i1 %.not6568, label %.preheader, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.i

bb.f:                                             ; preds = %.lr.ph, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit
  %.067 = phi ptr [ %0, %.lr.ph ], [ %i.ce, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit ] ; 3 uses
  %i.bm = load ptr, ptr %.067, align 8, !tbaa !173 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !177 ; 2 uses
  %i.bp = and i64 %i.bo, -8
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %spec.select = select i1 %3, ptr %i.bm, ptr %i.bq
  %spec.select64 = select i1 %3, ptr %i.bq, ptr %i.bm
  %i.br = and i64 %i.bo, 4
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = select i1 %i.bs, i32 1, i32 -1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store ptr %spec.select64, ptr %5, align 8, !tbaa !211
  store ptr %spec.select, ptr %i.x, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bu = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.bv = load ptr, ptr %i.c, align 8, !tbaa !215 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br i1 %i.bu, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge, label %bb.g

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit

bb.g:                                             ; preds = %bb.f
  %i.bw = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bv) ; 4 uses
  %i.bx = load ptr, ptr %5, align 8, !tbaa !32
  store ptr %i.bx, ptr %i.bw, align 8, !tbaa !211
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !214
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i32 0, ptr %i.ca, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit: ; preds = %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge, %bb.g
  %i.cb = phi i32 [ 0, %bb.g ], [ %.pre, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge ]
  %.0.i.i = phi ptr [ %i.bw, %bb.g ], [ %i.bv, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.cd = add nsw i32 %i.cb, %i.bt
  store i32 %i.cd, ptr %i.cc, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  %i.ce = getelementptr inbounds nuw i8, ptr %.067, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.ce, %i.w
  br i1 %.not, label %._crit_edge, label %bb.f

.preheader:                                       ; preds = %_ZN4llvh16DenseMapIteratorISt4pairIPN6hermes10BasicBlockES4_EiNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEELb0EEppEv.exit, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E5beginEv.exit
  br i1 %.not6698, label %._crit_edge74, label %.lr.ph73

.lr.ph73:                                         ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br i1 %3, label %.lr.ph73.split.us, label %.lr.ph73.split

.lr.ph73.split.us:                                ; preds = %.lr.ph73, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit43.us
  %.03472.us = phi i64 [ %i.cw, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit43.us ], [ 0, %.lr.ph73 ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03472.us ; 2 uses
  %i.ci = trunc i64 %.03472.us to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !177
  %i.cl = and i64 %i.ck, -8
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !173
  store ptr %i.cm, ptr %7, align 8, !tbaa !211
  store ptr %i.cn, ptr %i.cg, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.co = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !215 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.co, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit43.us, label %bb.h

bb.h:                                             ; preds = %.lr.ph73.split.us
  %i.cq = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %i.cp) ; 4 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !32
  store ptr %i.cr, ptr %i.cq, align 8, !tbaa !211
  %i.cs = load ptr, ptr %i.cg, align 8, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !214
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store i32 0, ptr %i.cu, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit43.us

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit43.us: ; preds = %bb.h, %.lr.ph73.split.us
  %.0.i.i42.us = phi ptr [ %i.cq, %bb.h ], [ %i.cp, %.lr.ph73.split.us ]
  %i.cv = getelementptr inbounds nuw i8, ptr %.0.i.i42.us, i64 16
  store i32 %i.ci, ptr %i.cv, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.cw = add nuw i64 %.03472.us, 1               ; 2 uses
  %.not36.us = icmp eq i64 %i.cw, %1
  br i1 %.not36.us, label %._crit_edge74, label %.lr.ph73.split.us, !llvm.loop !217

bb.i:                                             ; preds = %.lr.ph70, %_ZN4llvh16DenseMapIteratorISt4pairIPN6hermes10BasicBlockES4_EiNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEELb0EEppEv.exit
  %.sroa.049.069 = phi ptr [ %.pn15.i, %.lr.ph70 ], [ %.sroa.049.2, %_ZN4llvh16DenseMapIteratorISt4pairIPN6hermes10BasicBlockES4_EiNS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEELb0EEppEv.exit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.049.069, i64 16
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !218 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE14ChildrenGetterILb1EE3GetEPS4_PNS6_15BatchUpdateInfoE:bb.a

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !32
  %i.bh = icmp eq ptr %i.bg, %i.an
  br i1 %i.bh, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit51, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 32
  %i.bj = add nsw i64 %.047.i.i.i.i, -1
  %i.bk = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.bk, label %bb.h, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !319

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.l
  %i.bl = and i32 %i.ar, 3
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.g
  %.pre-phi56.i.i.i.i = phi i32 [ %i.bl, %._crit_edge.loopexit.i.i.i.i ], [ %i.ar, %bb.g ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.aq, %bb.g ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit [
    i32 3, label %bb.m
    i32 2, label %._crit_edge._crit_edge.i.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bm = load ptr, ptr %.029.lcssa.i.i.i.i, align 8, !tbaa !32
  %i.bn = icmp eq ptr %i.bm, %i.an
  br i1 %i.bn, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.n
  %.1.i.i.i.i = phi ptr [ %i.bo, %bb.n ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bp = load ptr, ptr %.1.i.i.i.i, align 8, !tbaa !32
  %i.bq = icmp eq ptr %i.bp, %i.an
  br i1 %i.bq, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.o
  %.2.i.i.i.i = phi ptr [ %i.br, %bb.o ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bs = load ptr, ptr %.2.i.i.i.i, align 8, !tbaa !32
  %i.bt = icmp eq ptr %i.bs, %i.an
  br i1 %i.bt, label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 8
  br label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit49: ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit51: ; preds = %bb.k
  %i.bw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 24
  br label %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i

_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i: ; preds = %bb.h, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit49, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit51, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.m
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.m ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.bw, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit51 ], [ %i.bv, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit49 ], [ %i.bu, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.02946.i.i.i.i, %bb.h ] ; 4 uses
  %i.bx = icmp eq ptr %.028.i.i.i.i, %i.at
  %.01730.i.i = getelementptr inbounds nuw i8, ptr %.028.i.i.i.i, i64 8 ; 2 uses
  %.not31.i.i = icmp eq ptr %.01730.i.i, %i.at
  %or.cond.i.i = select i1 %i.bx, i1 true, i1 %.not31.i.i
  br i1 %or.cond.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i, %bb.q
  %.01733.i.i = phi ptr [ %.017.i.i, %bb.q ], [ %.01730.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.032.i.i = phi ptr [ %.1.i.i, %bb.q ], [ %.028.i.i.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i ] ; 3 uses
  %i.by = load ptr, ptr %.01733.i.i, align 8, !tbaa !32 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.an
  br i1 %i.bz, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  store ptr %i.by, ptr %.032.i.i, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %.032.i.i, i64 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %.032.i.i, %.lr.ph.i.i ], [ %i.ca, %bb.p ] ; 2 uses
  %.017.i.i = getelementptr inbounds nuw i8, ptr %.01733.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.017.i.i, %i.at
  br i1 %.not.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit, label %.lr.ph.i.i, !llvm.loop !320

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit: ; preds = %bb.q, %._crit_edge.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i
  %.016.i.i = phi ptr [ %.028.i.i.i.i, %_ZSt9__find_ifIPPN6hermes10BasicBlockEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_.exit.i.i ], [ %i.at, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.at, %._crit_edge.i.i.i.i ], [ %.1.i.i, %bb.q ]
  %i.cb = ptrtoint ptr %.016.i.i to i64
  %i.cc = sub i64 %i.cb, %i.au
  %i.cd = lshr exact i64 %i.cc, 3
  %i.ce = trunc i64 %i.cd to i32
  br label %bb.t

bb.r:                                             ; preds = %bb.f
  %i.cf = load i32, ptr %i.ai, align 8, !tbaa !10 ; 2 uses
  %i.cg = load i32, ptr %i.aj, align 4, !tbaa !11
  %.not.i = icmp ult i32 %i.cf, %i.cg
  br i1 %.not.i, label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, label %bb.s, !prof !53

bb.s:                                             ; preds = %bb.r
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.ak, i64 noundef 0, i64 noundef 8) #13
  %.pre.i15 = load i32, ptr %i.ai, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit

_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit: ; preds = %bb.r, %bb.s
  %i.ch = phi i32 [ %.pre.i15, %bb.s ], [ %i.cf, %bb.r ]
  %i.ci = load ptr, ptr %0, align 8, !tbaa !7
  %i.cj = zext i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cj
  store i64 %i.am, ptr %i.ck, align 1
  %i.cl = load i32, ptr %i.ai, align 8, !tbaa !10
  %i.cm = add i32 %i.cl, 1
  br label %bb.t

bb.t:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit
  %storemerge = phi i32 [ %i.cm, %_ZN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EE9push_backERKS3_.exit ], [ %i.ce, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE5eraseEPKS3_S6_.exit ]
  store i32 %storemerge, ptr %i.ai, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %.01333, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.cn, %i.ah
  br i1 %.not14, label %.loopexit, label %bb.f

.loopexit:                                        ; preds = %bb.t, %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E4findEPKS3_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE14ChildrenGetterILb1EE3GetEPS4_St17integral_constantIbLb1EE(ptr dead_on_unwind noalias writable sret(%"class.llvh::SmallVector.114") align 8 %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7, !noalias !373 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !10, !noalias !373 ; 2 uses
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.e, 3
  %i.f = getelementptr i8, ptr %i.b, i64 %.idx.i.i.i.i ; 6 uses
  %.not3.i.i.i.i.i = icmp eq i32 %i.d, 0
  br i1 %.not3.i.i.i.i.i, label %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi ptr [ %i.l, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.g = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !tbaa !135, !noalias !373 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !137, !noalias !373
  %i.j = add i8 %i.i, -90
  %i.k = icmp ult i8 %i.j, -15
  %.not12.i.i.i.i.i = icmp eq ptr %i.g, null
  %.not1.i.i.i.i.i = or i1 %.not12.i.i.i.i.i, %i.k
  br i1 %.not1.i.i.i.i.i, label %bb.b, label %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.l, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !138

_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.b, %bb.a
  %.sroa.0.1.i.i.i = phi ptr [ %i.b, %bb.a ], [ %i.f, %bb.b ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.o, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 8, ptr %i.p, align 4, !tbaa !11
  %.not4.i.i.i = icmp eq ptr %.sroa.0.1.i.i.i, %i.m
  br i1 %.not4.i.i.i, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEET_SB_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i
  %.06.i.i.i = phi i64 [ %i.x, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i ], [ 0, %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit ] ; 2 uses
  %.sroa.02.05.i.i.i = phi ptr [ %.sroa.02.2.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i ], [ %.sroa.0.1.i.i.i, %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i8 = icmp eq ptr %i.q, %i.f
  br i1 %.not3.i.i.i.i.i8, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i9

.lr.ph.i.i.i.i.i9:                                ; preds = %.lr.ph.i.i.i, %bb.c
  %.sroa.02.1.i.i.i = phi ptr [ %i.w, %bb.c ], [ %i.q, %.lr.ph.i.i.i ] ; 3 uses
  %i.r = load ptr, ptr %.sroa.02.1.i.i.i, align 8, !tbaa !135 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i8, ptr %i.s, align 8, !tbaa !137
  %i.u = add i8 %i.t, -90
  %i.v = icmp ult i8 %i.u, -15
  %.not12.i.i.i.i.i10 = icmp eq ptr %i.r, null
  %.not1.i.i.i.i.i11 = or i1 %.not12.i.i.i.i.i10, %i.v
  br i1 %.not1.i.i.i.i.i11, label %bb.c, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i9
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.02.1.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i12 = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i.i.i12, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i9, !llvm.loop !138

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i9, %.lr.ph.i.i.i
  %.sroa.02.2.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.w, %bb.c ], [ %.sroa.02.1.i.i.i, %.lr.ph.i.i.i.i.i9 ] ; 2 uses
  %i.x = add nuw nsw i64 %.06.i.i.i, 1            ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.02.2.i.i.i, %i.m
  br i1 %.not.i.i.i, label %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !376

_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i
  %2 = icmp samesign ugt i64 %.06.i.i.i, 7
  br i1 %2, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.n, i64 noundef %i.x, i64 noundef 8) #13
  %.pre.i.i = load i32, ptr %i.o, align 8, !tbaa !10
  %.pre16.i.i = zext i32 %.pre.i.i to i64
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i
  %i.y = phi ptr [ %.pre.i, %bb.d ], [ %i.n, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i ]
  %.pre-phi.i.i = phi i64 [ %.pre16.i.i, %bb.d ], [ 0, %_ZSt10__distanceIN6hermes12PredIteratorINS0_10BasicBlockEPPNS0_11InstructionEEEENSt15iterator_traitsIT_E15difference_typeES8_S8_St18input_iterator_tag.exit.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.pre-phi.i.i
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i, %bb.e
  %.09.i.i.i.i.i.i = phi ptr [ %i.ak, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i ], [ %i.z, %bb.e ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %.sroa.04.2.i.i.i.i.i.i, %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i ], [ %.sroa.0.1.i.i.i, %bb.e ] ; 2 uses
  %i.aa = load ptr, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !135
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !142
  store ptr %i.ac, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not3.i.i.i.i.i.i.i.i = icmp eq ptr %i.ad, %i.f
  br i1 %.not3.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i, %bb.f
  %.sroa.04.1.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.f ], [ %i.ad, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.04.1.i.i.i.i.i.i, align 8, !tbaa !135 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !137
  %i.ah = add i8 %i.ag, -90
  %i.ai = icmp ult i8 %i.ah, -15
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  %.not1.i.i.i.i.i.i.i.i = or i1 %.not12.i.i.i.i.i.i.i.i, %i.ai
  br i1 %.not1.i.i.i.i.i.i.i.i, label %bb.f, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.1.i.i.i.i.i.i, i64 8 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !138

_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.04.2.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.04.2.i.i.i.i.i.i, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !377

_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i: ; preds = %_ZN6hermes12PredIteratorINS_10BasicBlockEPPNS_11InstructionEEppEv.exit.i.i.i.i.i.i
  %i.al = add nuw i64 %.pre-phi.i.i, %i.x
  %i.am = trunc i64 %i.al to i32
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEET_SB_.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj8EEC2INS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEET_SB_.exit: ; preds = %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i
  %i.an = phi i32 [ 0, %_ZN4llvh16inverse_childrenIPN6hermes10BasicBlockEEENS_14iterator_rangeINS_11GraphTraitsINS_7InverseIT_EEE17ChildIteratorTypeEEERKNS5_IS7_E7NodeRefE.exit ], [ %i.am, %_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEE6appendINS1_12PredIteratorIS2_PPNS1_11InstructionEEEvEEvT_SB_.exit.loopexit.i ]
  store i32 %i.an, ptr %i.o, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE20CalculateFromScratchERS5_PNS6_15BatchUpdateInfoE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"struct.llvh::DomTreeBuilder::SemiNCAInfo", align 8 ; 12 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.e, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.g, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.f, i8 0, i64 17, i1 false)
  store ptr %i.c, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14 ; 3 uses
  store ptr %i.h, ptr %2, align 8, !tbaa !178
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !181
  store ptr null, ptr %i.h, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.i, ptr %i.k, align 8, !tbaa !182
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.l, i8 0, i64 20, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr null, ptr %i.m, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.n, ptr %3, align 8, !tbaa !7, !alias.scope !378
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !11, !alias.scope !378
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !114
  %i.s = ptrtoint ptr %i.r to i64
  store i64 %i.s, ptr %i.n, align 8, !alias.scope !378
  store i32 1, ptr %i.o, align 8, !tbaa !10, !alias.scope !378
  %i.t = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 0 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.n
  br i1 %i.v, label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef %i.u) #13
  br label %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit

_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.w = load ptr, ptr %0, align 8, !tbaa !7
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.y = call noundef i32 @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE6runDFSILb0EPFbPS4_S8_EEEjS8_jT0_j(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef %i.x, i32 noundef 0, ptr noundef nonnull @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE13AlwaysDescendEPS4_S7_, i32 noundef 0) ; 0 uses
  call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE10runSemiNCAERS5_j(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 0)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i8 1, ptr %i.z, align 8, !tbaa !161
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EED2Ev.exit
  %i.aa = load i32, ptr %i.e, align 8, !tbaa !10
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ab = load ptr, ptr %0, align 8, !tbaa !7
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !32
  %i.ad = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #14, !noalias !381 ; 3 uses
  call void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEC1EPS2_PS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noundef %i.ac, ptr noundef null) #13, !noalias !381
  %i.ae = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34 ; 4 uses
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.an) #12
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef 56) #12
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !34
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, %bb.e
  %i.ao = phi ptr [ %.pre, %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i ], [ %i.ad, %bb.e ] ; 2 uses
  store ptr %i.ao, ptr %i.f, align 8, !tbaa !78
  call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE16attachNewSubtreeERS5_PNS_15DomTreeNodeBaseIS4_EE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !191 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %.pre1.i.i = load ptr, ptr %i.l, align 8, !tbaa !192 ; 3 uses
  br i1 %i.ar, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIS2_Lb0EEEE7InfoRecENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEED2Ev.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.h
  %i.as = zext i32 %i.aq to i64
  %.idx.i.i.i = mul nuw nsw i64 %i.as, 72
  %i.at = getelementptr inbounds nuw i8, ptr %.pre1.i.i, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.011.i.i.i = phi ptr [ %i.az, %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i ], [ %.pre1.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %i.au = load ptr, ptr %.011.i.i.i, align 8, !tbaa !32
  %magicptr.i.i.i = ptrtoint ptr %i.au to i64
  switch i64 %magicptr.i.i.i, label %bb.i [
    i64 -8, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i
    i64 -16, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !7  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.011.i.i.i, i64 56
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.aw) #13
  br label %_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE7InfoRecD2Ev.exit.i.i.i
end_hunk_1
