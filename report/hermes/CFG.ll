inline.NumInlined: 3113
inline.NumDeleted: 1058
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7compareERKS3_:bb.a
  %i.z = getelementptr i8, ptr %i.u, i64 %.idx.i  ; 5 uses
  %.not5.i5.i10.i2.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i5.i10.i2.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i

.lr.ph.i6.i12.i3.i:                               ; preds = %bb.g, %.critedge2.i8.i14.i6.i
  %.sroa.0.3.i4.i = phi ptr [ %i.ab, %.critedge2.i8.i14.i6.i ], [ %i.u, %bb.g ] ; 3 uses
  %i.aa = load ptr, ptr %.sroa.0.3.i4.i, align 8, !tbaa !32
  %magicptr.i7.i13.i5.i = ptrtoint ptr %i.aa to i64
  switch i64 %magicptr.i7.i13.i5.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit [
    i64 -8, label %.critedge2.i8.i14.i6.i
    i64 -16, label %.critedge2.i8.i14.i6.i
  ]

.critedge2.i8.i14.i6.i:                           ; preds = %.lr.ph.i6.i12.i3.i, %.lr.ph.i6.i12.i3.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i4.i, i64 16 ; 2 uses
  %.not.i9.i15.i7.i = icmp eq ptr %i.ab, %i.z
  br i1 %.not.i9.i15.i7.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit, label %.lr.ph.i6.i12.i3.i, !llvm.loop !43

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit: ; preds = %.lr.ph.i6.i12.i3.i, %.critedge2.i8.i14.i6.i, %bb.f, %bb.g
  %.pn14.i = phi ptr [ %i.y, %bb.f ], [ %i.u, %bb.g ], [ %.sroa.0.3.i4.i, %.lr.ph.i6.i12.i3.i ], [ %i.z, %.critedge2.i8.i14.i6.i ] ; 2 uses
  %.pn12.i = phi ptr [ %i.y, %bb.f ], [ %i.z, %bb.g ], [ %i.z, %.critedge2.i8.i14.i6.i ], [ %i.z, %.lr.ph.i6.i12.i3.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.x ; 2 uses
  %.not3536 = icmp eq ptr %.pn14.i, %i.ac
  br i1 %.not3536, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit
  %.sroa.032.037 = phi ptr [ %.pn14.i, %.lr.ph ], [ %.sroa.032.2, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit ] ; 3 uses
  %i.ae = load ptr, ptr %.sroa.032.037, align 8, !tbaa !44 ; 3 uses
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !31  ; 4 uses
  %i.ag = load i32, ptr %i.ad, align 8, !tbaa !30 ; 4 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = trunc i64 %i.ai to i32                  ; 2 uses
  %i.ak = lshr i32 %i.aj, 4
  %i.al = lshr i32 %i.aj, 9
  %i.am = xor i32 %i.ak, %i.al
  %i.an = add i32 %i.ag, -1                       ; 2 uses
  %.02944.i.i = and i32 %i.am, %i.an              ; 2 uses
  %i.ao = zext nneg i32 %.02944.i.i to i64
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ao ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !32 ; 2 uses
  %i.ar = icmp eq ptr %i.ae, %i.aq
  br i1 %i.ar, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit, label %.lr.ph.i.i, !prof !52

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.j
  %i.as = phi ptr [ %i.ay, %bb.j ], [ %i.aq, %bb.i ]
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.j ], [ %.02944.i.i, %bb.i ]
  %.02746.i.i = phi i32 [ %i.au, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.at = icmp eq ptr %i.as, inttoptr (i64 -8 to ptr)
  br i1 %i.at, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i, label %bb.j, !prof !53

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.au = add i32 %.02746.i.i, 1
  %i.av = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.av, %i.an                ; 2 uses
  %i.aw = zext i32 %.029.i.i to i64
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %i.az = icmp eq ptr %i.ae, %i.ay
  br i1 %i.az, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit, label %.lr.ph.i.i, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i: ; preds = %.lr.ph.i.i, %bb.h
  %i.ba = zext i32 %i.ag to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ba
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit: ; preds = %bb.j, %bb.i, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i
  %.sink.i.ph.pn.i = phi ptr [ %i.bb, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i ], [ %i.ap, %bb.i ], [ %i.ax, %bb.j ] ; 2 uses
  %i.bc = zext i32 %i.ag to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.bc
  %i.be = icmp eq ptr %.sink.i.ph.pn.i, %i.bd
  br i1 %i.be, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !34
  %i.bj = tail call noundef zeroext i1 @_ZNK4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE7compareEPKS3_(ptr noundef nonnull align 8 dereferenceable(56) %i.bg, ptr noundef nonnull %i.bi)
  br i1 %i.bj, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.037, i64 16 ; 3 uses
  %.not5.i3.i = icmp eq ptr %i.bk, %.pn12.i
  br i1 %.not5.i3.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.l, %.critedge2.i6.i
  %.sroa.032.1 = phi ptr [ %i.bm, %.critedge2.i6.i ], [ %i.bk, %bb.l ] ; 3 uses
  %i.bl = load ptr, ptr %.sroa.032.1, align 8, !tbaa !32
  %magicptr.i5.i = ptrtoint ptr %i.bl to i64
  switch i64 %magicptr.i5.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit [
    i64 -8, label %.critedge2.i6.i
    i64 -16, label %.critedge2.i6.i
  ]

.critedge2.i6.i:                                  ; preds = %.lr.ph.i4.i, %.lr.ph.i4.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 16 ; 3 uses
  %.not.i7.i = icmp eq ptr %i.bm, %.pn12.i
  br i1 %.not.i7.i, label %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit, label %.lr.ph.i4.i, !llvm.loop !43

_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit: ; preds = %.lr.ph.i4.i, %.critedge2.i6.i, %bb.l
  %.sroa.032.2 = phi ptr [ %i.bk, %bb.l ], [ %i.bm, %.critedge2.i6.i ], [ %.sroa.032.1, %.lr.ph.i4.i ] ; 2 uses
  %.not35 = icmp eq ptr %.sroa.032.2, %i.ac
  br i1 %.not35, label %.critedge, label %bb.h

.critedge:                                        ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit, %bb.k, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit, %bb.d, %bb.c, %bb.b, %bb.a
  %.5 = phi i1 [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.c ], [ true, %bb.d ], [ false, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5beginEv.exit ], [ false, %_ZN4llvh16DenseMapIteratorIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS2_EESt14default_deleteIS6_EENS_12DenseMapInfoIS3_EENS_6detail12DenseMapPairIS3_S9_EELb1EEppEv.exit ], [ true, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit ], [ true, %bb.k ]
  ret i1 %.5
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i1 @_ZNK4llvh15DomTreeNodeBaseIN6hermes10BasicBlockEE7compareEPKS3_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvh::SmallPtrSet", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56   ; 3 uses
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp eq i64 %i.g, %i.n
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !57
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !57
  %.not19 = icmp eq i32 %i.p, %i.r
  br i1 %.not19, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store i32 4, ptr %i.u, align 8, !tbaa !65
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  store i32 0, ptr %i.v, align 4, !tbaa !66
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  store i32 0, ptr %i.w, align 8, !tbaa !67
  %.not3441 = icmp eq ptr %i.k, %i.j
  br i1 %.not3441, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !68
  %.pre69 = load ptr, ptr %i.b, align 8, !tbaa !68
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.x = phi i32 [ %i.bi, %._crit_edge.loopexit ], [ 4, %bb.c ]
  %i.y = phi i32 [ %i.bh, %._crit_edge.loopexit ], [ 0, %bb.c ] ; 3 uses
  %i.z = phi ptr [ %i.bg, %._crit_edge.loopexit ], [ %i.s, %bb.c ] ; 11 uses
  %i.aa = phi ptr [ %i.bf, %._crit_edge.loopexit ], [ %i.s, %bb.c ] ; 10 uses
  %i.ab = phi ptr [ %.pre69, %._crit_edge.loopexit ], [ %i.c, %bb.c ] ; 3 uses
  %i.ac = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.c ] ; 3 uses
  %.not56 = icmp eq ptr %i.ac, %i.ab
  br i1 %.not56, label %.critedge, label %.lr.ph45

