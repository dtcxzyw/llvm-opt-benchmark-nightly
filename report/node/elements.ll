inline.NumInlined: 32791
inline.NumDeleted: 4746
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a
  %i.hz = or disjoint i64 %i.hr, 1                ; 2 uses
  %i.ia = ptrtoint ptr %i.hx to i64               ; 2 uses
  %i.ib = and i64 %i.hr, -262144
  %i.ic = inttoptr i64 %i.ib to ptr
  %i.id = load i64, ptr %i.ic, align 262144       ; 2 uses
  %i.ie = and i64 %i.id, 32
  %.not.i.i.i.i.i94.i = icmp eq i64 %i.ie, 0
  %i.if = and i64 %i.id, 25
  %.not37.i.i.i.i.i95.i = icmp eq i64 %i.if, 0
  br i1 %.not37.i.i.i.i.i95.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.ig = and i64 %i.hu, -262144
  %i.ih = inttoptr i64 %i.ig to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i96.i = load i64, ptr %i.ih, align 262144
  %i.ii = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i96.i, 25
  %.not38.i.i.i.i.i97.i = icmp eq i64 %i.ii, 0
  br i1 %.not38.i.i.i.i.i97.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.hz, i64 noundef %i.ia, i64 %i.hu) #23
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  br i1 %.not.i.i.i.i.i94.i, label %.thread246.i, label %bb.ag, !prof !13

bb.ag:                                            ; preds = %bb.af
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.hz, i64 %i.ia, i64 %i.hu) #23
  br label %.thread246.i

.thread246.i:                                     ; preds = %bb.ag, %bb.af, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.thread237.i

bb.ah:                                            ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit

.thread237.i:                                     ; preds = %.thread246.i, %bb.x, %bb.w, %bb.u, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i87.i, %bb.t
  %.765244.i = phi i32 [ %i.ht, %.thread246.i ], [ %.563264.i, %bb.w ], [ %.563264.i, %bb.u ], [ %.563264.i, %bb.t ], [ %.563264.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i87.i ], [ %.563264.i, %bb.x ] ; 2 uses
  %indvars.iv.next271.i = add nuw nsw i64 %indvars.iv270.i, 1 ; 2 uses
  %i.ij = load i64, ptr %i.s, align 8
  %i.ik = add i64 %i.ij, -1
  %i.il = inttoptr i64 %i.ik to ptr               ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load i64, ptr %i.im, align 8
  %i.io = lshr i64 %i.in, 32
  %i.ip = trunc nuw i64 %i.io to i32
  %i.iq = trunc nuw i64 %indvars.iv.next271.i to i32
  %i.ir = icmp slt i32 %i.iq, %i.ip
  br i1 %i.ir, label %bb.r, label %._crit_edge267.i, !llvm.loop !3680

._crit_edge267.i:                                 ; preds = %.thread237.i, %bb.c, %._crit_edge.i
  %.563.lcssa.i = phi i32 [ %.462.ph.i, %._crit_edge.i ], [ 0, %bb.c ], [ %.765244.i, %.thread237.i ]
  store i32 %.563.lcssa.i, ptr %5, align 4
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.ah, %._crit_edge267.i
  %.sroa.5.1.i = phi i16 [ 0, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 257, %._crit_edge267.i ], [ 0, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i16 %.sroa.5.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr readonly captures(none) %2, ptr readonly captures(none) %3, ptr readonly captures(none) %4, i32 noundef %5, i32 %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i64, ptr %4, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 4 uses
  %i.i = load i64, ptr %2, align 8                ; 2 uses
  %i.j = load i64, ptr %3, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.i, -1
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = add i64 %i.q, 11
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = load atomic volatile i16, ptr %i.s monotonic, align 2
  %i.u = icmp eq i16 %i.t, 2119
  %i.v = add i64 %i.i, 23
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = add i64 %i.n, -1
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.0.in.in.in.in.i.i.i.i = select i1 %i.u, ptr %i.w, ptr %i.z
  %.0.in.in.in.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i, align 8
  %.0.in.in.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i, 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = lshr i64 %i.ab, 32
  %i.ad = trunc nuw i64 %i.ac to i32
  %i.ae = trunc nuw i64 %.0.in.in.i.i.i.i to i32
  %i.af = add i32 %i.ad, %i.ae                    ; 2 uses
  %i.ag = sub i32 134217728, %i.h
  %i.ah = icmp ugt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ai = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.aj, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.al = add i32 %i.af, %i.h                     ; 2 uses
  %i.am = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.al, i8 noundef zeroext 0) #23 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.ao = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.al, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %bb.c
  %.sroa.063.0.i = phi ptr [ %i.ao, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %i.am, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.ap = load i64, ptr %3, align 8
  %i.aq = add i64 %i.ap, -1
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8
  %i.au = lshr i64 %i.at, 32                      ; 2 uses
  %i.av = trunc nuw i64 %i.au to i32
  %.not.i = icmp eq i64 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %.lr.ph.split.i

._crit_edge.i.loopexit:                           ; preds = %bb.e
  %.pre = load i64, ptr %3, align 8
  %.pre11 = add i64 %.pre, -1
  %.pre12 = inttoptr i64 %.pre11 to ptr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.pre-phi13 = phi ptr [ %.pre12, %._crit_edge.i.loopexit ], [ %i.ar, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ]
  %.0.lcssa.i = phi i32 [ %.1.i, %._crit_edge.i.loopexit ], [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre-phi13, i64 24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = icmp eq ptr %i.ba, %i.bc
  br i1 %i.bd, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, !prof !5

bb.d:                                             ; preds = %._crit_edge.i
  %i.be = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit

.lr.ph.split.i:                                   ; preds = %bb.e, %.lr.ph.i8
  %.063.i = phi i32 [ %.1.i, %bb.e ], [ 0, %.lr.ph.i8 ] ; 3 uses
  %.03061.i = phi i32 [ %i.bw, %bb.e ], [ 0, %.lr.ph.i8 ] ; 2 uses
  %i.bf = load i64, ptr %3, align 8
  %i.bg = add i64 %i.bf, -1
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = sext i32 %.03061.i to i64               ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = load i64, ptr %i.aw, align 8
  %i.bn = icmp eq i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.e, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9: ; preds = %.lr.ph.split.i
  %i.bo = load i64, ptr %.sroa.063.0.i, align 8
  %i.bp = add i64 %i.bo, -1
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = shl nsw i64 %i.bj, 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = sext i32 %.063.i to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  store atomic volatile i64 %i.br, ptr %i.bu monotonic, align 8
  %i.bv = add i32 %.063.i, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9, %.lr.ph.split.i
  %.1.i = phi i32 [ %.063.i, %.lr.ph.split.i ], [ %i.bv, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9 ] ; 2 uses
  %i.bw = add nuw i32 %.03061.i, 1                ; 2 uses
  %exitcond.not.i10 = icmp eq i32 %i.bw, %i.av
  br i1 %exitcond.not.i10, label %._crit_edge.i.loopexit, label %.lr.ph.split.i, !llvm.loop !3681

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit: ; preds = %._crit_edge.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.be, %bb.d ], [ %i.ba, %._crit_edge.i ] ; 3 uses
  %i.bx = ptrtoint ptr %.0.i.i.i to i64
  %i.by = add i64 %i.bx, 8
  %i.bz = inttoptr i64 %i.by to ptr
  store ptr %i.bz, ptr %i.az, align 8
  store i64 %i.ay, ptr %.0.i.i.i, align 8
  %i.ca = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj(ptr noundef nonnull %1, ptr nonnull readonly %2, ptr nonnull %.0.i.i.i, i32 noundef 1, ptr readonly %.sroa.063.0.i, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.cb = load i32, ptr %i.a, align 4             ; 7 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_111SortIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj(ptr noundef nonnull %1, ptr %.sroa.063.0.i, i32 noundef %i.cb)
  %i.cc = icmp eq i32 %5, 0
  %i.cd = icmp ne i32 %i.cb, 0
  %or.cond.i = and i1 %i.cc, %i.cd
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i
  %.05193.i = phi i32 [ %i.do, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit ] ; 2 uses
  %i.ce = load i64, ptr %.sroa.063.0.i, align 8
  %i.cf = add i64 %i.ce, -1
  %i.cg = inttoptr i64 %i.cf to ptr
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = sext i32 %.05193.i to i64               ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ch, i64 %i.ci
  %i.ck = load atomic volatile i64, ptr %i.cj monotonic, align 8 ; 3 uses
  %i.cl = and i64 %i.ck, 1
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.cn = lshr i64 %i.ck, 32
  %i.co = trunc nuw i64 %i.cn to i32
  %i.cp = sitofp i32 %i.co to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.cq = add nsw i64 %i.ck, -1
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.cs, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.g, %bb.f
  %i.ct = phi double [ %i.cp, %bb.f ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.g ]
  %i.cu = fptoui double %i.ct to i32
  %i.cv = zext i32 %i.cu to i64
  %i.cw = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %i.cv, i1 noundef zeroext true) #23
  %i.cx = load i64, ptr %.sroa.063.0.i, align 8
  %i.cy = add i64 %i.cx, -1                       ; 3 uses
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i64, ptr %i.cw, align 8            ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.db, i64 %i.ci ; 2 uses
  store atomic volatile i64 %i.da, ptr %i.dc monotonic, align 8
  %i.dd = trunc i64 %i.da to i1
  br i1 %i.dd, label %bb.h, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.de = or disjoint i64 %i.cy, 1                ; 2 uses
  %i.df = ptrtoint ptr %i.dc to i64               ; 2 uses
  %i.dg = and i64 %i.cy, -262144
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load i64, ptr %i.dh, align 262144       ; 2 uses
  %i.dj = and i64 %i.di, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.dj, 0
  %i.dk = and i64 %i.di, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.dk, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dl = and i64 %i.da, -262144
  %i.dm = inttoptr i64 %i.dl to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.dm, align 262144
  %i.dn = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.dn, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.de, i64 noundef %i.df, i64 %i.da) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.de, i64 %i.df, i64 %i.da) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.l, %bb.k, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.do = add nuw i32 %.05193.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.do, %i.cb
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3682

