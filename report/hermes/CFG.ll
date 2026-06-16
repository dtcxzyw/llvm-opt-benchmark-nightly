inline.NumInlined: 3113
inline.NumDeleted: 1058
begin_hunk_0_@_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE9dominatesEPKS2_S5_:bb.a
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
  %.0 = phi i1 [ true, %bb.a ], [ true, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit18 ], [ false, %bb.h ], [ true, %bb.i ], [ false, %bb.j ], [ false, %bb.k ], [ %i.bv, %bb.n ], [ %i.cn, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE23dominatedBySlowTreeWalkEPKNS_15DomTreeNodeBaseIS2_EES7_.exit.i ], [ %i.ci, %bb.q ], [ false, %bb.m ], [ false, %bb.p ], [ true, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i13 ], [ true, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit ], [ true, %.lr.ph.i.i.i9 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getRootEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE26findNearestCommonDominatorEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114  ; 3 uses
  %i.e = icmp ne ptr %1, %i.d
  %i.f = icmp ne ptr %2, %i.d
  %or.cond15.not = and i1 %i.e, %i.f
  br i1 %or.cond15.not, label %bb.b, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !30   ; 5 uses
  %i.k = icmp eq i32 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %i.n = lshr i32 %i.m, 4
  %i.o = lshr i32 %i.m, 9
  %i.p = xor i32 %i.n, %i.o
  %i.q = add i32 %i.j, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.q, %i.p              ; 2 uses
  %i.r = zext nneg i32 %.02944.i.i.i to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = icmp eq ptr %1, %i.t
  br i1 %i.u, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !52

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.ab, %bb.d ], [ %i.t, %bb.c ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.d ], [ %.02944.i.i.i, %bb.c ]
  %.02746.i.i.i = phi i32 [ %i.x, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.w = icmp eq ptr %i.v, inttoptr (i64 -8 to ptr)
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.d, !prof !53

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add i32 %.02746.i.i.i, 1
  %i.y = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.y, %i.q                ; 2 uses
  %i.z = zext i32 %.029.i.i.i to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.z ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %i.ac = icmp eq ptr %1, %i.ab
  br i1 %i.ac, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.ad = zext i32 %i.j to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ad
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i: ; preds = %bb.d, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, %bb.c
  %.sink.i.ph.pn.i.i = phi ptr [ %i.ae, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i ], [ %i.s, %bb.c ], [ %i.aa, %bb.d ] ; 2 uses
  %i.af = zext i32 %i.j to i64
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.af ; 2 uses
  %.not.i = icmp eq ptr %.sink.i.ph.pn.i.i, %i.ag
  br i1 %.not.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !34
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, %bb.e
  %.0.i = phi ptr [ %i.ai, %bb.e ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i ] ; 4 uses
  br i1 %i.k, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = trunc i64 %i.aj to i32                  ; 2 uses
  %i.al = lshr i32 %i.ak, 4
  %i.am = lshr i32 %i.ak, 9
  %i.an = xor i32 %i.al, %i.am
  %i.ao = add i32 %i.j, -1                        ; 2 uses
  %.02944.i.i.i16 = and i32 %i.ao, %i.an          ; 2 uses
  %i.ap = zext nneg i32 %.02944.i.i.i16 to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ap ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 2 uses
  %i.as = icmp eq ptr %2, %i.ar
  br i1 %i.as, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i21, label %.lr.ph.i.i.i17, !prof !52

.lr.ph.i.i.i17:                                   ; preds = %bb.f, %bb.g
  %i.at = phi ptr [ %i.az, %bb.g ], [ %i.ar, %bb.f ]
  %.02947.i.i.i18 = phi i32 [ %.029.i.i.i20, %bb.g ], [ %.02944.i.i.i16, %bb.f ]
  %.02746.i.i.i19 = phi i32 [ %i.av, %bb.g ], [ 1, %bb.f ] ; 2 uses
  %i.au = icmp eq ptr %i.at, inttoptr (i64 -8 to ptr)
  br i1 %i.au, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread, label %bb.g, !prof !53

bb.g:                                             ; preds = %.lr.ph.i.i.i17
  %i.av = add i32 %.02746.i.i.i19, 1
  %i.aw = add i32 %.02746.i.i.i19, %.02947.i.i.i18
  %.029.i.i.i20 = and i32 %i.aw, %i.ao            ; 2 uses
  %i.ax = zext i32 %.029.i.i.i20 to i64
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ax ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.ba = icmp eq ptr %2, %i.az
  br i1 %i.ba, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i21, label %.lr.ph.i.i.i17, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i21: ; preds = %bb.g, %bb.f
  %.sink.i.ph.pn.i.i22 = phi ptr [ %i.aq, %bb.f ], [ %i.ay, %bb.g ] ; 2 uses
  %.not.i23 = icmp eq ptr %.sink.i.ph.pn.i.i22, %i.ag
  br i1 %.not.i23, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i21
  %i.bb = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i22, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !34 ; 4 uses
  %i.bd = icmp ne ptr %.0.i, null
  %i.be = icmp ne ptr %i.bc, null
  %or.cond = and i1 %i.bd, %i.be
  br i1 %or.cond, label %.preheader, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread

.preheader:                                       ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26
  %.not = icmp eq ptr %.0.i, %i.bc
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !57
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %3 = phi i32 [ %4, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03444.a = phi ptr [ %spec.select40, %.lr.ph ], [ %i.bc, %.lr.ph.preheader ] ; 2 uses
  %.03444 = phi ptr [ %i.bj, %.lr.ph ], [ %.0.i, %.lr.ph.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03444, i64 16
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !57 ; 2 uses
  %i.bh = icmp ult i32 %i.bg, %3                  ; 2 uses
  %spec.select = select i1 %i.bh, ptr %.03444.a, ptr %.03444
  %spec.select40 = select i1 %i.bh, ptr %.03444, ptr %.03444.a ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84 ; 4 uses
  %i.bk = icmp ne ptr %i.bj, null                 ; 2 uses
  %i.bl = icmp ne ptr %i.bj, %spec.select40
  %i.bm = and i1 %i.bk, %i.bl
  %4 = tail call i32 @llvm.umin.i32(i32 %i.bg, i32 %3)
  br i1 %i.bm, label %.lr.ph, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.bk, label %._crit_edge.thread, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  %.034.lcssa60 = phi ptr [ %i.bj, %._crit_edge ], [ %.0.i, %.preheader ]
  %i.bn = load ptr, ptr %.034.lcssa60, align 8, !tbaa !69
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26.thread: ; preds = %.lr.ph.i.i.i17, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i21, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26, %._crit_edge, %._crit_edge.thread, %bb.a
  %.2 = phi ptr [ %i.d, %bb.a ], [ null, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit26 ], [ %i.bn, %._crit_edge.thread ], [ null, %._crit_edge ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i21 ], [ null, %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit ], [ null, %.lr.ph.i.i.i17 ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE26findNearestCommonDominatorEPKS2_S5_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE26findNearestCommonDominatorEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE13isVirtualRootEPKNS_15DomTreeNodeBaseIS2_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE12applyUpdatesENS_8ArrayRefINS_3cfg6UpdateIPS2_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE12ApplyUpdatesERS5_NS_8ArrayRefINS_3cfg6UpdateIPS4_EEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE10insertEdgeEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE10InsertEdgeERS5_PNS6_15BatchUpdateInfoEPS4_SA_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE10deleteEdgeEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE10DeleteEdgeERS5_PNS6_15BatchUpdateInfoEPS4_SA_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef null, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE11addNewBlockEPS2_S4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %2 to i64
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = lshr i32 %i.h, 9
  %i.k = xor i32 %i.i, %i.j
  %i.l = add i32 %i.e, -1                         ; 2 uses
  %.02944.i.i.i = and i32 %i.l, %i.k              ; 2 uses
  %i.m = zext nneg i32 %.02944.i.i.i to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32   ; 2 uses
  %i.p = icmp eq ptr %2, %i.o
  br i1 %i.p, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !52

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %i.q = phi ptr [ %i.w, %bb.c ], [ %i.o, %bb.b ]
  %.02947.i.i.i = phi i32 [ %.029.i.i.i, %bb.c ], [ %.02944.i.i.i, %bb.b ]
  %.02746.i.i.i = phi i32 [ %i.s, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.r = icmp eq ptr %i.q, inttoptr (i64 -8 to ptr)
  br i1 %i.r, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.c, !prof !53

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.s = add i32 %.02746.i.i.i, 1
  %i.t = add i32 %.02746.i.i.i, %.02947.i.i.i
  %.029.i.i.i = and i32 %i.t, %i.l                ; 2 uses
  %i.u = zext i32 %.029.i.i.i to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq ptr %2, %i.w
  br i1 %i.x, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, label %.lr.ph.i.i.i, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.a
  %i.y = zext i32 %i.e to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.y
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i: ; preds = %bb.c, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, %bb.b
  %.sink.i.ph.pn.i.i = phi ptr [ %i.z, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i ], [ %i.n, %bb.b ], [ %i.v, %bb.c ] ; 2 uses
  %i.aa = zext i32 %i.e to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %i.aa
  %.not.i = icmp eq ptr %.sink.i.ph.pn.i.i, %i.ab
  br i1 %.not.i, label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !34
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ad, %bb.d ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.ae, align 8, !tbaa !24
  %i.af = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #14, !noalias !116 ; 5 uses
  tail call void @_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEC1EPS2_PS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef %1, ptr noundef %.0.i) #13, !noalias !116
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !56, !noalias !119 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !39, !noalias !119
  %.not.i.i.i = icmp eq ptr %i.ai, %i.ak
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !34, !noalias !119
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.ah, align 8, !tbaa !56, !noalias !119
  br label %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit

bb.f:                                             ; preds = %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !35, !noalias !119 ; 4 uses
  %i.an = ptrtoint ptr %i.ai to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.g, label %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #15, !noalias !119
  unreachable

_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.ar = ashr exact i64 %i.ap, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ar ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ar
  %i.au = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975)
  %i.av = select i1 %i.at, i64 1152921504606846975, i64 %i.au ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.av, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.aw = shl nuw nsw i64 %i.av, 3
  %i.ax = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #14, !noalias !119 ; 4 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.ap ; 2 uses
  store ptr %i.af, ptr %i.ay, align 8, !tbaa !34, !noalias !119
  %i.az = icmp sgt i64 %i.ap, 0
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr align 8 %i.am, i64 %i.ap, i1 false), !noalias !119
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i

_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.not.i17.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.ap) #12, !noalias !119
  br label %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i

_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i.i.i
  store ptr %i.ax, ptr %i.ag, align 8, !tbaa !35, !noalias !119
  store ptr %i.ba, ptr %i.ah, align 8, !tbaa !56, !noalias !119
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.av
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !39, !noalias !119
  br label %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit

_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit: ; preds = %bb.e, %_ZNSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i.i
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E16FindAndConstructERKS4_(ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 4 uses
  store ptr %i.af, ptr %i.bd, align 8, !tbaa !34
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit6, label %bb.j

bb.j:                                             ; preds = %_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !35 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
end_hunk_0
begin_hunk_1_@_ZN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEE16shrink_and_clearEv:bb.a
  %magicptr.i = ptrtoint ptr %i.i to i64
  switch i64 %magicptr.i, label %bb.b [
    i64 -8, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i
    i64 -16, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #12
  br label %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i: ; preds = %bb.d, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 56) #12
  br label %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i

_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEEclEPS4_.exit.i.i, %bb.b, %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.011.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.s, %i.h
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit, label %.lr.ph.i, !llvm.loop !40

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit: ; preds = %_ZNSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EED2Ev.exit.i, %bb.a
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit
  %i.t = add i32 %i.b, -1
  %i.u = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.t, i1 false)
  %i.v = sub nuw nsw i32 33, %i.u
  %i.w = shl nuw i32 1, %i.v
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.w, i32 64)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit
  %.0 = phi i32 [ %.sroa.speculated, %bb.e ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E10destroyAllEv.exit ] ; 5 uses
  %i.x = load i32, ptr %i.c, align 8, !tbaa !30
  %i.y = icmp eq i32 %.0, %i.x
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.a, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !194
  %i.aa = load ptr, ptr %0, align 8, !tbaa !31    ; 3 uses
  %i.ab = zext nneg i32 %.0 to i64
  %.idx.i5 = shl nuw nsw i64 %i.ab, 4             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i5
  %.not6.i = icmp eq i32 %.0, 0
  br i1 %.not6.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i6.preheader

