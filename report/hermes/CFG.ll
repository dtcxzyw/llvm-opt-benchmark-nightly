inline.NumInlined: 3113
inline.NumDeleted: 1058
begin_hunk_0_@_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE17properlyDominatesEPKS2_S5_:bb.a
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !84
  %i.bc = icmp eq ptr %i.bb, %.0.i
  br i1 %i.bc, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = icmp eq ptr %i.be, %i.ax
  br i1 %i.bf, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !57 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !57
  %.not.i20 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i20, label %bb.l, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !24, !range !28, !noundef !29
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !85
  %.not.i.i = icmp ult i32 %i.bo, %i.bq
  br i1 %.not.i.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 52
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86
  %i.bv = icmp ule i32 %i.bs, %i.bu
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

bb.o:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !25
  %i.bz = icmp ugt i32 %i.by, 32
  br i1 %i.bz, label %bb.p, label %.preheader.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE16updateDFSNumbersEv(ptr noundef nonnull align 8 dereferenceable(72) %0)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !85
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !85
  %.not.i20.i = icmp ult i32 %i.cb, %i.cd
  br i1 %.not.i20.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !86
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i, i64 52
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !86
  %i.ci = icmp ule i32 %i.cf, %i.ch
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

.preheader.i:                                     ; preds = %bb.o, %bb.r
  %.0.i.i = phi ptr [ %i.ck, %bb.r ], [ %i.ax, %bb.o ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !84 ; 3 uses
  %.not.i22.i = icmp eq ptr %i.ck, null
  br i1 %.not.i22.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_.exit.i, label %bb.r

bb.r:                                             ; preds = %.preheader.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !57
  %.not7.i.i = icmp ult i32 %i.cm, %i.bh
  br i1 %.not7.i.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_.exit.i, label %.preheader.i, !llvm.loop !87

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_.exit.i: ; preds = %bb.r, %.preheader.i
  %i.cn = icmp eq ptr %.0.i.i, %.0.i
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit: ; preds = %.lr.ph.i.i.i9, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_.exit.i, %bb.q, %bb.p, %bb.n, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit18, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ true, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit18 ], [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ %i.bv, %bb.n ], [ %i.cn, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_.exit.i ], [ %i.ci, %bb.q ], [ false, %bb.m ], [ false, %bb.p ], [ true, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13 ], [ true, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit ], [ true, %.lr.ph.i.i.i9 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE20isReachableFromEntryEPKS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.k, %i.j              ; 2 uses
  %i.l = zext nneg i32 %.02944.i.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !52

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.n, %bb.b ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.c ], [ %.02944.i.i.i, %bb.b ]
  %.02746.i.i.i = phi i32 [ %i.r, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.q, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.c, !prof !53

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add i32 %.02746.i.i.i, 1
  %i.s = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.s, %i.k                ; 2 uses
  %i.t = zext i32 %.029.i.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.x = zext i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i: ; preds = %bb.c, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, %bb.b
  %.sink.i.ph.pn.i.i = phi ptr [ %i.y, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i ], [ %i.m, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = zext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z
  %.not.i = icmp eq ptr %.sink.i.ph.pn.i.i, %i.aa
  br i1 %.not.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  %i.ad = icmp ne ptr %i.ac, null
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi i1 [ %i.ad, %bb.d ], [ false, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE20isReachableFromEntryEPKNS_15DomTreeNodeBaseIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ne ptr %1, null
  ret i1 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE7getIDomEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef i32 @_ZNK4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8getLevelEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE11DominatedByEPKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !85
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %.not = icmp ult i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.h = load i32, ptr %i.g, align 4, !tbaa !86
  %i.i = icmp ule i32 %i.f, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE16updateDFSNumbersEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %1 = alloca %"class.llvh::SmallVector.34", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.d, align 4, !tbaa !25
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !7
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  store i32 32, ptr %i.g, align 4, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !78   ; 4 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %_ZN4llvh11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELj32EED2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !68
  %i.l = ptrtoint ptr %i.k to i64
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.l, ptr %.sroa.417.0..sroa_idx, align 8
  store i32 1, ptr %i.f, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i32 0, ptr %i.m, align 8, !tbaa !85
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %2 = phi ptr [ %4, %bb.g ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %i.n = phi i32 [ %.1, %bb.g ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %3 = phi i32 [ %.pr, %bb.g ], [ 1, %.lr.ph.preheader ] ; 3 uses
  %i.o = zext i32 %3 to i64                       ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !88   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr                 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp eq ptr %i.w, %i.u
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 52
  store i32 %i.n, ptr %i.y, align 4, !tbaa !86
  %i.z = add i32 %3, -1                           ; 2 uses
  store i32 %i.z, ptr %i.f, align 8, !tbaa !10
  br label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !34  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.ab, ptr %i.s, align 8, !tbaa !91
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !68
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = load i32, ptr %i.g, align 4, !tbaa !11
  %.not.i6 = icmp ult i32 %3, %i.af
  br i1 %.not.i6, label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELb1EE9push_backERKSH_.exit8, label %bb.f, !prof !53

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 0, i64 noundef 16) #13
  %.pre.i7 = load i32, ptr %i.f, align 8, !tbaa !10
  %.pre.a = load ptr, ptr %1, align 8, !tbaa !7
  %.pre26 = zext i32 %.pre.i7 to i64
  br label %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELb1EE9push_backERKSH_.exit8

_ZN4llvh23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELb1EE9push_backERKSH_.exit8: ; preds = %bb.e, %bb.f
  %.pre-phi = phi i64 [ %i.o, %bb.e ], [ %.pre26, %bb.f ]
  %i.ag = phi ptr [ %2, %bb.e ], [ %.pre.a, %bb.f ]
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %.pre-phi ; 2 uses
  store ptr %i.aa, ptr %i.ah, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx, align 1
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !10
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  store i32 %i.n, ptr %i.ak, align 8, !tbaa !85
  %.pre = load ptr, ptr %1, align 8, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELb1EE9push_backERKSH_.exit8, %bb.d
  %.pr = phi i32 [ %i.aj, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELb1EE9push_backERKSH_.exit8 ], [ %i.z, %bb.d ] ; 2 uses
  %4 = phi ptr [ %.pre, %_ZN4llvh23SmallVectorTemplateBaseISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELb1EE9push_backERKSH_.exit8 ], [ %2, %bb.d ] ; 3 uses
  %.1 = add i32 %i.n, 1
  %.not.i5 = icmp eq i32 %.pr, 0
  br i1 %.not.i5, label %bb.h, label %.lr.ph, !llvm.loop !92

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.al, align 4, !tbaa !25
  store i8 1, ptr %i.a, align 8, !tbaa !24
  %i.am = icmp eq ptr %4, %i.e
  br i1 %i.am, label %_ZN4llvh11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELj32EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %4) #13
  br label %_ZN4llvh11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELj32EED2Ev.exit

_ZN4llvh11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELj32EED2Ev.exit: ; preds = %bb.c, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.j

bb.j:                                             ; preds = %_ZN4llvh11SmallVectorISt4pairIPKNS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS5_St6vectorISA_SaISA_EEEEELj32EED2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !57
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ %i.d, %bb.c ]    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  %.not7 = icmp ult i32 %i.f, %i.b
  br i1 %.not7, label %.critedge, label %bb.b, !llvm.loop !87

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.g = icmp eq ptr %.0, %1
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 5 uses
  %i.f = icmp eq i32 %i.e, 0                      ; 2 uses
  br i1 %i.f, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = ptrtoint ptr %1 to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.e, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.l, %i.k              ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = icmp eq ptr %1, %i.o
  br i1 %i.p, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !52

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.q = phi ptr [ %i.w, %bb.d ], [ %i.o, %bb.c ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.d ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.r = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.d, !prof !53

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.s = add i32 %.02746.i.i.i, 1
  %i.t = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.t, %i.l                ; 2 uses
  %i.u = zext i32 %.029.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq ptr %1, %i.w
  br i1 %i.x, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.y = zext i32 %i.e to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.y
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i: ; preds = %bb.d, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, %bb.c
  %.sink.i.ph.pn.i.i = phi ptr [ %i.z, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i ], [ %i.n, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.aa = zext i32 %i.e to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aa ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.ph.pn.i.i, %i.ab
  br i1 %.not.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.ad, %bb.e ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i ] ; 10 uses
  br i1 %i.f, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit
  %i.ae = ptrtoint ptr %2 to i64
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = lshr i32 %i.af, 9
  %i.ai = xor i32 %i.ag, %i.ah
  %i.aj = add i32 %i.e, -1                        ; 2 uses
  %.02944.i.i.i8 = and i32 %i.aj, %i.ai           ; 2 uses
  %i.ak = zext nneg i32 %.02944.i.i.i8 to i64
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %i.an = icmp eq ptr %2, %i.am
  br i1 %i.an, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13, label %.lr.ph.i.i.i9, !prof !52

.lr.ph.i.i.i9:                                    ; preds = %bb.f, %bb.g
  %i.ao = phi ptr [ %i.au, %bb.g ], [ %i.am, %bb.f ]
  %.02947.i.i.i10 = phi i32 [ %.029.i.i.i12, %bb.g ], [ %.02944.i.i.i8, %bb.f ]
  %.02746.i.i.i11 = phi i32 [ %i.aq, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.ap = icmp eq ptr %i.ao, inttoptr (i64 -8 to ptr)
  br i1 %i.ap, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.g, !prof !53

bb.g:                                             ; preds = %.lr.ph.i.i.i9
  %i.aq = add i32 %.02746.i.i.i11, 1
  %i.ar = add i32 %.02746.i.i.i11, %.02947.i.i.i10
  %.029.i.i.i12 = and i32 %i.ar, %i.aj            ; 2 uses
  %i.as = zext i32 %.029.i.i.i12 to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !32 ; 2 uses
  %i.av = icmp eq ptr %2, %i.au
  br i1 %i.av, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13, label %.lr.ph.i.i.i9, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13: ; preds = %bb.g, %bb.f
  %.sink.i.ph.pn.i.i14 = phi ptr [ %i.al, %bb.f ], [ %i.at, %bb.g ] ; 2 uses
  %.not.i15 = icmp eq ptr %.sink.i.ph.pn.i.i14, %i.ab
  br i1 %.not.i15, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit18

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit18: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13
  %i.aw = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i14, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 10 uses
  %i.ay = icmp ne ptr %i.ax, %.0.i
  %i.az = icmp ne ptr %i.ax, null
  %or.cond.i = and i1 %i.ay, %i.az
  br i1 %or.cond.i, label %bb.h, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

bb.h:                                             ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit18
  %.not23.i = icmp eq ptr %.0.i, null
  br i1 %.not23.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !84
  %i.bc = icmp eq ptr %i.bb, %.0.i
  br i1 %i.bc, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !84
  %i.bf = icmp eq ptr %i.be, %i.ax
  br i1 %i.bf, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !57 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !57
  %.not.i20 = icmp ult i32 %i.bh, %i.bj
  br i1 %.not.i20, label %bb.l, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !24, !range !28, !noundef !29
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !85
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !85
  %.not.i.i = icmp ult i32 %i.bo, %i.bq
  br i1 %.not.i.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i, i64 52
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !86
  %i.bv = icmp ule i32 %i.bs, %i.bu
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKNS_15DomTreeNodeBaseIS2_EES7_.exit

bb.o:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !25
  %i.by = add i32 %i.bx, 1                        ; 2 uses
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !25
  %i.bz = icmp ugt i32 %i.by, 32
  br i1 %i.bz, label %bb.p, label %.preheader.i

bb.p:                                             ; preds = %bb.o
end_hunk_0
begin_hunk_1_@_ZSt21__unguarded_partitionIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEESD_SD_SD_SD_T0_:bb.a
  %i.me = and i64 %i.md, -8                       ; 2 uses
  %i.mf = inttoptr i64 %i.me to ptr               ; 3 uses
  store ptr %i.mb, ptr %6, align 8, !tbaa !211
  store ptr %i.mf, ptr %i.p, align 8, !tbaa !214
  %.not.i.i.i50 = icmp eq i32 %.pre-phi140, 0     ; 2 uses
  %i.mg = select i1 %.not.i.i.i50, ptr %i.ly, ptr %i.j ; 3 uses
  %i.mh = select i1 %.not.i.i.i50, i32 %i.lx, i32 4 ; 7 uses
  %i.mi = icmp eq i32 %i.mh, 0
  br i1 %i.mi, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60, label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15
  %i.mj = ptrtoint ptr %i.mb to i64
  %i.mk = trunc i64 %i.mj to i32                  ; 2 uses
  %i.ml = lshr i32 %i.mk, 4
  %i.mm = lshr i32 %i.mk, 9
  %i.mn = xor i32 %i.ml, %i.mm
  %i.mo = zext nneg i32 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 32
  %i.mq = trunc i64 %i.me to i32                  ; 2 uses
  %i.mr = lshr i32 %i.mq, 4
  %i.ms = lshr i32 %i.mq, 9
  %i.mt = xor i32 %i.mr, %i.ms
  %i.mu = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mv = or disjoint i64 %i.mp, %i.mu
  %i.mw = shl nuw nsw i64 %i.mu, 32
  %i.mx = xor i64 %i.mw, -1
  %i.my = add nsw i64 %i.mv, %i.mx                ; 2 uses
  %i.mz = lshr i64 %i.my, 22
  %i.na = xor i64 %i.mz, %i.my                    ; 2 uses
  %i.nb = shl i64 %i.na, 13
  %i.nc = xor i64 %i.nb, -1
  %i.nd = add i64 %i.na, %i.nc                    ; 2 uses
  %i.ne = lshr i64 %i.nd, 8
  %i.nf = xor i64 %i.ne, %i.nd
  %i.ng = mul i64 %i.nf, 9                        ; 2 uses
  %i.nh = lshr i64 %i.ng, 15
  %i.ni = xor i64 %i.nh, %i.ng                    ; 2 uses
  %i.nj = shl i64 %i.ni, 27
  %i.nk = xor i64 %i.nj, -1
  %i.nl = add i64 %i.ni, %i.nk                    ; 2 uses
  %i.nm = lshr i64 %i.nl, 31
  %i.nn = xor i64 %i.nm, %i.nl
  %i.no = trunc i64 %i.nn to i32
  %i.np = add i32 %i.mh, -1                       ; 2 uses
  %i.nq = and i32 %i.np, %i.no                    ; 2 uses
  %i.nr = zext i32 %i.nq to i64                   ; 2 uses
  %i.ns = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.nr ; 3 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !211 ; 2 uses
  %i.nu = icmp eq ptr %i.mb, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8            ; 2 uses
  %i.nx = icmp eq ptr %i.nw, %i.mf
  %i.ny = select i1 %i.nu, i1 %i.nx, i1 false
  br i1 %i.ny, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, label %.lr.ph.i51, !prof !52

.lr.ph.i51:                                       ; preds = %bb.ab, %bb.ad
  %i.nz = phi ptr [ %i.os, %bb.ad ], [ %i.nw, %bb.ab ] ; 2 uses
  %i.oa = phi ptr [ %i.op, %bb.ad ], [ %i.nt, %bb.ab ] ; 2 uses
  %i.ob = phi ptr [ %i.oo, %bb.ad ], [ %i.ns, %bb.ab ] ; 2 uses
  %.02548.i52 = phi i32 [ %i.ok, %bb.ad ], [ 1, %bb.ab ] ; 2 uses
  %.02747.i53 = phi i32 [ %i.om, %bb.ad ], [ %i.nq, %bb.ab ]
  %.02946.i54 = phi ptr [ %spec.select.i56, %bb.ad ], [ null, %bb.ab ] ; 4 uses
  %i.oc = icmp eq ptr %i.oa, inttoptr (i64 -8 to ptr)
  %i.od = icmp eq ptr %i.nz, inttoptr (i64 -8 to ptr)
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %bb.ac, label %bb.ad, !prof !53

bb.ac:                                            ; preds = %.lr.ph.i51
  %.not.i59 = icmp eq ptr %.02946.i54, null
  %i.of = select i1 %.not.i59, ptr %i.ob, ptr %.02946.i54
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60

bb.ad:                                            ; preds = %.lr.ph.i51
  %i.og = icmp eq ptr %i.oa, inttoptr (i64 -16 to ptr)
  %i.oh = icmp eq ptr %i.nz, inttoptr (i64 -16 to ptr)
  %i.oi = select i1 %i.og, i1 %i.oh, i1 false
  %i.oj = icmp eq ptr %.02946.i54, null
  %or.cond.not.i55 = select i1 %i.oi, i1 %i.oj, i1 false
  %spec.select.i56 = select i1 %or.cond.not.i55, ptr %i.ob, ptr %.02946.i54
  %i.ok = add i32 %.02548.i52, 1
  %i.ol = add i32 %.02747.i53, %.02548.i52
  %i.om = and i32 %i.ol, %i.np                    ; 2 uses
  %i.on = zext i32 %i.om to i64                   ; 2 uses
  %i.oo = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.on ; 3 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !211 ; 2 uses
  %i.oq = icmp eq ptr %i.mb, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.os = load ptr, ptr %i.or, align 8            ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.mf
  %i.ou = select i1 %i.oq, i1 %i.ot, i1 false
  br i1 %i.ou, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, label %.lr.ph.i51, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16: ; preds = %bb.ad, %bb.ab
  %i.ov = phi i64 [ %i.nr, %bb.ab ], [ %i.on, %bb.ad ]
  %i.ow = getelementptr inbounds nuw [24 x i8], ptr %i.mg, i64 %i.ov
  %.phi.trans.insert10.i.i17 = getelementptr inbounds nuw i8, ptr %i.ow, i64 16
  %.pre11.i.i18 = load i32, ptr %.phi.trans.insert10.i.i17, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60: ; preds = %bb.ac, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15
  %.sink.i57 = phi ptr [ %i.of, %bb.ac ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i15 ]
  %i.ox = lshr i32 %i.lz, 1                       ; 2 uses
  %i.oy = shl i32 %i.ox, 2
  %i.oz = add i32 %i.oy, 4
  %i.pa = mul i32 %i.mh, 3
  %.not.i44 = icmp ult i32 %i.oz, %i.pa
  br i1 %.not.i44, label %bb.af, label %bb.ae, !prof !53

bb.ae:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60
  %i.pb = shl i32 %i.mh, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.pb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.pc = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.pd = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.ah

bb.af:                                            ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit60
  %i.pe = load i32, ptr %i.l, align 4, !tbaa !207
  %.neg.i46 = xor i32 %i.ox, -1
  %.neg13.i47 = add i32 %i.mh, %.neg.i46
  %i.pf = sub i32 %.neg13.i47, %i.pe
  %i.pg = lshr i32 %i.mh, 3
  %.not9.i48 = icmp ugt i32 %i.pf, %i.pg
  br i1 %.not9.i48, label %bb.ah, label %bb.ag, !prof !53

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %3, i32 noundef %i.mh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ph = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.pi = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.0.i45 = phi ptr [ %.sink.i57, %bb.af ], [ %i.pi, %bb.ag ], [ %i.pd, %bb.ae ] ; 4 uses
  %i.pj = load i32, ptr %3, align 8               ; 2 uses
  %i.pk = and i32 %i.pj, -2
  %i.pl = add i32 %i.pk, 2
  %i.pm = and i32 %i.pj, 1
  %i.pn = or disjoint i32 %i.pl, %i.pm
  store i32 %i.pn, ptr %3, align 8
  %i.po = load ptr, ptr %.0.i45, align 8, !tbaa !211
  %i.pp = icmp eq ptr %i.po, inttoptr (i64 -8 to ptr)
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i45, i64 8 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8
  %i.ps = icmp eq ptr %i.pr, inttoptr (i64 -8 to ptr)
  %i.pt = select i1 %i.pp, i1 %i.ps, i1 false
  br i1 %i.pt, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.pu = load i32, ptr %i.l, align 4, !tbaa !207
  %i.pv = add i32 %i.pu, -1
  store i32 %i.pv, ptr %i.l, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49: ; preds = %bb.ah, %bb.ai
  %i.pw = load ptr, ptr %6, align 8, !tbaa !32
  store ptr %i.pw, ptr %.0.i45, align 8, !tbaa !211
  %i.px = load ptr, ptr %i.p, align 8, !tbaa !32
  store ptr %i.px, ptr %i.pq, align 8, !tbaa !214
  %i.py = getelementptr inbounds nuw i8, ptr %.0.i45, i64 16
  store i32 0, ptr %i.py, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49
  %i.pz = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit49 ], [ %.pre11.i.i18, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i16 ]
  %i.qa = icmp sgt i32 %i.ma, %i.pz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br i1 %i.qa, label %.preheader, label %bb.aj, !llvm.loop !248

bb.aj:                                            ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_.exit22
  %i.qb = icmp ult ptr %.1, %.114
  br i1 %i.qb, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  ret ptr %.1

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %.1, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1, ptr noundef nonnull align 8 dereferenceable(16) %.114, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.114, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.b, !llvm.loop !249
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 7 uses
  %6 = alloca %"class.llvh::cfg::Update", align 8 ; 7 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8 ; 3 uses
  %8 = alloca %"class.llvh::cfg::Update", align 8 ; 4 uses
  store ptr %2, ptr %7, align 8
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.054 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not55 = icmp eq ptr %.054, %1
  br i1 %.not55, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.x
  %.057 = phi ptr [ %.054, %.lr.ph ], [ %.0, %bb.x ] ; 8 uses
  %.pn56 = phi ptr [ %0, %.lr.ph ], [ %.057, %bb.x ] ; 4 uses
  %i.j = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclIPSG_SM_EEbSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %.057, ptr noundef %0)
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.057, i64 16, i1 false), !tbaa.struct !238
  %i.k = ptrtoint ptr %.057 to i64
  %i.l = sub i64 %i.k, %i.i                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 4                   ; 2 uses
  %i.n = icmp sgt i64 %i.m, 1
  br i1 %i.n, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn56, i64 32
  %i.p = sub nsw i64 0, %i.m
  %i.q = getelementptr inbounds [16 x i8], ptr %i.o, i64 %i.p
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.l, i1 false)
  br label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