.loopexit.i:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit
  %i.dp = load i64, ptr %4, align 8               ; 2 uses
  %i.dq = load i64, ptr %.sroa.063.0.i, align 8   ; 3 uses
  %i.dr = icmp slt i64 %i.f, 0
  br i1 %i.dr, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.loopexit.i
  %i.ds = add i64 %i.dp, -1
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load i64, ptr %i.du, align 8
  %i.dw = lshr i64 %i.dv, 32
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = add i64 %i.dq, -1
  %i.dz = inttoptr i64 %i.dy to ptr               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = lshr i64 %i.eb, 32
  %i.ed = trunc nuw i64 %i.ec to i32              ; 2 uses
  %i.ee = sub i32 %i.ed, %i.cb
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.ee, i32 %i.dx) ; 3 uses
  %i.ef = add i32 %.sroa.speculated.i.i, %i.cb    ; 2 uses
  %i.eg = sub nsw i32 %i.ed, %i.ef                ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ej = sext i32 %i.ef to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.em = load i64, ptr %i.el, align 8
  %i.en = zext nneg i32 %i.eg to i64
  %i.eo = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.em, i64 %i.en, ptr nonnull %i.ek) #23, !srcloc !3333 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.loopexit.i
  %.0.i56.i = phi i32 [ %i.h, %.loopexit.i ], [ %.sroa.speculated.i.i, %bb.n ], [ %.sroa.speculated.i.i, %bb.m ] ; 2 uses
  %i.ep = icmp eq i32 %.0.i56.i, 0
  br i1 %i.ep, label %bb.p, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.o
  %i.eq = sext i32 %i.cb to i64
  %.idx.i.i.i.i = shl nsw i64 %i.eq, 3
  %i.er = add nsw i64 %.idx.i.i.i.i, 15
  %i.es = add i64 %i.er, %i.dq
  %i.et = add i64 %i.dp, 15
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.eu, i64 %i.dq, i64 %i.es, i64 %i.et, i32 noundef %.0.i56.i, i32 noundef 4) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.o
  %i.ev = add i32 %i.cb, %i.h
  %i.ew = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.063.0.i, i32 noundef %i.ev) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.p
  %.sroa.077.1.i = phi ptr [ null, %bb.b ], [ %i.ew, %bb.p ]
  ret ptr %.sroa.077.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nonnull readnone align 8 captures(none) %0, ptr readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %.0.i.i.i, align 8
  %i.o = add i64 %i.e, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i64 %i.t, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = add i64 %i.r, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = add i32 %i.ab, %i.v                     ; 2 uses
  %.not49.i = icmp eq i32 %i.ac, 0
  br i1 %.not49.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %wide.trip.count.i = zext i32 %i.ac to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 5 uses
  %i.ae = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE12CopyElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjS5_NS0_12DirectHandleINS0_14FixedArrayBaseEEEji:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i = phi ptr [ %i.f, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = ptrtoint ptr %.0.i.i to i64
  %i.h = add i64 %i.g, 8
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.a, align 8
  store i64 %1, ptr %.0.i.i, align 8
  %i.j = add i64 %1, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 32                        ; 2 uses
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = trunc i64 %2 to i32
  %i.q = icmp ult i32 %i.p, %i.o
  br i1 %i.q, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %sext = shl i64 %2, 32
  %i.s = ashr exact i64 %sext, 29
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = shl i64 %i.u, 3
  %sext47 = ashr i64 %i.x, 32
  %i.y = and i64 %sext47, -8
  %i.z = add i64 %i.w, 15
  %i.aa = add i64 %i.z, %i.y
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.ag, %bb.d ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ah = ptrtoint ptr %.0.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.a, align 8
  store i64 %i.ac, ptr %.0.i, align 8
  br label %bb.g

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = sub i64 %2, %i.n
  %i.an = add i64 %i.al, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %sext.i = shl i64 %i.am, 32
  %i.aq = ashr exact i64 %sext.i, 29
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = load atomic volatile i64, ptr %i.ar monotonic, align 8
  %i.at = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.aw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i22 = phi ptr [ %i.aw, %bb.f ], [ %i.at, %bb.e ] ; 3 uses
  %i.ax = ptrtoint ptr %.0.i.i22 to i64
  %i.ay = add i64 %i.ax, 8
  %i.az = inttoptr i64 %i.ay to ptr
  store ptr %i.az, ptr %i.a, align 8
  store i64 %i.as, ptr %.0.i.i22, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.018.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %.0.i.i22, %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit ]
  ret ptr %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr readonly captures(none) %0, ptr readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %2, align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.c = load i64, ptr %1, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = add i64 %i.g, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, %i.k
  %i.s = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef %i.r, i8 noundef zeroext 0, i8 0) #23 ; 4 uses
  %i.t = load i64, ptr %1, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 32                        ; 2 uses
  %i.z = trunc nuw i64 %i.y to i32
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  br label %.lr.ph.split.i