.lr.ph.i6.preheader:                              ; preds = %bb.g
  %i.ad = add nsw i64 %.idx.i5, -16               ; 2 uses
  %i.ae = lshr exact i64 %i.ad, 4
  %i.af = add nuw nsw i64 %i.ae, 1
  %xtraiter22 = and i64 %i.af, 7                  ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol

.lr.ph.i6.prol:                                   ; preds = %.lr.ph.i6.preheader, %.lr.ph.i6.prol
  %.07.i.prol = phi ptr [ %i.ag, %.lr.ph.i6.prol ], [ %i.aa, %.lr.ph.i6.preheader ] ; 2 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph.i6.prol ], [ 0, %.lr.ph.i6.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.prol, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %.07.i.prol, i64 16 ; 2 uses
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.lr.ph.i6.prol.loopexit, label %.lr.ph.i6.prol, !llvm.loop !439

.lr.ph.i6.prol.loopexit:                          ; preds = %.lr.ph.i6.prol, %.lr.ph.i6.preheader
  %.07.i.unr = phi ptr [ %i.aa, %.lr.ph.i6.preheader ], [ %i.ag, %.lr.ph.i6.prol ]
  %i.ah = icmp ult i64 %i.ad, 112
  br i1 %i.ah, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %.lr.ph.i6.prol.loopexit, %.lr.ph.i6
  %.07.i = phi ptr [ %i.ap, %.lr.ph.i6 ], [ %.07.i.unr, %.lr.ph.i6.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i, align 8, !tbaa !32
  %i.ai = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %.07.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.aj, align 8, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %.07.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ak, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %.07.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %.07.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.am, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %.07.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.an, align 8, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %.07.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ao, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %.07.i, i64 128 ; 2 uses
  %.not.i7.7 = icmp eq ptr %i.ap, %i.ac
  br i1 %.not.i7.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i6, !llvm.loop !402

bb.h:                                             ; preds = %bb.f
  %i.aq = load ptr, ptr %0, align 8, !tbaa !31
  tail call void @_ZdlPv(ptr noundef %i.aq) #13
  %i.ar = icmp eq i32 %.0, 0
  br i1 %i.ar, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = shl i32 %.0, 2
  %i.at = udiv i32 %i.as, 3
  %i.au = add nuw nsw i32 %i.at, 1
  %i.av = zext nneg i32 %i.au to i64              ; 2 uses
  %i.aw = lshr i64 %i.av, 1
  %i.ax = or i64 %i.aw, %i.av                     ; 2 uses
  %i.ay = lshr i64 %i.ax, 2
  %i.az = or i64 %i.ay, %i.ax                     ; 2 uses
  %i.ba = lshr i64 %i.az, 4
  %i.bb = or i64 %i.ba, %i.az                     ; 2 uses
  %i.bc = lshr i64 %i.bb, 8
  %i.bd = or i64 %i.bc, %i.bb                     ; 2 uses
  %i.be = lshr i64 %i.bd, 16
  %i.bf = or i64 %i.be, %i.bd
  %i.bg = trunc nuw nsw i64 %i.bf to i32
  %i.bh = add nuw i32 %i.bg, 1                    ; 2 uses
  store i32 %i.bh, ptr %i.c, align 8, !tbaa !30
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 4
  %i.bk = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #16 ; 4 uses
  store ptr %i.bk, ptr %0, align 8, !tbaa !31
  store i32 0, ptr %i.a, align 8, !tbaa !42
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.bl, align 4, !tbaa !194
  %i.bm = load i32, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %.idx.i.i = shl nuw nsw i64 %i.bn, 4            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx.i.i
  %.not6.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not6.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.bp = add nsw i64 %.idx.i.i, -16              ; 2 uses
  %i.bq = lshr exact i64 %i.bp, 4
  %i.br = add nuw nsw i64 %i.bq, 1
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi ptr [ %i.bs, %.lr.ph.i.i.prol ], [ %i.bk, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.prol, align 8, !tbaa !32
  %i.bs = getelementptr inbounds nuw i8, ptr %.07.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !440

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi ptr [ %i.bk, %.lr.ph.i.i.preheader ], [ %i.bs, %.lr.ph.i.i.prol ]
  %i.bt = icmp ult i64 %i.bp, 112
  br i1 %i.bt, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %i.cb, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i, align 8, !tbaa !32
  %i.bu = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bu, align 8, !tbaa !32
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bv, align 8, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 48
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bw, align 8, !tbaa !32
  %i.bx = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 64
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bx, align 8, !tbaa !32
  %i.by = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 80
  store ptr inttoptr (i64 -8 to ptr), ptr %i.by, align 8, !tbaa !32
  %i.bz = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 96
  store ptr inttoptr (i64 -8 to ptr), ptr %i.bz, align 8, !tbaa !32
  %i.ca = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 112
  store ptr inttoptr (i64 -8 to ptr), ptr %i.ca, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 128 ; 2 uses
  %.not.i.i8.7 = icmp eq ptr %i.cb, %i.bo
  br i1 %.not.i.i8.7, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit, label %.lr.ph.i.i, !llvm.loop !402

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E9initEmptyEv.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph.i6.prol.loopexit, %.lr.ph.i6, %bb.j, %bb.i, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #10

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind allocsize(0) }
attributes #15 = { noreturn nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4llvh15SmallVectorBaseE", !9, i64 0, !4, i64 8, !4, i64 12}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!8, !4, i64 8}
!11 = !{!8, !4, i64 12}
!12 = !{!13, !22, i64 56}
!13 = !{!"_ZTSN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EEE", !14, i64 0, !19, i64 24, !21, i64 48, !22, i64 56, !23, i64 64, !4, i64 68}
!14 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes10BasicBlockELj1EEE", !15, i64 0, !18, i64 16}
!15 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes10BasicBlockEEE", !16, i64 0}
!16 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes10BasicBlockELb1EEE", !17, i64 0}
!17 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes10BasicBlockEvEE", !8, i64 0}
!18 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes10BasicBlockELj1EEE", !5, i64 0}
!19 = !{!"_ZTSN4llvh8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EEEE", !20, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!20 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EEEE", !9, i64 0}
!21 = !{!"p1 _ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !9, i64 0}
!22 = !{!"p1 _ZTSN6hermes8FunctionE", !9, i64 0}
!23 = !{!"bool", !5, i64 0}
!24 = !{!13, !23, i64 64}
!25 = !{!13, !4, i64 68}
!26 = !{!20, !20, i64 0}
!27 = !{!9, !9, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!19, !4, i64 16}
!31 = !{!19, !20, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"p1 _ZTSN6hermes10BasicBlockE", !9, i64 0}
!34 = !{!21, !21, i64 0}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p2 _ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !38, i64 0}
!38 = !{!"any p2 pointer", !9, i64 0}
!39 = !{!36, !37, i64 16}
!40 = distinct !{!40, !41}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!19, !4, i64 8}
!43 = distinct !{!43, !41}
!44 = !{!45, !33, i64 0}
!45 = !{!"_ZTSSt4pairIPN6hermes10BasicBlockESt10unique_ptrIN4llvh15DomTreeNodeBaseIS1_EESt14default_deleteIS6_EEE", !33, i64 0, !46, i64 8}
!46 = !{!"_ZTSSt10unique_ptrIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EE", !47, i64 0}
!47 = !{!"_ZTSSt15__uniq_ptr_dataIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_ELb1ELb1EE", !48, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EE", !49, i64 0}
!49 = !{!"_ZTSSt5tupleIJPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EEE", !50, i64 0}
!50 = !{!"_ZTSSt11_Tuple_implILm0EJPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt14default_deleteIS4_EEE", !51, i64 0}
!51 = !{!"_ZTSSt10_Head_baseILm0EPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEELb0EE", !21, i64 0}
!52 = !{!"branch_weights", i32 1999, i32 1}
!53 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!54 = !{!"branch_weights", i32 1, i32 0}
!55 = distinct !{!55, !41}
!56 = !{!36, !37, i64 8}
!57 = !{!58, !4, i64 16}
!58 = !{!"_ZTSN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEE", !33, i64 0, !21, i64 8, !4, i64 16, !59, i64 24, !4, i64 48, !4, i64 52}
!59 = !{!"_ZTSSt6vectorIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE", !60, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESaIS5_EE12_Vector_implE", !36, i64 0}
!62 = !{!63, !38, i64 0}
!63 = !{!"_ZTSN4llvh19SmallPtrSetImplBaseE", !38, i64 0, !38, i64 8, !4, i64 16, !4, i64 20, !4, i64 24}
!64 = !{!63, !38, i64 8}
!65 = !{!63, !4, i64 16}
!66 = !{!63, !4, i64 20}
!67 = !{!63, !4, i64 24}
!68 = !{!37, !37, i64 0}
!69 = !{!58, !33, i64 0}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !41}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_: argument 0"}
!74 = distinct !{!74, !"_ZN4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE6insertES4_"}
!75 = distinct !{!75, !41}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unswitch.partial.disable"}
!78 = !{!13, !21, i64 48}
!79 = distinct !{!79, !41, !80, !81}
!80 = !{!"llvm.loop.isvectorized", i32 1}
!81 = !{!"llvm.loop.unroll.runtime.disable"}
!82 = distinct !{!82, !41, !80}
!83 = distinct !{!83, !41}
!84 = !{!58, !21, i64 8}
!85 = !{!58, !4, i64 48}
!86 = !{!58, !4, i64 52}
!87 = distinct !{!87, !41}
!88 = !{!89, !21, i64 0}
!89 = !{!"_ZTSSt4pairIPKN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEEN9__gnu_cxx17__normal_iteratorIPKPS4_St6vectorIS9_SaIS9_EEEEE", !21, i64 0, !90, i64 8}
!90 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKPN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEEESt6vectorIS6_SaIS6_EEEE", !37, i64 0}
!91 = !{!90, !37, i64 0}
!92 = distinct !{!92, !41}
!93 = !{!94, !22, i64 72}
!94 = !{!"_ZTSN6hermes10BasicBlockE", !95, i64 0, !100, i64 16, !109, i64 56, !22, i64 72}
!95 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes10BasicBlockENS1_8FunctionEJEEE", !96, i64 0}
!96 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes10BasicBlockEJEEE", !97, i64 0}
!97 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes10BasicBlockELb0ELb0EvEEEE", !98, i64 0}
!98 = !{!"_ZTSN4llvh15ilist_node_baseILb0EEE", !99, i64 0, !99, i64 8}
!99 = !{!"p1 _ZTSN4llvh15ilist_node_baseILb0EEE", !9, i64 0}
!100 = !{!"_ZTSN6hermes5ValueE", !101, i64 0, !102, i64 2, !104, i64 8}
!101 = !{!"_ZTSN6hermes9ValueKindE", !5, i64 0}
!102 = !{!"_ZTSN6hermes4TypeE", !103, i64 0, !103, i64 2}
!103 = !{!"short", !5, i64 0}
!104 = !{!"_ZTSN4llvh11SmallVectorIPN6hermes11InstructionELj2EEE", !105, i64 0, !108, i64 16}
!105 = !{!"_ZTSN4llvh15SmallVectorImplIPN6hermes11InstructionEEE", !106, i64 0}
!106 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseIPN6hermes11InstructionELb1EEE", !107, i64 0}
!107 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonIPN6hermes11InstructionEvEE", !8, i64 0}
!108 = !{!"_ZTSN4llvh18SmallVectorStorageIPN6hermes11InstructionELj2EEE", !5, i64 0}
!109 = !{!"_ZTSN4llvh6iplistIN6hermes11InstructionEJEEE", !110, i64 0}
!110 = !{!"_ZTSN4llvh11iplist_implINS_12simple_ilistIN6hermes11InstructionEJEEENS_12ilist_traitsIS3_EEEE", !111, i64 0}
!111 = !{!"_ZTSN4llvh12simple_ilistIN6hermes11InstructionEJEEE", !112, i64 0}
!112 = !{!"_ZTSN4llvh14ilist_sentinelINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !113, i64 0}
!113 = !{!"_ZTSN4llvh15ilist_node_implINS_12ilist_detail12node_optionsIN6hermes11InstructionELb0ELb0EvEEEE", !98, i64 0}
!114 = !{!98, !99, i64 8}
!115 = distinct !{!115, !41}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN4llvh11make_uniqueINS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEJRPS3_RPS4_EEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEDpOT0_: argument 0"}
!118 = distinct !{!118, !"_ZN4llvh11make_uniqueINS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEJRPS3_RPS4_EEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrISA_St14default_deleteISA_EEE4typeEDpOT0_"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE: argument 0"}
!121 = distinct !{!121, !"_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN4llvh11make_uniqueINS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEJRPS3_DnEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEDpOT0_: argument 0"}
!124 = distinct !{!124, !"_ZN4llvh11make_uniqueINS_15DomTreeNodeBaseIN6hermes10BasicBlockEEEJRPS3_DnEEENSt9enable_ifIXntsr3std8is_arrayIT_EE5valueESt10unique_ptrIS8_St14default_deleteIS8_EEE4typeEDpOT0_"}
!125 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE: argument 0"}
!128 = distinct !{!128, !"_ZN4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE8addChildESt10unique_ptrIS3_St14default_deleteIS3_EE"}
!129 = distinct !{!129, !41}
!130 = distinct !{!130, !41}
!131 = distinct !{!131, !41}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN4llvh8childrenINS_7InverseIPN6hermes10BasicBlockEEEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS9_7NodeRefE: argument 0"}
!134 = distinct !{!134, !"_ZN4llvh8childrenINS_7InverseIPN6hermes10BasicBlockEEEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS9_7NodeRefE"}
!135 = !{!136, !136, i64 0}
!136 = !{!"p1 _ZTSN6hermes11InstructionE", !9, i64 0}
!137 = !{!100, !101, i64 0}
!138 = distinct !{!138, !41}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN4llvh8childrenINS_7InverseIPN6hermes10BasicBlockEEEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS9_7NodeRefE: argument 0"}
!141 = distinct !{!141, !"_ZN4llvh8childrenINS_7InverseIPN6hermes10BasicBlockEEEEENS_14iterator_rangeINS_11GraphTraitsIT_E17ChildIteratorTypeEEERKNS9_7NodeRefE"}
!142 = !{!143, !33, i64 56}
!143 = !{!"_ZTSN6hermes11InstructionE", !144, i64 0, !100, i64 16, !33, i64 56, !146, i64 64, !151, i64 112, !152, i64 120, !4, i64 128}
!144 = !{!"_ZTSN4llvh22ilist_node_with_parentIN6hermes11InstructionENS1_10BasicBlockEJEEE", !145, i64 0}
!145 = !{!"_ZTSN4llvh10ilist_nodeIN6hermes11InstructionEJEEE", !113, i64 0}
!146 = !{!"_ZTSN4llvh11SmallVectorISt4pairIPN6hermes5ValueEjELj2EEE", !147, i64 0, !150, i64 16}
!147 = !{!"_ZTSN4llvh15SmallVectorImplISt4pairIPN6hermes5ValueEjEEE", !148, i64 0}
!148 = !{!"_ZTSN4llvh23SmallVectorTemplateBaseISt4pairIPN6hermes5ValueEjELb1EEE", !149, i64 0}
!149 = !{!"_ZTSN4llvh25SmallVectorTemplateCommonISt4pairIPN6hermes5ValueEjEvEE", !8, i64 0}
!150 = !{!"_ZTSN4llvh18SmallVectorStorageISt4pairIPN6hermes5ValueEjELj2EEE", !5, i64 0}
!151 = !{!"p1 _ZTSN6hermes9ScopeDescE", !9, i64 0}
!152 = !{!"_ZTSN4llvh5SMLocE", !153, i64 0}
!153 = !{!"p1 omnipotent char", !9, i64 0}
!154 = distinct !{!154, !41}
!155 = distinct !{!155, !41}
!156 = !{!157, !153, i64 16}
!157 = !{!"_ZTSN4llvh11raw_ostreamE", !153, i64 8, !153, i64 16, !153, i64 24, !158, i64 32}
!158 = !{!"_ZTSN4llvh11raw_ostream10BufferKindE", !5, i64 0}
!159 = !{!157, !153, i64 24}
!160 = distinct !{!160, !41}
!161 = !{!162, !23, i64 128}
!162 = !{!"_ZTSN4llvh14DomTreeBuilder11SemiNCAInfoINS_17DominatorTreeBaseIN6hermes10BasicBlockELb0EEEE15BatchUpdateInfoE", !163, i64 0, !168, i64 80, !168, i64 104, !23, i64 128}
end_hunk_1