bb.e:                                             ; preds = %bb.c
  %i.r = icmp eq i64 %i.l, 16
  br i1 %i.r, label %bb.f, label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.pn56, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !238
  br label %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit

_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit: ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.x

bb.g:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8, !tbaa !245
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %.sroa.0.0.copyload, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.057, i64 16, i1 false), !tbaa.struct !238
  %i.t = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %.pn56)
  br i1 %i.t, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit

.lr.ph.i.preheader:                               ; preds = %bb.g
  %.pre66 = load ptr, ptr %5, align 8, !tbaa !240
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit
  %.012.i.a = phi ptr [ %9, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.pre66, %.lr.ph.i.preheader ] ; 12 uses
  %.0911.i.a = phi ptr [ %.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.pn56, %.lr.ph.i.preheader ] ; 5 uses
  %.0911.i = phi ptr [ %.0911.i.a, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.057, %.lr.ph.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.a, i64 16, i1 false), !tbaa.struct !238
  %.0.i = getelementptr inbounds i8, ptr %.0911.i.a, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.u = load ptr, ptr %6, align 8, !tbaa !173    ; 4 uses
  %i.v = load i64, ptr %i.f, align 8, !tbaa !177
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr                 ; 3 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !211
  store ptr %i.x, ptr %i.g, align 8, !tbaa !214
  %i.y = load i32, ptr %.012.i.a, align 8         ; 2 uses
  %i.z = and i32 %i.y, 1
  %.not.i.i.i28 = icmp eq i32 %i.z, 0             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = select i1 %.not.i.i.i28, ptr %i.ab, ptr %i.aa ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 16
  %i.ae = load i32, ptr %i.ad, align 8            ; 2 uses
  %i.af = select i1 %.not.i.i.i28, i32 %i.ae, i32 4 ; 7 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ah = ptrtoint ptr %i.u to i64
  %i.ai = trunc i64 %i.ah to i32                  ; 2 uses
  %i.aj = lshr i32 %i.ai, 4
  %i.ak = lshr i32 %i.ai, 9
  %i.al = xor i32 %i.aj, %i.ak
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 32
  %i.ao = trunc i64 %i.w to i32                   ; 2 uses
  %i.ap = lshr i32 %i.ao, 4
  %i.aq = lshr i32 %i.ao, 9
  %i.ar = xor i32 %i.ap, %i.aq
  %i.as = zext nneg i32 %i.ar to i64              ; 2 uses
  %i.at = or disjoint i64 %i.an, %i.as
  %i.au = shl nuw nsw i64 %i.as, 32
  %i.av = xor i64 %i.au, -1
  %i.aw = add nsw i64 %i.at, %i.av                ; 2 uses
  %i.ax = lshr i64 %i.aw, 22
  %i.ay = xor i64 %i.ax, %i.aw                    ; 2 uses
  %i.az = shl i64 %i.ay, 13
  %i.ba = xor i64 %i.az, -1
  %i.bb = add i64 %i.ay, %i.ba                    ; 2 uses
  %i.bc = lshr i64 %i.bb, 8
  %i.bd = xor i64 %i.bc, %i.bb
  %i.be = mul i64 %i.bd, 9                        ; 2 uses
  %i.bf = lshr i64 %i.be, 15
  %i.bg = xor i64 %i.bf, %i.be                    ; 2 uses
  %i.bh = shl i64 %i.bg, 27
  %i.bi = xor i64 %i.bh, -1
  %i.bj = add i64 %i.bg, %i.bi                    ; 2 uses
  %i.bk = lshr i64 %i.bj, 31
  %i.bl = xor i64 %i.bk, %i.bj
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = add i32 %i.af, -1                       ; 2 uses
  %i.bo = and i32 %i.bn, %i.bm                    ; 2 uses
  %i.bp = zext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.bp ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !211 ; 2 uses
  %i.bs = icmp eq ptr %i.u, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.x
  %i.bw = select i1 %i.bs, i1 %i.bv, i1 false
  br i1 %i.bw, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i29, !prof !52