._crit_edge.i.loopexit:                           ; preds = %bb.c
  %.pre = load i64, ptr %1, align 8
  %.pre36 = add i64 %.pre, -1
  %.pre37 = inttoptr i64 %.pre36 to ptr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.a
  %.pre-phi38 = phi ptr [ %.pre37, %._crit_edge.i.loopexit ], [ %i.v, %bb.a ]
  %.0.lcssa.i = phi i32 [ %.1.i, %._crit_edge.i.loopexit ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi38, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %i.ai = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #23
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit

.lr.ph.split.i:                                   ; preds = %bb.c, %.lr.ph.i
  %.063.i = phi i32 [ %.1.i, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03061.i = phi i32 [ %i.ba, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aj = load i64, ptr %1, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = sext i32 %.03061.i to i64               ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = load i64, ptr %i.aa, align 8
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %.lr.ph.split.i
  %i.as = load i64, ptr %i.s, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = shl nsw i64 %i.an, 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = sext i32 %.063.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store atomic volatile i64 %i.av, ptr %i.ay monotonic, align 8
  %i.az = add i32 %.063.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph.split.i
  %.1.i = phi i32 [ %.063.i, %.lr.ph.split.i ], [ %i.az, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 2 uses
  %i.ba = add nuw i32 %.03061.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, %i.z
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.split.i, !llvm.loop !3681

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i.i.i = phi ptr [ %i.ai, %bb.b ], [ %i.ae, %._crit_edge.i ] ; 3 uses
  %i.bb = ptrtoint ptr %.0.i.i.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.ad, align 8
  store i64 %i.ac, ptr %.0.i.i.i, align 8
  %i.be = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE3EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj(ptr noundef nonnull %i.b, ptr readonly %0, ptr nonnull %.0.i.i.i, i32 noundef 1, ptr readonly %i.s, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.bf = load i32, ptr %i.a, align 4             ; 3 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_111SortIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj(ptr noundef nonnull %i.b, ptr %i.s, i32 noundef %i.bf)
  %.not31 = icmp eq i32 %i.bf, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, %.lr.ph
  %.02032 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit ] ; 2 uses
  %i.bg = load i64, ptr %i.s, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = sext i32 %.02032 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_6TaggedINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %2, i64 %i.bm, i32 noundef 0) #23 ; 2 uses
  %i.bo = add nuw i32 %.02032, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.bo, %i.bf
  %or.cond.not = select i1 %i.bn, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !3686

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit
  %.not.lcssa = phi i1 [ true, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35FastSloppyArgumentsElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit ], [ %i.bn, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc range(i16 256, 258) i16 @_ZN2v88internal12_GLOBAL__N_135FastSloppyArgumentsElementsAccessor26GrowCapacityAndConvertImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEEj(ptr noundef %0, ptr %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = add i64 %i.a, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.f, %i.h
  br i1 %i.i, label %bb.b, label %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i25 = phi ptr [ %i.j, %bb.b ], [ %i.f, %bb.a ] ; 3 uses
  %i.k = ptrtoint ptr %.0.i.i25 to i64
  %i.l = add i64 %i.k, 8
  %i.m = inttoptr i64 %i.l to ptr
  store ptr %i.m, ptr %i.e, align 8
  store i64 %i.d, ptr %.0.i.i25, align 8
  %i.n = add i64 %i.d, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i64, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.c, label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.c:                                             ; preds = %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %bb.c
  %.0.i.i = phi ptr [ %i.u, %bb.c ], [ %i.r, %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.e, align 8
  store i64 %i.q, ptr %.0.i.i, align 8
  %i.y = load i64, ptr %1, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load atomic volatile i64, ptr %i.aa monotonic, align 8
  %i.ac = add i64 %i.ab, 14
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = lshr i8 %i.ae, 2
  %i.ag = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_j(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %.0.i.i, i8 noundef zeroext %i.af, i32 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ah = tail call ptr @_ZN2v88internal8JSObject24GetElementsTransitionMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS0_12ElementsKindE(ptr noundef nonnull %0, ptr nonnull %1, i8 noundef zeroext 14) #23
  tail call void @_ZN2v88internal8JSObject12MigrateToMapEPNS0_7IsolateENS0_12DirectHandleIS1_EENS4_INS0_3MapEEEi(ptr noundef nonnull %0, ptr nonnull %1, ptr %i.ah, i32 noundef 0) #23
  %i.ai = load i64, ptr %.0.i.i25, align 8
  %i.aj = add i64 %i.ai, -1                       ; 3 uses
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = load i64, ptr %i.ag, align 8            ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  store atomic volatile i64 %i.al, ptr %i.am monotonic, align 8
  %i.an = trunc i64 %i.al to i1
  br i1 %i.an, label %bb.e, label %_ZN2v88internal23SloppyArgumentsElements13set_argumentsENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_16NumberDictionaryEEEEEENS0_16WriteBarrierModeE.exit

bb.e:                                             ; preds = %bb.d
  %i.ao = or disjoint i64 %i.aj, 1                ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64               ; 2 uses
  %i.aq = and i64 %i.aj, -262144
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %i.ar, align 262144       ; 2 uses
  %i.at = and i64 %i.as, 32
  %.not.i.i.i.i.i = icmp eq i64 %i.at, 0
  %i.au = and i64 %i.as, 25
  %.not37.i.i.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not37.i.i.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = and i64 %i.al, -262144
  %i.aw = inttoptr i64 %i.av to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.aw, align 262144
  %i.ax = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not38.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.ao, i64 noundef %i.ap, i64 %i.al) #23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br i1 %.not.i.i.i.i.i, label %_ZN2v88internal23SloppyArgumentsElements13set_argumentsENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_16NumberDictionaryEEEEEENS0_16WriteBarrierModeE.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.ao, i64 %i.ap, i64 %i.al) #23
  br label %_ZN2v88internal23SloppyArgumentsElements13set_argumentsENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_16NumberDictionaryEEEEEENS0_16WriteBarrierModeE.exit

_ZN2v88internal23SloppyArgumentsElements13set_argumentsENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_16NumberDictionaryEEEEEENS0_16WriteBarrierModeE.exit: ; preds = %bb.d, %bb.h, %bb.i
  %i.ay = load i64, ptr %1, align 8
  tail call void @_ZN2v88internal8JSObject16ValidateElementsEPNS0_7IsolateENS0_6TaggedIS1_EE(ptr noundef nonnull %0, i64 %i.ay) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_14FixedArrayBaseEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, %_ZN2v88internal23SloppyArgumentsElements13set_argumentsENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_16NumberDictionaryEEEEEENS0_16WriteBarrierModeE.exit
  %.sroa.043.0 = phi i16 [ 257, %_ZN2v88internal23SloppyArgumentsElements13set_argumentsENS0_6TaggedINS0_5UnionIJNS0_10FixedArrayENS0_16NumberDictionaryEEEEEENS0_16WriteBarrierModeE.exit ], [ 256, %_ZN2v88internal6HandleINS0_10FixedArrayEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ]
  ret i16 %.sroa.043.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_j(ptr noundef %0, ptr readonly captures(none) %1, ptr readonly captures(none) %2, i8 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %.sroa.0.0.copyload.i36.i = load i64, ptr %i.a, align 8
  %i.b = icmp eq i64 %.sroa.0.0.copyload.i36.i, 0
  %i.c = icmp ult i32 %4, 134217729
  %or.cond.i = or i1 %i.c, %i.b
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef 238, ptr null, i64 0) #23
  %i.e = load i64, ptr %i.d, align 8
  %i.f = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %0, i64 %i.e, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %4, i8 noundef zeroext 0, i8 0) #23 ; 5 uses
  %i.h = and i8 %3, 1
  %i.i = icmp eq i8 %i.h, 0
  %i.j = icmp ult i8 %3, 5
  %i.k = and i1 %i.j, %i.i
  br i1 %i.k, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8
  %i.m = add i64 %i.l, -1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2 ; 0 uses
  %i.s = load i64, ptr %2, align 8
  %i.t = load i64, ptr %i.g, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %2, align 8                ; 2 uses
  %i.v = load i64, ptr %i.g, align 8              ; 2 uses
  %i.w = icmp eq i8 %3, 15
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_130CopyDictionaryToObjectElementsEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEEjS6_NS0_12ElementsKindEji(ptr noundef nonnull %0, i64 %i.u, i32 noundef 0, i64 %i.v, i8 noundef zeroext 3, i32 noundef 0, i32 noundef -1)
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35FastSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE14EEEE27ConvertElementsWithCapacityEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEES5_jjj.exit

bb.f:                                             ; preds = %bb.d, %.thread.i
  %i.x = phi i64 [ %i.t, %.thread.i ], [ %i.v, %bb.d ] ; 3 uses
  %i.y = phi i64 [ %i.s, %.thread.i ], [ %i.u, %bb.d ] ; 2 uses
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw i64 %i.ad to i32
  %i.af = add i64 %i.x, -1
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = lshr i64 %i.ai, 32
  %i.ak = trunc nuw i64 %i.aj to i32              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.ak, i32 %i.ae) ; 4 uses
  %i.al = sub nsw i32 %i.ak, %.sroa.speculated.i.i.i ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
end_hunk_1
begin_hunk_2_@_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE22CollectValuesOrEntriesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE:bb.a
  %i.hk = inttoptr i64 %i.hj to ptr
  %i.hl = add nsw i32 %.563268.i, 1
  %i.hm = load i64, ptr %.sroa.0102.0.i, align 8  ; 5 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.ho = sext i32 %.563268.i to i64
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.ho ; 2 uses
  store atomic volatile i64 %i.hm, ptr %i.hp monotonic, align 8
  %i.hq = trunc i64 %i.hm to i1
  br i1 %i.hq, label %bb.ab, label %.thread249.i

bb.ab:                                            ; preds = %bb.aa
  %i.hr = or disjoint i64 %i.hj, 1                ; 2 uses
  %i.hs = ptrtoint ptr %i.hp to i64               ; 2 uses
  %i.ht = and i64 %i.hj, -262144
  %i.hu = inttoptr i64 %i.ht to ptr
  %i.hv = load i64, ptr %i.hu, align 262144       ; 2 uses
  %i.hw = and i64 %i.hv, 32
  %.not.i.i.i.i.i93.i = icmp eq i64 %i.hw, 0
  %i.hx = and i64 %i.hv, 25
  %.not37.i.i.i.i.i94.i = icmp eq i64 %i.hx, 0
  br i1 %.not37.i.i.i.i.i94.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.hy = and i64 %i.hm, -262144
  %i.hz = inttoptr i64 %i.hy to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i95.i = load i64, ptr %i.hz, align 262144
  %i.ia = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i95.i, 25
  %.not38.i.i.i.i.i96.i = icmp eq i64 %i.ia, 0
  br i1 %.not38.i.i.i.i.i96.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.hr, i64 noundef %i.hs, i64 %i.hm) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i.i.i.i93.i, label %.thread249.i, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.hr, i64 %i.hs, i64 %i.hm) #23
  br label %.thread249.i

.thread249.i:                                     ; preds = %bb.af, %bb.ae, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %.thread240.i

bb.ag:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit

.thread240.i:                                     ; preds = %.thread249.i, %bb.w, %bb.v, %bb.t, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i87.i, %bb.s
  %.765247.i = phi i32 [ %i.hl, %.thread249.i ], [ %.563268.i, %bb.v ], [ %.563268.i, %bb.t ], [ %.563268.i, %bb.s ], [ %.563268.i, %_ZN2v88internal12IsHeapNumberENS0_6TaggedINS0_6ObjectEEE.exit.i87.i ], [ %.563268.i, %bb.w ] ; 2 uses
  %indvars.iv.next275.i = add nuw nsw i64 %indvars.iv274.i, 1 ; 2 uses
  %i.ib = load i64, ptr %i.s, align 8
  %i.ic = add i64 %i.ib, -1
  %i.id = inttoptr i64 %i.ic to ptr               ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 8
  %i.if = load i64, ptr %i.ie, align 8
  %i.ig = lshr i64 %i.if, 32
  %i.ih = trunc nuw i64 %i.ig to i32
  %i.ii = trunc nuw i64 %indvars.iv.next275.i to i32
  %i.ij = icmp slt i32 %i.ii, %i.ih
  br i1 %i.ij, label %bb.q, label %._crit_edge271.i, !llvm.loop !3690

._crit_edge271.i:                                 ; preds = %.thread240.i, %bb.c, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge.i
  %.563.lcssa.i = phi i32 [ %.462.ph.i, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit._crit_edge.i ], [ 0, %bb.c ], [ %.765247.i, %.thread240.i ]
  store i32 %.563.lcssa.i, ptr %5, align 4
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE26CollectValuesOrEntriesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_10FixedArrayEEEbPiNS0_14PropertyFilterE.exit: ; preds = %bb.i, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, %bb.ag, %._crit_edge271.i
  %.sroa.5.1.i = phi i16 [ 0, %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i ], [ 257, %._crit_edge271.i ], [ 0, %bb.ag ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i16 %.sroa.5.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE21PrependElementIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr readnone captures(none) %2, ptr readonly captures(none) %3, ptr readonly captures(none) %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i64, ptr %4, align 8
  %i.c = add i64 %i.b, -1
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = lshr i64 %i.f, 32
  %i.h = trunc nuw i64 %i.g to i32                ; 4 uses
  %i.i = load i64, ptr %3, align 8
  %i.j = add i64 %i.i, -1
  %i.k = inttoptr i64 %i.j to ptr                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = add i64 %i.m, -1
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load atomic volatile i64, ptr %i.p monotonic, align 8
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.u = load i64, ptr %i.t, align 8
  %i.v = lshr i64 %i.u, 32
  %i.w = trunc nuw i64 %i.v to i32
  %i.x = add i32 %i.w, %i.s                       ; 2 uses
  %i.y = sub i32 134217728, %i.h
  %i.z = icmp ugt i32 %i.x, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = tail call ptr @_ZN2v88internal7Factory13NewRangeErrorENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6ObjectEEEEE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 238, ptr null, i64 0) #23
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = tail call i64 @_ZN2v88internal7Isolate5ThrowENS0_6TaggedINS0_6ObjectEEEPNS0_15MessageLocationE(ptr noundef nonnull align 8 dereferenceable(64320) %1, i64 %i.ab, ptr noundef null) #23 ; 0 uses
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.a
  %i.ad = add i32 %i.x, %i.h                      ; 2 uses
  %i.ae = tail call ptr @_ZN2v88internal7Factory16TryNewFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ad, i8 noundef zeroext 0) #23 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i: ; preds = %bb.c
  %i.ag = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.ad, i8 noundef zeroext 0, i8 0) #23
  br label %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i