.lr.ph45:                                         ; preds = %._crit_edge
  %i.ad = icmp eq ptr %i.aa, %i.z
  br i1 %i.ad, label %.lr.ph45.split.us, label %.lr.ph45.split

.lr.ph45.split.us:                                ; preds = %.lr.ph45
  %i.ae = zext i32 %i.y to i64                    ; 2 uses
  %.idx.i.i.i.us = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i.i.us
  %.not18.i.i.i.us = icmp eq i32 %i.y, 0
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.ae ; 3 uses
  br i1 %.not18.i.i.i.us, label %.critedge, label %.lr.ph.i.i.i.preheader.us

.lr.ph.i.i.i.preheader.us:                        ; preds = %.lr.ph45.split.us, %bb.d
  %.sroa.021.043.us = phi ptr [ %i.aj, %bb.d ], [ %i.ac, %.lr.ph45.split.us ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.021.043.us, align 8, !tbaa !34
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !69
  br label %.lr.ph.i.i.i.us

bb.d:                                             ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.021.043.us, i64 8 ; 2 uses
  %.not58 = icmp eq ptr %i.aj, %i.ab
  br i1 %.not58, label %.critedge, label %.lr.ph.i.i.i.preheader.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.preheader.us, %bb.e
  %.01319.i.i.i.us = phi ptr [ %i.am, %bb.e ], [ %i.z, %.lr.ph.i.i.i.preheader.us ] ; 4 uses
  %i.ak = load ptr, ptr %.01319.i.i.i.us, align 8, !tbaa !27
  %i.al = icmp eq ptr %i.ak, %i.ai
  br i1 %i.al, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.us
  %i.am = getelementptr inbounds nuw i8, ptr %.01319.i.i.i.us, i64 8 ; 2 uses
  %.not.i.i.i.us = icmp eq ptr %i.am, %i.af
  br i1 %.not.i.i.i.us, label %.critedge, label %.lr.ph.i.i.i.us, !llvm.loop !70

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us: ; preds = %.lr.ph.i.i.i.us
  %.not3.i4.i.i6.i.i.i.us = icmp eq ptr %.01319.i.i.i.us, %i.ag
  br i1 %.not3.i4.i.i6.i.i.i.us, label %.critedge, label %.lr.ph.i5.i.i7.i.i.i.us

.lr.ph.i5.i.i7.i.i.i.us:                          ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us, %.critedge2.i7.i.i9.i.i.i.us
  %.sroa.0.3.i.i.i.us = phi ptr [ %3, %.critedge2.i7.i.i9.i.i.i.us ], [ %.01319.i.i.i.us, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us ] ; 3 uses
  %i.an = load ptr, ptr %.sroa.0.3.i.i.i.us, align 8, !tbaa !27
  %switch.i6.i.i8.i.i.i.us = icmp ugt ptr %i.an, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i.us, label %.critedge2.i7.i.i9.i.i.i.us, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a: ; preds = %.lr.ph.i5.i.i7.i.i.i.us
  %.not35.us.a = icmp eq ptr %.sroa.0.3.i.i.i.us, %i.ag
  br i1 %.not35.us.a, label %.critedge, label %bb.d

.critedge2.i7.i.i9.i.i.i.us:                      ; preds = %.lr.ph.i5.i.i7.i.i.i.us
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i.us, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i.us = icmp eq ptr %3, %i.ag
  br i1 %.not.i8.i.i10.i.i.i.us, label %.critedge, label %.lr.ph.i5.i.i7.i.i.i.us, !llvm.loop !71

.lr.ph:                                           ; preds = %bb.c, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i
  %i.ao = phi i32 [ %i.bi, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ 4, %bb.c ]
  %i.ap = phi i32 [ %i.bh, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ 0, %bb.c ] ; 4 uses
  %i.aq = phi ptr [ %i.bg, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.s, %bb.c ] ; 3 uses
  %i.ar = phi ptr [ %i.bf, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.s, %bb.c ]
  %.sroa.026.042 = phi ptr [ %i.bj, %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i ], [ %i.k, %bb.c ] ; 2 uses
  %i.as = load ptr, ptr %.sroa.026.042, align 8, !tbaa !34
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !69 ; 4 uses
  %i.au = icmp eq ptr %i.ar, %i.aq
  br i1 %i.au, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph
  %i.av = zext i32 %i.ap to i64
  %.idx.i.i = shl nuw nsw i64 %i.av, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx.i.i ; 2 uses
  %.not63.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not63.i.i, label %.critedge.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %.065.i.i = phi ptr [ %spec.select.i.i, %bb.g ], [ null, %bb.f ]
  %.04964.i.i = phi ptr [ %i.az, %bb.g ], [ %i.aq, %bb.f ] ; 3 uses
  %i.ax = load ptr, ptr %.04964.i.i, align 8, !tbaa !27, !noalias !72 ; 2 uses
  %.not27.i.i = icmp eq ptr %i.ax, %i.at
  br i1 %.not27.i.i, label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ay = icmp eq ptr %i.ax, inttoptr (i64 -2 to ptr)
  %spec.select.i.i = select i1 %i.ay, ptr %.04964.i.i, ptr %.065.i.i ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.04964.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %i.aw
  br i1 %.not.i.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !75

.critedge.i.i:                                    ; preds = %bb.g
  %.not28.i.i = icmp eq ptr %spec.select.i.i, null
  br i1 %.not28.i.i, label %.critedge.thread.i.i, label %bb.h

bb.h:                                             ; preds = %.critedge.i.i
  store ptr %i.at, ptr %spec.select.i.i, align 8, !tbaa !27, !noalias !72
  %i.ba = load i32, ptr %i.w, align 8, !tbaa !67, !noalias !72
  %i.bb = add i32 %i.ba, -1
  store i32 %i.bb, ptr %i.w, align 8, !tbaa !67, !noalias !72
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.f
  %i.bc = icmp ult i32 %i.ap, %i.ao
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.critedge.thread.i.i
  %i.bd = add nuw i32 %i.ap, 1
  store i32 %i.bd, ptr %i.v, align 4, !tbaa !66, !noalias !72
  store ptr %i.at, ptr %i.aw, align 8, !tbaa !27, !noalias !72
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i

bb.j:                                             ; preds = %.critedge.thread.i.i, %.lr.ph
  %i.be = call { ptr, i8 } @_ZN4llvh19SmallPtrSetImplBase14insert_imp_bigEPKv(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %i.at) #13, !noalias !72 ; 0 uses
  br label %_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i

_ZN4llvh19SmallPtrSetImplBase10insert_impEPKv.exit.i: ; preds = %.lr.ph.i.i, %bb.j, %bb.i, %bb.h
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !64, !noalias !72 ; 2 uses
  %i.bg = load ptr, ptr %2, align 8, !tbaa !62, !noalias !72 ; 2 uses
  %i.bh = load i32, ptr %i.v, align 4, !noalias !72 ; 2 uses
  %i.bi = load i32, ptr %i.u, align 8, !noalias !72 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.026.042, i64 8 ; 2 uses
  %.not34 = icmp eq ptr %i.bj, %i.j
  br i1 %.not34, label %._crit_edge.loopexit, label %.lr.ph

bb.k:                                             ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.021.043, i64 8 ; 2 uses
  %.not57 = icmp eq ptr %i.bk, %i.ab
  br i1 %.not57, label %.critedge, label %.lr.ph45.split, !llvm.loop !76

.lr.ph45.split:                                   ; preds = %.lr.ph45, %bb.k
  %i.bl = phi i32 [ %i.cf, %bb.k ], [ %i.x, %.lr.ph45 ] ; 2 uses
  %i.bm = phi i32 [ %i.cg, %bb.k ], [ %i.y, %.lr.ph45 ] ; 4 uses
  %i.bn = phi ptr [ %i.ch, %bb.k ], [ %i.z, %.lr.ph45 ] ; 5 uses
  %i.bo = phi ptr [ %i.ci, %bb.k ], [ %i.aa, %.lr.ph45 ] ; 4 uses
  %.sroa.021.043 = phi ptr [ %i.bk, %bb.k ], [ %i.ac, %.lr.ph45 ] ; 2 uses
  %i.bp = load ptr, ptr %.sroa.021.043, align 8, !tbaa !34
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !69 ; 3 uses
  %i.br = icmp eq ptr %i.bo, %i.bn
  br i1 %i.br, label %bb.l, label %bb.n

bb.l:                                             ; preds = %.lr.ph45.split
  %i.bs = zext i32 %i.bm to i64                   ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i.i
  %.not18.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not18.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.m
  %.01319.i.i.i = phi ptr [ %i.bw, %bb.m ], [ %i.bn, %bb.l ] ; 3 uses
  %i.bu = load ptr, ptr %.01319.i.i.i, align 8, !tbaa !27
  %i.bv = icmp eq ptr %i.bu, %i.bq
  br i1 %i.bv, label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.01319.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bt
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !70

._crit_edge.i.i.i:                                ; preds = %bb.m, %bb.l
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bs
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.n:                                             ; preds = %.lr.ph45.split
  %i.by = call noundef ptr @_ZNK4llvh19SmallPtrSetImplBase13FindBucketForEPKv(ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef %i.bq) #13 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !27
  %i.ca = icmp eq ptr %i.bz, %i.bq
  %.pre.i.i = load ptr, ptr %i.t, align 8, !tbaa !64 ; 4 uses
  %.pre4.i.i = load ptr, ptr %2, align 8, !tbaa !62 ; 3 uses
  br i1 %i.ca, label %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i, label %bb.o

._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i: ; preds = %bb.n
  %.pre5.i.i = load i32, ptr %i.v, align 4
  %.pre70 = load i32, ptr %i.u, align 8
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.cb = icmp eq ptr %.pre.i.i, %.pre4.i.i
  %i.cc = load i32, ptr %i.v, align 4             ; 2 uses
  %i.cd = load i32, ptr %i.u, align 8             ; 2 uses
  %.v.v.i14.i.i.i = select i1 %i.cb, i32 %i.cc, i32 %i.cd
  %.v.i15.i.i.i = zext i32 %.v.v.i14.i.i.i to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %.v.i15.i.i.i
  br label %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i

_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.o, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i, %._crit_edge.i.i.i
  %i.cf = phi i32 [ %i.bl, %._crit_edge.i.i.i ], [ %.pre70, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.cd, %bb.o ], [ %i.bl, %.lr.ph.i.i.i ] ; 2 uses
  %i.cg = phi i32 [ %i.bm, %._crit_edge.i.i.i ], [ %.pre5.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.cc, %bb.o ], [ %i.bm, %.lr.ph.i.i.i ] ; 2 uses
  %i.ch = phi ptr [ %i.bn, %._crit_edge.i.i.i ], [ %.pre4.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %.pre4.i.i, %bb.o ], [ %i.bn, %.lr.ph.i.i.i ] ; 6 uses
  %i.ci = phi ptr [ %i.bo, %._crit_edge.i.i.i ], [ %.pre.i.i, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %.pre.i.i, %bb.o ], [ %i.bo, %.lr.ph.i.i.i ] ; 7 uses
  %.2.i.i.i = phi ptr [ %i.bx, %._crit_edge.i.i.i ], [ %i.by, %._ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit_crit_edge.i.i ], [ %i.ce, %bb.o ], [ %.01319.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ch
  %.v.v.i4.i.i.i = select i1 %i.cj, i32 %i.cg, i32 %i.cf
  %.v.i5.i.i.i = zext i32 %.v.v.i4.i.i.i to i64
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.v.i5.i.i.i ; 3 uses
  %.not3.i4.i.i6.i.i.i = icmp eq ptr %.2.i.i.i, %i.ck
  br i1 %.not3.i4.i.i6.i.i.i, label %.critedge, label %.lr.ph.i5.i.i7.i.i.i

.lr.ph.i5.i.i7.i.i.i:                             ; preds = %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, %.critedge2.i7.i.i9.i.i.i
  %.sroa.0.3.i.i.i = phi ptr [ %i.cm, %.critedge2.i7.i.i9.i.i.i ], [ %.2.i.i.i, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i ] ; 3 uses
  %i.cl = load ptr, ptr %.sroa.0.3.i.i.i, align 8, !tbaa !27
  %switch.i6.i.i8.i.i.i = icmp ugt ptr %i.cl, inttoptr (i64 -3 to ptr)
  br i1 %switch.i6.i.i8.i.i.i, label %.critedge2.i7.i.i9.i.i.i, label %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit

.critedge2.i7.i.i9.i.i.i:                         ; preds = %.lr.ph.i5.i.i7.i.i.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.0.3.i.i.i, i64 8 ; 2 uses
  %.not.i8.i.i10.i.i.i = icmp eq ptr %i.cm, %i.ck
  br i1 %.not.i8.i.i10.i.i.i, label %.critedge, label %.lr.ph.i5.i.i7.i.i.i, !llvm.loop !71

_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit: ; preds = %.lr.ph.i5.i.i7.i.i.i
  %.not35 = icmp eq ptr %.sroa.0.3.i.i.i, %i.ck
  br i1 %.not35, label %.critedge, label %bb.k

.critedge:                                        ; preds = %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit, %bb.k, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i, %.critedge2.i7.i.i9.i.i.i, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a, %bb.d, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us, %bb.e, %.critedge2.i7.i.i9.i.i.i.us, %.lr.ph45.split.us, %._crit_edge
  %i.cn = phi ptr [ %i.ch, %.critedge2.i7.i.i9.i.i.i ], [ %i.z, %bb.e ], [ %i.z, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a ], [ %i.z, %._crit_edge ], [ %i.z, %.lr.ph45.split.us ], [ %i.z, %.critedge2.i7.i.i9.i.i.i.us ], [ %i.z, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us ], [ %i.z, %bb.d ], [ %i.ch, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i ], [ %i.ch, %bb.k ], [ %i.ch, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit ]
  %i.co = phi ptr [ %i.ci, %.critedge2.i7.i.i9.i.i.i ], [ %i.aa, %bb.e ], [ %i.aa, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a ], [ %i.aa, %._crit_edge ], [ %i.aa, %.lr.ph45.split.us ], [ %i.aa, %.critedge2.i7.i.i9.i.i.i.us ], [ %i.aa, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us ], [ %i.aa, %bb.d ], [ %i.ci, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i ], [ %i.ci, %bb.k ], [ %i.ci, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit ] ; 2 uses
  %i.cp = phi i1 [ true, %.critedge2.i7.i.i9.i.i.i ], [ true, %bb.e ], [ true, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit.us.a ], [ false, %._crit_edge ], [ true, %.lr.ph45.split.us ], [ true, %.critedge2.i7.i.i9.i.i.i.us ], [ false, %bb.d ], [ true, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i.us ], [ false, %bb.k ], [ true, %_ZNK4llvh15SmallPtrSetImplIPKN6hermes10BasicBlockEE5countES4_.exit ], [ true, %_ZNK4llvh19SmallPtrSetImplBase8find_impEPKv.exit.i.i ]
  %i.cq = icmp eq ptr %i.co, %i.cn
  br i1 %i.cq, label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %.critedge
  call void @free(ptr noundef %i.co) #13
  br label %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit

_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit:           ; preds = %.critedge, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.b, %bb.a, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit
  %.4 = phi i1 [ %i.cp, %_ZN4llvh19SmallPtrSetImplBaseD2Ev.exit ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.d, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE5resetEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E5clearEv(ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.d, align 4, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.c, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30   ; 4 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %i.h = lshr i32 %i.g, 4
  %i.i = lshr i32 %i.g, 9
  %i.j = xor i32 %i.h, %i.i
  %i.k = add i32 %i.d, -1                         ; 2 uses
  %.02944.i.i = and i32 %i.k, %i.j                ; 2 uses
  %i.l = zext nneg i32 %.02944.i.i to i64
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !32   ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit, label %.lr.ph.i.i, !prof !52

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.c
  %i.p = phi ptr [ %i.v, %bb.c ], [ %i.n, %bb.b ]
  %.02947.i.i = phi i32 [ %.029.i.i, %bb.c ], [ %.02944.i.i, %bb.b ]
  %.02746.i.i = phi i32 [ %i.r, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -8 to ptr)
  br i1 %i.q, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i, label %bb.c, !prof !53

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.r = add i32 %.02746.i.i, 1
  %i.s = add i32 %.02746.i.i, %.02947.i.i
  %.029.i.i = and i32 %i.s, %i.k                  ; 2 uses
  %i.t = zext i32 %.029.i.i to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit, label %.lr.ph.i.i, !prof !54, !llvm.loop !55

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  %i.x = zext i32 %i.d to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.x
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit: ; preds = %bb.c, %bb.b, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i
  %.sink.i.ph.pn.i = phi ptr [ %i.y, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i ], [ %i.m, %bb.b ], [ %i.u, %bb.c ] ; 2 uses
  %i.z = zext i32 %i.d to i64
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.z
  %.not = icmp eq ptr %.sink.i.ph.pn.i, %i.aa
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.sink.i.ph.pn.i, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit, %bb.d
  %.0 = phi ptr [ %i.ac, %bb.d ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EEixEPKS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
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
  br label %_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit

_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE7getNodeEPKS2_.exit: ; preds = %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i, %bb.d
  %.0.i = phi ptr [ %i.ac, %bb.d ], [ null, %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E4findEPKS3_.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZN4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE11getRootNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef ptr @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE11getRootNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden void @_ZNK4llvh17DominatorTreeBaseIN6hermes10BasicBlockELb0EE14getDescendantsEPS2_RNS_15SmallVectorImplIS4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.llvh::SmallVector.2", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !tbaa !30   ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIPN6hermes10BasicBlockESt10unique_ptrINS_15DomTreeNodeBaseIS3_EESt14default_deleteIS7_EENS_12DenseMapInfoIS4_EENS_6detail12DenseMapPairIS4_SA_EEEES4_SA_SC_SF_E15LookupBucketForIPKS3_EEbRKT_RPKSF_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