.lr.ph.i29:                                       ; preds = %bb.h, %bb.j
  %i.bx = phi ptr [ %i.cq, %bb.j ], [ %i.bu, %bb.h ] ; 2 uses
  %i.by = phi ptr [ %i.cn, %bb.j ], [ %i.br, %bb.h ] ; 2 uses
  %i.bz = phi ptr [ %i.cm, %bb.j ], [ %i.bq, %bb.h ] ; 2 uses
  %.02548.i30 = phi i32 [ %i.ci, %bb.j ], [ 1, %bb.h ] ; 2 uses
  %.02747.i31 = phi i32 [ %i.ck, %bb.j ], [ %i.bo, %bb.h ]
  %.02946.i32 = phi ptr [ %spec.select.i34, %bb.j ], [ null, %bb.h ] ; 4 uses
  %i.ca = icmp eq ptr %i.by, inttoptr (i64 -8 to ptr)
  %i.cb = icmp eq ptr %i.bx, inttoptr (i64 -8 to ptr)
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.i, label %bb.j, !prof !53

bb.i:                                             ; preds = %.lr.ph.i29
  %.not.i37 = icmp eq ptr %.02946.i32, null
  %i.cd = select i1 %.not.i37, ptr %i.bz, ptr %.02946.i32
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38