_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i: ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i, %bb.c
  %.sroa.060.0.i = phi ptr [ %i.ag, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.i ], [ %i.ae, %bb.c ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.ah = load i64, ptr %3, align 8
  %i.ai = add i64 %i.ah, -1
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc nuw i64 %i.am to i32
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i8

.lr.ph.i8:                                        ; preds = %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 656
  br label %.lr.ph.split.i

._crit_edge.i.loopexit:                           ; preds = %bb.e
  %.pre = load i64, ptr %3, align 8
  %.pre11 = add i64 %.pre, -1
  %.pre12 = inttoptr i64 %.pre11 to ptr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i
  %.pre-phi13 = phi ptr [ %.pre12, %._crit_edge.i.loopexit ], [ %i.aj, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ]
  %.0.lcssa.i = phi i32 [ %.1.i, %._crit_edge.i.loopexit ], [ 0, %_ZNK2v88internal11MaybeHandleINS0_10FixedArrayEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit.thread.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre-phi13, i64 24
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 568
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, !prof !5

bb.d:                                             ; preds = %._crit_edge.i
  %i.aw = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %1) #23
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit

.lr.ph.split.i:                                   ; preds = %bb.e, %.lr.ph.i8
  %.031.i = phi i32 [ %.1.i, %bb.e ], [ 0, %.lr.ph.i8 ] ; 3 uses
  %.03029.i = phi i32 [ %i.bo, %bb.e ], [ 0, %.lr.ph.i8 ] ; 2 uses
  %i.ax = load i64, ptr %3, align 8
  %i.ay = add i64 %i.ax, -1
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  %i.bb = sext i32 %.03029.i to i64               ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8
  %i.be = load i64, ptr %i.ao, align 8
  %i.bf = icmp eq i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.e, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9: ; preds = %.lr.ph.split.i
  %i.bg = load i64, ptr %.sroa.060.0.i, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = shl nsw i64 %i.bb, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = sext i32 %.031.i to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bl
  store atomic volatile i64 %i.bj, ptr %i.bm monotonic, align 8
  %i.bn = add i32 %.031.i, 1
  br label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9, %.lr.ph.split.i
  %.1.i = phi i32 [ %.031.i, %.lr.ph.split.i ], [ %i.bn, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i9 ] ; 2 uses
  %i.bo = add nuw i32 %.03029.i, 1                ; 2 uses
  %exitcond.not.i10 = icmp eq i32 %i.bo, %i.an
  br i1 %exitcond.not.i10, label %._crit_edge.i.loopexit, label %.lr.ph.split.i, !llvm.loop !3691

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit: ; preds = %._crit_edge.i, %bb.d
  %.0.i.i.i = phi ptr [ %i.aw, %bb.d ], [ %i.as, %._crit_edge.i ] ; 3 uses
  %i.bp = ptrtoint ptr %.0.i.i.i to i64
  %i.bq = add i64 %i.bp, 8
  %i.br = inttoptr i64 %i.bq to ptr
  store ptr %i.br, ptr %i.ar, align 8
  store i64 %i.aq, ptr %.0.i.i.i, align 8
  %i.bs = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj(ptr noundef nonnull %1, ptr nonnull %.0.i.i.i, i32 noundef %6, ptr readonly %.sroa.060.0.i, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.bt = load i32, ptr %i.a, align 4             ; 7 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_111SortIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj(ptr noundef nonnull %1, ptr %.sroa.060.0.i, i32 noundef %i.bt)
  %i.bu = icmp eq i32 %5, 0
  %i.bv = icmp ne i32 %i.bt, 0
  %or.cond.i = and i1 %i.bu, %i.bv
  br i1 %or.cond.i, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i
  %.05190.i = phi i32 [ %i.dg, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ], [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit ] ; 2 uses
  %i.bw = load i64, ptr %.sroa.060.0.i, align 8
  %i.bx = add i64 %i.bw, -1
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ca = sext i32 %.05190.i to i64               ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load atomic volatile i64, ptr %i.cb monotonic, align 8 ; 3 uses
  %i.cd = and i64 %i.cc, 1
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  %i.cf = lshr i64 %i.cc, 32
  %i.cg = trunc nuw i64 %i.cf to i32
  %i.ch = sitofp i32 %i.cg to double
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ci = add nsw i64 %i.cc, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %.0.copyload.i.i.i.i.i.i.i = load double, ptr %i.ck, align 1
  br label %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i

_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i: ; preds = %bb.g, %bb.f
  %i.cl = phi double [ %i.ch, %bb.f ], [ %.0.copyload.i.i.i.i.i.i.i, %bb.g ]
  %i.cm = fptoui double %i.cl to i32
  %i.cn = zext i32 %i.cm to i64
  %i.co = tail call ptr @_ZN2v88internal7Factory12SizeToStringEmb(ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %i.cn, i1 noundef zeroext true) #23
  %i.cp = load i64, ptr %.sroa.060.0.i, align 8
  %i.cq = add i64 %i.cp, -1                       ; 3 uses
  %i.cr = inttoptr i64 %i.cq to ptr
  %i.cs = load i64, ptr %i.co, align 8            ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.ca ; 2 uses
  store atomic volatile i64 %i.cs, ptr %i.cu monotonic, align 8
  %i.cv = trunc i64 %i.cs to i1
  br i1 %i.cv, label %bb.h, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

bb.h:                                             ; preds = %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.cw = or disjoint i64 %i.cq, 1                ; 2 uses
  %i.cx = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cy = and i64 %i.cq, -262144
  %i.cz = inttoptr i64 %i.cy to ptr
  %i.da = load i64, ptr %i.cz, align 262144       ; 2 uses
  %i.db = and i64 %i.da, 32
  %.not.i.i.i.i.i.i = icmp eq i64 %i.db, 0
  %i.dc = and i64 %i.da, 25
  %.not37.i.i.i.i.i.i = icmp eq i64 %i.dc, 0
  br i1 %.not37.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.dd = and i64 %i.cs, -262144
  %i.de = inttoptr i64 %i.dd to ptr
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.de, align 262144
  %i.df = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 25
  %.not38.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not38.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZN2v88internal12WriteBarrier40CombinedGenerationalAndSharedBarrierSlowENS0_6TaggedINS0_10HeapObjectEEEmS4_(i64 %i.cw, i64 noundef %i.cx, i64 %i.cs) #23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.cw, i64 %i.cx, i64 %i.cs) #23
  br label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %bb.l, %bb.k, %_ZN2v88internal6Object11NumberValueENS0_6TaggedIS1_EE.exit.i
  %i.dg = add nuw i32 %.05190.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.dg, %i.bt
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !3692

.loopexit.i:                                      ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit
  %i.dh = load i64, ptr %4, align 8               ; 2 uses
  %i.di = load i64, ptr %.sroa.060.0.i, align 8   ; 3 uses
  %i.dj = icmp slt i64 %i.f, 0
  br i1 %i.dj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.loopexit.i
  %i.dk = add i64 %i.dh, -1
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dn = load i64, ptr %i.dm, align 8
  %i.do = lshr i64 %i.dn, 32
  %i.dp = trunc nuw i64 %i.do to i32
  %i.dq = add i64 %i.di, -1
  %i.dr = inttoptr i64 %i.dq to ptr               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dt = load i64, ptr %i.ds, align 8
  %i.du = lshr i64 %i.dt, 32
  %i.dv = trunc nuw i64 %i.du to i32              ; 2 uses
  %i.dw = sub i32 %i.dv, %i.bt
  %.sroa.speculated.i.i = tail call i32 @llvm.umin.i32(i32 %i.dw, i32 %i.dp) ; 3 uses
  %i.dx = add i32 %.sroa.speculated.i.i, %i.bt    ; 2 uses
  %i.dy = sub nsw i32 %i.dv, %i.dx                ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.eb = sext i32 %i.dx to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = zext nneg i32 %i.dy to i64
  %i.eg = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %i.ee, i64 %i.ef, ptr nonnull %i.ec) #23, !srcloc !3333 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.loopexit.i
  %.0.i53.i = phi i32 [ %i.h, %.loopexit.i ], [ %.sroa.speculated.i.i, %bb.n ], [ %.sroa.speculated.i.i, %bb.m ] ; 2 uses
  %i.eh = icmp eq i32 %.0.i53.i, 0
  br i1 %i.eh, label %bb.p, label %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i

_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i: ; preds = %bb.o
  %i.ei = sext i32 %i.bt to i64
  %.idx.i.i.i.i = shl nsw i64 %i.ei, 3
  %i.ej = add nsw i64 %.idx.i.i.i.i, 15
  %i.ek = add i64 %i.ej, %i.di
  %i.el = add i64 %i.dh, 15
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 55464
  tail call void @_ZN2v88internal4Heap9CopyRangeINS0_14FullObjectSlotEEEvNS0_6TaggedINS0_10HeapObjectEEET_S7_iNS0_16WriteBarrierModeE(ptr noundef nonnull align 8 dereferenceable(2992) %i.em, i64 %i.di, i64 %i.ek, i64 %i.el, i32 noundef %.0.i53.i, i32 noundef 4) #23
  br label %bb.p

bb.p:                                             ; preds = %_ZN2v88internal10FixedArray12CopyElementsEPNS0_7IsolateEiNS0_6TaggedIS1_EEiiNS0_16WriteBarrierModeE.exit.i.i, %bb.o
  %i.en = add i32 %i.bt, %i.h
  %i.eo = tail call ptr @_ZN2v88internal10FixedArray16RightTrimOrEmptyINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES5_i(ptr noundef nonnull %1, ptr nonnull %.sroa.060.0.i, i32 noundef %i.en) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE25PrependElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSA_INS0_14FixedArrayBaseEEENSA_INS0_10FixedArrayEEENS0_17GetKeysConversionENS0_14PropertyFilterE.exit: ; preds = %bb.b, %bb.p
  %.sroa.074.1.i = phi ptr [ null, %bb.b ], [ %i.eo, %bb.p ]
  ret ptr %.sroa.074.1.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_35SlowSloppyArgumentsElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE27AddElementsToKeyAccumulatorENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE(ptr nonnull readnone align 8 captures(none) %0, ptr readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8
  %i.c = add i64 %i.b, 15
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 560 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 568
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %bb.b, label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.k = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.a) #23
  br label %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i

_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = ptrtoint ptr %.0.i.i.i to i64
  %i.m = add i64 %i.l, 8
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.f, align 8
  store i64 %i.e, ptr %.0.i.i.i, align 8
  %i.o = add i64 %i.e, -1
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8
  %i.u = lshr i64 %i.t, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = add i64 %i.r, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = lshr i64 %i.z, 32
  %i.ab = trunc nuw i64 %i.aa to i32
  %i.ac = add i32 %i.ab, %i.v                     ; 2 uses
  %.not49.i = icmp eq i32 %i.ac, 0
  br i1 %.not49.i, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31AddElementsToKeyAccumulatorImplENS0_12DirectHandleINS0_8JSObjectEEEPNS0_14KeyAccumulatorENS0_16AddKeyConversionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN2v88internal6HandleINS0_14FixedArrayBaseEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 656
  %wide.trip.count.i = zext i32 %i.ac to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 5 uses
  %i.ae = load i64, ptr %.0.i.i.i, align 8        ; 2 uses
  %i.af = add i64 %i.ae, -1
  %i.ag = inttoptr i64 %i.af to ptr               ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE:bb.a
  %i.aa = add i64 %i.z, %i.y
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  %i.ad = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ae = load ptr, ptr %i.c, align 8
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.d, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.ag, %bb.d ], [ %i.ad, %bb.c ] ; 3 uses
  %i.ah = ptrtoint ptr %.0.i to i64
  %i.ai = add i64 %i.ah, 8
  %i.aj = inttoptr i64 %i.ai to ptr
  store ptr %i.aj, ptr %i.a, align 8
  store i64 %i.ac, ptr %.0.i, align 8
  br label %_ZN2v88internal12_GLOBAL__N_135SlowSloppyArgumentsElementsAccessor27ConvertArgumentsStoreResultEPNS0_7IsolateENS0_12DirectHandleINS0_23SloppyArgumentsElementsEEENS0_6HandleINS0_6ObjectEEE.exit

bb.e:                                             ; preds = %_ZN2v88internal6HandleINS0_23SloppyArgumentsElementsEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = sub i64 %2, %i.n
  %i.an = add i64 %i.al, -1
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = mul i64 %i.am, 12884901888
  %sext.i.i.i.i = add i64 %i.aq, 21474836480
  %i.ar = ashr exact i64 %sext.i.i.i.i, 29
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 %i.ar
  %i.at = load atomic volatile i64, ptr %i.as monotonic, align 8 ; 4 uses
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit, !prof !5

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit

_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit: ; preds = %bb.e, %bb.f
  %.0.i.i22 = phi ptr [ %i.ax, %bb.f ], [ %i.au, %bb.e ] ; 4 uses
  %i.ay = ptrtoint ptr %.0.i.i22 to i64
  %i.az = add i64 %i.ay, 8
  %i.ba = inttoptr i64 %i.az to ptr
  store ptr %i.ba, ptr %i.a, align 8
  store i64 %i.at, ptr %.0.i.i22, align 8
  %i.bb = trunc i64 %i.at to i1
  br i1 %i.bb, label %_ZN2v88internal23IsAliasedArgumentsEntryENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal12_GLOBAL__N_135SlowSloppyArgumentsElementsAccessor27ConvertArgumentsStoreResultEPNS0_7IsolateENS0_12DirectHandleINS0_23SloppyArgumentsElementsEEENS0_6HandleINS0_6ObjectEEE.exit