bb.j:                                             ; preds = %.lr.ph.i29
  %i.ce = icmp eq ptr %i.by, inttoptr (i64 -16 to ptr)
  %i.cf = icmp eq ptr %i.bx, inttoptr (i64 -16 to ptr)
  %i.cg = select i1 %i.ce, i1 %i.cf, i1 false
  %i.ch = icmp eq ptr %.02946.i32, null
  %or.cond.not.i33 = select i1 %i.cg, i1 %i.ch, i1 false
  %spec.select.i34 = select i1 %or.cond.not.i33, ptr %i.bz, ptr %.02946.i32
  %i.ci = add i32 %.02548.i30, 1
  %i.cj = add i32 %.02747.i31, %.02548.i30
  %i.ck = and i32 %i.cj, %i.bn                    ; 2 uses
  %i.cl = zext i32 %i.ck to i64                   ; 2 uses
  %i.cm = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.cl ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !211 ; 2 uses
  %i.co = icmp eq ptr %i.u, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.x
  %i.cs = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %i.cs, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i29, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i: ; preds = %bb.j, %bb.h
  %i.ct = phi i64 [ %i.bp, %bb.h ], [ %i.cl, %bb.j ]
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %i.ct
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38: ; preds = %bb.i, %.lr.ph.i
  %.sink.i35 = phi ptr [ %i.cd, %bb.i ], [ null, %.lr.ph.i ]
  %i.cv = lshr i32 %i.y, 1                        ; 2 uses
  %i.cw = shl i32 %i.cv, 2
  %i.cx = add i32 %i.cw, 4
  %i.cy = mul i32 %i.af, 3
  %.not.i22 = icmp ult i32 %i.cx, %i.cy
  br i1 %.not.i22, label %bb.l, label %bb.k, !prof !53

bb.k:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38
  %i.cz = shl i32 %i.af, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.a, i32 noundef %i.cz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.da = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %.012.i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.db = load ptr, ptr %i.b, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.n

bb.l:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit38
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !207
  %.neg.i24 = xor i32 %i.cv, -1
  %.neg13.i25 = add i32 %i.af, %.neg.i24
  %i.de = sub i32 %.neg13.i25, %i.dd
  %i.df = lshr i32 %i.af, 3
  %.not9.i26 = icmp ugt i32 %i.de, %i.df
  br i1 %.not9.i26, label %bb.n, label %bb.m, !prof !53