_ZN2v88internal23IsAliasedArgumentsEntryENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit
  %i.bc = add nsw i64 %i.at, -1
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = load atomic volatile i64, ptr %i.bd monotonic, align 8
  %i.bf = add i64 %i.be, 11
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = load atomic volatile i16, ptr %i.bg monotonic, align 2
  %i.bi = icmp eq i16 %i.bh, 141
  br i1 %i.bi, label %bb.g, label %_ZN2v88internal12_GLOBAL__N_135SlowSloppyArgumentsElementsAccessor27ConvertArgumentsStoreResultEPNS0_7IsolateENS0_12DirectHandleINS0_23SloppyArgumentsElementsEEENS0_6HandleINS0_6ObjectEEE.exit

bb.g:                                             ; preds = %_ZN2v88internal23IsAliasedArgumentsEntryENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.bj = load i64, ptr %.0.i.i, align 8
  %i.bk = add i64 %i.bj, -1
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = add i64 %i.at, 7
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = shl i64 %i.bq, 3
  %sext.i = ashr i64 %i.br, 32
  %i.bs = and i64 %sext.i, -8
  %i.bt = add i64 %i.bn, 15
  %i.bu = add i64 %i.bt, %i.bs
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load atomic volatile i64, ptr %i.bv monotonic, align 8
  %i.bx = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.by = load ptr, ptr %i.c, align 8
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.h, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, !prof !5