bb.m:                                             ; preds = %bb.l
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.a, i32 noundef %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.dg = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %.012.i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.0.i23 = phi ptr [ %.sink.i35, %bb.l ], [ %i.dh, %bb.m ], [ %i.db, %bb.k ] ; 4 uses
  %i.di = load i32, ptr %.012.i.a, align 8        ; 2 uses
  %i.dj = and i32 %i.di, -2
  %i.dk = add i32 %i.dj, 2
  %i.dl = and i32 %i.di, 1
  %i.dm = or disjoint i32 %i.dk, %i.dl
  store i32 %i.dm, ptr %.012.i.a, align 8
  %i.dn = load ptr, ptr %.0.i23, align 8, !tbaa !211
  %i.do = icmp eq ptr %i.dn, inttoptr (i64 -8 to ptr)
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i23, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = icmp eq ptr %i.dq, inttoptr (i64 -8 to ptr)
  %i.ds = select i1 %i.do, i1 %i.dr, i1 false
  br i1 %i.ds, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !207
  %i.dv = add i32 %i.du, -1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27: ; preds = %bb.n, %bb.o
  %i.dw = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.dw, ptr %.0.i23, align 8, !tbaa !211
  %i.dx = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.dx, ptr %i.dp, align 8, !tbaa !214
  %i.dy = getelementptr inbounds nuw i8, ptr %.0.i23, i64 16
  store i32 0, ptr %i.dy, align 8, !tbaa !3
  %.pre.a = load ptr, ptr %5, align 8, !tbaa !240 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 16
  %.pre66.a = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i
  %i.dz = phi i32 [ %.pre66.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %i.ae, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.ea = phi ptr [ %.pre.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %.012.i.a, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ] ; 11 uses
  %i.eb = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit27 ], [ %.pre.i.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.ec = load ptr, ptr %.0.i, align 8, !tbaa !173 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %.0911.i.a, i64 -8
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !177
  %i.ef = and i64 %i.ee, -8                       ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr               ; 3 uses
  store ptr %i.ec, ptr %4, align 8, !tbaa !211
  store ptr %i.eg, ptr %i.h, align 8, !tbaa !214
  %i.eh = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.ei = and i32 %i.eh, 1
  %.not.i.i.i18 = icmp eq i32 %i.ei, 0            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = select i1 %.not.i.i.i18, ptr %i.ek, ptr %i.ej ; 3 uses
  %i.em = select i1 %.not.i.i.i18, i32 %i.dz, i32 4 ; 7 uses
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %i.eo = ptrtoint ptr %i.ec to i64
  %i.ep = trunc i64 %i.eo to i32                  ; 2 uses
  %i.eq = lshr i32 %i.ep, 4
  %i.er = lshr i32 %i.ep, 9
  %i.es = xor i32 %i.eq, %i.er
  %i.et = zext nneg i32 %i.es to i64
  %i.eu = shl nuw nsw i64 %i.et, 32
  %i.ev = trunc i64 %i.ef to i32                  ; 2 uses
  %i.ew = lshr i32 %i.ev, 4
  %i.ex = lshr i32 %i.ev, 9
  %i.ey = xor i32 %i.ew, %i.ex
  %i.ez = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fa = or disjoint i64 %i.eu, %i.ez
  %i.fb = shl nuw nsw i64 %i.ez, 32
  %i.fc = xor i64 %i.fb, -1
  %i.fd = add nsw i64 %i.fa, %i.fc                ; 2 uses
  %i.fe = lshr i64 %i.fd, 22
  %i.ff = xor i64 %i.fe, %i.fd                    ; 2 uses
  %i.fg = shl i64 %i.ff, 13
  %i.fh = xor i64 %i.fg, -1
  %i.fi = add i64 %i.ff, %i.fh                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 8
  %i.fk = xor i64 %i.fj, %i.fi
  %i.fl = mul i64 %i.fk, 9                        ; 2 uses
  %i.fm = lshr i64 %i.fl, 15
  %i.fn = xor i64 %i.fm, %i.fl                    ; 2 uses
  %i.fo = shl i64 %i.fn, 27
  %i.fp = xor i64 %i.fo, -1
  %i.fq = add i64 %i.fn, %i.fp                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 31
  %i.fs = xor i64 %i.fr, %i.fq
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = add i32 %i.em, -1                       ; 2 uses
  %i.fv = and i32 %i.fu, %i.ft                    ; 2 uses
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.fw ; 3 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !211 ; 2 uses
  %i.fz = icmp eq ptr %i.ec, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.eg
  %i.gd = select i1 %i.fz, i1 %i.gc, i1 false
  br i1 %i.gd, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i19, !prof !52

.lr.ph.i19:                                       ; preds = %bb.p, %bb.r
  %i.ge = phi ptr [ %i.gx, %bb.r ], [ %i.gb, %bb.p ] ; 2 uses
  %i.gf = phi ptr [ %i.gu, %bb.r ], [ %i.fy, %bb.p ] ; 2 uses
  %i.gg = phi ptr [ %i.gt, %bb.r ], [ %i.fx, %bb.p ] ; 2 uses
  %.02548.i = phi i32 [ %i.gp, %bb.r ], [ 1, %bb.p ] ; 2 uses
  %.02747.i = phi i32 [ %i.gr, %bb.r ], [ %i.fv, %bb.p ]
  %.02946.i = phi ptr [ %spec.select.i, %bb.r ], [ null, %bb.p ] ; 4 uses
  %i.gh = icmp eq ptr %i.gf, inttoptr (i64 -8 to ptr)
  %i.gi = icmp eq ptr %i.ge, inttoptr (i64 -8 to ptr)
  %i.gj = select i1 %i.gh, i1 %i.gi, i1 false
  br i1 %i.gj, label %bb.q, label %bb.r, !prof !53

bb.q:                                             ; preds = %.lr.ph.i19
  %.not.i20 = icmp eq ptr %.02946.i, null
  %i.gk = select i1 %.not.i20, ptr %i.gg, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.r:                                             ; preds = %.lr.ph.i19
  %i.gl = icmp eq ptr %i.gf, inttoptr (i64 -16 to ptr)
  %i.gm = icmp eq ptr %i.ge, inttoptr (i64 -16 to ptr)
  %i.gn = select i1 %i.gl, i1 %i.gm, i1 false
  %i.go = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.gn, i1 %i.go, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.gg, ptr %.02946.i
  %i.gp = add i32 %.02548.i, 1
  %i.gq = add i32 %.02747.i, %.02548.i
  %i.gr = and i32 %i.gq, %i.fu                    ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.gs ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !211 ; 2 uses
  %i.gv = icmp eq ptr %i.ec, %i.gu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  %i.gx = load ptr, ptr %i.gw, align 8            ; 2 uses
  %i.gy = icmp eq ptr %i.gx, %i.eg
  %i.gz = select i1 %i.gv, i1 %i.gy, i1 false
  br i1 %i.gz, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i19, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i: ; preds = %bb.r, %bb.p
  %i.ha = phi i64 [ %i.fw, %bb.p ], [ %i.gs, %bb.r ]
  %i.hb = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ha
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %.pre11.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.q, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %.sink.i = phi ptr [ %i.gk, %bb.q ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i ]
  %i.hc = lshr i32 %i.eh, 1                       ; 2 uses
  %i.hd = shl i32 %i.hc, 2
  %i.he = add i32 %i.hd, 4
  %i.hf = mul i32 %i.em, 3
  %.not.i = icmp ult i32 %i.he, %i.hf
  br i1 %.not.i, label %bb.t, label %bb.s, !prof !53

bb.s:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.hg = shl i32 %i.em, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.ea, i32 noundef %i.hg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.hh = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.hi = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.v

bb.t:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !207
  %.neg.i = xor i32 %i.hc, -1
  %.neg13.i = add i32 %i.em, %.neg.i
  %i.hl = sub i32 %.neg13.i, %i.hk
  %i.hm = lshr i32 %i.em, 3
  %.not9.i = icmp ugt i32 %i.hl, %i.hm
  br i1 %.not9.i, label %bb.v, label %bb.u, !prof !53

bb.u:                                             ; preds = %bb.t
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.ea, i32 noundef %i.em)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.hn = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.ea, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.ho = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0.i17 = phi ptr [ %.sink.i, %bb.t ], [ %i.ho, %bb.u ], [ %i.hi, %bb.s ] ; 4 uses
  %i.hp = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.hq = and i32 %i.hp, -2
  %i.hr = add i32 %i.hq, 2
  %i.hs = and i32 %i.hp, 1
  %i.ht = or disjoint i32 %i.hr, %i.hs
  store i32 %i.ht, ptr %i.ea, align 8
  %i.hu = load ptr, ptr %.0.i17, align 8, !tbaa !211
  %i.hv = icmp eq ptr %i.hu, inttoptr (i64 -8 to ptr)
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i17, i64 8 ; 2 uses
  %i.hx = load ptr, ptr %i.hw, align 8
  %i.hy = icmp eq ptr %i.hx, inttoptr (i64 -8 to ptr)
  %i.hz = select i1 %i.hv, i1 %i.hy, i1 false
  %.pre = load ptr, ptr %5, align 8, !tbaa !240
  br i1 %i.hz, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ea, i64 4 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !207
  %i.ic = add i32 %i.ib, -1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit: ; preds = %bb.v, %bb.w
  %i.id = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.id, ptr %.0.i17, align 8, !tbaa !211
  %i.ie = load ptr, ptr %i.h, align 8, !tbaa !32
  store ptr %i.ie, ptr %i.hw, align 8, !tbaa !214
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i17, i64 16
  store i32 0, ptr %i.if, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit
  %9 = phi ptr [ %.pre, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %i.ea, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.ig = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %.pre11.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.ih = icmp sgt i32 %i.eb, %i.ig
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.ih, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit, !llvm.loop !250

_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit, %bb.g
  %.09.lcssa.i = phi ptr [ %.057, %bb.g ], [ %.0911.i.a, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.x

bb.x:                                             ; preds = %_ZSt13move_backwardIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEES7_ET0_T_S9_S8_.exit, %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.057, i64 16 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !251

.loopexit:                                        ; preds = %bb.x, %.preheader, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt26__unguarded_insertion_sortIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_SD_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 7 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8 ; 7 uses
  %6 = alloca %"class.llvh::cfg::Update", align 8 ; 7 uses
  %.not44 = icmp eq ptr %0, %1
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit
  %.045 = phi ptr [ %0, %.lr.ph ], [ %i.hw, %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.045, i64 16, i1 false), !tbaa.struct !238
  %.010.i = getelementptr inbounds i8, ptr %.045, i64 -16 ; 2 uses
  %i.h = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %.010.i)
  br i1 %i.h, label %.lr.ph.i.preheader, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.pre53 = load ptr, ptr %5, align 8, !tbaa !240
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit
  %.012.i.a = phi ptr [ %7, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.pre53, %.lr.ph.i.preheader ] ; 12 uses
  %.0911.i.a = phi ptr [ %.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.010.i, %.lr.ph.i.preheader ] ; 5 uses
  %.0911.i = phi ptr [ %.0911.i.a, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ], [ %.045, %.lr.ph.i.preheader ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.a, i64 16, i1 false), !tbaa.struct !238
  %.0.i = getelementptr inbounds i8, ptr %.0911.i.a, i64 -16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.i = load ptr, ptr %6, align 8, !tbaa !173    ; 4 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !177
  %i.k = and i64 %i.j, -8                         ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 3 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !211
  store ptr %i.l, ptr %i.f, align 8, !tbaa !214
  %i.m = load i32, ptr %.012.i.a, align 8         ; 2 uses
  %i.n = and i32 %i.m, 1
  %.not.i.i.i18 = icmp eq i32 %i.n, 0             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i18, ptr %i.p, ptr %i.o ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 16
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %i.t = select i1 %.not.i.i.i18, i32 %i.s, i32 4 ; 7 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = ptrtoint ptr %i.i to i64
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = lshr i32 %i.w, 4
  %i.y = lshr i32 %i.w, 9
  %i.z = xor i32 %i.x, %i.y
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 32
  %i.ac = trunc i64 %i.k to i32                   ; 2 uses
  %i.ad = lshr i32 %i.ac, 4
  %i.ae = lshr i32 %i.ac, 9
  %i.af = xor i32 %i.ad, %i.ae
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = or disjoint i64 %i.ab, %i.ag
  %i.ai = shl nuw nsw i64 %i.ag, 32
  %i.aj = xor i64 %i.ai, -1
  %i.ak = add nsw i64 %i.ah, %i.aj                ; 2 uses
  %i.al = lshr i64 %i.ak, 22
  %i.am = xor i64 %i.al, %i.ak                    ; 2 uses
  %i.an = shl i64 %i.am, 13
  %i.ao = xor i64 %i.an, -1
  %i.ap = add i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 8
  %i.ar = xor i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 9                        ; 2 uses
  %i.at = lshr i64 %i.as, 15
  %i.au = xor i64 %i.at, %i.as                    ; 2 uses
  %i.av = shl i64 %i.au, 27
  %i.aw = xor i64 %i.av, -1
  %i.ax = add i64 %i.au, %i.aw                    ; 2 uses
  %i.ay = lshr i64 %i.ax, 31
  %i.az = xor i64 %i.ay, %i.ax
  %i.ba = trunc i64 %i.az to i32
  %i.bb = add i32 %i.t, -1                        ; 2 uses
  %i.bc = and i32 %i.bb, %i.ba                    ; 2 uses
  %i.bd = zext i32 %i.bc to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bd ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !211 ; 2 uses
  %i.bg = icmp eq ptr %i.i, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.l
  %i.bk = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %i.bk, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i19, !prof !52

.lr.ph.i19:                                       ; preds = %bb.c, %bb.e
  %i.bl = phi ptr [ %i.ce, %bb.e ], [ %i.bi, %bb.c ] ; 2 uses
  %i.bm = phi ptr [ %i.cb, %bb.e ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bn = phi ptr [ %i.ca, %bb.e ], [ %i.be, %bb.c ] ; 2 uses
  %.02548.i20 = phi i32 [ %i.bw, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02747.i21 = phi i32 [ %i.by, %bb.e ], [ %i.bc, %bb.c ]
  %.02946.i22 = phi ptr [ %spec.select.i24, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.bo = icmp eq ptr %i.bm, inttoptr (i64 -8 to ptr)
  %i.bp = icmp eq ptr %i.bl, inttoptr (i64 -8 to ptr)
  %i.bq = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %i.bq, label %bb.d, label %bb.e, !prof !53

bb.d:                                             ; preds = %.lr.ph.i19
  %.not.i27 = icmp eq ptr %.02946.i22, null
  %i.br = select i1 %.not.i27, ptr %i.bn, ptr %.02946.i22
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28

bb.e:                                             ; preds = %.lr.ph.i19
  %i.bs = icmp eq ptr %i.bm, inttoptr (i64 -16 to ptr)
  %i.bt = icmp eq ptr %i.bl, inttoptr (i64 -16 to ptr)
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  %i.bv = icmp eq ptr %.02946.i22, null
  %or.cond.not.i23 = select i1 %i.bu, i1 %i.bv, i1 false
  %spec.select.i24 = select i1 %or.cond.not.i23, ptr %i.bn, ptr %.02946.i22
  %i.bw = add i32 %.02548.i20, 1
  %i.bx = add i32 %.02747.i21, %.02548.i20
  %i.by = and i32 %i.bx, %i.bb                    ; 2 uses
  %i.bz = zext i32 %i.by to i64                   ; 2 uses
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.bz ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !211 ; 2 uses
  %i.cc = icmp eq ptr %i.i, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.l
  %i.cg = select i1 %i.cc, i1 %i.cf, i1 false
  br i1 %i.cg, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i, label %.lr.ph.i19, !prof !54, !llvm.loop !235

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i: ; preds = %bb.e, %bb.c
  %i.ch = phi i64 [ %i.bd, %bb.c ], [ %i.bz, %bb.e ]
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %i.ch
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %.pre.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28: ; preds = %bb.d, %.lr.ph.i
  %.sink.i25 = phi ptr [ %i.br, %bb.d ], [ null, %.lr.ph.i ]
  %i.cj = lshr i32 %i.m, 1                        ; 2 uses
  %i.ck = shl i32 %i.cj, 2
  %i.cl = add i32 %i.ck, 4
  %i.cm = mul i32 %i.t, 3
  %.not.i12 = icmp ult i32 %i.cl, %i.cm
  br i1 %.not.i12, label %bb.g, label %bb.f, !prof !53

bb.f:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28
  %i.cn = shl i32 %i.t, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.a, i32 noundef %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.co = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %.012.i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 0 uses
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.i

bb.g:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit28
  %i.cq = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !207
  %.neg.i14 = xor i32 %i.cj, -1
  %.neg13.i15 = add i32 %i.t, %.neg.i14
  %i.cs = sub i32 %.neg13.i15, %i.cr
  %i.ct = lshr i32 %i.t, 3
  %.not9.i16 = icmp ugt i32 %i.cs, %i.ct
  br i1 %.not9.i16, label %bb.i, label %bb.h, !prof !53

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %.012.i.a, i32 noundef %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.cu = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %.012.i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.0.i13 = phi ptr [ %.sink.i25, %bb.g ], [ %i.cv, %bb.h ], [ %i.cp, %bb.f ] ; 4 uses
  %i.cw = load i32, ptr %.012.i.a, align 8        ; 2 uses
  %i.cx = and i32 %i.cw, -2
  %i.cy = add i32 %i.cx, 2
  %i.cz = and i32 %i.cw, 1
  %i.da = or disjoint i32 %i.cy, %i.cz
  store i32 %i.da, ptr %.012.i.a, align 8
  %i.db = load ptr, ptr %.0.i13, align 8, !tbaa !211
  %i.dc = icmp eq ptr %i.db, inttoptr (i64 -8 to ptr)
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i13, i64 8 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = icmp eq ptr %i.de, inttoptr (i64 -8 to ptr)
  %i.dg = select i1 %i.dc, i1 %i.df, i1 false
  br i1 %i.dg, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.012.i.a, i64 4 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !207
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17: ; preds = %bb.i, %bb.j
  %i.dk = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.dk, ptr %.0.i13, align 8, !tbaa !211
  %i.dl = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.dl, ptr %i.dd, align 8, !tbaa !214
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i13, i64 16
  store i32 0, ptr %i.dm, align 8, !tbaa !3
  %.pre.a = load ptr, ptr %5, align 8, !tbaa !240 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre.a, i64 16
  %.pre53.a = load i32, ptr %.phi.trans.insert, align 8
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i
  %i.dn = phi i32 [ %.pre53.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17 ], [ %i.s, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  %i.do = phi ptr [ %.pre.a, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17 ], [ %.012.i.a, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ] ; 11 uses
  %i.dp = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit17 ], [ %.pre.i.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.dq = load ptr, ptr %.0.i, align 8, !tbaa !173 ; 4 uses
  %i.dr = getelementptr inbounds i8, ptr %.0911.i.a, i64 -8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !177
  %i.dt = and i64 %i.ds, -8                       ; 2 uses
  %i.du = inttoptr i64 %i.dt to ptr               ; 3 uses
  store ptr %i.dq, ptr %4, align 8, !tbaa !211
  store ptr %i.du, ptr %i.g, align 8, !tbaa !214
  %i.dv = load i32, ptr %i.do, align 8            ; 2 uses
  %i.dw = and i32 %i.dv, 1
  %.not.i.i.i8 = icmp eq i32 %i.dw, 0             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.do, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = select i1 %.not.i.i.i8, ptr %i.dy, ptr %i.dx ; 3 uses
  %i.ea = select i1 %.not.i.i.i8, i32 %i.dn, i32 4 ; 7 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %i.ec = ptrtoint ptr %i.dq to i64
  %i.ed = trunc i64 %i.ec to i32                  ; 2 uses
  %i.ee = lshr i32 %i.ed, 4
  %i.ef = lshr i32 %i.ed, 9
  %i.eg = xor i32 %i.ee, %i.ef
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 32
  %i.ej = trunc i64 %i.dt to i32                  ; 2 uses
  %i.ek = lshr i32 %i.ej, 4
  %i.el = lshr i32 %i.ej, 9
  %i.em = xor i32 %i.ek, %i.el
  %i.en = zext nneg i32 %i.em to i64              ; 2 uses
  %i.eo = or disjoint i64 %i.ei, %i.en
  %i.ep = shl nuw nsw i64 %i.en, 32
  %i.eq = xor i64 %i.ep, -1
  %i.er = add nsw i64 %i.eo, %i.eq                ; 2 uses
  %i.es = lshr i64 %i.er, 22
  %i.et = xor i64 %i.es, %i.er                    ; 2 uses
  %i.eu = shl i64 %i.et, 13
  %i.ev = xor i64 %i.eu, -1
  %i.ew = add i64 %i.et, %i.ev                    ; 2 uses
  %i.ex = lshr i64 %i.ew, 8
  %i.ey = xor i64 %i.ex, %i.ew
  %i.ez = mul i64 %i.ey, 9                        ; 2 uses
  %i.fa = lshr i64 %i.ez, 15
  %i.fb = xor i64 %i.fa, %i.ez                    ; 2 uses
  %i.fc = shl i64 %i.fb, 27
  %i.fd = xor i64 %i.fc, -1
  %i.fe = add i64 %i.fb, %i.fd                    ; 2 uses
  %i.ff = lshr i64 %i.fe, 31
  %i.fg = xor i64 %i.ff, %i.fe
  %i.fh = trunc i64 %i.fg to i32
  %i.fi = add i32 %i.ea, -1                       ; 2 uses
  %i.fj = and i32 %i.fi, %i.fh                    ; 2 uses
  %i.fk = zext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.fk ; 3 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !211 ; 2 uses
  %i.fn = icmp eq ptr %i.dq, %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.du
  %i.fr = select i1 %i.fn, i1 %i.fq, i1 false
  br i1 %i.fr, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i9, !prof !52

.lr.ph.i9:                                        ; preds = %bb.k, %bb.m
  %i.fs = phi ptr [ %i.gl, %bb.m ], [ %i.fp, %bb.k ] ; 2 uses
  %i.ft = phi ptr [ %i.gi, %bb.m ], [ %i.fm, %bb.k ] ; 2 uses
  %i.fu = phi ptr [ %i.gh, %bb.m ], [ %i.fl, %bb.k ] ; 2 uses
  %.02548.i = phi i32 [ %i.gd, %bb.m ], [ 1, %bb.k ] ; 2 uses
  %.02747.i = phi i32 [ %i.gf, %bb.m ], [ %i.fj, %bb.k ]
  %.02946.i = phi ptr [ %spec.select.i, %bb.m ], [ null, %bb.k ] ; 4 uses
  %i.fv = icmp eq ptr %i.ft, inttoptr (i64 -8 to ptr)
  %i.fw = icmp eq ptr %i.fs, inttoptr (i64 -8 to ptr)
  %i.fx = select i1 %i.fv, i1 %i.fw, i1 false
  br i1 %i.fx, label %bb.l, label %bb.m, !prof !53

bb.l:                                             ; preds = %.lr.ph.i9
  %.not.i10 = icmp eq ptr %.02946.i, null
  %i.fy = select i1 %.not.i10, ptr %i.fu, ptr %.02946.i
  br label %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit

bb.m:                                             ; preds = %.lr.ph.i9
  %i.fz = icmp eq ptr %i.ft, inttoptr (i64 -16 to ptr)
  %i.ga = icmp eq ptr %i.fs, inttoptr (i64 -16 to ptr)
  %i.gb = select i1 %i.fz, i1 %i.ga, i1 false
  %i.gc = icmp eq ptr %.02946.i, null
  %or.cond.not.i = select i1 %i.gb, i1 %i.gc, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.fu, ptr %.02946.i
  %i.gd = add i32 %.02548.i, 1
  %i.ge = add i32 %.02747.i, %.02548.i
  %i.gf = and i32 %i.ge, %i.fi                    ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.gg ; 3 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !211 ; 2 uses
  %i.gj = icmp eq ptr %i.dq, %i.gi
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8            ; 2 uses
  %i.gm = icmp eq ptr %i.gl, %i.du
  %i.gn = select i1 %i.gj, i1 %i.gm, i1 false
  br i1 %i.gn, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, label %.lr.ph.i9, !prof !54, !llvm.loop !235

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i: ; preds = %bb.m, %bb.k
  %i.go = phi i64 [ %i.fk, %bb.k ], [ %i.gg, %bb.m ]
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %i.go
  %.phi.trans.insert10.i.i = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %.pre11.i.i = load i32, ptr %.phi.trans.insert10.i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit: ; preds = %bb.l, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i
  %.sink.i = phi ptr [ %i.fy, %bb.l ], [ null, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i.i ]
  %i.gq = lshr i32 %i.dv, 1                       ; 2 uses
  %i.gr = shl i32 %i.gq, 2
  %i.gs = add i32 %i.gr, 4
  %i.gt = mul i32 %i.ea, 3
  %.not.i = icmp ult i32 %i.gs, %i.gt
  br i1 %.not.i, label %bb.o, label %bb.n, !prof !53

bb.n:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.gu = shl i32 %i.ea, 1
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.do, i32 noundef %i.gu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.gv = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.d) ; 0 uses
  %i.gw = load ptr, ptr %i.d, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.q

bb.o:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_.exit
  %i.gx = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !207
  %.neg.i = xor i32 %i.gq, -1
  %.neg13.i = add i32 %i.ea, %.neg.i
  %i.gz = sub i32 %.neg13.i, %i.gy
  %i.ha = lshr i32 %i.ea, 3
  %.not9.i = icmp ugt i32 %i.gz, %i.ha
  br i1 %.not9.i, label %bb.q, label %bb.p, !prof !53

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvh13SmallDenseMapISt4pairIPN6hermes10BasicBlockES4_EiLj4ENS_12DenseMapInfoIS5_EENS_6detail12DenseMapPairIS5_iEEE4growEj(ptr noundef nonnull align 8 dereferenceable(104) %i.do, i32 noundef %i.ea)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.hb = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.do, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) ; 0 uses
  %i.hc = load ptr, ptr %i.c, align 8, !tbaa !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0.i7 = phi ptr [ %.sink.i, %bb.o ], [ %i.hc, %bb.p ], [ %i.gw, %bb.n ] ; 4 uses
  %i.hd = load i32, ptr %i.do, align 8            ; 2 uses
  %i.he = and i32 %i.hd, -2
  %i.hf = add i32 %i.he, 2
  %i.hg = and i32 %i.hd, 1
  %i.hh = or disjoint i32 %i.hf, %i.hg
  store i32 %i.hh, ptr %i.do, align 8
  %i.hi = load ptr, ptr %.0.i7, align 8, !tbaa !211
  %i.hj = icmp eq ptr %i.hi, inttoptr (i64 -8 to ptr)
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i7, i64 8 ; 2 uses
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = icmp eq ptr %i.hl, inttoptr (i64 -8 to ptr)
  %i.hn = select i1 %i.hj, i1 %i.hm, i1 false
  %.pre = load ptr, ptr %5, align 8, !tbaa !240
  br i1 %i.hn, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ho = getelementptr inbounds nuw i8, ptr %i.do, i64 4 ; 2 uses
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !207
  %i.hq = add i32 %i.hp, -1
  store i32 %i.hq, ptr %i.ho, align 4, !tbaa !207
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit: ; preds = %bb.q, %bb.r
  %i.hr = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.hr, ptr %.0.i7, align 8, !tbaa !211
  %i.hs = load ptr, ptr %i.g, align 8, !tbaa !32
  store ptr %i.hs, ptr %i.hk, align 8, !tbaa !214
  %i.ht = getelementptr inbounds nuw i8, ptr %.0.i7, i64 16
  store i32 0, ptr %i.ht, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit
  %7 = phi ptr [ %.pre, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %i.do, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.hu = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_.exit ], [ %.pre11.i.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i.i ]
  %i.hv = icmp sgt i32 %i.dp, %i.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br i1 %i.hv, label %.lr.ph.i, label %_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit, !llvm.loop !250

_ZSt25__unguarded_linear_insertIPN4llvh3cfg6UpdateIPN6hermes10BasicBlockEEEN9__gnu_cxx5__ops14_Val_comp_iterIZNS1_15LegalizeUpdatesIS5_EEvNS0_8ArrayRefINS2_IT_EEEERNS0_15SmallVectorImplISE_EEbEUlRKS6_SK_E_EEEvSD_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit, %bb.b
  %.09.lcssa.i = phi ptr [ %.045, %bb.b ], [ %.0911.i.a, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.lcssa.i, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !238
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.hw = getelementptr inbounds nuw i8, ptr %.045, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.hw, %1
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !252
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS2_8ArrayRefINS3_6UpdateIT_EEEERNS2_15SmallVectorImplISB_EEbEUlRKNS9_IS7_EESI_E_EclISG_PSG_EEbRSA_T0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %3 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %4 = alloca %"struct.std::pair.81", align 8     ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !240, !nonnull !29, !align !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.d = load ptr, ptr %1, align 8, !tbaa !173
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !177
  %i.g = and i64 %i.f, -8
  %i.h = inttoptr i64 %i.g to ptr
  store ptr %i.d, ptr %3, align 8, !tbaa !211
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.j = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br i1 %i.j, label %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i, label %bb.b

._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.k) ; 3 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !32
  store ptr %i.m, ptr %i.l, align 8, !tbaa !211
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i: ; preds = %bb.b, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i
  %i.q = phi i32 [ 0, %bb.b ], [ %.pre.i, %._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit_crit_edge.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !240, !nonnull !29, !align !243 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.s = load ptr, ptr %2, align 8, !tbaa !173
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !177
  %i.v = and i64 %i.u, -8
  %i.w = inttoptr i64 %i.v to ptr
  store ptr %i.s, ptr %4, align 8, !tbaa !211
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.y = call noundef zeroext i1 @_ZNK4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E15LookupBucketForIS6_EEbRKT_RPKSB_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !215  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %i.y, label %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, label %bb.c

_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %.phi.trans.insert10.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.pre11.i = load i32, ptr %.phi.trans.insert10.i, align 4, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

bb.c:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit.i
  %i.aa = call noundef ptr @_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_E20InsertIntoBucketImplIS6_EEPSB_RKS6_RKT_SF_(ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.z) ; 3 uses
  %i.ab = load ptr, ptr %4, align 8, !tbaa !32
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !211
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !214
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i32 0, ptr %i.ae, align 8, !tbaa !3
  br label %_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit

_ZZN4llvh3cfg15LegalizeUpdatesIPN6hermes10BasicBlockEEEvNS_8ArrayRefINS0_6UpdateIT_EEEERNS_15SmallVectorImplIS8_EEbENKUlRKNS6_IS4_EESF_E_clESF_SF_.exit: ; preds = %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i, %bb.c
  %i.af = phi i32 [ 0, %bb.c ], [ %.pre11.i, %_ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit._ZN4llvh12DenseMapBaseINS_13SmallDenseMapISt4pairIPN6hermes10BasicBlockES5_EiLj4ENS_12DenseMapInfoIS6_EENS_6detail12DenseMapPairIS6_iEEEES6_iS8_SB_EixEOS6_.exit6_crit_edge.i ]
  %i.ag = icmp sgt i32 %i.q, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i1 %i.ag
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.a, align 8, !tbaa !170
  %i.r = zext i32 %.sroa.speculated.i to i64
  %i.s = mul nuw nsw i64 %i.r, 56
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #16 ; 4 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !171
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !225
  %i.w = load i32, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.x = zext i32 %i.w to i64
  %.idx.i.i = mul nuw nsw i64 %i.x, 56            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.w, 0
  br i1 %.not6.i.i, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.z = add nsw i64 %.idx.i.i, -56               ; 2 uses
  %i.aa = udiv i64 %i.z, 56
  %i.ab = add nuw nsw i64 %i.aa, 1
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.ac, %.lr.ph.i.i.prol ], [ %i.t, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 56 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !253

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.t, %.lr.ph.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.prol ]
  %i.ad = icmp ult i64 %i.z, 392
  br i1 %i.ad, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !32
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 56
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.af, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 168
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 224
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ah, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 280
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 336
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 392
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 448 ; 2 uses
  %.not.i.i.7 = icmp eq ptr %i.al, %i.y
  br i1 %.not.i.i.7, label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit, label %.lr.ph.i.i, !llvm.loop !228

bb.c:                                             ; preds = %bb.a
  %i.am = zext i32 %i.b to i64
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.c, i64 %i.am
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.an)
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #13
  br label %_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit

_ZN4llvh8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS3_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS3_EENS_18PointerIntPairInfoIS3_Lj1ES9_EEEELj4EEENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_SD_EEE4growEj.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E18moveFromOldBucketsEPSJ_SM_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.a, align 8, !tbaa !224
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !225
  %i.c = load ptr, ptr %0, align 8, !tbaa !171    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !170  ; 2 uses
  %i.f = zext i32 %i.e to i64
  %.idx.i = mul nuw nsw i64 %i.f, 56              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i
  %.not6.i = icmp eq i32 %i.e, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockENS_11SmallVectorINS_14PointerIntPairIS4_Lj1ENS_3cfg10UpdateKindENS_21PointerLikeTypeTraitsIS4_EENS_18PointerIntPairInfoIS4_Lj1ESA_EEEELj4EEENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SE_EEEES4_SE_SG_SJ_E9initEmptyEv.exit, label %.lr.ph.i.preheader

end_hunk_1