bb.h:                                             ; preds = %bb.g
  %i.ca = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #23
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i: ; preds = %bb.h, %bb.g
  %.0.i.i23 = phi ptr [ %i.ca, %bb.h ], [ %i.bx, %bb.g ] ; 3 uses
  %i.cb = ptrtoint ptr %.0.i.i23 to i64
  %i.cc = add i64 %i.cb, 8
  %i.cd = inttoptr i64 %i.cc to ptr
  store ptr %i.cd, ptr %i.a, align 8
  store i64 %i.bw, ptr %.0.i.i23, align 8
  br label %_ZN2v88internal12_GLOBAL__N_135SlowSloppyArgumentsElementsAccessor27ConvertArgumentsStoreResultEPNS0_7IsolateENS0_12DirectHandleINS0_23SloppyArgumentsElementsEEENS0_6HandleINS0_6ObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_135SlowSloppyArgumentsElementsAccessor27ConvertArgumentsStoreResultEPNS0_7IsolateENS0_12DirectHandleINS0_23SloppyArgumentsElementsEEENS0_6HandleINS0_6ObjectEEE.exit: ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i, %_ZN2v88internal23IsAliasedArgumentsEntryENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %.sroa.018.0 = phi ptr [ %.0.i, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %.0.i.i23, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.i ], [ %.0.i.i22, %_ZN2v88internal23IsAliasedArgumentsEntryENS0_6TaggedINS0_6ObjectEEE.exit.i ], [ %.0.i.i22, %_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor7GetImplEPNS0_7IsolateENS0_6TaggedINS0_14FixedArrayBaseEEENS0_13InternalIndexE.exit ]
  ret ptr %.sroa.018.0
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE25CollectElementIndicesImplENS0_12DirectHandleINS0_8JSObjectEEENS9_INS0_14FixedArrayBaseEEEPNS0_14KeyAccumulatorE(ptr readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load ptr, ptr %1, align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.c = load i64, ptr %0, align 8
  %i.d = add i64 %i.c, -1
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %i.j = lshr i64 %i.i, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = add i64 %i.g, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = lshr i64 %i.o, 32
  %i.q = trunc nuw i64 %i.p to i32
  %i.r = add i32 %i.q, %i.k
  %i.s = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE13NewFixedArrayEiNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %i.b, i32 noundef %i.r, i8 noundef zeroext 0, i8 0) #23 ; 4 uses
  %i.t = load i64, ptr %0, align 8
  %i.u = add i64 %i.t, -1
  %i.v = inttoptr i64 %i.u to ptr                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i64 %i.x, 32                        ; 2 uses
  %i.z = trunc nuw i64 %i.y to i32
  %.not.i = icmp eq i64 %i.y, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  br label %.lr.ph.split.i

._crit_edge.i.loopexit:                           ; preds = %bb.c
  %.pre = load i64, ptr %0, align 8
  %.pre36 = add i64 %.pre, -1
  %.pre37 = inttoptr i64 %.pre36 to ptr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.a
  %.pre-phi38 = phi ptr [ %.pre37, %._crit_edge.i.loopexit ], [ %i.v, %bb.a ]
  %.0.lcssa.i = phi i32 [ %.1.i, %._crit_edge.i.loopexit ], [ 0, %bb.a ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre-phi38, i64 24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 560 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, !prof !5

bb.b:                                             ; preds = %._crit_edge.i
  %i.ai = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.b) #23
  br label %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit

.lr.ph.split.i:                                   ; preds = %bb.c, %.lr.ph.i
  %.031.i = phi i32 [ %.1.i, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %.03029.i = phi i32 [ %i.ba, %bb.c ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.aj = load i64, ptr %0, align 8
  %i.ak = add i64 %i.aj, -1
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = sext i32 %.03029.i to i64               ; 2 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load atomic volatile i64, ptr %i.ao monotonic, align 8
  %i.aq = load i64, ptr %i.aa, align 8
  %i.ar = icmp eq i64 %i.ap, %i.aq
  br i1 %i.ar, label %bb.c, label %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i: ; preds = %.lr.ph.split.i
  %i.as = load i64, ptr %i.s, align 8
  %i.at = add i64 %i.as, -1
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = shl nsw i64 %i.an, 32
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = sext i32 %.031.i to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ax
  store atomic volatile i64 %i.av, ptr %i.ay monotonic, align 8
  %i.az = add i32 %.031.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i, %.lr.ph.split.i
  %.1.i = phi i32 [ %.031.i, %.lr.ph.split.i ], [ %i.az, %_ZN2v88internal15TaggedArrayBaseINS0_10FixedArrayENS0_16TaggedArrayShapeENS0_16HeapObjectLayoutEE3setEiNS0_6TaggedINS0_6ObjectEEENS0_16WriteBarrierModeE.exit.i ] ; 2 uses
  %i.ba = add nuw i32 %.03029.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ba, %i.z
  br i1 %exitcond.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.split.i, !llvm.loop !3691

_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit: ; preds = %._crit_edge.i, %bb.b
  %.0.i.i.i = phi ptr [ %i.ai, %bb.b ], [ %i.ae, %._crit_edge.i ] ; 3 uses
  %i.bb = ptrtoint ptr %.0.i.i.i to i64
  %i.bc = add i64 %i.bb, 8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.bd, ptr %i.ad, align 8
  store i64 %i.ac, ptr %.0.i.i.i, align 8
  %i.be = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_126DictionaryElementsAccessor31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS5_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj(ptr noundef nonnull %i.b, ptr nonnull %.0.i.i.i, i32 noundef 18, ptr readonly %i.s, ptr noundef nonnull %i.a, i32 noundef %.0.lcssa.i) ; 0 uses
  %i.bf = load i32, ptr %i.a, align 4             ; 3 uses
  tail call fastcc void @_ZN2v88internal12_GLOBAL__N_111SortIndicesEPNS0_7IsolateENS0_12DirectHandleINS0_10FixedArrayEEEj(ptr noundef nonnull %i.b, ptr %i.s, i32 noundef %i.bf)
  %.not31 = icmp eq i32 %i.bf, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit, %.lr.ph
  %.02032 = phi i32 [ %i.bo, %.lr.ph ], [ 0, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit ] ; 2 uses
  %i.bg = load i64, ptr %i.s, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = sext i32 %.02032 to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = tail call noundef zeroext i1 @_ZN2v88internal14KeyAccumulator6AddKeyENS0_6TaggedINS0_6ObjectEEENS0_16AddKeyConversionE(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 %i.bm, i32 noundef 0) #23 ; 2 uses
  %i.bo = add nuw i32 %.02032, 1                  ; 2 uses
  %exitcond.not = icmp ne i32 %i.bo, %i.bf
  %or.cond.not = select i1 %i.bn, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %._crit_edge, !llvm.loop !3696

._crit_edge:                                      ; preds = %.lr.ph, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit
  %.not.lcssa = phi i1 [ true, %_ZN2v88internal12_GLOBAL__N_131SloppyArgumentsElementsAccessorINS1_35SlowSloppyArgumentsElementsAccessorENS1_26DictionaryElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE15EEEE31DirectCollectElementIndicesImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENSB_INS0_14FixedArrayBaseEEENS0_17GetKeysConversionENS0_14PropertyFilterENS0_6HandleINS0_10FixedArrayEEEPjj.exit ], [ %i.bn, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.not.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_133FastStringWrapperElementsAccessorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE8ValidateEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef.460", align 8 ; 5 uses
  %i.b = add i64 %2, 15
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8
  %i.h = add i64 %i.g, 11
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = load atomic volatile i16, ptr %i.i monotonic, align 2
  %i.k = and i16 %i.j, -2
  %i.l = icmp eq i16 %i.k, 270
  br i1 %i.l, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = add i64 %2, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = icmp eq i16 %i.r, 2119
  br i1 %i.s, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.u = add i64 %i.t, 11
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load atomic volatile i16, ptr %i.v monotonic, align 2
  %i.x = icmp eq i16 %i.w, 2061
  br i1 %i.x, label %bb.d, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 %2, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %i.a, align 1
  %i.y = add i64 %2, 31
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = add i64 %i.aa, 71
  %i.ac = inttoptr i64 %i.ab to ptr
  %i.ad = load atomic volatile i32, ptr %i.ac monotonic, align 4
  %i.ae = and i32 %i.ad, 4
  %.not.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i.i, label %bb.e, label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.af = add i64 %2, 39
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = and i32 %i.ah, 3
  %.not2.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not2.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call noundef i64 @_ZNK2v88internal12JSTypedArray30GetVariableLengthOrOutOfBoundsERb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %i.a) #23 ; 0 uses
  br label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ak = call noundef i64 @_ZNK2v88internal12JSTypedArray12element_sizeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #23 ; 0 uses
  br label %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i

_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12ValidateImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE.exit: ; preds = %bb.a, %bb.b, %bb.c, %_ZNK2v88internal12JSTypedArray9GetLengthEv.exit.i
  ret void
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE10HasElementEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEjNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 %2, i32 noundef %3, i64 %4, i32 %5) unnamed_addr #10 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64                       ; 2 uses
  %i.b = add i64 %2, 23
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp ult i32 %3, %i.h
  br i1 %i.i, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = add i64 %2, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i64, ptr %i.k monotonic, align 8
  %i.m = add i64 %i.l, 11
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load atomic volatile i16, ptr %i.n monotonic, align 2
  %i.p = icmp eq i16 %i.o, 2119
  %i.q = add i64 %4, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.0.in.in.in.in.i.i.i.i = select i1 %i.p, ptr %i.c, ptr %i.s
  %.0.in.in.in.i.i.i.i = load i64, ptr %.0.in.in.in.in.i.i.i.i, align 8
  %.0.in.in.i.i.i.i = lshr i64 %.0.in.in.in.i.i.i.i, 32
  %i.t = icmp samesign ugt i64 %.0.in.in.i.i.i.i, %i.a
  br i1 %i.t, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %sext.i.i.i = shl nuw i64 %i.a, 32
  %i.v = ashr exact i64 %sext.i.i.i, 29
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = icmp ne i64 %i.x, %i.z
  br label %_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit

_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE14HasElementImplEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEEmNSA_INS0_14FixedArrayBaseEEENS0_14PropertyFilterE.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.015.0.i.i = phi i1 [ true, %bb.a ], [ %i.aa, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.015.0.i.i
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE8HasEntryEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEENS0_13InternalIndexE(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, i64 %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.32) #24
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define internal ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE3GetEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr readonly captures(none) %2, i64 %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call fastcc ptr @_ZN2v88internal12_GLOBAL__N_129StringWrapperElementsAccessorINS1_33FastStringWrapperElementsAccessorENS1_31FastHoleyObjectElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE15GetInternalImplEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexE(ptr noundef %1, ptr %2, i64 %3)
  ret ptr %i.a
}

; Function Attrs: mustprogress noreturn nounwind uwtable
define internal noalias noundef nonnull ptr @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE9GetAtomicEPNS0_7IsolateENS0_12DirectHandleINS0_8JSObjectEEENS0_13InternalIndexENS_15SeqCstAccessTagE(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, i64 %3) unnamed_addr #11 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #24
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE12HasAccessorsENS0_6TaggedINS0_8JSObjectEEE(ptr nonnull readnone align 8 captures(none) %0, i64 %1) unnamed_addr #12 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress norecurse nounwind memory(readwrite, target_mem: none) uwtable
define internal noundef range(i64 0, 4294967296) i64 @_ZN2v88internal12_GLOBAL__N_120ElementsAccessorBaseINS1_33FastStringWrapperElementsAccessorENS1_18ElementsKindTraitsILNS0_12ElementsKindE16EEEE16NumberOfElementsEPNS0_7IsolateENS0_6TaggedINS0_8JSObjectEEE(ptr nonnull readnone align 8 captures(none) %0, ptr noundef readonly captures(none) %1, i64 %2) unnamed_addr #10 align 2 {
bb.a:
  %i.a = add i64 %2, 15
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %2, 23
  %i.e = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = add i64 %i.f, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i64 %2, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
end_hunk_3
